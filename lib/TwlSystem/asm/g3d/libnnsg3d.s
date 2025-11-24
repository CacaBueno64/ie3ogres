
	.include "asm/macros/function.inc"
	.include "libnnsg3d.inc"

	.text
	arm_func_start NNS_G3dAnmObjInit
NNS_G3dAnmObjInit: ; 0x0206360C
	stmfd sp!, {r4, r5, r6, lr}
	mov r12, #0
	mov r5, #0x7f
	mov r4, #0x1000
	ldr lr, _02063698 ; =NNS_G3dAnmFmtNum
	str r12, [r0]
	str r1, [r0, #8]
	str r12, [r0, #0x10]
	strb r5, [r0, #0x18]
	str r4, [r0, #4]
	str r3, [r0, #0x14]
	strb r12, [r0, #0x19]
	str r12, [r0, #0xc]
	ldr r6, [lr]
	cmp r6, #0
	ldmlsfd sp!, {r4, r5, r6, pc}
	ldrb r5, [r1]
	ldr r4, _0206369C ; =NNS_G3dAnmObjInitFuncArray
_02063654:
	ldrb r3, [r4, r12, lsl #3]
	cmp r5, r3
	addeq r3, r4, r12, lsl #3
	ldreqh lr, [r1, #2]
	ldreqh r3, [r3, #2]
	cmpeq lr, r3
	bne _02063688
	ldr r3, _020636A0 ; =NNS_G3dAnmObjInitFuncArray[1]
	ldr r3, [r3, r12, lsl #3]
	cmp r3, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	blx r3
	ldmfd sp!, {r4, r5, r6, pc}
_02063688:
	add r12, r12, #1
	cmp r12, r6
	blo _02063654
	ldmfd sp!, {r4, r5, r6, pc}
_02063698: .word NNS_G3dAnmFmtNum
_0206369C: .word NNS_G3dAnmObjInitFuncArray
_020636A0: .word NNS_G3dAnmObjInitFuncArray + 4
	arm_func_end NNS_G3dAnmObjInit

	arm_func_start NNS_G3dRenderObjInit
NNS_G3dRenderObjInit: ; 0x020636A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x54
	bl MIi_CpuClear32
	ldr r0, _020636EC ; =NNS_G3dFuncBlendMatDefault
	ldr r1, _020636F0 ; =NNS_G3dFuncBlendJntDefault
	ldr r2, [r0]
	ldr r0, _020636F4 ; =NNS_G3dFuncBlendVisDefault
	str r2, [r5, #0xc]
	ldr r1, [r1]
	str r1, [r5, #0x14]
	ldr r0, [r0]
	str r0, [r5, #0x1c]
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020636EC: .word NNS_G3dFuncBlendMatDefault
_020636F0: .word NNS_G3dFuncBlendJntDefault
_020636F4: .word NNS_G3dFuncBlendVisDefault
	arm_func_end NNS_G3dRenderObjInit

	arm_func_start addLink_
addLink_: ; 0x020636F8
	ldr r12, [r0]
	cmp r12, #0
	streq r1, [r0]
	bxeq lr
	ldr r2, [r12, #0x10]
	cmp r2, #0
	bne _02063758
	ldrb r3, [r12, #0x18]
	ldrb r2, [r1, #0x18]
	cmp r3, r2
	bls _02063750
	ldr r2, [r1, #0x10]
	mov r3, r1
	cmp r2, #0
	beq _02063744
_02063734:
	ldr r3, [r3, #0x10]
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bne _02063734
_02063744:
	str r12, [r3, #0x10]
	str r1, [r0]
	bx lr
_02063750:
	str r1, [r12, #0x10]
	bx lr
_02063758:
	beq _020637A8
	ldrb r3, [r1, #0x18]
_02063760:
	ldrb r0, [r2, #0x18]
	cmp r0, r3
	blo _02063798
	ldr r0, [r1, #0x10]
	mov r3, r1
	cmp r0, #0
	beq _0206378C
_0206377C:
	ldr r3, [r3, #0x10]
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bne _0206377C
_0206378C:
	str r1, [r12, #0x10]
	str r2, [r3, #0x10]
	bx lr
_02063798:
	mov r12, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _02063760
_020637A8:
	str r1, [r12, #0x10]
	bx lr
	arm_func_end addLink_

	arm_func_start Kernel_updateHintVec_
Kernel_updateHintVec_: ; 0x020637B0
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_020637C4:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _02063804
_020637D4:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	movne lr, r5, asr #5
	andne r2, r5, #0x1f
	ldrne r12, [r0, lr, lsl #2]
	add r5, r5, #1
	orrne r2, r12, r3, lsl r2
	strne r2, [r0, lr, lsl #2]
	ldrb r2, [r1, #0x19]
	cmp r5, r2
	blt _020637D4
_02063804:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020637C4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end Kernel_updateHintVec_

	arm_func_start NNS_G3dRenderObjAddAnmObj
NNS_G3dRenderObjAddAnmObj: ; 0x02063814
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _02063864
	cmp r0, #0x4d
	beq _0206384C
	cmp r0, #0x56
	beq _0206387C
	ldmfd sp!, {r3, r4, r5, pc}
_0206384C:
	add r0, r5, #0x3c
	bl Kernel_updateHintVec_
	mov r1, r4
	add r0, r5, #8
	bl addLink_
	ldmfd sp!, {r3, r4, r5, pc}
_02063864:
	add r0, r5, #0x44
	bl Kernel_updateHintVec_
	mov r1, r4
	add r0, r5, #0x10
	bl addLink_
	ldmfd sp!, {r3, r4, r5, pc}
_0206387C:
	add r0, r5, #0x4c
	bl Kernel_updateHintVec_
	mov r1, r4
	add r0, r5, #0x18
	bl addLink_
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dRenderObjAddAnmObj

	arm_func_start removeLink_
removeLink_: ; 0x02063894
	ldr r3, [r0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	bne _020638C4
	ldr r3, [r3, #0x10]
	mov r2, #0
	str r3, [r0]
	str r2, [r1, #0x10]
	mov r0, #1
	bx lr
_020638C4:
	ldr r2, [r3, #0x10]
	cmp r2, #0
	beq _02063900
_020638D0:
	cmp r2, r1
	bne _020638F0
	ldr r1, [r2, #0x10]
	mov r0, #0
	str r1, [r3, #0x10]
	str r0, [r2, #0x10]
	mov r0, #1
	bx lr
_020638F0:
	mov r3, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020638D0
_02063900:
	mov r0, #0
	bx lr
	arm_func_end removeLink_

	arm_func_start NNS_G3dRenderObjRemoveAnmObj
NNS_G3dRenderObjRemoveAnmObj: ; 0x02063908
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl removeLink_
	cmp r0, #0
	bne _0206394C
	mov r1, r4
	add r0, r5, #0x10
	bl removeLink_
	cmp r0, #0
	bne _0206394C
	mov r1, r4
	add r0, r5, #0x18
	bl removeLink_
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0206394C:
	ldr r0, [r5]
	orr r0, r0, #0x10
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dRenderObjRemoveAnmObj

	arm_func_start NNS_G3dRenderObjResetCallBack
NNS_G3dRenderObjResetCallBack: ; 0x0206395C
	mov r1, #0
	str r1, [r0, #0x20]
	strb r1, [r0, #0x24]
	strb r1, [r0, #0x25]
	bx lr
	arm_func_end NNS_G3dRenderObjResetCallBack

	arm_func_start NNS_G3dRenderObjSetInitFunc
NNS_G3dRenderObjSetInitFunc: ; 0x02063970
	str r1, [r0, #0x28]
	bx lr
	arm_func_end NNS_G3dRenderObjSetInitFunc

	arm_func_start NNS_G3dTexGetRequiredSize
NNS_G3dTexGetRequiredSize: ; 0x02063978
	cmp r0, #0
	ldrneh r0, [r0, #0xc]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dTexGetRequiredSize

	arm_func_start NNS_G3dTex4x4GetRequiredSize
NNS_G3dTex4x4GetRequiredSize: ; 0x0206398C
	cmp r0, #0
	ldrneh r0, [r0, #0x1c]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dTex4x4GetRequiredSize

	arm_func_start NNS_G3dTexSetTexKey
NNS_G3dTexSetTexKey: ; 0x020639A0
	cmp r1, #0
	strne r1, [r0, #8]
	cmp r2, #0
	strne r2, [r0, #0x18]
	bx lr
	arm_func_end NNS_G3dTexSetTexKey

	arm_func_start NNS_G3dTexLoad
NNS_G3dTexLoad: ; 0x020639B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r8, r1
	mov r9, r0
	beq _020639C8
	bl GX_BeginLoadTex
_020639C8:
	ldrh r0, [r9, #0xc]
	movs r2, r0, lsl #3
	beq _020639F8
	ldr r0, [r9, #8]
	ldr r3, [r9, #0x14]
	mov r1, r0, lsl #0x10
	add r0, r9, r3
	mov r1, r1, lsr #0xd
	bl GX_LoadTex
	ldrh r0, [r9, #0x10]
	orr r0, r0, #1
	strh r0, [r9, #0x10]
_020639F8:
	ldrh r0, [r9, #0x1c]
	movs r6, r0, lsl #3
	beq _02063A58
	ldr r1, [r9, #0x18]
	ldr r0, [r9, #0x24]
	mov r4, r1, lsl #0x10
	mov r7, r4, lsr #0xd
	mov r1, r7
	mov r2, r6
	add r0, r9, r0
	ldr r5, [r9, #0x28]
	bl GX_LoadTex
	ldr r0, _02063A68 ; =0x0001FFFF
	and r1, r7, #0x40000
	and r0, r0, r4, lsr #13
	mov r0, r0, lsr #1
	add r2, r0, #0x20000
	add r0, r9, r5
	add r1, r2, r1, lsr #2
	mov r2, r6, lsr #1
	bl GX_LoadTex
	ldrh r0, [r9, #0x20]
	orr r0, r0, #1
	strh r0, [r9, #0x20]
_02063A58:
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl GX_EndLoadTex
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02063A68: .word 0x0001FFFF
	arm_func_end NNS_G3dTexLoad

	arm_func_start NNS_G3dTexReleaseTexKey
NNS_G3dTexReleaseTexKey: ; 0x02063A6C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	beq _02063A94
	ldrh lr, [r0, #0x10]
	ldr r12, [r0, #8]
	mov r3, #0
	bic lr, lr, #1
	strh lr, [r0, #0x10]
	str r12, [r1]
	str r3, [r0, #8]
_02063A94:
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r12, [r0, #0x20]
	ldr r3, [r0, #0x18]
	mov r1, #0
	bic r12, r12, #1
	strh r12, [r0, #0x20]
	str r3, [r2]
	str r1, [r0, #0x18]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_G3dTexReleaseTexKey

	arm_func_start NNS_G3dPlttGetRequiredSize
NNS_G3dPlttGetRequiredSize: ; 0x02063ABC
	cmp r0, #0
	ldrneh r0, [r0, #0x30]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dPlttGetRequiredSize

	arm_func_start NNS_G3dPlttSetPlttKey
NNS_G3dPlttSetPlttKey: ; 0x02063AD0
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end NNS_G3dPlttSetPlttKey

	arm_func_start NNS_G3dPlttLoad
NNS_G3dPlttLoad: ; 0x02063AD8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r0
	beq _02063AEC
	bl GX_BeginLoadTexPltt
_02063AEC:
	ldr r0, [r4, #0x2c]
	ldrh r2, [r4, #0x30]
	mov r1, r0, lsl #0x10
	ldr r3, [r4, #0x38]
	mov r1, r1, lsr #0xd
	add r0, r4, r3
	mov r2, r2, lsl #3
	bl GX_LoadTexPltt
	ldrh r0, [r4, #0x32]
	cmp r5, #0
	orr r0, r0, #1
	strh r0, [r4, #0x32]
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl GX_EndLoadTexPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dPlttLoad

	arm_func_start NNS_G3dPlttReleasePlttKey
NNS_G3dPlttReleasePlttKey: ; 0x02063B28
	ldrh r3, [r0, #0x32]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	bic r3, r3, #1
	strh r3, [r0, #0x32]
	str r1, [r0, #0x2c]
	mov r0, r2
	bx lr
	arm_func_end NNS_G3dPlttReleasePlttKey

	arm_func_start bindMdlTex_Internal_
bindMdlTex_Internal_: ; 0x02063B48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, r3
	ldr r1, [r8]
	mov r10, r0
	and r0, r1, #0x1c000000
	ldrh r3, [r9]
	cmp r0, #0x14000000
	mov r5, #0
	add r0, r10, r3
	str r0, [sp]
	ldrne r0, [r2, #8]
	ldreq r0, [r2, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bic r11, r0, #0xe0000000
	ldrb r0, [r9, #2]
	cmp r0, #0
	bls _02063C64
	add r4, r10, #4
_02063B98:
	ldr r0, [sp]
	cmp r10, #0
	ldrb r2, [r0, r5]
	beq _02063BE8
	cmp r4, #0
	beq _02063BD4
	ldrb r0, [r10, #5]
	cmp r2, r0
	bhs _02063BD4
	ldrh r0, [r10, #0xa]
	add r1, r4, r0
	add r1, r1, #4
	ldrh r0, [r4, r0]
	mla r1, r0, r2, r1
	b _02063BD8
_02063BD4:
	mov r1, #0
_02063BD8:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, r10, r0
	bne _02063BEC
_02063BE8:
	mov r7, #0
_02063BEC:
	ldr r0, [r8]
	ldr r1, [r7, #0x14]
	add r0, r0, r11
	orr r0, r1, r0
	str r0, [r7, #0x14]
	ldr r3, [r8, #4]
	ldr r0, _02063C74 ; =0x000007FF
	ldrh r1, [r7, #0x20]
	and r2, r3, r0
	and r0, r3, r0, lsl #11
	mov r6, r0, lsr #0xb
	cmp r2, r1
	moveq r0, #0x1000
	beq _02063C30
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_02063C30:
	str r0, [r7, #0x24]
	ldrh r1, [r7, #0x22]
	cmp r6, r1
	moveq r0, #0x1000
	beq _02063C50
	mov r0, r6, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_02063C50:
	str r0, [r7, #0x28]
	ldrb r0, [r9, #2]
	add r5, r5, #1
	cmp r5, r0
	blo _02063B98
_02063C64:
	ldrb r0, [r9, #3]
	orr r0, r0, #1
	strb r0, [r9, #3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02063C74: .word 0x000007FF
	arm_func_end bindMdlTex_Internal_

	arm_func_start releaseMdlTex_Internal_
releaseMdlTex_Internal_: ; 0x02063C78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrh r3, [r1]
	ldrb r2, [r1, #2]
	mov lr, #0
	add r12, r0, r3
	cmp r2, #0
	bls _02063D1C
	ldr r4, _02063D2C ; =0xC00F0000
	add r2, r0, #4
	mov r7, lr
	mov r6, lr
	mov r5, #0x1000
_02063CA8:
	cmp r0, #0
	ldrb r3, [r12, lr]
	beq _02063CF4
	cmp r2, #0
	beq _02063CE0
	ldrb r8, [r0, #5]
	cmp r3, r8
	bhs _02063CE0
	ldrh r9, [r0, #0xa]
	ldrh r8, [r2, r9]
	add r9, r2, r9
	add r9, r9, #4
	mla r3, r8, r3, r9
	b _02063CE4
_02063CE0:
	mov r3, r7
_02063CE4:
	cmp r3, #0
	ldrne r3, [r3]
	addne r8, r0, r3
	bne _02063CF8
_02063CF4:
	mov r8, r6
_02063CF8:
	ldr r3, [r8, #0x14]
	add lr, lr, #1
	and r3, r3, r4
	str r3, [r8, #0x14]
	str r5, [r8, #0x24]
	str r5, [r8, #0x28]
	ldrb r3, [r1, #2]
	cmp lr, r3
	blo _02063CA8
_02063D1C:
	ldrb r0, [r1, #3]
	bic r0, r0, #1
	strb r0, [r1, #3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02063D2C: .word 0xC00F0000
	arm_func_end releaseMdlTex_Internal_

	arm_func_start NNS_G3dBindMdlTex
NNS_G3dBindMdlTex: ; 0x02063D30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r4, #0
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8]
	mov r7, #1
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _02063E1C
_02063D6C:
	cmp r5, #0
	beq _02063D98
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _02063D98
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6, lsl #4
	b _02063D9C
_02063D98:
	mov r1, r4
_02063D9C:
	cmp r9, #0
	moveq r3, r4
	beq _02063DB4
	add r0, r9, #0x3c
	bl NNS_G3dGetResDataByName
	mov r3, r0
_02063DB4:
	cmp r3, #0
	beq _02063E08
	cmp r5, #0
	beq _02063DE8
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _02063DE8
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _02063DEC
_02063DE8:
	mov r1, r4
_02063DEC:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _02063E0C
	mov r0, r8
	mov r2, r9
	bl bindMdlTex_Internal_
	b _02063E0C
_02063E08:
	mov r7, r4
_02063E0C:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	cmp r6, r0
	blo _02063D6C
_02063E1C:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NNS_G3dBindMdlTex

	arm_func_start NNS_G3dReleaseMdlTex
NNS_G3dReleaseMdlTex: ; 0x02063E24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r5, #0
	cmpne r1, #0
	addne r6, r0, r1
	moveq r6, #0
	ldrh r0, [r6]
	add r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldmlsfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r5
_02063E58:
	cmp r4, #0
	beq _02063E84
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02063E84
	ldrh r1, [r4, #6]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _02063E88
_02063E84:
	mov r1, r7
_02063E88:
	ldrb r0, [r1, #3]
	tst r0, #1
	beq _02063E9C
	mov r0, r6
	bl releaseMdlTex_Internal_
_02063E9C:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _02063E58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G3dReleaseMdlTex

	arm_func_start bindMdlPltt_Internal_
bindMdlPltt_Internal_: ; 0x02063EB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, [r2, #0x2c]
	ldrh r4, [r3, #2]
	mov r2, r2, lsl #0x10
	ldrh r5, [r1]
	mov r2, r2, lsr #0x10
	tst r4, #1
	bic r2, r2, #0xe0000000
	ldrh r4, [r3]
	mov r2, r2, lsl #0x10
	add r12, r0, r5
	mov r5, r2, lsr #0x10
	moveq r2, r4, lsl #0xf
	moveq r4, r2, lsr #0x10
	moveq r3, r5, lsl #0xf
	moveq r5, r3, lsr #0x10
	ldrb r2, [r1, #2]
	mov r3, #0
	cmp r2, #0
	bls _02063F7C
	add r2, r4, r5
	mov lr, r2, lsl #0x10
	add r2, r0, #4
	mov r4, lr, lsr #0x10
	mov r6, r3
	mov r5, r3
_02063F18:
	cmp r0, #0
	ldrb r8, [r12, r3]
	beq _02063F64
	cmp r2, #0
	beq _02063F50
	ldrb r7, [r0, #5]
	cmp r8, r7
	bhs _02063F50
	ldrh r7, [r0, #0xa]
	ldrh lr, [r2, r7]
	add r7, r2, r7
	add r7, r7, #4
	mla r7, lr, r8, r7
	b _02063F54
_02063F50:
	mov r7, r6
_02063F54:
	cmp r7, #0
	ldrne lr, [r7]
	addne r7, r0, lr
	bne _02063F68
_02063F64:
	mov r7, r5
_02063F68:
	strh r4, [r7, #0x1c]
	ldrb lr, [r1, #2]
	add r3, r3, #1
	cmp r3, lr
	blo _02063F18
_02063F7C:
	ldrb r0, [r1, #3]
	orr r0, r0, #1
	strb r0, [r1, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end bindMdlPltt_Internal_

	arm_func_start NNS_G3dBindMdlPltt
NNS_G3dBindMdlPltt: ; 0x02063F8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r4, #0
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8, #2]
	mov r7, #1
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _02064080
_02063FC8:
	cmp r5, #0
	beq _02063FF4
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _02063FF4
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r6, lsl #4
	b _02063FF8
_02063FF4:
	mov r1, r4
_02063FF8:
	cmp r9, #0
	ldrneh r0, [r9, #0x34]
	cmpne r0, #0
	moveq r3, r4
	beq _02064018
	add r0, r9, r0
	bl NNS_G3dGetResDataByName
	mov r3, r0
_02064018:
	cmp r3, #0
	beq _0206406C
	cmp r5, #0
	beq _0206404C
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _0206404C
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _02064050
_0206404C:
	mov r1, r4
_02064050:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _02064070
	mov r0, r8
	mov r2, r9
	bl bindMdlPltt_Internal_
	b _02064070
_0206406C:
	mov r7, r4
_02064070:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	cmp r6, r0
	blo _02063FC8
_02064080:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NNS_G3dBindMdlPltt

	arm_func_start NNS_G3dReleaseMdlPltt
NNS_G3dReleaseMdlPltt: ; 0x02064088
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r12, #0
	cmpne r1, #0
	addne r1, r0, r1
	moveq r1, #0
	ldrh r0, [r1, #2]
	add r3, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	bxls lr
	mov r1, r12
_020640B8:
	cmp r3, #0
	beq _020640E4
	ldrb r0, [r3, #1]
	cmp r12, r0
	bhs _020640E4
	ldrh r2, [r3, #6]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r2, r0, r12, r2
	b _020640E8
_020640E4:
	mov r2, r1
_020640E8:
	ldrb r0, [r2, #3]
	add r12, r12, #1
	tst r0, #1
	bicne r0, r0, #1
	strneb r0, [r2, #3]
	ldrb r0, [r3, #1]
	cmp r12, r0
	blo _020640B8
	bx lr
	arm_func_end NNS_G3dReleaseMdlPltt

	arm_func_start NNS_G3dBindMdlSet
NNS_G3dBindMdlSet: ; 0x0206410C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #9]
	mov r9, r1
	mov r7, #1
	cmp r0, #0
	mov r6, #0
	bls _020641B4
	add r5, r10, #8
	mov r4, r6
	mov r11, r6
_02064138:
	cmp r10, #0
	beq _02064180
	cmp r5, #0
	beq _0206416C
	ldrb r0, [r10, #9]
	cmp r6, r0
	bhs _0206416C
	ldrh r1, [r10, #0xe]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _02064170
_0206416C:
	mov r1, r4
_02064170:
	cmp r1, #0
	ldrne r0, [r1]
	addne r8, r10, r0
	bne _02064184
_02064180:
	mov r8, r11
_02064184:
	mov r0, r8
	mov r1, r9
	bl NNS_G3dBindMdlTex
	and r7, r7, r0
	mov r0, r8
	mov r1, r9
	bl NNS_G3dBindMdlPltt
	ldrb r1, [r10, #9]
	add r6, r6, #1
	and r7, r7, r0
	cmp r6, r1
	blo _02064138
_020641B4:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NNS_G3dBindMdlSet

	arm_func_start NNS_G3dReleaseMdlSet
NNS_G3dReleaseMdlSet: ; 0x020641BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrb r0, [r6, #9]
	mov r5, #0
	cmp r0, #0
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r4, r6, #8
	mov r8, r5
	mov r7, r5
_020641E0:
	cmp r6, #0
	beq _02064228
	cmp r4, #0
	beq _02064214
	ldrb r0, [r6, #9]
	cmp r5, r0
	bhs _02064214
	ldrh r1, [r6, #0xe]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _02064218
_02064214:
	mov r1, r8
_02064218:
	cmp r1, #0
	ldrne r0, [r1]
	addne r9, r6, r0
	bne _0206422C
_02064228:
	mov r9, r7
_0206422C:
	mov r0, r9
	bl NNS_G3dReleaseMdlTex
	mov r0, r9
	bl NNS_G3dReleaseMdlPltt
	ldrb r0, [r6, #9]
	add r5, r5, #1
	cmp r5, r0
	blo _020641E0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NNS_G3dReleaseMdlSet

	arm_func_start NNS_G3dGlbInit
NNS_G3dGlbInit: ; 0x02064250
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02064350 ; =0x17101610
	ldr r5, _02064354 ; =NNS_G3dGlb
	mov r4, #0
	stmia r5, {r0, r4}
	mov r1, #2
	str r1, [r5, #0x48]
	ldr r0, _02064358 ; =0x32323232
	ldr r1, _0206435C ; =0x60293130
	str r0, [r5, #0x7c]
	str r1, [r5, #0x90]
	ldr r0, _02064360 ; =0x33333333
	ldr r1, _02064364 ; =0x002A1B19
	str r0, [r5, #0xa4]
	ldr r0, _02064368 ; =NNS_G3dGlb_cameraMtx
	str r1, [r5, #0xb8]
	bl MTX_Identity43_
	ldr r0, _0206436C ; =NNS_G3dGlb_projMtx
	bl MTX_Identity44_
	ldr r0, _02064370 ; =0x2D8B62D8
	ldr r3, _02064374 ; =0x40000200
	str r0, [r5, #0x80]
	ldr r2, _02064378 ; =0xC0080000
	str r3, [r5, #0x84]
	sub r0, r3, #0xc0000001
	str r0, [r5, #0x88]
	ldr r1, _0206437C ; =0x4210C210
	str r2, [r5, #0x8c]
	str r1, [r5, #0x94]
	str r1, [r5, #0x98]
	ldr r0, _02064380 ; =0x001F008F
	sub r1, r2, #0x90000
	str r0, [r5, #0x9c]
	str r1, [r5, #0xa0]
	ldr r0, _02064384 ; =0x00007FFF
	mov r1, #0x4000001f
	str r0, [r5, #0xa8]
	ldr r0, _02064388 ; =0x800003E0
	str r1, [r5, #0xac]
	str r0, [r5, #0xb0]
	rsb r0, r3, #0x7e00
	str r0, [r5, #0xb4]
	str r4, [r5, #0xe0]
	str r4, [r5, #0xe4]
	ldr r0, _0206438C ; =NNS_G3dGlb_prmBaseRot
	str r4, [r5, #0xe8]
	bl MTX_Identity33_
	mov r0, #0x1000
	str r0, [r5, #0xec]
	str r0, [r5, #0xf0]
	str r0, [r5, #0xf4]
	str r4, [r5, #0xf8]
	str r4, [r5, #0xfc]
	str r4, [r5, #0x248]
	str r4, [r5, #0x244]
	str r4, [r5, #0x240]
	str r4, [r5, #0x254]
	str r4, [r5, #0x24c]
	str r0, [r5, #0x250]
	str r4, [r5, #0x25c]
	str r4, [r5, #0x258]
	sub r0, r0, #0x2000
	str r0, [r5, #0x260]
	ldmfd sp!, {r3, r4, r5, pc}
_02064350: .word 0x17101610
_02064354: .word NNS_G3dGlb
_02064358: .word 0x32323232
_0206435C: .word 0x60293130
_02064360: .word 0x33333333
_02064364: .word 0x002A1B19
_02064368: .word NNS_G3dGlb_cameraMtx
_0206436C: .word NNS_G3dGlb_projMtx
_02064370: .word 0x2D8B62D8
_02064374: .word 0x40000200
_02064378: .word 0xC0080000
_0206437C: .word 0x4210C210
_02064380: .word 0x001F008F
_02064384: .word 0x00007FFF
_02064388: .word 0x800003E0
_0206438C: .word NNS_G3dGlb_prmBaseRot
	arm_func_end NNS_G3dGlbInit

	arm_func_start NNS_G3dGlbFlushP
NNS_G3dGlbFlushP: ; 0x02064390
	stmfd sp!, {r4, lr}
	ldr r4, _020643BC ; =NNS_G3dGlb
	mov r2, #0x3e
	ldr r0, [r4]
	add r1, r4, #4
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r4, #0xfc]
	bic r0, r0, #1
	bic r0, r0, #2
	str r0, [r4, #0xfc]
	ldmfd sp!, {r4, pc}
_020643BC: .word NNS_G3dGlb
	arm_func_end NNS_G3dGlbFlushP

	arm_func_start NNS_G3dGlbFlushVP
NNS_G3dGlbFlushVP: ; 0x020643C0
	stmfd sp!, {r3, lr}
	ldr r0, _02064424 ; =0x00001610
	ldr r1, _02064428 ; =NNS_G3dGlb_mtxmode_proj
	mov r2, #0x11
	bl NNS_G3dGeBufferOP_N
	ldr r1, _0206442C ; =NNS_G3dGlb_cameraMtx
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	mov r3, #2
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	ldr r1, _02064430 ; =NNS_G3dGlb_cmd1
	mov r0, #0x15
	mov r2, #0x20
	bl NNS_G3dGeBufferOP_N
	ldr r0, _02064434 ; =NNS_G3dGlb
	ldr r1, [r0, #0xfc]
	bic r1, r1, #1
	orr r1, r1, #2
	str r1, [r0, #0xfc]
	ldmfd sp!, {r3, pc}
_02064424: .word 0x00001610
_02064428: .word NNS_G3dGlb_mtxmode_proj
_0206442C: .word NNS_G3dGlb_cameraMtx
_02064430: .word NNS_G3dGlb_cmd1
_02064434: .word NNS_G3dGlb
	arm_func_end NNS_G3dGlbFlushVP

	arm_func_start NNS_G3dGlbGetInvV
NNS_G3dGlbGetInvV: ; 0x02064438
	stmfd sp!, {r4, lr}
	ldr r4, _0206446C ; =NNS_G3dGlb
	ldr r0, [r4, #0xfc]
	tst r0, #8
	bne _02064464
	ldr r0, _02064470 ; =NNS_G3dGlb_cameraMtx
	ldr r1, _02064474 ; =NNS_G3dGlb_invCameraMtx
	bl MTX_Inverse43
	ldr r0, [r4, #0xfc]
	orr r0, r0, #8
	str r0, [r4, #0xfc]
_02064464:
	ldr r0, _02064474 ; =NNS_G3dGlb_invCameraMtx
	ldmfd sp!, {r4, pc}
_0206446C: .word NNS_G3dGlb
_02064470: .word NNS_G3dGlb_cameraMtx
_02064474: .word NNS_G3dGlb_invCameraMtx
	arm_func_end NNS_G3dGlbGetInvV

	arm_func_start calcSrtCameraMtx_
calcSrtCameraMtx_: ; 0x02064478
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _020644C8 ; =NNS_G3dGlb_srtCameraMtx
	ldr r0, _020644CC ; =NNS_G3dGlb_prmBaseRot
	ldr r1, _020644D0 ; =NNS_G3dGlb_cameraMtx
	mov r2, r4
	bl MTX_Concat43
	ldr r3, _020644D4 ; =NNS_G3dGlb
	mov r0, r4
	ldr r2, [r3, #0xf4]
	mov r1, r4
	str r2, [sp]
	ldr r2, [r3, #0xec]
	ldr r3, [r3, #0xf0]
	bl MTX_ScaleApply43
	ldr r1, _020644D8 ; =NNS_G3dGlb_invSrtCameraMtx
	mov r0, r4
	bl MTX_Inverse43
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020644C8: .word NNS_G3dGlb_srtCameraMtx
_020644CC: .word NNS_G3dGlb_prmBaseRot
_020644D0: .word NNS_G3dGlb_cameraMtx
_020644D4: .word NNS_G3dGlb
_020644D8: .word NNS_G3dGlb_invSrtCameraMtx
	arm_func_end calcSrtCameraMtx_

	arm_func_start NNS_G3dGlbGetWV
NNS_G3dGlbGetWV: ; 0x020644DC
	stmfd sp!, {r4, lr}
	ldr r4, _02064508 ; =NNS_G3dGlb
	ldr r0, [r4, #0xfc]
	tst r0, #0x80
	bne _02064500
	bl calcSrtCameraMtx_
	ldr r0, [r4, #0xfc]
	orr r0, r0, #0x80
	str r0, [r4, #0xfc]
_02064500:
	ldr r0, _0206450C ; =NNS_G3dGlb_srtCameraMtx
	ldmfd sp!, {r4, pc}
_02064508: .word NNS_G3dGlb
_0206450C: .word NNS_G3dGlb_srtCameraMtx
	arm_func_end NNS_G3dGlbGetWV

	arm_func_start NNS_G3dGlbGetInvWV
NNS_G3dGlbGetInvWV: ; 0x02064510
	stmfd sp!, {r4, lr}
	ldr r4, _0206453C ; =NNS_G3dGlb
	ldr r0, [r4, #0xfc]
	tst r0, #0x80
	bne _02064534
	bl calcSrtCameraMtx_
	ldr r0, [r4, #0xfc]
	orr r0, r0, #0x80
	str r0, [r4, #0xfc]
_02064534:
	ldr r0, _02064540 ; =NNS_G3dGlb_invSrtCameraMtx
	ldmfd sp!, {r4, pc}
_0206453C: .word NNS_G3dGlb
_02064540: .word NNS_G3dGlb_invSrtCameraMtx
	arm_func_end NNS_G3dGlbGetInvWV

	arm_func_start NNS_G3dGlbGetViewPort
NNS_G3dGlbGetViewPort: ; 0x02064544
	cmp r0, #0
	ldrne r12, _020645A4 ; =NNS_G3dGlb
	ldrne r12, [r12, #0xa0]
	andne r12, r12, #0xff
	strne r12, [r0]
	cmp r1, #0
	ldrne r0, _020645A4 ; =NNS_G3dGlb
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #8
	andne r0, r0, #0xff
	strne r0, [r1]
	cmp r2, #0
	ldrne r0, _020645A4 ; =NNS_G3dGlb
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #0x10
	andne r0, r0, #0xff
	strne r0, [r2]
	cmp r3, #0
	ldrne r0, _020645A4 ; =NNS_G3dGlb
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #0x18
	andne r0, r0, #0xff
	strne r0, [r3]
	bx lr
_020645A4: .word NNS_G3dGlb
	arm_func_end NNS_G3dGlbGetViewPort

	arm_func_start NNSi_G3dAnmBlendMat
NNSi_G3dAnmBlendMat: ; 0x020645A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	movs r5, r1
	mov r4, r2
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
_020645C4:
	ldrb r1, [r5, #0x19]
	cmp r4, r1
	bhs _02064604
	add r1, r5, r4, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _02064604
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _02064604
	mov r0, r6
	mov r1, r5
	and r2, r2, #0xff
	blx r3
	mov r0, r7
_02064604:
	ldr r5, [r5, #0x10]
	cmp r5, #0
	bne _020645C4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_G3dAnmBlendMat

	arm_func_start blendScaleVec_
blendScaleVec_: ; 0x02064614
	stmfd sp!, {r4, lr}
	cmp r3, #0
	beq _02064648
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	ldr r4, [r0]
	add r3, r3, r2
	add r1, r1, r2
	add r4, r4, r2
	str r3, [r0, #4]
	str r1, [r0, #8]
	str r4, [r0]
	ldmfd sp!, {r4, pc}
_02064648:
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r1, #8]
	mul lr, r2, r12
	ldmia r0, {r4, r12}
	mul r3, r2, r3
	mul r1, r2, r1
	ldr r2, [r0, #8]
	add r4, r4, lr, asr #12
	add r3, r12, r3, asr #12
	str r4, [r0]
	add r1, r2, r1, asr #12
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end blendScaleVec_

	arm_func_start NNSi_G3dAnmBlendJnt
NNSi_G3dAnmBlendJnt: ; 0x02064684
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	movs r9, r1
	mov r10, r0
	mov r8, r2
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r9, #0x10]
	cmp r2, #0
	bne _02064710
	ldrb r2, [r9, #0x19]
	cmp r8, r2
	bhs _02064704
	add r2, r9, r8, lsl #1
	ldrh r4, [r2, #0x1a]
	and r2, r4, #0x300
	cmp r2, #0x100
	bne _020646F8
	ldr r3, [r9, #0xc]
	cmp r3, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	and r2, r4, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020646F8:
	add sp, sp, #0x70
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02064704:
	add sp, sp, #0x70
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02064710:
	mov r5, #0
	mov r3, r5
	mov r6, r5
	mov r2, r9
_02064720:
	ldrb r0, [r2, #0x19]
	cmp r8, r0
	bhs _02064760
	add r0, r2, r8, lsl #1
	ldrh r0, [r0, #0x1a]
	and r0, r0, #0x300
	cmp r0, #0x100
	bne _02064760
	ldr r0, [r2, #4]
	cmp r0, #0x1000
	addgt r5, r5, #0x1000
	bgt _02064758
	cmp r0, #0
	addgt r5, r5, r0
_02064758:
	mov r1, r2
	add r3, r3, #1
_02064760:
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _02064720
	cmp r5, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r3, #1
	bne _020647B8
	ldr r3, [r1, #0xc]
	add r0, r1, r8, lsl #1
	cmp r3, #0
	ldrh r2, [r0, #0x1a]
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	and r2, r2, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020647B8:
	mov r4, #0x58
	mov r1, r10
	mov r2, r4
	mov r0, #0
	bl MIi_CpuClearFast
	sub r0, r4, #0x59
	str r0, [r10]
	mov r4, #0xc
	add r11, sp, #0x18
_020647DC:
	ldrb r0, [r9, #0x19]
	cmp r8, r0
	bhs _020649C0
	add r0, r9, r8, lsl #1
	ldrh r1, [r0, #0x1a]
	and r0, r1, #0x300
	cmp r0, #0x100
	bne _020649C0
	ldr r0, [r9, #4]
	cmp r0, #0
	ble _020649C0
	ldr r3, [r9, #0xc]
	cmp r3, #0
	beq _020649C0
	and r2, r1, #0xff
	mov r0, r11
	mov r1, r9
	blx r3
	cmp r6, #0
	bne _0206484C
	add r0, sp, #0x40
	add r1, sp, #0xc
	mov r2, r4
	bl MIi_CpuCopy32
	add r0, sp, #0x58
	add r1, sp, #0
	mov r2, r4
	bl MIi_CpuCopy32
_0206484C:
	cmp r5, #0x1000
	ldreq r7, [r9, #4]
	beq _02064868
	ldr r0, [r9, #4]
	mov r1, r5
	bl FX_Div
	mov r7, r0
_02064868:
	ldr r3, [sp, #0x18]
	add r0, r10, #4
	add r1, sp, #0x1c
	mov r2, r7
	and r3, r3, #1
	bl blendScaleVec_
	ldr r3, [sp, #0x18]
	add r0, r10, #0x10
	add r1, sp, #0x28
	mov r2, r7
	and r3, r3, #8
	bl blendScaleVec_
	ldr r3, [sp, #0x18]
	add r0, r10, #0x1c
	add r1, sp, #0x34
	mov r2, r7
	and r3, r3, #0x10
	bl blendScaleVec_
	ldr r0, [sp, #0x18]
	tst r0, #4
	bne _02064910
	ldr r0, [r10, #0x4c]
	ldr r2, [sp, #0x64]
	ldr r1, [r10, #0x50]
	smull r3, r2, r7, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r0, r0, r3
	str r0, [r10, #0x4c]
	ldr r2, [sp, #0x68]
	ldr r0, [r10, #0x54]
	smull r3, r2, r7, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r1, r1, r3
	str r1, [r10, #0x50]
	ldr r1, [sp, #0x6c]
	smull r2, r1, r7, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r0, r0, r2
	str r0, [r10, #0x54]
_02064910:
	ldr r0, [sp, #0x18]
	tst r0, #2
	bne _02064998
	ldr r2, [r10, #0x28]
	ldr r0, [sp, #0x40]
	ldr r1, [r10, #0x2c]
	mul r0, r7, r0
	add r0, r2, r0, asr #12
	str r0, [r10, #0x28]
	ldr r0, [sp, #0x44]
	ldr r2, [r10, #0x30]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x2c]
	ldr r0, [sp, #0x48]
	ldr r1, [r10, #0x34]
	mul r0, r7, r0
	add r0, r2, r0, asr #12
	str r0, [r10, #0x30]
	ldr r0, [sp, #0x4c]
	ldr r2, [r10, #0x38]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x34]
	ldr r0, [sp, #0x50]
	ldr r1, [r10, #0x3c]
	mul r0, r7, r0
	add r0, r2, r0, asr #12
	str r0, [r10, #0x38]
	ldr r0, [sp, #0x54]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x3c]
	b _020649B0
_02064998:
	ldr r1, [r10, #0x28]
	ldr r0, [r10, #0x38]
	add r1, r1, r7
	add r0, r0, r7
	str r1, [r10, #0x28]
	str r0, [r10, #0x38]
_020649B0:
	ldr r1, [r10]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	str r0, [r10]
_020649C0:
	ldr r9, [r9, #0x10]
	add r6, r6, #1
	cmp r9, #0
	bne _020647DC
	add r0, r10, #0x28
	add r1, r10, #0x34
	add r2, r10, #0x40
	bl VEC_CrossProduct
	ldr r0, [r10, #0x28]
	cmp r0, #0
	ldreq r0, [r10, #0x2c]
	cmpeq r0, #0
	ldreq r0, [r10, #0x30]
	cmpeq r0, #0
	bne _02064A10
	add r0, sp, #0xc
	add r1, r10, #0x28
	mov r2, #0xc
	bl MIi_CpuCopy32
	b _02064A1C
_02064A10:
	add r0, r10, #0x28
	mov r1, r0
	bl VEC_Normalize
_02064A1C:
	ldr r0, [r10, #0x40]
	cmp r0, #0
	ldreq r0, [r10, #0x44]
	cmpeq r0, #0
	ldreq r0, [r10, #0x48]
	cmpeq r0, #0
	bne _02064A4C
	add r0, sp, #0
	add r1, r10, #0x40
	mov r2, #0xc
	bl MIi_CpuCopy32
	b _02064A58
_02064A4C:
	add r0, r10, #0x40
	mov r1, r0
	bl VEC_Normalize
_02064A58:
	add r0, r10, #0x40
	add r1, r10, #0x28
	add r2, r10, #0x34
	bl VEC_CrossProduct
	mov r0, #1
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NNSi_G3dAnmBlendJnt

	arm_func_start NNSi_G3dAnmBlendVis
NNSi_G3dAnmBlendVis: ; 0x02064A74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0
	mov r6, r1
	mov r5, r2
	str r0, [r7]
	add r4, sp, #0
	mov r8, #1
_02064A98:
	ldrb r1, [r6, #0x19]
	cmp r5, r1
	bhs _02064AE8
	add r1, r6, r5, lsl #1
	ldrh r2, [r1, #0x1a]
	and r1, r2, #0x300
	cmp r1, #0x100
	bne _02064AE8
	ldr r3, [r6, #0xc]
	cmp r3, #0
	beq _02064AE8
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	blx r3
	ldr r2, [r7]
	ldr r1, [sp]
	mov r0, r8
	orr r1, r2, r1
	str r1, [r7]
_02064AE8:
	ldr r6, [r6, #0x10]
	cmp r6, #0
	bne _02064A98
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G3dAnmBlendVis

	arm_func_start G3dDrawInternal_Loop_
G3dDrawInternal_Loop_: ; 0x02064AFC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02064B40 ; =NNS_G3dFuncSbcTable
	mov r4, r0
_02064B08:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldrb r3, [r0]
	mov r0, r4
	and r1, r3, #0x1f
	ldr r2, [r5, r1, lsl #2]
	and r1, r3, #0xe0
	blx r2
	ldr r0, [r4, #8]
	tst r0, #0x20
	beq _02064B08
	ldmfd sp!, {r3, r4, r5, pc}
_02064B40: .word NNS_G3dFuncSbcTable
	arm_func_end G3dDrawInternal_Loop_

	arm_func_start G3dDrawInternal_
G3dDrawInternal_: ; 0x02064B44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x188
	bl MIi_CpuClearFast
	mov r0, #1
	str r0, [r5, #0xc4]
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	ldr r2, _02064CD0 ; =NNS_G3dGetJointScale_FuncArray
	cmp r0, #0
	ldreq r1, [r4, #4]
	ldreq r0, [r1, #4]
	addeq r0, r1, r0
	stmia r5, {r0, r4}
	ldr r0, [r4, #4]
	cmp r0, #0
	addne r0, r0, #0x40
	moveq r0, #0
	str r0, [r5, #0xd4]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #8]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xd8]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #0xc]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xdc]
	ldr r0, [r4, #4]
	ldr r1, _02064CD4 ; =NNS_G3dSendJointSRT_FuncArray
	ldrb r3, [r0, #0x15]
	ldr r0, _02064CD8 ; =NNS_G3dSendTexSRT_FuncArray
	ldr r2, [r2, r3, lsl #2]
	str r2, [r5, #0xe8]
	ldr r2, [r4, #4]
	ldrb r2, [r2, #0x15]
	ldr r1, [r1, r2, lsl #2]
	str r1, [r5, #0xec]
	ldr r1, [r4, #4]
	ldrb r1, [r1, #0x16]
	ldr r0, [r0, r1, lsl #2]
	str r0, [r5, #0xf0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0xe0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	str r0, [r5, #0xe4]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _02064C54
	ldrb r0, [r4, #0x24]
	cmp r0, #0x20
	bhs _02064C54
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xc]
	ldrb r0, [r4, #0x24]
	ldrb r1, [r4, #0x25]
	add r0, r5, r0
	strb r1, [r0, #0x8c]
_02064C54:
	ldr r0, [r4]
	tst r0, #1
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x80
	strne r0, [r5, #8]
	ldr r0, [r4]
	tst r0, #2
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x100
	strne r0, [r5, #8]
	ldr r0, [r4]
	tst r0, #4
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x200
	strne r0, [r5, #8]
	ldr r0, [r4]
	tst r0, #8
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x400
	strne r0, [r5, #8]
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _02064CB8
	mov r0, r5
	blx r1
_02064CB8:
	mov r0, r5
	bl G3dDrawInternal_Loop_
	ldr r0, [r4]
	bic r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02064CD0: .word NNS_G3dGetJointScale_FuncArray
_02064CD4: .word NNS_G3dSendJointSRT_FuncArray
_02064CD8: .word NNS_G3dSendTexSRT_FuncArray
	arm_func_end G3dDrawInternal_

	arm_func_start Sbc_updateHintVec_
Sbc_updateHintVec_: ; 0x02064CDC
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_02064CF0:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _02064D30
_02064D00:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	movne lr, r5, asr #5
	andne r2, r5, #0x1f
	ldrne r12, [r0, lr, lsl #2]
	add r5, r5, #1
	orrne r2, r12, r3, lsl r2
	strne r2, [r0, lr, lsl #2]
	ldrb r2, [r1, #0x19]
	cmp r5, r2
	blt _02064D00
_02064D30:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _02064CF0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end Sbc_updateHintVec_

	arm_func_start NNS_G3dDraw
NNS_G3dDraw: ; 0x02064D40
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x188
	mov r4, r0
	ldr r0, [r4]
	and r0, r0, #0x10
	cmp r0, #0x10
	bne _02064DDC
	mov r6, #0
	mov r5, #8
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x3c
	bl MIi_CpuClear32
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x44
	bl MIi_CpuClear32
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x4c
	bl MIi_CpuClear32
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02064DA8
	add r0, r4, #0x3c
	bl Sbc_updateHintVec_
_02064DA8:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02064DBC
	add r0, r4, #0x44
	bl Sbc_updateHintVec_
_02064DBC:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _02064DD0
	add r0, r4, #0x4c
	bl Sbc_updateHintVec_
_02064DD0:
	ldr r0, [r4]
	bic r0, r0, #0x10
	str r0, [r4]
_02064DDC:
	ldr r5, _02064E1C ; =NNS_G3dRS
	ldr r0, [r5]
	cmp r0, #0
	beq _02064DFC
	mov r1, r4
	bl G3dDrawInternal_
	add sp, sp, #0x188
	ldmfd sp!, {r4, r5, r6, pc}
_02064DFC:
	add r0, sp, #0
	mov r1, r4
	str r0, [r5]
	bl G3dDrawInternal_
	mov r0, #0
	str r0, [r5]
	add sp, sp, #0x188
	ldmfd sp!, {r4, r5, r6, pc}
_02064E1C: .word NNS_G3dRS
	arm_func_end NNS_G3dDraw

	arm_func_start NNSi_G3dFuncSbc_NOP
NNSi_G3dFuncSbc_NOP: ; 0x02064E20
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _02064E38
	blx r1
_02064E38:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_G3dFuncSbc_NOP

	arm_func_start NNSi_G3dFuncSbc_RET
NNSi_G3dFuncSbc_RET: ; 0x02064E48
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02064E60
	blx r1
_02064E60:
	ldr r0, [r4, #8]
	orr r0, r0, #0x20
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_G3dFuncSbc_RET

	arm_func_start NNSi_G3dFuncSbc_NODE
NNSi_G3dFuncSbc_NODE: ; 0x02064E70
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #8]
	tst r2, #0x200
	bne _02064FD8
	ldr r0, [r6, #0x14]
	ldr r1, [r6]
	cmp r0, #0
	ldrb r4, [r1, #1]
	ldrneb r5, [r6, #0x8e]
	orr r2, r2, #4
	add r1, r6, #0x184
	moveq r5, #0
	strb r4, [r6, #0xac]
	str r2, [r6, #8]
	str r1, [r6, #0xb8]
	cmp r5, #1
	bne _02064EEC
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	bic r2, r0, #0x40
	mov r0, r6
	str r2, [r6, #8]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _02064EF0
_02064EEC:
	mov r0, #0
_02064EF0:
	cmp r0, #0
	bne _02064F50
	ldr r12, [r6, #4]
	ldr r1, [r12, #0x18]
	cmp r1, #0
	beq _02064F3C
	mov r0, r4, lsr #5
	add r0, r12, r0, lsl #2
	ldr r0, [r0, #0x4c]
	and r2, r4, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _02064F3C
	ldr r0, [r6, #0xb8]
	ldr r3, [r12, #0x1c]
	mov r2, r4
	blx r3
	cmp r0, #0
	bne _02064F50
_02064F3C:
	ldr r1, [r6]
	ldr r0, [r6, #0xb8]
	ldrb r1, [r1, #2]
	and r1, r1, #1
	str r1, [r0]
_02064F50:
	cmp r5, #2
	bne _02064F8C
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	bic r2, r0, #0x40
	mov r0, r6
	str r2, [r6, #8]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _02064F90
_02064F8C:
	mov r0, #0
_02064F90:
	cmp r0, #0
	bne _02064FB8
	ldr r0, [r6, #0xb8]
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r6, #8]
	orrne r0, r0, #1
	strne r0, [r6, #8]
	biceq r0, r0, #1
	streq r0, [r6, #8]
_02064FB8:
	cmp r5, #3
	bne _02064FD8
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x14]
	bic r2, r0, #0x40
	mov r0, r6
	str r2, [r6, #8]
	blx r1
_02064FD8:
	ldr r0, [r6]
	add r0, r0, #3
	str r0, [r6]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_NODE

	arm_func_start NNSi_G3dFuncSbc_MTX
NNSi_G3dFuncSbc_MTX: ; 0x02064FE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _020650A4
	tst r0, #1
	beq _020650A4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	moveq r5, #0
	cmp r5, #1
	bne _02065050
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x18]
	bic r2, r0, #0x40
	mov r0, r4
	str r2, [r4, #8]
	blx r1
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	ldr r0, [r4, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _02065054
_02065050:
	mov r0, #0
_02065054:
	cmp r0, #0
	bne _02065084
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _02065084
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_02065084:
	cmp r5, #3
	bne _020650A4
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x18]
	bic r2, r0, #0x40
	mov r0, r4
	str r2, [r4, #8]
	blx r1
_020650A4:
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dFuncSbc_MTX

	arm_func_start NNSi_G3dFuncSbc_MAT_InternalDefault
NNSi_G3dFuncSbc_MAT_InternalDefault: ; 0x020650B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldr r4, [r8, #8]
	ldr r0, [r8, #0x1c]
	orr r5, r4, #8
	str r5, [r8, #8]
	cmp r0, #0
	ldrneb r5, [r8, #0x90]
	mov r6, r3
	mov r9, #0
	add r3, r8, #0xf4
	moveq r5, r9
	mov r4, r1
	mov r7, r2
	strb r6, [r8, #0xad]
	str r3, [r8, #0xb0]
	mov r10, #0x38
	cmp r5, #1
	bne _02065138
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x1c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	ldrneb r5, [r8, #0x90]
	ldr r0, [r8, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _0206513C
_02065138:
	mov r0, #0
_0206513C:
	cmp r0, #0
	bne _02065400
	ldr r0, [r8, #4]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _02065164
	ldr r1, [r8, #8]
	tst r1, #0x80
	mlaeq r4, r6, r10, r0
	beq _020653FC
_02065164:
	cmp r4, #0x20
	beq _02065174
	cmp r4, #0x40
	bne _020651A8
_02065174:
	mov r1, r6, lsr #5
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0xbc]
	and r2, r6, #0x1f
	mov r3, #1
	tst r1, r3, lsl r2
	beq _020651A8
	mov r1, #0x38
	cmp r0, #0
	mlane r4, r6, r1, r0
	ldreq r0, _02065514 ; =NNS_G3dRSOnGlb
	mlaeq r4, r6, r1, r0
	b _020653FC
_020651A8:
	cmp r0, #0
	mov r2, #0x38
	beq _020651E0
	add r10, r8, #0xbc
	mov r4, r6, lsr #5
	ldr r3, [r10, r4, lsl #2]
	and r0, r6, #0x1f
	mov r1, #1
	orr r0, r3, r1, lsl r0
	str r0, [r10, r4, lsl #2]
	ldr r0, [r8, #4]
	ldr r0, [r0, #0x38]
	mla r4, r6, r2, r0
	b _02065210
_020651E0:
	cmp r4, #0x40
	addne r4, r8, #0xf4
	bne _02065210
	add r1, r8, #0xbc
	mov r0, r6, lsr #5
	ldr r3, _02065514 ; =NNS_G3dRSOnGlb
	ldr r11, [r1, r0, lsl #2]
	and r4, r6, #0x1f
	mov r10, #1
	orr r10, r11, r10, lsl r4
	mla r4, r6, r2, r3
	str r10, [r1, r0, lsl #2]
_02065210:
	str r9, [r4]
	ldr r3, [r8, #0xd8]
	cmp r3, #0
	beq _02065260
	adds r2, r3, #4
	beq _0206524C
	ldrb r0, [r3, #5]
	cmp r6, r0
	bhs _0206524C
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _02065250
_0206524C:
	mov r1, #0
_02065250:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r3, r0
	bne _02065264
_02065260:
	mov r0, #0
_02065264:
	ldrh r0, [r0, #0x1e]
	ldrh r10, [r7, #0x1e]
	ldr r2, _02065518 ; =matColorMask_
	tst r0, #0x20
	ldrne r0, [r4]
	mov r1, r10, asr #6
	orrne r0, r0, #0x20
	strne r0, [r4]
	ldr r11, _0206551C ; =NNS_G3dGlb
	and r1, r1, #7
	ldr r9, [r2, r1, lsl #2]
	ldr r3, [r7, #4]
	mov r1, r10, asr #9
	and r1, r1, #7
	ldr r2, [r2, r1, lsl #2]
	ldr r1, [r7, #8]
	ldr lr, [r11, #0x94]
	mvn r12, r9
	and r3, r3, r9
	and r12, lr, r12
	orr r3, r12, r3
	str r3, [r4, #4]
	ldr r12, [r11, #0x98]
	mvn r9, r2
	and r9, r12, r9
	and r1, r1, r2
	orr r1, r9, r1
	str r1, [r4, #8]
	ldr r0, [r7, #0x10]
	ldr r3, [r7, #0xc]
	mvn r1, r0
	ldr r2, [r11, #0x9c]
	and r0, r3, r0
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r7, #0x14]
	ldrh r0, [r7, #0x1c]
	str r1, [r4, #0x10]
	tst r10, #1
	str r0, [r4, #0x14]
	beq _02065394
	tst r10, #2
	ldrne r1, [r4]
	add r0, r7, #0x2c
	orrne r1, r1, #1
	strne r1, [r4]
	bne _02065338
	ldr r2, [r0]
	ldr r1, [r0, #4]
	str r2, [r4, #0x18]
	str r1, [r4, #0x1c]
	add r0, r0, #8
_02065338:
	ldrh r1, [r7, #0x1e]
	tst r1, #4
	ldrne r1, [r4]
	orrne r1, r1, #2
	strne r1, [r4]
	bne _02065364
	ldrsh r2, [r0]
	ldrsh r1, [r0, #2]
	add r0, r0, #4
	strh r2, [r4, #0x20]
	strh r1, [r4, #0x22]
_02065364:
	ldrh r1, [r7, #0x1e]
	tst r1, #8
	ldreq r1, [r0]
	ldreq r0, [r0, #4]
	streq r1, [r4, #0x24]
	streq r0, [r4, #0x28]
	ldrne r0, [r4]
	orrne r0, r0, #4
	strne r0, [r4]
	ldr r0, [r4]
	orr r0, r0, #8
	str r0, [r4]
_02065394:
	ldr r9, [r8, #4]
	ldr r1, [r9, #8]
	cmp r1, #0
	beq _020653D0
	mov r0, r6, lsr #5
	add r0, r9, r0, lsl #2
	ldr r0, [r0, #0x3c]
	and r2, r6, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _020653D0
	ldr r3, [r9, #0xc]
	mov r0, r4
	mov r2, r6
	blx r3
_020653D0:
	ldr r0, [r4]
	tst r0, #0x18
	beq _020653FC
	ldrh r2, [r7, #0x20]
	ldrh r0, [r7, #0x22]
	ldr r1, [r7, #0x24]
	strh r2, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	ldr r0, [r7, #0x28]
	str r1, [r4, #0x30]
	str r0, [r4, #0x34]
_020653FC:
	str r4, [r8, #0xb0]
_02065400:
	cmp r5, #2
	bne _0206543C
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x1c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	ldrneb r5, [r8, #0x90]
	ldr r0, [r8, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _02065440
_0206543C:
	mov r0, #0
_02065440:
	cmp r0, #0
	bne _020654E8
	ldr r4, [r8, #0xb0]
	ldr r1, [r4, #0xc]
	tst r1, #0x1f0000
	beq _020654DC
	ldr r0, [r4]
	tst r0, #0x20
	bicne r0, r1, #0x1f0000
	strne r0, [r4, #0xc]
	ldr r0, [r8, #8]
	bic r0, r0, #2
	str r0, [r8, #8]
	tst r0, #0x100
	bne _020654E8
	ldr r0, _02065520 ; =0x00293130
	ldr r3, _02065524 ; =0x00002B2A
	str r0, [sp]
	ldr r2, [r4, #4]
	add r1, sp, #4
	str r2, [sp, #4]
	ldr r6, [r4, #8]
	mov r2, #6
	str r6, [sp, #8]
	ldr r6, [r4, #0xc]
	str r6, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r4, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [r4, #0x14]
	str r3, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r4]
	tst r0, #0x18
	beq _020654E8
	ldr r1, [r8, #0xf0]
	mov r0, r4
	blx r1
	b _020654E8
_020654DC:
	ldr r0, [r8, #8]
	orr r0, r0, #2
	str r0, [r8, #8]
_020654E8:
	cmp r5, #3
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x1c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02065514: .word NNS_G3dRSOnGlb
_02065518: .word matColorMask_
_0206551C: .word NNS_G3dGlb
_02065520: .word 0x00293130
_02065524: .word 0x00002B2A
	arm_func_end NNSi_G3dFuncSbc_MAT_InternalDefault

	arm_func_start NNSi_G3dFuncSbc_MAT
NNSi_G3dFuncSbc_MAT: ; 0x02065528
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	tst r2, #0x200
	bne _020655C4
	ldr r0, [r4]
	tst r2, #1
	ldrb r3, [r0, #1]
	bne _02065560
	tst r2, #8
	beq _02065560
	ldrb r0, [r4, #0xad]
	cmp r3, r0
	beq _020655C4
_02065560:
	ldr lr, [r4, #0xd8]
	cmp lr, #0
	beq _020655AC
	adds r12, lr, #4
	beq _02065598
	ldrb r0, [lr, #5]
	cmp r3, r0
	bhs _02065598
	ldrh r2, [lr, #0xa]
	ldrh r0, [r12, r2]
	add r2, r12, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _0206559C
_02065598:
	mov r2, #0
_0206559C:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, lr, r0
	bne _020655B0
_020655AC:
	mov r2, #0
_020655B0:
	ldrh lr, [r2]
	ldr r12, _020655D4 ; =NNS_G3dFuncSbcMatTable
	mov r0, r4
	ldr r12, [r12, lr, lsl #2]
	blx r12
_020655C4:
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_020655D4: .word NNS_G3dFuncSbcMatTable
	arm_func_end NNSi_G3dFuncSbc_MAT

	arm_func_start NNSi_G3dFuncSbc_SHP_InternalDefault
NNSi_G3dFuncSbc_SHP_InternalDefault: ; 0x020655D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r2
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
	cmp r6, #1
	bne _02065630
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	ldr r0, [r5, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _02065634
_02065630:
	mov r0, #0
_02065634:
	cmp r0, #0
	bne _02065658
	ldr r0, [r5, #8]
	tst r0, #0x100
	bne _02065658
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, r4, r0
	bl NNS_G3dGeSendDL
_02065658:
	cmp r6, #2
	bne _02065688
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
_02065688:
	cmp r6, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x20]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_SHP_InternalDefault

	arm_func_start NNSi_G3dFuncSbc_SHP
NNSi_G3dFuncSbc_SHP: ; 0x020656AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _02065738
	tst r0, #1
	beq _02065738
	tst r0, #2
	bne _02065738
	ldr r0, [r4]
	ldr r12, [r4, #0xdc]
	ldrb r3, [r0, #1]
	cmp r12, #0
	beq _02065720
	beq _0206570C
	ldrb r0, [r12, #1]
	cmp r3, r0
	bhs _0206570C
	ldrh r2, [r12, #6]
	ldrh r0, [r12, r2]
	add r2, r12, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _02065710
_0206570C:
	mov r2, #0
_02065710:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, r12, r0
	bne _02065724
_02065720:
	mov r2, #0
_02065724:
	ldrh lr, [r2]
	ldr r12, _02065748 ; =NNS_G3dFuncSbcShpTable
	mov r0, r4
	ldr r12, [r12, lr, lsl #2]
	blx r12
_02065738:
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_02065748: .word NNS_G3dFuncSbcShpTable
	arm_func_end NNSi_G3dFuncSbc_SHP

	arm_func_start NNSi_G3dFuncSbc_NODEDESC
NNSi_G3dFuncSbc_NODEDESC: ; 0x0206574C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r2, [r10]
	ldr r0, [r10, #8]
	ldrb r7, [r2, #1]
	orr r0, r0, #0x10
	mov r9, r1
	strb r7, [r10, #0xae]
	str r0, [r10, #8]
	tst r0, #0x400
	mov r6, #0
	mov r4, #4
	beq _020657DC
	cmp r9, #0x40
	cmpne r9, #0x60
	addeq r4, r4, #1
	cmp r9, #0x20
	beq _020657A0
	cmp r9, #0x60
	bne _020657C8
_020657A0:
	tst r0, #0x100
	add r4, r4, #1
	bne _020657C8
	ldr r0, [r10]
	add r1, sp, #0x10
	ldrb r3, [r0, #4]
	mov r0, #0x14
	mov r2, #1
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
_020657C8:
	ldr r0, [r10]
	add sp, sp, #0x14
	add r0, r0, r4
	str r0, [r10]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020657DC:
	cmp r9, #0x40
	beq _020657EC
	cmp r9, #0x60
	bne _02065824
_020657EC:
	ldr r0, [r10]
	cmp r9, #0x40
	ldreqb r0, [r0, #4]
	add r4, r4, #1
	streq r0, [sp, #0xc]
	ldrneb r0, [r0, #5]
	strne r0, [sp, #0xc]
	ldr r0, [r10, #8]
	tst r0, #0x100
	bne _02065824
	add r1, sp, #0xc
	mov r0, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_02065824:
	ldr r0, [r10, #0x24]
	add r1, r10, #0x12c
	cmp r0, #0
	ldrneb r8, [r10, #0x92]
	str r1, [r10, #0xb4]
	moveq r8, #0
	cmp r8, #1
	bne _02065878
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x24]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #0x24]
	cmp r0, #0
	ldrneb r8, [r10, #0x92]
	ldr r0, [r10, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _0206587C
_02065878:
	mov r0, #0
_0206587C:
	cmp r0, #0
	bne _02065AB0
	ldr r0, [r10, #4]
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _020658B0
	mov r0, #0x58
	mla r5, r7, r0, r1
	ldr r0, [r10, #8]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	b _020658B8
_020658B0:
	add r5, r10, #0x12c
	mov r0, #0
_020658B8:
	cmp r0, #0
	bne _02065AAC
	str r6, [r5]
	ldr r0, [r10, #4]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020658EC
	ldr r3, [r0, #0x14]
	mov r0, r5
	mov r2, r7
	blx r3
	cmp r0, #0
	bne _02065AAC
_020658EC:
	ldr r2, [r10, #0xd4]
	cmp r2, #0
	beq _02065934
	beq _02065920
	ldrb r0, [r2, #1]
	cmp r7, r0
	bhs _02065920
	ldrh r1, [r2, #6]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r7, r1
	b _02065924
_02065920:
	mov r1, #0
_02065924:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, r2, r0
	bne _02065938
_02065934:
	mov r7, #0
_02065938:
	ldrh r0, [r7]
	add r6, r7, #4
	tst r0, #1
	ldrne r0, [r5]
	orrne r0, r0, #4
	strne r0, [r5]
	bne _02065970
	ldr r0, [r6]
	str r0, [r5, #0x4c]
	ldr r0, [r6, #4]
	str r0, [r5, #0x50]
	ldr r0, [r6, #8]
	add r6, r6, #0xc
	str r0, [r5, #0x54]
_02065970:
	ldrh r0, [r7]
	tst r0, #2
	ldrne r0, [r5]
	orrne r0, r0, #2
	strne r0, [r5]
	bne _02065A94
	tst r0, #8
	beq _02065A48
	and r1, r0, #0xf0
	mov r11, r1, asr #4
	ldrsh r1, [r6]
	add r0, r5, #0x28
	str r1, [sp]
	ldrsh r1, [r6, #2]
	str r1, [sp, #4]
	blx MI_Zero36B
	ldrh r0, [r7]
	ldr r2, _02065B98 ; =pivotUtil_
	ldr r1, _02065B9C ; =pivotUtil_[1]
	tst r0, #0x100
	mov r0, #0x1000
	ldrb r2, [r2, r11, lsl #2]
	ldrb r1, [r1, r11, lsl #2]
	rsbne r0, r0, #0
	add r3, r5, r11, lsl #2
	str r0, [r3, #0x28]
	ldr r0, [sp]
	add r2, r5, r2, lsl #2
	str r0, [r2, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	add r6, r6, #4
	tst r0, #0x200
	ldrne r0, [sp, #4]
	rsbne r0, r0, #0
	strne r0, [sp, #4]
	ldr r0, _02065BA0 ; =pivotUtil_[2]
	ldrb r0, [r0, r11, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp, #4]
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	tst r0, #0x400
	ldrne r0, [sp]
	rsbne r0, r0, #0
	strne r0, [sp]
	ldr r0, _02065BA4 ; =pivotUtil_[3]
	ldrb r0, [r0, r11, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp]
	str r0, [r1, #0x28]
	b _02065A94
_02065A48:
	ldrsh r0, [r7, #2]
	str r0, [r5, #0x28]
	ldrsh r0, [r6]
	str r0, [r5, #0x2c]
	ldrsh r0, [r6, #2]
	str r0, [r5, #0x30]
	ldrsh r0, [r6, #4]
	str r0, [r5, #0x34]
	ldrsh r0, [r6, #6]
	str r0, [r5, #0x38]
	ldrsh r0, [r6, #8]
	str r0, [r5, #0x3c]
	ldrsh r0, [r6, #0xa]
	str r0, [r5, #0x40]
	ldrsh r0, [r6, #0xc]
	str r0, [r5, #0x44]
	ldrsh r0, [r6, #0xe]
	add r6, r6, #0x10
	str r0, [r5, #0x48]
_02065A94:
	ldrh r3, [r7]
	ldr r2, [r10]
	ldr r7, [r10, #0xe8]
	mov r0, r5
	mov r1, r6
	blx r7
_02065AAC:
	str r5, [r10, #0xb4]
_02065AB0:
	cmp r8, #2
	bne _02065AEC
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x24]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #0x24]
	cmp r0, #0
	ldrneb r8, [r10, #0x92]
	ldr r0, [r10, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _02065AF0
_02065AEC:
	mov r0, #0
_02065AF0:
	cmp r0, #0
	bne _02065B10
	ldr r0, [r10, #8]
	tst r0, #0x100
	bne _02065B10
	ldr r0, [r10, #0xb4]
	ldr r1, [r10, #0xec]
	blx r1
_02065B10:
	mov r0, #0
	str r0, [r10, #0xb4]
	cmp r8, #3
	bne _02065B40
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x24]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #8]
	and r0, r0, #0x40
_02065B40:
	cmp r9, #0x20
	beq _02065B50
	cmp r9, #0x60
	bne _02065B84
_02065B50:
	cmp r0, #0
	add r4, r4, #1
	bne _02065B84
	ldr r0, [r10, #8]
	tst r0, #0x100
	bne _02065B84
	ldr r0, [r10]
	add r1, sp, #8
	ldrb r3, [r0, #4]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_02065B84:
	ldr r0, [r10]
	add r0, r0, r4
	str r0, [r10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02065B98: .word pivotUtil_
_02065B9C: .word pivotUtil_ + 1
_02065BA0: .word pivotUtil_ + 2
_02065BA4: .word pivotUtil_ + 3
	arm_func_end NNSi_G3dFuncSbc_NODEDESC

	arm_func_start NNSi_G3dFuncSbc_BB
NNSi_G3dFuncSbc_BB: ; 0x02065BA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r10, r0
	ldr r0, [r10, #8]
	mov r9, r1
	tst r0, #0x200
	mov r4, #0
	mov r5, #2
	ldr r6, _02065E68 ; =0x02091148
	ldr r7, _02065E6C ; =0x02091154
	beq _02065C00
	cmp r9, #0x40
	cmpne r9, #0x60
	addeq r5, r5, #1
	cmp r9, #0x20
	cmpne r9, #0x60
	ldr r0, [r10]
	addeq r5, r5, #1
	add r0, r0, r5
	add sp, sp, #0xc8
	str r0, [r10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02065C00:
	cmp r9, #0x40
	beq _02065C10
	cmp r9, #0x60
	bne _02065C44
_02065C10:
	tst r0, #0x100
	add r5, r5, #1
	bne _02065C44
	ldr r0, [r10]
	cmp r9, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl NNS_G3dGeBufferOP_N
_02065C44:
	ldr r0, [r10, #0x28]
	cmp r0, #0
	ldrneb r8, [r10, #0x93]
	moveq r8, #0
	cmp r8, #1
	bne _02065C90
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x28]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #0x28]
	cmp r0, #0
	ldrneb r8, [r10, #0x93]
	ldr r0, [r10, #8]
	moveq r8, #0
	and r1, r0, #0x40
	b _02065C94
_02065C90:
	mov r1, #0
_02065C94:
	ldr r0, [r10, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _02065DE4
	bl NNS_G3dGeFlushBuffer
	ldr r1, _02065E70 ; =0x00151110
	ldr r0, _02065E74 ; =0x04000400
	str r1, [r0]
	str r4, [r0]
	str r4, [r0]
	add r4, sp, #0x88
_02065CC0:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02065CC0
	ldr r0, _02065E78 ; =NNS_G3dGlb
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _02065CEC
	bl NNS_G3dGlbGetWV
	add r11, sp, #0x48
	b _02065CFC
_02065CEC:
	tst r0, #2
	beq _02065D14
	ldr r0, _02065E7C ; =NNS_G3dGlb_cameraMtx
	add r11, sp, #8
_02065CFC:
	mov r1, r11
	bl MTX_Copy43To44_
	mov r0, r4
	mov r1, r11
	mov r2, r4
	bl MTX_Concat44
_02065D14:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [r6]
	str r2, [r6, #4]
	str r1, [r6, #8]
	bl VEC_Mag
	str r0, [r7]
	add r0, sp, #0x98
	bl VEC_Mag
	str r0, [r7, #4]
	add r0, sp, #0xa8
	bl VEC_Mag
	ldr r1, _02065E78 ; =NNS_G3dGlb
	str r0, [r7, #8]
	ldr r0, [r1, #0xfc]
	tst r0, #1
	beq _02065DA8
	ldr r4, _02065E74 ; =0x04000400
	ldr r3, _02065E80 ; =0x00171012
	ldr r0, _02065E84 ; =0x0209111C
	mov r1, r4
	mov r2, #8
	str r3, [r4]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvWV
_02065D80:
	mov r1, r4
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r1, _02065E88 ; =0x00001B19
	ldr r0, _02065E8C ; =0x02091124
	str r1, [r4]
	mov r1, r4
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _02065DE4
_02065DA8:
	tst r0, #2
	beq _02065DD4
	ldr r4, _02065E74 ; =0x04000400
	ldr r3, _02065E80 ; =0x00171012
	ldr r0, _02065E84 ; =0x0209111C
	mov r1, r4
	mov r2, #8
	str r3, [r4]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvV
	b _02065D80
_02065DD4:
	ldr r0, _02065E90 ; =Sbc_BB_bbcmd1
	ldr r1, _02065E74 ; =0x04000400
	mov r2, #0x48
	bl MIi_CpuSend32
_02065DE4:
	cmp r8, #3
	movne r0, #0
	bne _02065E10
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x28]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #8]
	and r0, r0, #0x40
_02065E10:
	cmp r9, #0x20
	beq _02065E20
	cmp r9, #0x60
	bne _02065E54
_02065E20:
	cmp r0, #0
	add r5, r5, #1
	bne _02065E54
	ldr r0, [r10, #8]
	tst r0, #0x100
	bne _02065E54
	ldr r0, [r10]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_02065E54:
	ldr r0, [r10]
	add r0, r0, r5
	str r0, [r10]
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02065E68: .word Sbc_BB_bbcmd1 + 48
_02065E6C: .word Sbc_BB_bbcmd1 + 60
_02065E70: .word 0x00151110
_02065E74: .word 0x04000400
_02065E78: .word NNS_G3dGlb
_02065E7C: .word NNS_G3dGlb_cameraMtx
_02065E80: .word 0x00171012
_02065E84: .word Sbc_BB_bbcmd1 + 4
_02065E88: .word 0x00001B19
_02065E8C: .word Sbc_BB_bbcmd1 + 12
_02065E90: .word Sbc_BB_bbcmd1
	arm_func_end NNSi_G3dFuncSbc_BB

	arm_func_start NNSi_G3dFuncSbc_BBY
NNSi_G3dFuncSbc_BBY: ; 0x02065E94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc8
	mov r10, r0
	ldr r0, [r10, #8]
	mov r9, r1
	tst r0, #0x200
	mov r4, #0
	mov r5, #2
	ldr r11, _020661B4 ; =0x02091190
	ldr r6, _020661B8 ; =0x0209119C
	ldr r7, _020661BC ; =0x0209116C
	beq _02065EF0
	cmp r9, #0x40
	cmpne r9, #0x60
	addeq r5, r5, #1
	cmp r9, #0x20
	cmpne r9, #0x60
	ldr r0, [r10]
	addeq r5, r5, #1
	add r0, r0, r5
	add sp, sp, #0xc8
	str r0, [r10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02065EF0:
	cmp r9, #0x40
	beq _02065F00
	cmp r9, #0x60
	bne _02065F34
_02065F00:
	tst r0, #0x100
	add r5, r5, #1
	bne _02065F34
	ldr r0, [r10]
	cmp r9, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl NNS_G3dGeBufferOP_N
_02065F34:
	ldr r0, [r10, #0x2c]
	cmp r0, #0
	ldrneb r8, [r10, #0x94]
	moveq r8, #0
	cmp r8, #1
	bne _02065F80
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x2c]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #0x2c]
	cmp r0, #0
	ldrneb r8, [r10, #0x94]
	ldr r0, [r10, #8]
	moveq r8, #0
	and r1, r0, #0x40
	b _02065F84
_02065F80:
	mov r1, #0
_02065F84:
	ldr r0, [r10, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _02066130
	bl NNS_G3dGeFlushBuffer
	ldr r1, _020661C0 ; =0x00151110
	ldr r0, _020661C4 ; =0x04000400
	str r1, [r0]
	str r4, [r0]
	str r4, [r0]
	add r4, sp, #0x88
_02065FB0:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02065FB0
	ldr r0, _020661C8 ; =NNS_G3dGlb
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _02065FE8
	bl NNS_G3dGlbGetWV
	add r1, sp, #0x48
	bl MTX_Copy43To44_
	add r1, sp, #0x48
	mov r0, r4
	b _02066004
_02065FE8:
	tst r0, #2
	beq _0206600C
	ldr r0, _020661CC ; =NNS_G3dGlb_cameraMtx
	add r1, sp, #8
	bl MTX_Copy43To44_
	mov r0, r4
	add r1, sp, #8
_02066004:
	mov r2, r4
	bl MTX_Concat44
_0206600C:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [r11]
	str r2, [r11, #4]
	str r1, [r11, #8]
	bl VEC_Mag
	str r0, [r6]
	add r0, sp, #0x98
	bl VEC_Mag
	str r0, [r6, #4]
	add r0, sp, #0xa8
	bl VEC_Mag
	ldr r1, [sp, #0xa0]
	str r0, [r6, #8]
	ldr r0, [sp, #0x9c]
	str r1, [r7, #0x14]
	ldr r1, [sp, #0x98]
	str r0, [r7, #0x10]
	str r0, [r7]
	mov r0, #0
	str r0, [r7, #8]
	rsb r0, r1, #0
	str r1, [r7, #0xc]
	str r0, [r7, #4]
	mov r0, r7
	mov r1, r7
	bl VEC_Normalize
	add r0, r7, #0xc
	mov r1, r0
	bl VEC_Normalize
	mov r0, r7
	add r1, r7, #0xc
	add r2, r7, #0x18
	bl VEC_CrossProduct
	ldr r0, _020661C8 ; =NNS_G3dGlb
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020660F4
	ldr r4, _020661C4 ; =0x04000400
	ldr r3, _020661D0 ; =0x00171012
	ldr r0, _020661D4 ; =0x02091164
	mov r1, r4
	mov r2, #8
	str r3, [r4]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvWV
_020660CC:
	mov r1, r4
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r1, _020661D8 ; =0x00001B19
	ldr r0, _020661BC ; =0x0209116C
	str r1, [r4]
	mov r1, r4
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _02066130
_020660F4:
	tst r0, #2
	beq _02066120
	ldr r4, _020661C4 ; =0x04000400
	ldr r3, _020661D0 ; =0x00171012
	ldr r0, _020661D4 ; =0x02091164
	mov r1, r4
	mov r2, #8
	str r3, [r4]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvV
	b _020660CC
_02066120:
	ldr r0, _020661DC ; =Sbc_BBY_bbcmd1
	ldr r1, _020661C4 ; =0x04000400
	mov r2, #0x48
	bl MIi_CpuSend32
_02066130:
	cmp r8, #3
	movne r0, #0
	bne _0206615C
	ldr r0, [r10, #8]
	ldr r1, [r10, #0x2c]
	bic r2, r0, #0x40
	mov r0, r10
	str r2, [r10, #8]
	blx r1
	ldr r0, [r10, #8]
	and r0, r0, #0x40
_0206615C:
	cmp r9, #0x20
	beq _0206616C
	cmp r9, #0x60
	bne _020661A0
_0206616C:
	cmp r0, #0
	add r5, r5, #1
	bne _020661A0
	ldr r0, [r10, #8]
	tst r0, #0x100
	bne _020661A0
	ldr r0, [r10]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_020661A0:
	ldr r0, [r10]
	add r0, r0, r5
	str r0, [r10]
	add sp, sp, #0xc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020661B4: .word Sbc_BBY_bbcmd1 + 48
_020661B8: .word Sbc_BBY_bbcmd1 + 60
_020661BC: .word Sbc_BBY_bbcmd1 + 12
_020661C0: .word 0x00151110
_020661C4: .word 0x04000400
_020661C8: .word NNS_G3dGlb
_020661CC: .word NNS_G3dGlb_cameraMtx
_020661D0: .word 0x00171012
_020661D4: .word Sbc_BBY_bbcmd1 + 4
_020661D8: .word 0x00001B19
_020661DC: .word Sbc_BBY_bbcmd1
	arm_func_end NNSi_G3dFuncSbc_BBY

	arm_func_start NNSi_G3dFuncSbc_NODEMIX
NNSi_G3dFuncSbc_NODEMIX: ; 0x020661E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x104
	ldr r1, [r0, #4]
	ldr r6, [r0]
	ldr r7, [r1, #4]
	ldrb r2, [r6, #2]
	ldr r3, [r7, #0x10]
	mov r5, #0
	str r0, [sp]
	str r2, [sp, #0x10]
	add r3, r7, r3
	add r1, sp, #0xb0
	mov r0, r5
	mov r2, #0x54
	mov r4, r5
	str r3, [sp, #0x14]
	add r6, r6, #3
	bl MIi_CpuClearFast
	bl NNS_G3dGeFlushBuffer
	ldr r1, _02066918 ; =0x04000440
	mov r0, #1
	str r5, [r1]
	str r0, [r1, #0xc]
	str r5, [r1, #0x14]
	mov r0, #2
	str r0, [r1]
	ldr r0, [sp, #0x10]
	str r5, [sp, #0xc]
	cmp r0, #0
	bls _020666C4
_02066258:
	ldrb r11, [r6, #1]
	mov r1, #0x64
	ldr r0, [sp]
	smulbb r1, r11, r1
	mov r2, r11, lsr #5
	str r1, [sp, #4]
	add r0, r0, r2, lsl #2
	ldr r3, _0206691C ; =0x020B8440
	ldr r2, [sp, #4]
	ldr r9, [r0, #0xcc]
	add r7, r3, r2
	and r1, r11, #0x1f
	mov r2, #1
	ands r3, r9, r2, lsl r1
	str r3, [sp, #8]
	bne _020662C4
	ldr r9, [r0, #0xcc]
	ldr r3, _02066920 ; =0x04000450
	orr r1, r9, r2, lsl r1
	str r1, [r0, #0xcc]
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, r11, r1, r0
	ldrb r9, [r6]
	str r9, [r3]
	str r2, [r3, #-0x10]
	bl G3_MultMtx43
_020662C4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020664EC
	ldr r0, [sp, #0xe0]
	ldmia r8, {r9, lr}
	str r0, [sp, #0x18]
	mov r0, r9, asr #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xe4]
	ldr r12, [r8, #8]
	str r0, [sp, #0x24]
	mov r0, lr, asr #0x1f
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xe8]
	ldr r3, [r8, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xec]
	ldr r2, [r8, #0x10]
	str r0, [sp, #0x34]
	mov r0, r12, asr #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xf0]
	ldr r1, [r8, #0x14]
	str r0, [sp, #0x3c]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xf4]
	str r0, [sp, #0x44]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xf8]
	str r0, [sp, #0x4c]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0x48]
	ldr r0, [r8, #0x18]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xfc]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x50]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x54]
	ldr r0, [r8, #0x1c]
	str r0, [sp, #0xa8]
	ldr r0, [r8, #0x20]
	ldr r8, [sp, #0xa8]
	mov r8, r8, asr #0x1f
	str r8, [sp, #0x5c]
	ldr r8, [sp, #0x100]
	str r8, [sp, #0x60]
	mov r8, r0, asr #0x1f
	str r8, [sp, #0x64]
	umull r10, r8, r5, r9
	str r10, [sp, #0x1c]
	ldr r10, [sp, #0x20]
	mla r8, r5, r10, r8
	mla r8, r4, r9, r8
	ldr r9, [sp, #0x1c]
	mov r9, r9, lsr #0xc
	orr r9, r9, r8, lsl #20
	ldr r8, [sp, #0x18]
	adds r8, r8, r9
	str r8, [sp, #0xe0]
	umull r10, r9, r5, lr
	ldr r8, [sp, #0x28]
	mov r10, r10, lsr #0xc
	mla r9, r5, r8, r9
	mla r9, r4, lr, r9
	ldr r8, [sp, #0x24]
	orr r10, r10, r9, lsl #20
	adds r8, r8, r10
	str r8, [sp, #0xe4]
	umull r10, r9, r5, r12
	ldr r8, [sp, #0x30]
	mov r10, r10, lsr #0xc
	mla r9, r5, r8, r9
	mla r9, r4, r12, r9
	ldr r8, [sp, #0x2c]
	orr r10, r10, r9, lsl #20
	adds r8, r8, r10
	str r8, [sp, #0xe8]
	ldr r8, [sp, #0x38]
	umull r10, r9, r5, r3
	mla r9, r5, r8, r9
	mla r9, r4, r3, r9
	mov r8, r10, lsr #0xc
	ldr r3, [sp, #0x34]
	orr r8, r8, r9, lsl #20
	adds r3, r3, r8
	str r3, [sp, #0xec]
	ldr r3, [sp, #0x40]
	umull r9, r8, r5, r2
	mla r8, r5, r3, r8
	mla r8, r4, r2, r8
	mov r3, r9, lsr #0xc
	ldr r2, [sp, #0x3c]
	orr r3, r3, r8, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xf0]
	ldr r2, [sp, #0x48]
	umull r8, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r8, lsr #0xc
	ldr r1, [sp, #0x44]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0x50]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x54]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0x50]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x4c]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xf8]
	ldr r1, [sp, #0xa8]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x5c]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0xa8]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x58]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xfc]
	ldr r1, [sp, #0x64]
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	mla r2, r4, r0, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x60]
	orr r1, r1, r2, lsl #20
	adds r0, r0, r1
	str r0, [sp, #0x100]
_020664EC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02066528
_020664F8:
	mov r0, r7
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020664F8
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, r11, r1, r0
	ldr r1, _02066918 ; =0x04000440
	mov r2, #2
	add r0, r0, #0x30
	str r2, [r1]
	bl G3_MultMtx33
_02066528:
	ldrb r0, [r6, #2]
	ldr r1, _02066924 ; =0x020B8480
	ldr r3, [r7]
	mov r5, r0, lsl #4
	ldr r0, [sp, #4]
	ldmib r7, {r2, r10}
	add r8, r1, r0
	smull r1, r0, r5, r3
	mov r3, r1, lsr #0xc
	orr r3, r3, r0, lsl #20
	smull r1, r0, r5, r2
	mov r2, r1, lsr #0xc
	orr r2, r2, r0, lsl #20
	smull r1, r0, r5, r10
	mov r1, r1, lsr #0xc
	ldr r9, [r7, #0x10]
	orr r1, r1, r0, lsl #20
	smull r0, r9, r5, r9
	mov r0, r0, lsr #0xc
	ldr r10, [sp, #0xb4]
	ldr r11, [sp, #0xb0]
	adds r2, r10, r2
	str r2, [sp, #0xb4]
	adds r3, r11, r3
	str r3, [sp, #0xb0]
	ldr r3, [sp, #0xb8]
	ldr r4, [r7, #0x14]
	adds r1, r3, r1
	orr r0, r0, r9, lsl #20
	smull r9, r4, r5, r4
	ldr r2, [sp, #0xbc]
	mov r9, r9, lsr #0xc
	adds r0, r2, r0
	str r0, [sp, #0xbc]
	orr r9, r9, r4, lsl #20
	ldr r0, [sp, #0xc0]
	str r1, [sp, #0xb8]
	adds r0, r0, r9
	str r0, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0xc4]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xc4]
	ldr r0, [r7, #0x20]
	ldr r3, [sp, #0xc8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xc8]
	ldr r0, [r7, #0x24]
	ldr r2, [sp, #0xcc]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xcc]
	ldr r0, [r7, #0x28]
	ldr r3, [sp, #0xd0]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xd0]
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0xd4]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	ldr r1, [r7, #0x34]
	str r0, [sp, #0xd4]
	smull r2, r1, r5, r1
	mov r2, r2, lsr #0xc
	ldr r3, [sp, #0xd8]
	orr r2, r2, r1, lsl #20
	adds r1, r3, r2
	ldr r0, [r7, #0x38]
	str r1, [sp, #0xd8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0xdc]
	mov r4, r5, asr #0x1f
	adds r0, r0, r1
	str r0, [sp, #0xdc]
	ldr r0, [sp, #8]
	add r6, r6, #3
	cmp r0, #0
	bne _020666AC
_0206669C:
	mov r0, r8
	bl G3X_GetVectorMtx
	cmp r0, #0
	bne _0206669C
_020666AC:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _02066258
_020666C4:
	ldmia r8, {r0, r11}
	ldr r10, [r8, #8]
	ldr r9, [r8, #0xc]
	ldr r7, [r8, #0x10]
	ldr r6, [r8, #0x14]
	ldr r3, [r8, #0x18]
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x20]
	umull r12, r8, r5, r0
	mov lr, r12, lsr #0xc
	ldr r12, [sp, #0xe0]
	str r12, [sp, #0x68]
	mov r12, r0, asr #0x1f
	mla r8, r5, r12, r8
	mla r8, r4, r0, r8
	orr lr, lr, r8, lsl #20
	umull r12, r8, r5, r11
	ldr r0, [sp, #0x68]
	str r12, [sp, #0x6c]
	adds r0, r0, lr
	str r0, [sp, #0xe0]
	mov r0, r11, asr #0x1f
	str r0, [sp, #0xac]
	ldr r12, [sp, #0xac]
	ldr r0, [sp, #0xe8]
	mla r8, r5, r12, r8
	mla r8, r4, r11, r8
	ldr r11, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov r11, r11, lsr #0xc
	mov r0, r10, asr #0x1f
	str r0, [sp, #0x74]
	ldr r0, [sp, #0xec]
	ldr lr, [sp, #0xe4]
	orr r11, r11, r8, lsl #20
	adds r8, lr, r11
	str r8, [sp, #0xe4]
	str r0, [sp, #0x78]
	mov r0, r9, asr #0x1f
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0xf0]
	ldr r8, [sp, #0x74]
	umull r12, r11, r5, r10
	mla r11, r5, r8, r11
	mla r11, r4, r10, r11
	mov r10, r12, lsr #0xc
	str r0, [sp, #0x80]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xf4]
	ldr r8, [sp, #0x70]
	orr r10, r10, r11, lsl #20
	adds r8, r8, r10
	str r8, [sp, #0xe8]
	str r0, [sp, #0x88]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x8c]
	ldr r0, [sp, #0xf8]
	ldr r8, [sp, #0x7c]
	umull r11, r10, r5, r9
	mla r10, r5, r8, r10
	mla r10, r4, r9, r10
	mov r9, r11, lsr #0xc
	str r0, [sp, #0x90]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x94]
	ldr r0, [sp, #0xfc]
	ldr r8, [sp, #0x78]
	orr r9, r9, r10, lsl #20
	adds r8, r8, r9
	str r8, [sp, #0xec]
	str r0, [sp, #0x98]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0x100]
	ldr r8, [sp, #0x84]
	umull r10, r9, r5, r7
	mla r9, r5, r8, r9
	mla r9, r4, r7, r9
	mov r8, r10, lsr #0xc
	str r0, [sp, #0xa0]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0xa4]
	ldr r7, [sp, #0x80]
	orr r8, r8, r9, lsl #20
	adds r7, r7, r8
	str r7, [sp, #0xf0]
	ldr r7, [sp, #0x8c]
	umull r9, r8, r5, r6
	mla r8, r5, r7, r8
	mla r8, r4, r6, r8
	mov r7, r9, lsr #0xc
	ldr r6, [sp, #0x88]
	orr r7, r7, r8, lsl #20
	adds r6, r6, r7
	str r6, [sp, #0xf4]
	ldr r6, [sp, #0x94]
	umull r8, r7, r5, r3
	mla r7, r5, r6, r7
	mla r7, r4, r3, r7
	mov r6, r8, lsr #0xc
	ldr r3, [sp, #0x90]
	orr r6, r6, r7, lsl #20
	adds r3, r3, r6
	str r3, [sp, #0xf8]
	ldr r3, [sp, #0x9c]
	umull r7, r6, r5, r2
	mla r6, r5, r3, r6
	mla r6, r4, r2, r6
	mov r3, r7, lsr #0xc
	ldr r2, [sp, #0x98]
	orr r3, r3, r6, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xfc]
	ldr r2, [sp, #0xa4]
	umull r6, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r6, lsr #0xc
	ldr r1, [sp, #0xa0]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	add r0, sp, #0xe0
	str r1, [sp, #0x100]
	bl G3_LoadMtx43
	ldr r4, _02066918 ; =0x04000440
	mov r5, #1
	add r0, sp, #0xb0
	str r5, [r4]
	bl G3_LoadMtx43
	mov r0, #0
	str r0, [r4]
	str r5, [r4, #0x10]
	mov r0, #2
	str r0, [r4]
	ldr r0, [sp]
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	str r0, [r4, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	add r0, r0, #1
	add r0, r0, r0, lsl #1
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0]
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02066918: .word 0x04000440
_0206691C: .word NNS_G3dRSOnGlb_evpCache_M
_02066920: .word 0x04000450
_02066924: .word NNS_G3dRSOnGlb_evpCache_N
	arm_func_end NNSi_G3dFuncSbc_NODEMIX

	arm_func_start NNSi_G3dFuncSbc_CALLDL
NNSi_G3dFuncSbc_CALLDL: ; 0x02066928
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	moveq r4, #0
	cmp r4, #1
	bne _0206697C
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r1, r0, #0x40
	b _02066980
_0206697C:
	mov r1, #0
_02066980:
	ldr r0, [r5, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020669D4
	ldr r0, [r5]
	ldrb r12, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #6]
	orr r3, r12, r3, lsl #8
	ldrb r6, [r0, #4]
	orr r12, r3, lr, lsl #16
	ldrb r3, [r0, #7]
	orr r1, r2, r1, lsl #8
	orr r6, r12, r6, lsl #24
	ldrb r2, [r0, #8]
	orr r1, r1, r3, lsl #16
	add r0, r0, r6
	orr r1, r1, r2, lsl #24
	bl NNS_G3dGeSendDL
_020669D4:
	cmp r4, #3
	bne _020669F4
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
_020669F4:
	ldr r0, [r5]
	add r0, r0, #9
	str r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_CALLDL

	arm_func_start NNSi_G3dFuncSbc_POSSCALE
NNSi_G3dFuncSbc_POSSCALE: ; 0x02066A04
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _02066A58
	tst r0, #0x200
	bne _02066A58
	cmp r1, #0
	ldreq r0, [r4, #0xe0]
	add r1, sp, #0
	streq r0, [sp, #8]
	streq r0, [sp, #4]
	streq r0, [sp]
	ldrne r0, [r4, #0xe4]
	mov r2, #3
	strne r0, [sp, #8]
	strne r0, [sp, #4]
	strne r0, [sp]
	mov r0, #0x1b
	bl NNS_G3dGeBufferOP_N
_02066A58:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
	arm_func_end NNSi_G3dFuncSbc_POSSCALE

	arm_func_start NNSi_G3dFuncSbc_ENVMAP
NNSi_G3dFuncSbc_ENVMAP: ; 0x02066A6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	mov r8, r0
	ldr r0, [r8, #8]
	mov r5, #1
	tst r0, #0x200
	bne _02066D94
	tst r0, #1
	beq _02066D94
	ldr r2, [r8, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #0x80000000
	beq _02066ADC
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r8, #0xb0]
	ldr r0, _02066DA8 ; =Sbc_ENVMAP_cmd
	ldr r2, [r3, #0x10]
	ldr r1, _02066DAC ; =0x020910B4
	orr r2, r2, #0x80000000
	str r2, [r3, #0x10]
	ldr r3, [r8, #0xb0]
	mov r2, r5
	ldr r3, [r3, #0x10]
	str r3, [r0, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dGeBufferOP_N
_02066ADC:
	mov r0, #3
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	mov r0, #0x10
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r8, #0x3c]
	cmp r0, #0
	ldrneb r7, [r8, #0x98]
	moveq r7, #0
	cmp r7, #1
	bne _02066B40
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x3c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	ldr r0, [r8, #0x3c]
	cmp r0, #0
	ldrneb r7, [r8, #0x98]
	ldr r0, [r8, #8]
	moveq r7, #0
	and r0, r0, #0x40
	b _02066B44
_02066B40:
	mov r0, #0
_02066B44:
	cmp r0, #0
	bne _02066BBC
	ldr r0, [r8, #0xb0]
	add r1, sp, #0x14
	ldrh r6, [r0, #0x2e]
	ldrh r4, [r0, #0x2c]
	mov r3, #0x10000
	rsb r0, r6, #0
	mov r12, r0, lsl #0xf
	mov lr, r4, lsl #0xf
	mov r0, #0x1b
	mov r2, #3
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r0, r6, lsl #0x13
	mov r1, r0, asr #0x10
	mov r0, r4, lsl #0x13
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #0xc
	mov r0, #0x22
	mov r2, #1
	str r3, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
_02066BBC:
	cmp r7, #2
	bne _02066BF8
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x3c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	ldr r0, [r8, #0x3c]
	cmp r0, #0
	ldrneb r7, [r8, #0x98]
	ldr r0, [r8, #8]
	moveq r7, #0
	and r0, r0, #0x40
	b _02066BFC
_02066BF8:
	mov r0, #0
_02066BFC:
	cmp r0, #0
	bne _02066C90
	ldr r0, [r8]
	ldr r4, [r8, #0xd8]
	ldrb r3, [r0, #1]
	cmp r4, #0
	beq _02066C58
	adds r2, r4, #4
	beq _02066C44
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _02066C44
	ldrh r1, [r4, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _02066C48
_02066C44:
	mov r1, #0
_02066C48:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r4, r0
	bne _02066C5C
_02066C58:
	mov r0, #0
_02066C5C:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _02066C90
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
_02066C90:
	cmp r7, #3
	movne r0, #0
	bne _02066CBC
	ldr r0, [r8, #8]
	ldr r1, [r8, #0x3c]
	bic r2, r0, #0x40
	mov r0, r8
	str r2, [r8, #8]
	blx r1
	ldr r0, [r8, #8]
	and r0, r0, #0x40
_02066CBC:
	cmp r0, #0
	bne _02066D7C
	mov r6, #0x10
	mov r3, #2
	add r1, sp, #8
	mov r0, r6
	mov r2, r5
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	add r4, sp, #0x20
	mov r0, #0
	mov r1, r4
	bl NNS_G3dGetCurrentMtx
	mov r3, #3
	add r1, sp, #4
	mov r0, r6
	mov r2, r5
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	ldr r0, _02066DB0 ; =NNS_G3dGlb
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _02066D54
	mov r6, #0x1a
	mov r5, #9
	ldr r1, _02066DB4 ; =NNS_G3dGlb_cameraMtx
	mov r0, r6
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	ldr r1, _02066DB8 ; =NNS_G3dGlb_prmBaseRot
_02066D34:
	mov r0, r6
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	b _02066D7C
_02066D54:
	tst r0, #2
	beq _02066D6C
	mov r6, #0x1a
	mov r5, #9
	ldr r1, _02066DB4 ; =NNS_G3dGlb_cameraMtx
	b _02066D34
_02066D6C:
	mov r1, r4
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
_02066D7C:
	mov r3, #2
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_02066D94:
	ldr r0, [r8]
	add r0, r0, #3
	str r0, [r8]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02066DA8: .word Sbc_ENVMAP_cmd
_02066DAC: .word Sbc_ENVMAP_cmd + 12
_02066DB0: .word NNS_G3dGlb
_02066DB4: .word NNS_G3dGlb_cameraMtx
_02066DB8: .word NNS_G3dGlb_prmBaseRot
	arm_func_end NNSi_G3dFuncSbc_ENVMAP

	arm_func_start NNSi_G3dFuncSbc_PRJMAP
NNSi_G3dFuncSbc_PRJMAP: ; 0x02066DBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x80
	mov r5, r0
	ldr r0, [r5, #8]
	mov r6, #0
	tst r0, #0x200
	bne _0206713C
	tst r0, #1
	beq _0206713C
	add r0, sp, #0x50
	mov r1, r6
	bl NNS_G3dGetCurrentMtx
	mov r0, #0x1e
	mov r4, #1
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	mov r2, r4
	mov r0, #0x13
	bl NNS_G3dGeBufferOP_N
	ldr r2, [r5, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #0xc0000000
	beq _02066E54
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r5, #0xb0]
	ldr r0, _02067150 ; =Sbc_ENVMAP_cmd
	ldr r2, [r3, #0x10]
	ldr r1, _02067154 ; =0x020910AC
	orr r2, r2, #0xc0000000
	str r2, [r3, #0x10]
	ldr r3, [r5, #0xb0]
	mov r2, r4
	ldr r3, [r3, #0x10]
	str r3, [r0, #4]
	ldr r0, [r0]
	bl NNS_G3dGeBufferOP_N
_02066E54:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	moveq r4, #0
	cmp r4, #1
	bne _02066EA0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x40]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _02066EA4
_02066EA0:
	mov r0, #0
_02066EA4:
	cmp r0, #0
	bne _02066EE8
	ldr r0, [r5, #0xb0]
	ldr r1, _02067158 ; =Sbc_PRJMAP_mtx
	ldrh r7, [r0, #0x2e]
	ldrh r3, [r0, #0x2c]
	mov r0, #0x16
	rsb r2, r7, #0
	mov r3, r3, lsl #0xf
	str r3, [r1]
	mov r2, r2, lsl #0xf
	str r2, [r1, #0x14]
	str r3, [r1, #0x30]
	mov r3, r7, lsl #0xf
	mov r2, #0x10
	str r3, [r1, #0x34]
	bl NNS_G3dGeBufferOP_N
_02066EE8:
	cmp r4, #2
	bne _02066F24
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x40]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _02066F28
_02066F24:
	mov r0, #0
_02066F28:
	cmp r0, #0
	bne _02066FBC
	ldr r0, [r5]
	ldr r7, [r5, #0xd8]
	ldrb r3, [r0, #1]
	cmp r7, #0
	beq _02066F84
	adds r2, r7, #4
	beq _02066F70
	ldrb r0, [r7, #5]
	cmp r3, r0
	bhs _02066F70
	ldrh r1, [r7, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _02066F74
_02066F70:
	mov r1, #0
_02066F74:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r7, r0
	bne _02066F88
_02066F84:
	mov r0, #0
_02066F88:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _02066FBC
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
_02066FBC:
	cmp r4, #3
	movne r0, #0
	bne _02066FE8
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x40]
	bic r2, r0, #0x40
	mov r0, r5
	str r2, [r5, #8]
	blx r1
	ldr r0, [r5, #8]
	and r0, r0, #0x40
_02066FE8:
	cmp r0, #0
	bne _02067108
	ldr r0, _0206715C ; =NNS_G3dGlb
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _02067030
	ldr r1, _02067160 ; =NNS_G3dGlb_prmBaseTrans
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r1, _02067164 ; =NNS_G3dGlb_prmBaseRot
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	b _02067070
_02067030:
	tst r0, #2
	beq _02067048
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	b _02067070
_02067048:
	bl NNS_G3dGlbGetInvV
	mov r4, #0xc
	mov r7, #0x19
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, r7
	mov r2, r4
_02067070:
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	ldr r0, _02067168 ; =0x04000440
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #0x14]
	add r6, sp, #0x10
_0206708C:
	mov r0, r6
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _0206708C
	ldr r2, _0206716C ; =0x04000448
	mov r4, #1
	str r4, [r2]
	mov r0, #3
	str r0, [r2, #-8]
	mov r1, r6
	mov r0, #0x16
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x40]
	mov r0, r0, asr #4
	mov r0, r0, lsl #8
	mov r2, r1, asr #4
	mov r1, r0, asr #0x10
	mov r0, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #8
	mov r2, r4
	mov r0, #0x22
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_02067108:
	mov r4, #1
	mov r3, #2
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x10
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x1e
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x14
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_0206713C:
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067150: .word Sbc_ENVMAP_cmd
_02067154: .word Sbc_ENVMAP_cmd + 4
_02067158: .word Sbc_PRJMAP_mtx
_0206715C: .word NNS_G3dGlb
_02067160: .word NNS_G3dGlb_prmBaseTrans
_02067164: .word NNS_G3dGlb_prmBaseRot
_02067168: .word 0x04000440
_0206716C: .word 0x04000448
	arm_func_end NNSi_G3dFuncSbc_PRJMAP

	arm_func_start NNS_G3dGeFlushBuffer
NNS_G3dGeFlushBuffer: ; 0x02067170
	stmfd sp!, {r4, lr}
	ldr r0, _020671C0 ; =NNS_G3dGeBuffer
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02067188
	bl NNS_G3dGeWaitSendDL
_02067188:
	ldr r4, _020671C0 ; =NNS_G3dGeBuffer
	ldr r0, [r4]
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020671C4 ; =0x04000400
	add r0, r0, #4
	mov r2, r2, lsl #2
	bl MIi_CpuSend32
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_020671C0: .word NNS_G3dGeBuffer
_020671C4: .word 0x04000400
	arm_func_end NNS_G3dGeFlushBuffer

	arm_func_start NNS_G3dGeWaitSendDL
NNS_G3dGeWaitSendDL: ; 0x020671C8
	ldr r0, _020671DC ; =NNS_G3dGeBuffer
_020671CC:
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020671CC
	bx lr
_020671DC: .word NNS_G3dGeBuffer
	arm_func_end NNS_G3dGeWaitSendDL

	arm_func_start simpleUnlock_
simpleUnlock_: ; 0x020671E0
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end simpleUnlock_

	arm_func_start NNS_G3dGeUseFastDma
NNS_G3dGeUseFastDma: ; 0x020671EC
	ldr r1, _020671F8 ; =NNS_G3dGeBuffer
	str r0, [r1, #8]
	bx lr
_020671F8: .word NNS_G3dGeBuffer
	arm_func_end NNS_G3dGeUseFastDma

	arm_func_start NNS_G3dGeSendDL
NNS_G3dGeSendDL: ; 0x020671FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x100
	blo _02067224
	ldr r7, _020672A4 ; =GXi_DmaId
	mvn r6, #0
	ldr r0, [r7]
	cmp r0, r6
	bne _0206723C
_02067224:
	mov r2, r4, lsr #2
	ldr r0, [r5]
	add r1, r5, #4
	sub r2, r2, #1
	bl NNS_G3dGeBufferOP_N
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206723C:
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020672A8 ; =NNS_G3dGeBuffer
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldr r0, [r7]
	beq _02067280
	cmp r0, #3
	movhi r0, r6
	ldr r6, _020672AC ; =NNS_G3dFlagGXDmaAsync
	ldr r3, _020672B0 ; =simpleUnlock_
	mov r1, r5
	mov r2, r4
	str r6, [sp]
	bl MI_SendGXCommandAsyncFast
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067280:
	cmp r0, #3
	movhi r0, r6
	ldr r6, _020672AC ; =NNS_G3dFlagGXDmaAsync
	ldr r3, _020672B0 ; =simpleUnlock_
	mov r1, r5
	mov r2, r4
	str r6, [sp]
	bl MI_SendGXCommandAsync
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020672A4: .word GXi_DmaId
_020672A8: .word NNS_G3dGeBuffer
_020672AC: .word NNS_G3dFlagGXDmaAsync
_020672B0: .word simpleUnlock_
	arm_func_end NNS_G3dGeSendDL

	arm_func_start NNS_G3dGeBufferOP_N
NNS_G3dGeBufferOP_N: ; 0x020672B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _02067388 ; =NNS_G3dGeBuffer
	mov r6, r0
	ldr r3, [r7]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	beq _02067360
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _02067338
	ldr r2, [r3]
	add r0, r2, #1
	add r1, r0, r4
	cmp r1, #0xc0
	bhi _02067338
	str r0, [r3]
	ldr r0, [r7]
	cmp r4, #0
	add r0, r0, r2, lsl #2
	str r6, [r0, #4]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, [r7]
	mov r0, r5
	ldr r1, [r2], #4
	add r1, r2, r1, lsl #2
	mov r2, r4, lsl #2
	bl MIi_CpuCopyFast
	ldr r1, [r7]
	ldr r0, [r1]
	add r0, r0, r4
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067338:
	ldr r0, [r3]
	cmp r0, #0
	beq _0206734C
	bl NNS_G3dGeFlushBuffer
	b _02067370
_0206734C:
	ldr r0, _02067388 ; =NNS_G3dGeBuffer
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02067370
	b _0206736C
_02067360:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _02067370
_0206736C:
	bl NNS_G3dGeWaitSendDL
_02067370:
	ldr r1, _0206738C ; =0x04000400
	mov r0, r5
	mov r2, r4, lsl #2
	str r6, [r1]
	bl MIi_CpuSend32
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067388: .word NNS_G3dGeBuffer
_0206738C: .word 0x04000400
	arm_func_end NNS_G3dGeBufferOP_N

	arm_func_start NNS_G3dGetCurrentMtx
NNS_G3dGetCurrentMtx: ; 0x02067390
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r5, r1
	bl NNS_G3dGeFlushBuffer
	ldr r0, _02067414 ; =0x04000440
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	cmp r6, #0
	beq _020673E0
	add r4, sp, #0
_020673C4:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020673C4
	mov r0, r4
	mov r1, r6
	bl MTX_Copy44To43_
_020673E0:
	cmp r5, #0
	beq _020673F8
_020673E8:
	mov r0, r5
	bl G3X_GetVectorMtx
	cmp r0, #0
	bne _020673E8
_020673F8:
	ldr r1, _02067418 ; =0x04000448
	mov r0, #1
	str r0, [r1]
	mov r0, #2
	str r0, [r1, #-8]
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, pc}
_02067414: .word 0x04000440
_02067418: .word 0x04000448
	arm_func_end NNS_G3dGetCurrentMtx

	arm_func_start NNS_G3dInit
NNS_G3dInit: ; 0x0206741C
	stmfd sp!, {r3, lr}
	bl G3X_Init
	bl NNS_G3dGlbInit
	ldr r1, _02067440 ; =0x04000600
	ldr r0, [r1]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_02067440: .word 0x04000600
	arm_func_end NNS_G3dInit

	arm_func_start NNS_G3dResDefaultSetup
NNS_G3dResDefaultSetup: ; 0x02067444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10]
	ldr r1, _02067668 ; =0x30415642
	cmp r2, r1
	bhi _02067490
	bhs _02067658
	sub r0, r1, #0x900
	cmp r2, r0
	bhi _02067480
	bhs _02067658
	sub r0, r1, #0x1300
	cmp r2, r0
	beq _02067658
	b _02067660
_02067480:
	sub r0, r1, #0x200
	cmp r2, r0
	beq _02067658
	b _02067660
_02067490:
	ldr r0, _0206766C ; =0x30505442
	cmp r2, r0
	bhi _020674B0
	bhs _02067658
	ldr r0, _02067670 ; =0x30444D42
	cmp r2, r0
	beq _020674BC
	b _02067660
_020674B0:
	add r0, r0, #0x80000
	cmp r2, r0
	bne _02067660
_020674BC:
	mov r5, #1
	mov r0, r10
	mov r6, r5
	mov r7, r5
	bl NNS_G3dGetTex
	movs r4, r0
	beq _02067628
	bl NNS_G3dTexGetRequiredSize
	mov r9, r0
	mov r0, r4
	bl NNS_G3dTex4x4GetRequiredSize
	mov r8, r0
	mov r0, r4
	bl NNS_G3dPlttGetRequiredSize
	str r0, [sp]
	cmp r9, #0
	beq _02067524
	ldr r0, _02067674 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0
	ldr r3, [r0]
	mov r0, r9
	mov r2, r1
	blx r3
	movs r11, r0
	moveq r5, #0
	b _02067528
_02067524:
	mov r11, #0
_02067528:
	cmp r8, #0
	beq _02067554
	ldr r0, _02067674 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r2, #0
	ldr r3, [r0]
	mov r0, r8
	mov r1, #1
	blx r3
	movs r8, r0
	moveq r6, #0
	b _02067558
_02067554:
	mov r8, #0
_02067558:
	ldr r0, [sp]
	cmp r0, #0
	beq _0206758C
	ldrh r1, [r4, #0x20]
	ldr r0, _02067678 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r2, #0
	ldr r3, [r0]
	ldr r0, [sp]
	and r1, r1, #0x8000
	blx r3
	movs r9, r0
	moveq r7, #0
	b _02067590
_0206758C:
	mov r9, #0
_02067590:
	cmp r5, #0
	cmpne r6, #0
	beq _020675A4
	cmp r7, #0
	bne _020675F4
_020675A4:
	cmp r7, #0
	beq _020675BC
	ldr r1, _0206767C ; =NNS_GfdDefaultFuncFreePlttVram
	mov r0, r9
	ldr r1, [r1]
	blx r1
_020675BC:
	cmp r6, #0
	beq _020675D4
	ldr r1, _02067680 ; =NNS_GfdDefaultFuncFreeTexVram
	mov r0, r8
	ldr r1, [r1]
	blx r1
_020675D4:
	cmp r5, #0
	beq _020675EC
	ldr r1, _02067680 ; =NNS_GfdDefaultFuncFreeTexVram
	mov r0, r11
	ldr r1, [r1]
	blx r1
_020675EC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020675F4:
	mov r0, r4
	mov r1, r11
	mov r2, r8
	bl NNS_G3dTexSetTexKey
	mov r0, r4
	mov r1, r9
	bl NNS_G3dPlttSetPlttKey
	mov r0, r4
	mov r1, #1
	bl NNS_G3dTexLoad
	mov r0, r4
	mov r1, #1
	bl NNS_G3dPlttLoad
_02067628:
	ldr r1, [r10]
	ldr r0, _02067670 ; =0x30444D42
	cmp r1, r0
	bne _02067650
	mov r0, r10
	bl NNS_G3dGetMdlSet
	cmp r4, #0
	beq _02067650
	mov r1, r4
	bl NNS_G3dBindMdlSet
_02067650:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02067658:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02067660:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02067668: .word 0x30415642
_0206766C: .word 0x30505442
_02067670: .word 0x30444D42
_02067674: .word NNS_GfdDefaultFuncAllocTexVram
_02067678: .word NNS_GfdDefaultFuncAllocPlttVram
_0206767C: .word NNS_GfdDefaultFuncFreePlttVram
_02067680: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_G3dResDefaultSetup

	arm_func_start NNS_G3dResDefaultRelease
NNS_G3dResDefaultRelease: ; 0x02067684
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5]
	ldr r1, _02067794 ; =0x30415642
	cmp r2, r1
	bhi _020676B8
	addhs sp, sp, #8
	ldmhsfd sp!, {r3, r4, r5, pc}
	sub r0, r1, #0x900
	add sp, sp, #8
	cmp r2, r0
	ldmfd sp!, {r3, r4, r5, pc}
_020676B8:
	ldr r1, _02067798 ; =0x30505442
	cmp r2, r1
	bhi _020676E0
	addhs sp, sp, #8
	ldmhsfd sp!, {r3, r4, r5, pc}
	ldr r1, _0206779C ; =0x30444D42
	cmp r2, r1
	beq _020676F4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020676E0:
	add r0, r1, #0x80000
	cmp r2, r0
	beq _02067714
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020676F4:
	bl NNS_G3dGetMdlSet
	mov r4, r0
	mov r0, r5
	bl NNS_G3dGetTex
	cmp r0, #0
	beq _02067714
	mov r0, r4
	bl NNS_G3dReleaseMdlSet
_02067714:
	mov r0, r5
	bl NNS_G3dGetTex
	movs r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl NNS_G3dPlttReleasePlttKey
	mov r4, r0
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r5
	bl NNS_G3dTexReleaseTexKey
	cmp r4, #0
	beq _02067758
	ldr r1, _020677A0 ; =NNS_GfdDefaultFuncFreePlttVram
	mov r0, r4
	ldr r1, [r1]
	blx r1
_02067758:
	ldr r0, [sp]
	cmp r0, #0
	beq _02067770
	ldr r1, _020677A4 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r1, [r1]
	blx r1
_02067770:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020677A4 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r1, [r1]
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02067794: .word 0x30415642
_02067798: .word 0x30505442
_0206779C: .word 0x30444D42
_020677A0: .word NNS_GfdDefaultFuncFreePlttVram
_020677A4: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_G3dResDefaultRelease

	arm_func_start NNS_G3dWorldPosToScrPos
NNS_G3dWorldPosToScrPos: ; 0x020677A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r5, r1
	mov r4, r2
	ldr r6, _02067928 ; =NNS_G3dGlb_projMtx
	ldr r1, _0206792C ; =NNS_G3dGlb_cameraMtx
	add r2, sp, #0x10
	bl MTX_MultVec43
	ldr r1, [sp, #0x14]
	ldr r0, [r6, #0x1c]
	ldr r2, [sp, #0x10]
	smull r8, r7, r1, r0
	ldr r0, [r6, #0xc]
	ldr r3, [sp, #0x18]
	smlal r8, r7, r2, r0
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x3c]
	smlal r8, r7, r3, r1
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #20
	add r0, r1, r0
	bl FX_InvAsync
	ldr r2, [sp, #0x14]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	smull r9, r8, r2, r1
	smull lr, r12, r2, r0
	ldr r1, [sp, #0x10]
	ldr r3, [r6]
	ldr r0, [sp, #0x18]
	smlal r9, r8, r1, r3
	ldr r7, [r6, #0x20]
	ldr r2, [r6, #0x30]
	smlal r9, r8, r0, r7
	mov r3, r9, lsr #0xc
	orr r3, r3, r8, lsl #20
	add r7, r3, r2
	ldr r3, [r6, #4]
	ldr r8, [r6, #0x24]
	smlal lr, r12, r1, r3
	smlal lr, r12, r0, r8
	mov r0, lr, lsr #0xc
	ldr r2, [r6, #0x34]
	orr r0, r0, r12, lsl #20
	add r8, r0, r2
	bl FX_GetDivResultFx64c
	umull lr, r12, r0, r7
	mov r2, r7, asr #0x1f
	mla r12, r0, r2, r12
	mla r12, r1, r7, r12
	adds lr, lr, #0x80000000
	adc r2, r12, #0
	add r2, r2, #0x1000
	add r2, r2, r2, lsr #31
	mov r7, r2, asr #1
	mov r3, r8, asr #0x1f
	umull r12, r2, r0, r8
	mla r2, r0, r3, r2
	mla r2, r1, r8, r2
	adds r0, r12, #0x80000000
	adc r0, r2, #0
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
	cmp r7, #0
	mov r6, #0
	cmpge r8, #0
	blt _020678C4
	cmp r7, #0x1000
	cmple r8, #0x1000
	ble _020678C8
_020678C4:
	mvn r6, #0
_020678C8:
	add r0, sp, #0xc
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl NNS_G3dGlbGetViewPort
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r12, [sp]
	sub r0, r0, r2
	mul r0, r7, r0
	add r1, r0, #0x800
	ldr r3, [sp, #8]
	add r1, r2, r1, asr #12
	sub r0, r12, r3
	mul r0, r8, r0
	str r1, [r5]
	ldr r1, [sp, #8]
	add r0, r0, #0x800
	rsb r1, r1, #0xbf
	sub r1, r1, r0, asr #12
	mov r0, r6
	str r1, [r4]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02067928: .word NNS_G3dGlb_projMtx
_0206792C: .word NNS_G3dGlb_cameraMtx
	arm_func_end NNS_G3dWorldPosToScrPos

	arm_func_start NNS_G3dMdlSetMdlDiff
NNS_G3dMdlSetMdlDiff: ; 0x02067930
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _02067990
	adds r12, lr, #4
	beq _0206797C
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _0206797C
	ldrh r3, [lr, #0xa]
	ldrh r0, [r12, r3]
	add r3, r12, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _02067980
_0206797C:
	mov r1, #0
_02067980:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _02067994
_02067990:
	mov r3, #0
_02067994:
	mov r0, #0x8000
	ldr r1, [r3, #4]
	rsb r0, r0, #0
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #4]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlDiff

	arm_func_start NNS_G3dMdlSetMdlAlpha
NNS_G3dMdlSetMdlAlpha: ; 0x020679B0
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _02067A10
	adds r12, lr, #4
	beq _020679FC
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020679FC
	ldrh r3, [lr, #0xa]
	ldrh r0, [r12, r3]
	add r3, r12, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _02067A00
_020679FC:
	mov r1, #0
_02067A00:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _02067A14
_02067A10:
	mov r1, #0
_02067A14:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x1f0000
	orr r0, r0, r2, lsl #16
	str r0, [r1, #0xc]
	ldmfd sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlAlpha

	arm_func_start NNS_G3dMdlSetMdlDiffAll
NNS_G3dMdlSetMdlDiffAll: ; 0x02067A28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, pc}
_02067A44:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlDiff
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _02067A44
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlDiffAll

	arm_func_start NNS_G3dMdlSetMdlAlphaAll
NNS_G3dMdlSetMdlAlphaAll: ; 0x02067A68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, pc}
_02067A84:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlAlpha
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _02067A84
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlAlphaAll

	arm_func_start NNS_G3dGetResDataByName
NNS_G3dGetResDataByName: ; 0x02067AA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	cmp r1, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r4, [r0, #1]
	cmp r4, #0x10
	bhs _02067B74
	cmp r4, #0
	ldmia r1, {r2, r3, r12}
	ldr lr, [r1, #0xc]
	mov r1, r6
	bls _02067C5C
_02067ADC:
	cmp r0, #0
	beq _02067B08
	ldrb r5, [r0, #1]
	cmp r1, r5
	bhs _02067B08
	ldrh r5, [r0, #6]
	add r7, r0, r5
	ldrh r5, [r7, #2]
	add r5, r7, r5
	add r7, r5, r1, lsl #4
	b _02067B0C
_02067B08:
	mov r7, r6
_02067B0C:
	ldr r5, [r7]
	cmp r5, r2
	ldreq r5, [r7, #4]
	cmpeq r5, r3
	ldreq r5, [r7, #8]
	cmpeq r5, r12
	ldreq r5, [r7, #0xc]
	cmpeq r5, lr
	bne _02067B60
	cmp r0, #0
	beq _02067B58
	cmp r1, r4
	bhs _02067B58
	ldrh r3, [r0, #6]
	ldrh r2, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r2, r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067B58:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067B60:
	ldrb r5, [r0, #1]
	add r1, r1, #1
	cmp r1, r5
	blo _02067ADC
	b _02067C5C
_02067B74:
	add r5, r0, #8
	ldrb r3, [r5, #1]
	cmp r3, #0
	beq _02067C5C
	ldrb r7, [r5, r3, lsl #2]
	ldrb r2, [r5]
	add r6, r5, r3, lsl #2
	cmp r2, r7
	bls _02067BC8
_02067B98:
	mov r2, r7, asr #5
	ldr r3, [r1, r2, lsl #2]
	and r2, r7, #0x1f
	mov r2, r3, lsr r2
	and r2, r2, #1
	add r2, r6, r2
	ldrb r3, [r2, #1]
	ldrb r2, [r6]
	ldrb r7, [r5, r3, lsl #2]
	add r6, r5, r3, lsl #2
	cmp r2, r7
	bhi _02067B98
_02067BC8:
	cmp r0, #0
	ldrb r2, [r6, #3]
	beq _02067BF4
	cmp r2, r4
	bhs _02067BF4
	ldrh r3, [r0, #6]
	add r12, r0, r3
	ldrh r3, [r12, #2]
	add r3, r12, r3
	add r5, r3, r2, lsl #4
	b _02067BF8
_02067BF4:
	mov r5, #0
_02067BF8:
	ldr r12, [r5]
	ldr r3, [r1]
	cmp r12, r3
	ldreq r12, [r5, #4]
	ldreq r3, [r1, #4]
	cmpeq r12, r3
	ldreq r12, [r5, #8]
	ldreq r3, [r1, #8]
	cmpeq r12, r3
	ldreq r3, [r5, #0xc]
	ldreq r1, [r1, #0xc]
	cmpeq r3, r1
	bne _02067C5C
	cmp r0, #0
	beq _02067C54
	cmp r2, r4
	bhs _02067C54
	ldrh r3, [r0, #6]
	ldrh r1, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r1, r2, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067C54:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02067C5C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G3dGetResDataByName

	arm_func_start NNS_G3dGetResDictIdxByName
NNS_G3dGetResDictIdxByName: ; 0x02067C64
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r2, [r0, #1]
	cmp r2, #0x10
	bhs _02067D04
	cmp r2, #0
	ldmia r1, {r2, r3, r12}
	ldr lr, [r1, #0xc]
	mov r1, #0
	bls _02067DC0
	mov r5, r1
_02067C98:
	cmp r0, #0
	beq _02067CC4
	ldrb r4, [r0, #1]
	cmp r1, r4
	bhs _02067CC4
	ldrh r4, [r0, #6]
	add r6, r0, r4
	ldrh r4, [r6, #2]
	add r4, r6, r4
	add r6, r4, r1, lsl #4
	b _02067CC8
_02067CC4:
	mov r6, r5
_02067CC8:
	ldr r4, [r6]
	cmp r4, r2
	ldreq r4, [r6, #4]
	cmpeq r4, r3
	ldreq r4, [r6, #8]
	cmpeq r4, r12
	ldreq r4, [r6, #0xc]
	cmpeq r4, lr
	moveq r0, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r4, [r0, #1]
	add r1, r1, #1
	cmp r1, r4
	blo _02067C98
	b _02067DC0
_02067D04:
	add r4, r0, #8
	ldrb r12, [r4, #1]
	cmp r12, #0
	beq _02067DC0
	ldrb r6, [r4, r12, lsl #2]
	ldrb r3, [r4]
	add r5, r4, r12, lsl #2
	cmp r3, r6
	bls _02067D58
_02067D28:
	mov r3, r6, asr #5
	ldr r12, [r1, r3, lsl #2]
	and r3, r6, #0x1f
	mov r3, r12, lsr r3
	and r3, r3, #1
	add r3, r5, r3
	ldrb r12, [r3, #1]
	ldrb r3, [r5]
	ldrb r6, [r4, r12, lsl #2]
	add r5, r4, r12, lsl #2
	cmp r3, r6
	bhi _02067D28
_02067D58:
	cmp r0, #0
	ldrb r3, [r5, #3]
	beq _02067D84
	cmp r3, r2
	bhs _02067D84
	ldrh r2, [r0, #6]
	add r2, r0, r2
	ldrh r0, [r2, #2]
	add r0, r2, r0
	add r4, r0, r3, lsl #4
	b _02067D88
_02067D84:
	mov r4, #0
_02067D88:
	ldr r2, [r4]
	ldr r0, [r1]
	cmp r2, r0
	ldreq r2, [r4, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	ldreq r2, [r4, #8]
	ldreq r0, [r1, #8]
	cmpeq r2, r0
	ldreq r2, [r4, #0xc]
	ldreq r0, [r1, #0xc]
	cmpeq r2, r0
	moveq r0, r3
	ldmeqfd sp!, {r4, r5, r6, pc}
_02067DC0:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dGetResDictIdxByName

	arm_func_start NNS_G3dGetMdlSet
NNS_G3dGetMdlSet: ; 0x02067DC8
	ldrh r1, [r0, #0xc]
	ldr r1, [r0, r1]
	add r0, r0, r1
	bx lr
	arm_func_end NNS_G3dGetMdlSet

	arm_func_start NNS_G3dGetTex
NNS_G3dGetTex: ; 0x02067DD8
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r3, r0, r2
	cmp r1, #1
	bne _02067E08
	ldr r2, [r0]
	ldr r1, _02067E14 ; =0x30585442
	cmp r2, r1
	ldreq r1, [r3]
	addeq r0, r0, r1
	movne r0, #0
	bx lr
_02067E08:
	ldr r1, [r3, #4]
	add r0, r0, r1
	bx lr
_02067E14: .word 0x30585442
	arm_func_end NNS_G3dGetTex

	arm_func_start NNS_G3dGetAnmByIdx
NNS_G3dGetAnmByIdx: ; 0x02067E18
	cmp r0, #0
	beq _02067E6C
	ldrh r2, [r0, #0xc]
	ldr r2, [r0, r2]
	add r12, r0, r2
	adds r3, r12, #8
	beq _02067E58
	ldrb r0, [r12, #9]
	cmp r1, r0
	bhs _02067E58
	ldrh r2, [r12, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r1, r0, r1, r2
	b _02067E5C
_02067E58:
	mov r1, #0
_02067E5C:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r12, r0
	bxne lr
_02067E6C:
	mov r0, #0
	bx lr
	arm_func_end NNS_G3dGetAnmByIdx

	arm_func_start NNSi_G3dGetTexPatAnmTexNameByIdx
NNSi_G3dGetTexPatAnmTexNameByIdx: ; 0x02067E74
	cmp r0, #0
	beq _02067E94
	ldrb r2, [r0, #6]
	cmp r1, r2
	ldrloh r2, [r0, #8]
	addlo r0, r0, r2
	addlo r0, r0, r1, lsl #4
	bxlo lr
_02067E94:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmTexNameByIdx

	arm_func_start NNSi_G3dGetTexPatAnmPlttNameByIdx
NNSi_G3dGetTexPatAnmPlttNameByIdx: ; 0x02067E9C
	cmp r0, #0
	beq _02067EBC
	ldrb r2, [r0, #7]
	cmp r1, r2
	ldrloh r2, [r0, #0xa]
	addlo r0, r0, r2
	addlo r0, r0, r1, lsl #4
	bxlo lr
_02067EBC:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmPlttNameByIdx

	arm_func_start NNSi_G3dGetTexPatAnmFV
NNSi_G3dGetTexPatAnmFV: ; 0x02067EC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl NNSi_G3dGetTexPatAnmDataByIdx
	ldrsh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mul r2, r1, r4
	add r3, r5, r3
	mov r2, r2, lsr #0xc
	b _02067EF0
_02067EEC:
	sub r2, r2, #1
_02067EF0:
	cmp r2, #0
	beq _02067F08
	mov r1, r2, lsl #2
	ldrh r1, [r3, r1]
	cmp r1, r4
	bhs _02067EEC
_02067F08:
	ldrh r1, [r0]
	b _02067F14
_02067F10:
	add r2, r2, #1
_02067F14:
	add r0, r2, #1
	cmp r0, r1
	bhs _02067F30
	add r0, r3, r2, lsl #2
	ldrh r0, [r0, #4]
	cmp r0, r4
	bls _02067F10
_02067F30:
	add r0, r3, r2, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dGetTexPatAnmFV

	arm_func_start NNSi_G3dGetTexPatAnmDataByIdx
NNSi_G3dGetTexPatAnmDataByIdx: ; 0x02067F38
	adds r3, r0, #0xc
	beq _02067F64
	ldrb r2, [r0, #0xd]
	cmp r1, r2
	bhs _02067F64
	ldrh r0, [r0, #0x12]
	ldrh r2, [r3, r0]
	add r0, r3, r0
	add r0, r0, #4
	mla r0, r2, r1, r0
	bx lr
_02067F64:
	mov r0, #0
	bx lr
	arm_func_end NNSi_G3dGetTexPatAnmDataByIdx

	arm_func_start NNSi_G3dAnmObjInitNsBca
NNSi_G3dAnmObjInitNsBca: ; 0x02067F6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, _02067FE4 ; =NNS_G3dFuncAnmJntNsBcaDefault
	str r5, [r6, #8]
	ldr r1, [r0]
	ldrb r2, [r2, #0x17]
	mov r4, #0
	str r1, [r6, #0xc]
	strb r2, [r6, #0x19]
	mov r0, r4
	add r1, r6, #0x1a
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrh r0, [r5, #6]
	add r2, r5, #0x14
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, pc}
_02067FB4:
	mov r0, r4, lsl #1
	ldrh r1, [r2, r0]
	add r0, r6, r4, lsl #1
	add r4, r4, #1
	ldr r1, [r5, r1]
	mov r1, r1, lsr #0x18
	orr r1, r1, #0x100
	strh r1, [r0, #0x1a]
	ldrh r0, [r5, #6]
	cmp r4, r0
	blo _02067FB4
	ldmfd sp!, {r4, r5, r6, pc}
_02067FE4: .word NNS_G3dFuncAnmJntNsBcaDefault
	arm_func_end NNSi_G3dAnmObjInitNsBca

	arm_func_start NNSi_G3dAnmCalcNsBca
NNSi_G3dAnmCalcNsBca: ; 0x02067FE8
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r1, #8]
	ldr r12, [r1]
	ldrh r1, [r0, #4]
	cmp r12, r1, lsl #12
	mov r1, r1, lsl #0xc
	subge r12, r1, #1
	bge _02068014
	cmp r12, #0
	movlt r12, #0
_02068014:
	mov r1, r2
	mov r2, r12
	bl getJntSRTAnmResult_
	ldmfd sp!, {r3, pc}
	arm_func_end NNSi_G3dAnmCalcNsBca

	arm_func_start getMdlTrans_
getMdlTrans_: ; 0x02068024
	ldr r1, _020680B4 ; =NNS_G3dRS
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r12, [r2, #0xd4]
	ldrb r3, [r1, #1]
	cmp r12, #0
	beq _0206807C
	beq _02068068
	ldrb r1, [r12, #1]
	cmp r3, r1
	bhs _02068068
	ldrh r2, [r12, #6]
	ldrh r1, [r12, r2]
	add r2, r12, r2
	add r2, r2, #4
	mla r2, r1, r3, r2
	b _0206806C
_02068068:
	mov r2, #0
_0206806C:
	cmp r2, #0
	ldrne r1, [r2]
	addne r2, r12, r1
	bne _02068080
_0206807C:
	mov r2, #0
_02068080:
	ldrh r1, [r2]
	tst r1, #1
	ldrne r1, [r0]
	orrne r1, r1, #4
	strne r1, [r0]
	bxne lr
	ldr r1, [r2, #4]
	str r1, [r0, #0x4c]
	ldr r1, [r2, #8]
	str r1, [r0, #0x50]
	ldr r1, [r2, #0xc]
	str r1, [r0, #0x54]
	bx lr
_020680B4: .word NNS_G3dRS
	arm_func_end getMdlTrans_

	arm_func_start getMdlScale_
getMdlScale_: ; 0x020680B8
	stmfd sp!, {r4, lr}
	ldr r1, _02068144 ; =NNS_G3dRS
	ldr r12, [r1]
	ldr r2, [r12]
	ldr r4, [r12, #0xd4]
	ldrb lr, [r2, #1]
	cmp r4, #0
	beq _02068114
	beq _02068100
	ldrb r1, [r4, #1]
	cmp lr, r1
	bhs _02068100
	ldrh r3, [r4, #6]
	ldrh r1, [r4, r3]
	add r3, r4, r3
	add r3, r3, #4
	mla r3, r1, lr, r3
	b _02068104
_02068100:
	mov r3, #0
_02068104:
	cmp r3, #0
	ldrne r1, [r3]
	addne r1, r4, r1
	bne _02068118
_02068114:
	mov r1, #0
_02068118:
	ldrh r3, [r1], #4
	tst r3, #1
	addeq r1, r1, #0xc
	tst r3, #2
	bne _02068138
	tst r3, #8
	addne r1, r1, #4
	addeq r1, r1, #0x10
_02068138:
	ldr r12, [r12, #0xe8]
	blx r12
	ldmfd sp!, {r4, pc}
_02068144: .word NNS_G3dRS
	arm_func_end getMdlScale_

	arm_func_start getMdlRot_
getMdlRot_: ; 0x02068148
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020682B4 ; =NNS_G3dRS
	mov r8, r0
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r3, [r1, #0xd4]
	ldrb r2, [r0, #1]
	cmp r3, #0
	beq _020681A8
	beq _02068194
	ldrb r0, [r3, #1]
	cmp r2, r0
	bhs _02068194
	ldrh r1, [r3, #6]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r1, r0, r2, r1
	b _02068198
_02068194:
	mov r1, #0
_02068198:
	cmp r1, #0
	ldrne r0, [r1]
	addne r5, r3, r0
	bne _020681AC
_020681A8:
	mov r5, #0
_020681AC:
	ldrh r0, [r5]
	add r1, r5, #4
	tst r0, #1
	addeq r1, r1, #0xc
	tst r0, #2
	bne _020682A4
	tst r0, #8
	beq _02068258
	and r2, r0, #0xf0
	add r0, r8, #0x28
	mov r4, r2, asr #4
	ldrsh r7, [r1]
	ldrsh r6, [r1, #2]
	blx MI_Zero36B
	ldrh r0, [r5]
	ldr r1, _020682B8 ; =0x0208C4E0
	mov r3, #0x1000
	tst r0, #0x100
	ldr r0, _020682BC ; =0x0208C4E1
	ldrb r1, [r1, r4, lsl #2]
	ldrb r0, [r0, r4, lsl #2]
	rsbne r3, r3, #0
	add r2, r8, r4, lsl #2
	str r3, [r2, #0x28]
	add r1, r8, r1, lsl #2
	str r7, [r1, #0x28]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x200
	ldr r0, _020682C0 ; =0x0208C4E2
	rsbne r6, r6, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x400
	ldr r0, _020682C4 ; =0x0208C4E3
	rsbne r7, r7, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r7, [r0, #0x28]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02068258:
	ldrsh r0, [r5, #2]
	str r0, [r8, #0x28]
	ldrsh r0, [r1]
	str r0, [r8, #0x2c]
	ldrsh r0, [r1, #2]
	str r0, [r8, #0x30]
	ldrsh r0, [r1, #4]
	str r0, [r8, #0x34]
	ldrsh r0, [r1, #6]
	str r0, [r8, #0x38]
	ldrsh r0, [r1, #8]
	str r0, [r8, #0x3c]
	ldrsh r0, [r1, #0xa]
	str r0, [r8, #0x40]
	ldrsh r0, [r1, #0xc]
	str r0, [r8, #0x44]
	ldrsh r0, [r1, #0xe]
	str r0, [r8, #0x48]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020682A4:
	ldr r0, [r8]
	orr r0, r0, #2
	str r0, [r8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020682B4: .word NNS_G3dRS
_020682B8: .word pivotUtil_1
_020682BC: .word pivotUtil_1 + 1
_020682C0: .word pivotUtil_1 + 2
_020682C4: .word pivotUtil_1 + 3
	arm_func_end getMdlRot_

	arm_func_start getJntSRTAnmResult_
getJntSRTAnmResult_: ; 0x020682C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r9, r0
	add r0, r9, r1, lsl #1
	ldrh r0, [r0, #0x14]
	mov r7, r3
	mov r8, r2
	ldr r4, [r9, r0]
	add r1, r9, r0
	tst r4, #1
	movne r0, #7
	strne r0, [r7]
	bne _020685E0
	ldr r0, _02068614 ; =0x00000FFF
	add r5, r1, #4
	tst r8, r0
	beq _0206831C
	ldr r0, [r9, #8]
	tst r0, #1
	movne r6, #1
	bne _02068320
_0206831C:
	mov r6, #0
_02068320:
	mov r0, #0
	str r0, [r7]
	tst r4, #6
	bne _020683E8
	tst r4, #8
	bne _02068364
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	mov r3, r9
	add r0, r7, #0x4c
	beq _02068358
	bl getTransDataEx_
	b _0206835C
_02068358:
	bl getTransData_
_0206835C:
	add r5, r5, #8
	b _0206836C
_02068364:
	ldr r0, [r5], #4
	str r0, [r7, #0x4c]
_0206836C:
	tst r4, #0x10
	bne _020683A0
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	mov r3, r9
	add r0, r7, #0x50
	beq _02068394
	bl getTransDataEx_
	b _02068398
_02068394:
	bl getTransData_
_02068398:
	add r5, r5, #8
	b _020683A8
_020683A0:
	ldr r0, [r5], #4
	str r0, [r7, #0x50]
_020683A8:
	tst r4, #0x20
	bne _020683DC
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	mov r3, r9
	add r0, r7, #0x54
	beq _020683D0
	bl getTransDataEx_
	b _020683D4
_020683D0:
	bl getTransData_
_020683D4:
	add r5, r5, #8
	b _02068400
_020683DC:
	ldr r0, [r5], #4
	str r0, [r7, #0x54]
	b _02068400
_020683E8:
	tst r4, #2
	orrne r0, r0, #4
	strne r0, [r7]
	bne _02068400
	mov r0, r7
	bl getMdlTrans_
_02068400:
	tst r4, #0xc0
	bne _020684BC
	tst r4, #0x100
	bne _0206843C
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	mov r3, r9
	add r0, r7, #0x28
	beq _02068430
	bl getRotDataEx_
	b _02068434
_02068430:
	bl getRotData_
_02068434:
	add r5, r5, #8
	b _020684D8
_0206843C:
	ldr r1, [r9, #0xc]
	ldr r2, [r9, #0x10]
	ldr r3, [r5]
	add r0, r7, #0x28
	add r1, r9, r1
	add r2, r9, r2
	bl getRotDataByIdx_
	cmp r0, #0
	beq _020684B4
	ldr r12, [r7, #0x3c]
	ldr r3, [r7, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r2, [r7, #0x34]
	ldr r1, [r7, #0x30]
	ldr r11, [r7, #0x38]
	mul r10, r0, r12
	mul lr, r1, r11
	sub r10, r10, lr
	mov r10, r10, asr #0xc
	mul lr, r1, r2
	mul r1, r3, r12
	sub r1, lr, r1
	mov r1, r1, asr #0xc
	mul r11, r3, r11
	mul r2, r0, r2
	sub r0, r11, r2
	mov r0, r0, asr #0xc
	str r10, [r7, #0x40]
	str r1, [r7, #0x44]
	str r0, [r7, #0x48]
_020684B4:
	add r5, r5, #4
	b _020684D8
_020684BC:
	tst r4, #0x40
	ldrne r0, [r7]
	orrne r0, r0, #2
	strne r0, [r7]
	bne _020684D8
	mov r0, r7
	bl getMdlRot_
_020684D8:
	tst r4, #0x600
	bne _020685BC
	tst r4, #0x800
	bne _02068518
	cmp r6, #0
	add r0, sp, #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r9
	beq _02068508
	bl getScaleDataEx_
	b _0206850C
_02068508:
	bl getScaleData_
_0206850C:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	b _02068520
_02068518:
	ldr r1, [r5]
	ldr r0, [r5, #4]
_02068520:
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	tst r4, #0x1000
	bne _02068560
	cmp r6, #0
	add r0, sp, #8
	mov r1, r8
	mov r3, r9
	add r2, r5, #8
	beq _02068550
	bl getScaleDataEx_
	b _02068554
_02068550:
	bl getScaleData_
_02068554:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	b _02068568
_02068560:
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
_02068568:
	str r1, [sp, #0x1c]
	str r0, [sp, #0x28]
	tst r4, #0x2000
	bne _020685B0
	cmp r6, #0
	add r0, sp, #0
	mov r1, r8
	mov r3, r9
	add r2, r5, #0x10
	beq _02068598
	bl getScaleDataEx_
	b _0206859C
_02068598:
	bl getScaleData_
_0206859C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
_020685A4:
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	b _020685E0
_020685B0:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	b _020685A4
_020685BC:
	tst r4, #0x200
	ldrne r0, [r7]
	orrne r0, r0, #1
	strne r0, [r7]
	bne _020685E0
	mov r0, r7
	bl getMdlScale_
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020685E0:
	ldr r0, [r7]
	add r1, sp, #0x18
	tst r0, #1
	ldr r0, _02068618 ; =NNS_G3dRS
	movne r3, #4
	ldr r4, [r0]
	moveq r3, #0
	ldr r2, [r4]
	ldr r4, [r4, #0xe8]
	mov r0, r7
	blx r4
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02068614: .word 0x00000FFF
_02068618: .word NNS_G3dRS
	arm_func_end getJntSRTAnmResult_

	arm_func_start getTransData_
getTransData_: ; 0x0206861C
	stmfd sp!, {r4, lr}
	ldr r12, [r2, #4]
	ldr lr, [r2]
	mov r4, r1, asr #0xc
	tst lr, #0xc0000000
	add r1, r3, r12
	beq _0206874C
	ldr r2, _02068768 ; =0x1FFF0000
	tst lr, #0x40000000
	and r2, lr, r2
	mov r3, r2, lsr #0x10
	beq _02068674
	tst r4, #1
	beq _0206866C
	cmp r4, r3
	movhi r2, r3, lsr #1
	addhi r4, r2, #1
	bhi _0206874C
	mov r4, r4, lsr #1
	b _02068710
_0206866C:
	mov r4, r4, lsr #1
	b _0206874C
_02068674:
	ands r2, r4, #3
	beq _02068708
	cmp r4, r3
	addhi r4, r2, r3, lsr #2
	bhi _0206874C
	tst r4, #1
	beq _02068700
	tst r4, #2
	movne r4, r4, lsr #2
	addne r2, r4, #1
	moveq r2, r4, lsr #2
	addeq r4, r2, #1
	tst lr, #0x20000000
	beq _020686D0
	mov r3, r2, lsl #1
	mov r2, r4, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r1, r2]
	add r2, r3, r3, lsl #1
	add r1, r2, r1
	mov r1, r1, asr #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_020686D0:
	ldr r3, [r1, r2, lsl #2]
	mov r2, #3
	umull lr, r12, r3, r2
	mov r3, r3, asr #0x1f
	mla r12, r3, r2, r12
	ldr r1, [r1, r4, lsl #2]
	adds r2, lr, r1
	adc r1, r12, r1, asr #31
	mov r2, r2, lsr #2
	orr r2, r2, r1, lsl #30
	str r2, [r0]
	ldmfd sp!, {r4, pc}
_02068700:
	mov r4, r4, lsr #2
	b _02068710
_02068708:
	mov r4, r4, lsr #2
	b _0206874C
_02068710:
	tst lr, #0x20000000
	addeq r2, r1, r4, lsl #2
	ldreq r2, [r2, #4]
	ldreq r3, [r1, r4, lsl #2]
	moveq r1, r2, asr #1
	addeq r1, r1, r3, asr #1
	beq _02068744
	mov r3, r4, lsl #1
	add r2, r1, r4, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r2, #2]
	add r1, r3, r1
	mov r1, r1, asr #1
_02068744:
	str r1, [r0]
	ldmfd sp!, {r4, pc}
_0206874C:
	tst lr, #0x20000000
	movne r2, r4, lsl #1
	ldrnesh r1, [r1, r2]
	strne r1, [r0]
	ldreq r1, [r1, r4, lsl #2]
	streq r1, [r0]
	ldmfd sp!, {r4, pc}
_02068768: .word 0x1FFF0000
	arm_func_end getTransData_

	arm_func_start getTransDataEx_
getTransDataEx_: ; 0x0206876C
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r3, #4]
	ldr r12, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add r12, r3, r12
	ldr r2, [r2]
	bne _02068804
	tst r2, #0xc0000000
	beq _020687AC
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_020687AC:
	ldr r3, [r3, #8]
	tst r3, #2
	beq _020687EC
	ldr r3, _020688B4 ; =0x00000FFF
	tst r2, #0x20000000
	and r2, r1, r3
	movne r1, lr, lsl #1
	ldrnesh r3, [r12, r1]
	ldrnesh r1, [r12]
	ldreq r3, [r12, lr, lsl #2]
	ldreq r1, [r12]
	sub r1, r1, r3
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_020687EC:
	tst r2, #0x20000000
	movne r1, lr, lsl #1
	ldrnesh r1, [r12, r1]
	ldreq r1, [r12, lr, lsl #2]
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_02068804:
	tst r2, #0xc0000000
	beq _02068868
	ldr r3, _020688B8 ; =0x1FFF0000
	tst r2, #0x40000000
	and r4, r2, r3
	mov r4, r4, lsr #0x10
	beq _02068840
	cmp lr, r4
	movhs lr, r4, lsr #1
	bhs _02068868
	mov lr, lr, lsr #1
	and r1, r1, r3, lsr #16
	mov r4, #2
	mov r5, #1
	b _02068878
_02068840:
	cmp lr, r4
	andhs r3, lr, #3
	addhs lr, r3, lr, lsr #2
	bhs _02068868
	ldr r3, _020688BC ; =0x00003FFF
	mov lr, lr, lsr #2
	and r1, r1, r3
	mov r4, #4
	mov r5, #2
	b _02068878
_02068868:
	ldr r3, _020688B4 ; =0x00000FFF
	mov r4, #1
	and r1, r1, r3
	mov r5, #0
_02068878:
	tst r2, #0x20000000
	addne r2, r12, lr, lsl #1
	movne r3, lr, lsl #1
	ldrnesh r12, [r12, r3]
	ldrnesh r2, [r2, #2]
	addeq r2, r12, lr, lsl #2
	ldreq r12, [r2]
	ldreq r2, [r2, #4]
	mul r3, r12, r4
	sub r2, r2, r12
	mul r2, r1, r2
	add r1, r3, r2, asr #12
	mov r1, r1, asr r5
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_020688B4: .word 0x00000FFF
_020688B8: .word 0x1FFF0000
_020688BC: .word 0x00003FFF
	arm_func_end getTransDataEx_

	arm_func_start getScaleData_
getScaleData_: ; 0x020688C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r2, #4]
	ldr r5, [r2]
	mov r6, r1, asr #0xc
	tst r5, #0xc0000000
	add r1, r3, r4
	beq _020689FC
	ldr r2, _02068A90 ; =0x1FFF0000
	tst r5, #0x40000000
	and r2, r5, r2
	mov r3, r2, lsr #0x10
	beq _02068918
	tst r6, #1
	beq _02068910
	cmp r6, r3
	movhi r2, r3, lsr #1
	addhi r6, r2, #1
	bhi _020689FC
	mov r2, r6, lsr #1
	b _02068A28
_02068910:
	mov r6, r6, lsr #1
	b _020689FC
_02068918:
	ands r2, r6, #3
	beq _020689F8
	cmp r6, r3
	addhi r6, r2, r3, lsr #2
	bhi _020689FC
	tst r6, #1
	beq _020689F0
	tst r6, #2
	movne r2, r6, lsr #2
	addne r4, r2, #1
	moveq r4, r6, lsr #2
	addeq r2, r4, #1
	tst r5, #0x20000000
	beq _02068994
	mov r5, r4, lsl #2
	add r3, r1, r4, lsl #2
	mov r4, r2, lsl #2
	add r2, r1, r2, lsl #2
	ldrsh r6, [r1, r5]
	ldrsh r5, [r1, r4]
	ldrsh r3, [r3, #2]
	ldrsh r2, [r2, #2]
	add r4, r6, r6, lsl #1
	add r1, r3, r3, lsl #1
	add r1, r2, r1
	add r3, r5, r4
	mov r2, r3, asr #2
	mov r1, r1, asr #2
	str r2, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02068994:
	add r3, r1, r4, lsl #3
	ldmia r3, {r4, lr}
	add r12, r1, r2, lsl #3
	mov r3, #3
	mov r5, r4, asr #0x1f
	umull r7, r6, r4, r3
	ldr r8, [r12]
	umull r4, r2, lr, r3
	mov r1, lr, asr #0x1f
	mla r2, r1, r3, r2
	mla r6, r5, r3, r6
	adds r7, r7, r8
	ldr r1, [r12, #4]
	adc r5, r6, r8, asr #31
	adds r3, r4, r1
	adc r1, r2, r1, asr #31
	mov r2, r3, lsr #2
	mov r4, r7, lsr #2
	orr r2, r2, r1, lsl #30
	orr r4, r4, r5, lsl #30
	str r2, [r0, #4]
	str r4, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020689F0:
	mov r2, r6, lsr #2
	b _02068A28
_020689F8:
	mov r6, r6, lsr #2
_020689FC:
	tst r5, #0x20000000
	movne r3, r6, lsl #2
	addne r2, r1, r6, lsl #2
	ldrnesh r3, [r1, r3]
	ldrnesh r1, [r2, #2]
	addeq r2, r1, r6, lsl #3
	ldreq r3, [r2]
	ldreq r1, [r2, #4]
	str r3, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02068A28:
	tst r5, #0x20000000
	beq _02068A64
	add r12, r1, r2, lsl #2
	mov r2, r2, lsl #2
	ldrsh lr, [r1, r2]
	ldrsh r3, [r12, #4]
	ldrsh r2, [r12, #2]
	ldrsh r1, [r12, #6]
	add r3, lr, r3
	mov r3, r3, asr #1
	add r1, r2, r1
	mov r1, r1, asr #1
	str r3, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02068A64:
	add r12, r1, r2, lsl #3
	ldr lr, [r12]
	ldr r1, [r12, #0xc]
	ldmib r12, {r2, r3}
	add r1, r2, r1
	add r3, lr, r3
	mov r2, r3, asr #1
	mov r1, r1, asr #1
	str r2, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02068A90: .word 0x1FFF0000
	arm_func_end getScaleData_

	arm_func_start getScaleDataEx_
getScaleDataEx_: ; 0x02068A94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldrh r4, [r3, #4]
	ldr r5, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add r12, r3, r5
	ldr r2, [r2]
	bne _02068B10
	tst r2, #0xc0000000
	beq _02068AD4
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_02068AD4:
	ldr r3, [r3, #8]
	tst r3, #2
	movne r3, #0
	bne _02068B88
	tst r2, #0x20000000
	addne r1, r12, lr, lsl #2
	movne r2, lr, lsl #2
	ldrnesh r1, [r1, #2]
	ldrnesh r2, [r12, r2]
	addeq r1, r12, lr, lsl #3
	ldreq r2, [r1]
	ldreq r1, [r1, #4]
	str r2, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02068B10:
	tst r2, #0xc0000000
	beq _02068B84
	ldr r4, _02068C08 ; =0x1FFF0000
	tst r2, #0x40000000
	and r3, r2, r4
	mov r3, r3, lsr #0x10
	beq _02068B54
	cmp lr, r3
	movhs lr, r3, lsr #1
	addhs r3, lr, #1
	bhs _02068B88
	mov lr, lr, lsr #1
	add r3, lr, #1
	and r1, r1, r4, lsr #16
	mov r4, #2
	mov r5, #1
	b _02068B98
_02068B54:
	cmp lr, r3
	andhs r3, lr, #3
	addhs lr, r3, lr, lsr #2
	addhs r3, lr, #1
	bhs _02068B88
	ldr r4, _02068C0C ; =0x00003FFF
	mov lr, lr, lsr #2
	add r3, lr, #1
	and r1, r1, r4
	mov r4, #4
	mov r5, #2
	b _02068B98
_02068B84:
	add r3, lr, #1
_02068B88:
	ldr r5, _02068C10 ; =0x00000FFF
	mov r4, #1
	and r1, r1, r5
	mov r5, #0
_02068B98:
	tst r2, #0x20000000
	addeq r7, r12, lr, lsl #3
	ldmeqia r7, {r2, lr}
	addeq r6, r12, r3, lsl #3
	ldreq r7, [r12, r3, lsl #3]
	ldreq r3, [r6, #4]
	beq _02068BD4
	mov r2, lr, lsl #2
	add r7, r12, lr, lsl #2
	mov r6, r3, lsl #2
	add r3, r12, r3, lsl #2
	ldrsh lr, [r7, #2]
	ldrsh r2, [r12, r2]
	ldrsh r7, [r12, r6]
	ldrsh r3, [r3, #2]
_02068BD4:
	sub r12, r7, r2
	sub r3, r3, lr
	mul r6, r2, r4
	mul r2, r1, r12
	add r2, r6, r2, asr #12
	mov r6, r2, asr r5
	mul r4, lr, r4
	mul r2, r1, r3
	add r1, r4, r2, asr #12
	mov r1, r1, asr r5
	str r6, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02068C08: .word 0x1FFF0000
_02068C0C: .word 0x00003FFF
_02068C10: .word 0x00000FFF
	arm_func_end getScaleDataEx_

	arm_func_start getRotData_
getRotData_: ; 0x02068C14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x48
	ldr r9, [r2]
	mov r4, r3
	ldr r2, [r2, #4]
	mov r5, r0
	tst r9, #0xc0000000
	mov r3, r1, asr #0xc
	add r8, r4, r2
	ldr r7, [r4, #0xc]
	ldr r6, [r4, #0x10]
	beq _02068F88
	ldr r0, _02069014 ; =0x1FFF0000
	tst r9, #0x40000000
	and r0, r9, r0
	mov r1, r0, lsr #0x10
	beq _02068C80
	tst r3, #1
	beq _02068C78
	cmp r3, r1
	movhi r0, r1, lsr #1
	addhi r3, r0, #1
	bhi _02068F88
	mov r9, r3, lsr #1
	b _02068E34
_02068C78:
	mov r3, r3, lsr #1
	b _02068F88
_02068C80:
	ands r0, r3, #3
	beq _02068E2C
	cmp r3, r1
	addhi r3, r0, r1, lsr #2
	bhi _02068F88
	tst r3, #1
	beq _02068E24
	tst r3, #2
	movne r9, r3, lsr #2
	addne r0, r9, #1
	moveq r0, r3, lsr #2
	addeq r9, r0, #1
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	mov r1, r9, lsl #1
	ldrh r3, [r8, r1]
	orr r9, r0, #0
	add r0, sp, #0x24
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	ldr r2, [r5]
	ldmib r5, {r1, r4}
	orr r9, r9, r0
	ldr r6, [sp, #0x24]
	add r2, r2, r2, lsl #1
	add r2, r6, r2
	str r2, [r5]
	ldr r6, [sp, #0x28]
	add r1, r1, r1, lsl #1
	add r1, r6, r1
	str r1, [r5, #4]
	ldr r6, [sp, #0x2c]
	add r0, r4, r4, lsl #1
	add r0, r6, r0
	str r0, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r4, [sp, #0x30]
	add r0, r3, r3, lsl #1
	add r0, r4, r0
	str r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x34]
	add r0, r2, r2, lsl #1
	add r0, r3, r0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [sp, #0x38]
	add r0, r1, r1, lsl #1
	add r2, r2, r0
	mov r0, r5
	mov r1, r5
	str r2, [r5, #0x14]
	bl VEC_Normalize
	add r0, r5, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r9, #0
	bne _02068DCC
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x3c]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #0x40]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsl #1
	add r2, r1, r0
	add r0, r5, #0x18
	mov r1, r0
	str r2, [r5, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02068DCC:
	ldr r9, [r5, #0x14]
	ldr r7, [r5, #0x10]
	ldmib r5, {r0, r8}
	mul r4, r0, r9
	mul r3, r8, r7
	sub r3, r4, r3
	ldr r1, [r5, #0xc]
	mov r6, r3, asr #0xc
	ldr r2, [r5]
	mul r4, r8, r1
	mul r3, r2, r9
	sub r3, r4, r3
	mov r4, r3, asr #0xc
	mul r3, r2, r7
	mul r1, r0, r1
	sub r0, r3, r1
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r6, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02068E24:
	mov r9, r3, lsr #2
	b _02068E34
_02068E2C:
	mov r3, r3, lsr #2
	b _02068F88
_02068E34:
	mov r0, r9, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	add r1, r8, r9, lsl #1
	ldrh r3, [r1, #2]
	orr r8, r0, #0
	add r0, sp, #0
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	ldr r3, [r5]
	ldr r1, [sp]
	ldr r2, [r5, #4]
	add r1, r3, r1
	str r1, [r5]
	ldr r1, [sp, #4]
	ldr r3, [r5, #8]
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r1, [sp, #8]
	ldr r2, [r5, #0xc]
	add r1, r3, r1
	str r1, [r5, #8]
	ldr r1, [sp, #0xc]
	orr r8, r8, r0
	add r0, r2, r1
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r1, [sp, #0x14]
	mov r0, r5
	add r2, r2, r1
	mov r1, r5
	str r2, [r5, #0x14]
	bl VEC_Normalize
	add r0, r5, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r8, #0
	bne _02068F30
	ldr r2, [r5, #0x18]
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #0x1c]
	add r0, r2, r0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0x18
	add r2, r2, r1
	mov r1, r0
	str r2, [r5, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02068F30:
	ldr r9, [r5, #0x14]
	ldr r7, [r5, #0x10]
	ldmib r5, {r0, r8}
	mul r4, r0, r9
	mul r3, r8, r7
	sub r3, r4, r3
	ldr r1, [r5, #0xc]
	mov r6, r3, asr #0xc
	ldr r2, [r5]
	mul r4, r8, r1
	mul r3, r2, r9
	sub r3, r4, r3
	mov r4, r3, asr #0xc
	mul r3, r2, r7
	mul r1, r0, r1
	sub r0, r3, r1
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r6, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02068F88:
	mov r0, r3, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	cmp r0, #0
	beq _02069000
	ldr r9, [r5, #0x14]
	ldr r7, [r5, #0x10]
	ldmib r5, {r0, r8}
	mul r4, r0, r9
	mul r3, r8, r7
	sub r3, r4, r3
	ldr r1, [r5, #0xc]
	mov r6, r3, asr #0xc
	ldr r2, [r5]
	mul r4, r8, r1
	mul r3, r2, r9
	sub r3, r4, r3
	mov r4, r3, asr #0xc
	mul r3, r2, r7
	mul r1, r0, r1
	sub r0, r3, r1
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r6, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02069000:
	add r0, r5, #0x18
	mov r1, r0
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02069014: .word 0x1FFF0000
	arm_func_end getRotData_

	arm_func_start getRotDataEx_
getRotDataEx_: ; 0x02069018
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r9, r3
	ldrh r3, [r9, #4]
	ldr r4, [r2, #4]
	mov r10, r0
	sub r0, r3, #1
	cmp r0, r1, asr #12
	add r8, r9, r4
	mov r0, r1, asr #0xc
	ldr r4, [r9, #0xc]
	ldr r11, [r9, #0x10]
	ldr r3, [r2]
	bne _02069108
	tst r3, #0xc0000000
	beq _0206906C
	tst r3, #0x40000000
	andne r2, r0, #1
	addne r0, r2, r0, lsr #1
	andeq r2, r0, #3
	addeq r0, r2, r0, lsr #2
_0206906C:
	ldr r2, [r9, #8]
	tst r2, #2
	movne r5, #0
	bne _02069178
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r10
	add r1, r9, r4
	add r2, r9, r11
	bl getRotDataByIdx_
	cmp r0, #0
	beq _020690F4
	ldr r8, [r10, #0x14]
	ldr r6, [r10, #0x10]
	ldmib r10, {r0, r7}
	mul r4, r0, r8
	mul r3, r7, r6
	sub r3, r4, r3
	ldr r1, [r10, #0xc]
	mov r5, r3, asr #0xc
	ldr r2, [r10]
	mul r4, r7, r1
	mul r3, r2, r8
	sub r3, r4, r3
	mov r4, r3, asr #0xc
	mul r3, r2, r6
	mul r1, r0, r1
	sub r0, r3, r1
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r5, [r10, #0x18]
	str r4, [r10, #0x1c]
	str r0, [r10, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020690F4:
	add r0, r10, #0x18
	mov r1, r0
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02069108:
	tst r3, #0xc0000000
	beq _02069174
	ldr r2, _02069344 ; =0x1FFF0000
	tst r3, #0x40000000
	and r3, r3, r2
	mov r3, r3, lsr #0x10
	beq _02069148
	cmp r0, r3
	movhs r0, r3, lsr #1
	addhs r5, r0, #1
	bhs _02069178
	mov r0, r0, lsr #1
	add r5, r0, #1
	and r6, r1, r2, lsr #16
	mov r7, #2
	b _02069184
_02069148:
	cmp r0, r3
	andhs r2, r0, #3
	addhs r0, r2, r0, lsr #2
	addhs r5, r0, #1
	bhs _02069178
	ldr r2, _02069348 ; =0x00003FFF
	mov r0, r0, lsr #2
	add r5, r0, #1
	and r6, r1, r2
	mov r7, #4
	b _02069184
_02069174:
	add r5, r0, #1
_02069178:
	ldr r2, _0206934C ; =0x00000FFF
	mov r7, #1
	and r6, r1, r2
_02069184:
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	add r0, sp, #0x24
	add r1, r9, r4
	add r2, r9, r11
	bl getRotDataByIdx_
	mov r1, r5, lsl #1
	ldrh r3, [r8, r1]
	orr r5, r0, #0
	add r0, sp, #0
	add r1, r9, r4
	add r2, r9, r11
	bl getRotDataByIdx_
	ldr r3, [sp, #0x24]
	ldr r1, [sp]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [r10]
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #4]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [r10, #4]
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #8]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [r10, #8]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0xc]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [r10, #0xc]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x10]
	orr r5, r5, r0
	sub r0, r1, r2
	mul r1, r2, r7
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x10]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x14]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	mov r0, r10
	mov r1, r10
	str r2, [r10, #0x14]
	bl VEC_Normalize
	add r0, r10, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r5, #0
	bne _020692EC
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x18]
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [r10, #0x1c]
	ldr r2, [sp, #0x44]
	ldr r0, [sp, #0x20]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	add r0, r10, #0x18
	mov r1, r0
	str r2, [r10, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020692EC:
	ldr r8, [r10, #0x14]
	ldr r6, [r10, #0x10]
	ldmib r10, {r0, r7}
	mul r4, r0, r8
	mul r3, r7, r6
	sub r3, r4, r3
	ldr r1, [r10, #0xc]
	mov r5, r3, asr #0xc
	ldr r2, [r10]
	mul r4, r7, r1
	mul r3, r2, r8
	sub r3, r4, r3
	mov r4, r3, asr #0xc
	mul r3, r2, r6
	mul r1, r0, r1
	sub r0, r3, r1
	mov r0, r0, asr #0xc
	str r5, [r10, #0x18]
	str r4, [r10, #0x1c]
	str r0, [r10, #0x20]
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02069344: .word 0x1FFF0000
_02069348: .word 0x00003FFF
_0206934C: .word 0x00000FFF
	arm_func_end getRotDataEx_

	arm_func_start getRotDataByIdx_
getRotDataByIdx_: ; 0x02069350
	stmfd sp!, {r4, r5, r6, lr}
	tst r3, #0x8000
	beq _02069408
	ldr r2, _020694A4 ; =0x00007FFF
	mov r4, #0
	and r2, r3, r2
	add r3, r2, r2, lsl #1
	mov r2, r3, lsl #1
	ldrsh r2, [r1, r2]
	add lr, r1, r3, lsl #1
	str r4, [r0, #0x20]
	tst r2, #0x10
	subne r6, r4, #0x1000
	and r1, r2, #0xf
	ldr r5, _020694A8 ; =0x0208C4E1
	str r4, [r0, #0x1c]
	str r4, [r0, #0x18]
	str r4, [r0, #0x14]
	str r4, [r0, #0x10]
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	str r4, [r0, #4]
	str r4, [r0]
	ldr r4, _020694AC ; =0x0208C4E0
	moveq r6, #0x1000
	ldrb r12, [r4, r1, lsl #2]
	ldrsh r4, [lr]
	ldrsh r3, [lr, #2]
	str r6, [r0, r1, lsl #2]
	tst r4, #0x20
	ldrsh r2, [lr, #4]
	ldrb r5, [r5, r1, lsl #2]
	str r3, [r0, r12, lsl #2]
	ldrsh r4, [lr]
	str r2, [r0, r5, lsl #2]
	ldr r5, _020694B0 ; =0x0208C4E2
	rsbne r2, r2, #0
	ldrb r5, [r5, r1, lsl #2]
	tst r4, #0x40
	rsbne r3, r3, #0
	str r2, [r0, r5, lsl #2]
	ldr r2, _020694B4 ; =0x0208C4E3
	ldrb r1, [r2, r1, lsl #2]
	str r3, [r0, r1, lsl #2]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02069408:
	ldr r1, _020694A4 ; =0x00007FFF
	and r1, r3, r1
	add r1, r1, r1, lsl #2
	add r5, r2, r1, lsl #1
	ldrsh r3, [r5, #8]
	mov r1, r1, lsl #1
	ldrsh r2, [r2, r1]
	and r4, r3, #7
	mov r12, r4, lsl #0x10
	ldrsh r1, [r5, #2]
	ldrsh lr, [r5, #4]
	ldrsh r4, [r5, #6]
	and r5, r2, #7
	orr r5, r5, r12, asr #13
	mov r12, r5, lsl #0x10
	and r5, r1, #7
	orr r5, r5, r12, asr #13
	mov r12, r5, lsl #0x10
	and r5, lr, #7
	orr r12, r5, r12, asr #13
	mov r5, lr, asr #3
	mov lr, r4, asr #3
	mov r3, r3, asr #3
	mov r2, r2, asr #3
	mov r12, r12, lsl #0x10
	and r4, r4, #7
	orr r4, r4, r12, asr #13
	mov r12, r4, lsl #0x10
	mov r12, r12, asr #0x10
	mov r12, r12, lsl #0x13
	mov r1, r1, asr #3
	str r3, [r0, #0x10]
	str r2, [r0]
	stmib r0, {r1, r5}
	mov r12, r12, asr #0x13
	str lr, [r0, #0xc]
	str r12, [r0, #0x14]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020694A4: .word 0x00007FFF
_020694A8: .word pivotUtil_1 + 1
_020694AC: .word pivotUtil_1
_020694B0: .word pivotUtil_1 + 2
_020694B4: .word pivotUtil_1 + 3
	arm_func_end getRotDataByIdx_

	arm_func_start GetMatColAnmValue_
GetMatColAnmValue_: ; 0x020694B8
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	tst r1, #0xc0000000
	add r0, r0, r3, lsr #16
	moveq r1, r2, lsl #1
	ldreqh r0, [r0, r1]
	bxeq lr
	ldr r3, _02069610 ; =0x1FFF0000
	tst r1, #0x40000000
	and r1, r1, r3
	mov r3, r1, lsr #0x10
	beq _02069524
	tst r2, #1
	beq _02069518
	cmp r2, r3
	bichi r1, r3, #1
	addhi r0, r0, r1
	ldrhih r0, [r0, #2]
	bxhi lr
	mov r1, r2, lsr #1
	b _020695C8
_02069518:
	bic r1, r2, #1
	ldrh r0, [r0, r1]
	bx lr
_02069524:
	ands r1, r2, #3
	beq _020695B8
	cmp r2, r3
	movhi r2, r3, lsr #2
	movhi r1, r1, lsl #1
	addhi r0, r0, r2, lsl #1
	ldrhih r0, [r1, r0]
	bxhi lr
	tst r2, #1
	beq _020695B0
	tst r2, #2
	movne r3, r2, lsr #2
	addne r1, r3, #1
	moveq r1, r2, lsr #2
	mov r2, r1, lsl #1
	addeq r3, r1, #1
	mov r1, r3, lsl #1
	ldrh r2, [r0, r2]
	ldrh r12, [r0, r1]
	ldr r0, _02069614 ; =0x00007C1F
	and r1, r2, #0x3e0
	and r3, r2, r0
	add r2, r1, r1, lsl #1
	and r1, r12, #0x3e0
	add r1, r2, r1
	add r3, r3, r3, lsl #1
	and r2, r12, r0
	add r2, r3, r2
	mov r1, r1, lsr #2
	and r2, r0, r2, lsr #2
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_020695B0:
	mov r1, r2, lsr #2
	b _020695C8
_020695B8:
	mov r1, r2, lsr #2
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bx lr
_020695C8:
	mov r2, r1, lsl #1
	add r1, r0, r1, lsl #1
	ldrh r3, [r0, r2]
	ldrh r12, [r1, #2]
	ldr r0, _02069614 ; =0x00007C1F
	and r2, r3, #0x3e0
	and r1, r12, #0x3e0
	add r1, r2, r1
	mov r1, r1, lsr #1
	and r3, r3, r0
	and r2, r12, r0
	add r2, r3, r2
	and r2, r0, r2, lsr #1
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_02069610: .word 0x1FFF0000
_02069614: .word 0x00007C1F
	arm_func_end GetMatColAnmValue_

	arm_func_start GetMatColAnmuAlphaValue_
GetMatColAnmuAlphaValue_: ; 0x02069618
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	add r3, r0, r3, lsr #16
	tst r1, #0xc0000000
	ldreqb r0, [r3, r2]
	bxeq lr
	ldr r0, _02069700 ; =0x1FFF0000
	tst r1, #0x40000000
	and r0, r1, r0
	mov r0, r0, lsr #0x10
	beq _0206968C
	tst r2, #1
	beq _02069684
	cmp r2, r0
	addhi r0, r3, r0, lsr #1
	ldrhib r0, [r0, #1]
	bxhi lr
	add r0, r3, r2, lsr #1
	ldrb r1, [r3, r2, lsr #1]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_02069684:
	ldrb r0, [r3, r2, lsr #1]
	bx lr
_0206968C:
	ands r1, r2, #3
	beq _020696F8
	cmp r2, r0
	addhi r0, r3, r0, lsr #2
	ldrhib r0, [r1, r0]
	bxhi lr
	tst r2, #1
	beq _020696DC
	tst r2, #2
	movne r2, r2, lsr #2
	addne r0, r2, #1
	moveq r0, r2, lsr #2
	ldrb r1, [r3, r0]
	addeq r2, r0, #1
	ldrb r0, [r3, r2]
	add r1, r1, r1, lsl #1
	add r0, r1, r0
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	bx lr
_020696DC:
	add r0, r3, r2, lsr #2
	ldrb r1, [r3, r2, lsr #2]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020696F8:
	ldrb r0, [r3, r2, lsr #2]
	bx lr
_02069700: .word 0x1FFF0000
	arm_func_end GetMatColAnmuAlphaValue_

	arm_func_start NNSi_G3dAnmObjInitNsBma
NNSi_G3dAnmObjInitNsBma: ; 0x02069704
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov r9, r1
	cmpne r0, #0
	addne r8, r2, r0
	ldr r0, _020697CC ; =NNS_G3dFuncAnmMatNsBmaDefault
	mov r7, #0
	ldr r1, [r0]
	mov r0, r7
	str r1, [r10, #0xc]
	ldrb r2, [r2, #0x18]
	add r1, r10, #0x1a
	moveq r8, #0
	strb r2, [r10, #0x19]
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrb r0, [r9, #9]
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, r9, #8
	mov r5, r7
	mvn r4, #0
_02069764:
	cmp r6, #0
	beq _02069790
	ldrb r0, [r9, #9]
	cmp r7, r0
	bhs _02069790
	ldrh r0, [r9, #0xe]
	add r1, r6, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r7, lsl #4
	b _02069794
_02069790:
	mov r1, r5
_02069794:
	cmp r8, #0
	moveq r0, r4
	beq _020697A8
	add r0, r8, #4
	bl NNS_G3dGetResDictIdxByName
_020697A8:
	cmp r0, #0
	orrge r1, r7, #0x100
	addge r0, r10, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r9, #9]
	add r7, r7, #1
	cmp r7, r0
	blo _02069764
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020697CC: .word NNS_G3dFuncAnmMatNsBmaDefault
	arm_func_end NNSi_G3dAnmObjInitNsBma

	arm_func_start NNSi_G3dAnmCalcNsBma
NNSi_G3dAnmCalcNsBma: ; 0x020697D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r1, #8]
	ldr r3, [r1]
	ldrh r1, [r4, #4]
	mov r7, r0
	mov r0, r1, lsl #0xc
	cmp r3, r1, lsl #12
	subge r3, r0, #1
	bge _020697FC
	cmp r3, #0
	movlt r3, #0
_020697FC:
	mov r5, r3, asr #0xc
	adds r3, r4, #8
	beq _02069834
	ldrb r1, [r4, #9]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bls _02069834
	ldrh r1, [r4, #0xe]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r6, r0, r2, r1
	b _02069838
_02069834:
	mov r6, #0
_02069838:
	ldr r1, [r6]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	mov r8, r0
	ldr r1, [r6, #4]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	ldr r1, [r7, #4]
	orr r0, r8, r0, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #4]
	ldr r1, [r6, #0xc]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	mov r8, r0
	ldr r1, [r6, #8]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	ldr r1, [r7, #8]
	orr r0, r0, r8, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #8]
	ldr r1, [r6, #0x10]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmuAlphaValue_
	ldr r1, [r7, #0xc]
	bic r1, r1, #0x1f0000
	orr r0, r1, r0, lsl #16
	str r0, [r7, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G3dAnmCalcNsBma

	arm_func_start GetTexSRTAnmVectorVal_
GetTexSRTAnmVectorVal_: ; 0x020698DC
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #0xc0000000
	add r0, r0, r2
	beq _02069994
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov r12, r2, lsr #0x10
	beq _0206992C
	tst r3, #1
	beq _02069924
	cmp r3, r12
	movhi r2, r12, lsr #1
	addhi r3, r2, #1
	bhi _02069994
	mov r3, r3, lsr #1
	b _020699A8
_02069924:
	mov r3, r3, lsr #1
	b _02069994
_0206992C:
	ands r2, r3, #3
	beq _02069990
	cmp r3, r12
	addhi r3, r2, r12, lsr #2
	bhi _02069994
	tst r3, #1
	beq _02069988
	tst r3, #2
	movne r3, r3, lsr #2
	addne r2, r3, #1
	moveq r2, r3, lsr #2
	addeq r3, r2, #1
	tst r1, #0x10000000
	movne r2, r2, lsl #1
	movne r1, r3, lsl #1
	ldrnesh r2, [r0, r2]
	ldrnesh r1, [r0, r1]
	ldreq r2, [r0, r2, lsl #2]
	ldreq r1, [r0, r3, lsl #2]
	add r0, r2, r2, lsl #1
	add r0, r0, r1
	mov r0, r0, asr #2
	bx lr
_02069988:
	mov r3, r3, lsr #2
	b _020699A8
_02069990:
	mov r3, r3, lsr #2
_02069994:
	tst r1, #0x10000000
	movne r1, r3, lsl #1
	ldrnesh r0, [r0, r1]
	ldreq r0, [r0, r3, lsl #2]
	bx lr
_020699A8:
	tst r1, #0x10000000
	addne r1, r0, r3, lsl #1
	movne r2, r3, lsl #1
	ldrnesh r0, [r0, r2]
	ldrnesh r1, [r1, #2]
	addeq r1, r0, r3, lsl #2
	ldmeqia r1, {r0, r1}
	add r0, r0, r1
	mov r0, r0, asr #1
	bx lr
	arm_func_end GetTexSRTAnmVectorVal_

	arm_func_start GetTexSRTAnmSinCosVal_
GetTexSRTAnmSinCosVal_: ; 0x020699D0
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #0xc0000000
	add r0, r0, r2
	beq _02069AA0
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov r2, r2, lsr #0x10
	beq _02069A20
	tst r3, #1
	beq _02069A18
	cmp r3, r2
	movhi r1, r2, lsr #1
	addhi r3, r1, #1
	bhi _02069AA0
	mov r1, r3, lsr #1
	b _02069AA8
_02069A18:
	mov r3, r3, lsr #1
	b _02069AA0
_02069A20:
	ands r1, r3, #3
	beq _02069A9C
	cmp r3, r2
	addhi r3, r1, r2, lsr #2
	bhi _02069AA0
	tst r3, #1
	beq _02069A94
	tst r3, #2
	movne r3, r3, lsr #2
	addne r1, r3, #1
	moveq r1, r3, lsr #2
	add r2, r0, r1, lsl #2
	mov r12, r1, lsl #2
	addeq r3, r1, #1
	add r1, r0, r3, lsl #2
	ldrsh r2, [r2, #2]
	mov r3, r3, lsl #2
	ldrsh r12, [r0, r12]
	ldrsh r1, [r1, #2]
	ldrsh r3, [r0, r3]
	add r2, r2, r2, lsl #1
	add r0, r2, r1
	add r12, r12, r12, lsl #1
	mov r1, r0, asr #2
	add r2, r12, r3
	mov r0, r2, lsl #0xe
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
_02069A94:
	mov r1, r3, lsr #2
	b _02069AA8
_02069A9C:
	mov r3, r3, lsr #2
_02069AA0:
	ldr r0, [r0, r3, lsl #2]
	bx lr
_02069AA8:
	add r3, r0, r1, lsl #2
	mov r12, r1, lsl #2
	ldrsh r2, [r3, #2]
	ldrsh r1, [r3, #6]
	ldrsh r12, [r0, r12]
	ldrsh r3, [r3, #4]
	add r0, r2, r1
	mov r1, r0, asr #1
	add r0, r12, r3
	mov r0, r0, lsl #0xf
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
	arm_func_end GetTexSRTAnmSinCosVal_

	arm_func_start GetTexSRTAnm_
GetTexSRTAnm_: ; 0x02069ADC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r2
	mov r5, r3
	adds r3, r7, #8
	beq _02069B18
	ldrb r0, [r7, #9]
	cmp r1, r0
	bhs _02069B18
	ldrh r2, [r7, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r4, r0, r1, r2
	b _02069B1C
_02069B18:
	mov r4, #0
_02069B1C:
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	mov r0, r7
	mov r3, r6
	ldr r8, [r5]
	bl GetTexSRTAnmVectorVal_
	mov r9, r0
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, r7
	mov r3, r6
	bl GetTexSRTAnmVectorVal_
	cmp r9, #0
	cmpeq r0, #0
	strne r0, [r5, #0x28]
	strne r9, [r5, #0x24]
	orreq r8, r8, #4
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, r7
	mov r3, r6
	bicne r8, r8, #4
	bl GetTexSRTAnmSinCosVal_
	cmp r0, #0x10000000
	movne r1, r0, lsr #0x10
	orreq r8, r8, #2
	strneh r0, [r5, #0x20]
	strneh r1, [r5, #0x22]
	mov r0, r7
	mov r3, r6
	bicne r8, r8, #2
	ldmia r4, {r1, r2}
	bl GetTexSRTAnmVectorVal_
	mov r9, r0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r0, r7
	mov r3, r6
	bl GetTexSRTAnmVectorVal_
	cmp r9, #0x1000
	cmpeq r0, #0x1000
	orreq r8, r8, #1
	bicne r8, r8, #1
	strne r9, [r5, #0x18]
	strne r0, [r5, #0x1c]
	str r8, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end GetTexSRTAnm_

	arm_func_start NNSi_G3dAnmObjInitNsBta
NNSi_G3dAnmObjInitNsBta: ; 0x02069BD8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov r9, r1
	cmpne r0, #0
	addne r8, r2, r0
	ldr r0, _02069CA0 ; =NNS_G3dFuncAnmMatNsBtaDefault
	mov r7, #0
	ldr r1, [r0]
	mov r0, r7
	str r1, [r10, #0xc]
	ldrb r2, [r2, #0x18]
	add r1, r10, #0x1a
	moveq r8, #0
	strb r2, [r10, #0x19]
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrb r0, [r9, #9]
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, r9, #8
	mov r5, r7
	mvn r4, #0
_02069C38:
	cmp r6, #0
	beq _02069C64
	ldrb r0, [r9, #9]
	cmp r7, r0
	bhs _02069C64
	ldrh r0, [r9, #0xe]
	add r1, r6, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r7, lsl #4
	b _02069C68
_02069C64:
	mov r1, r5
_02069C68:
	cmp r8, #0
	moveq r0, r4
	beq _02069C7C
	add r0, r8, #4
	bl NNS_G3dGetResDictIdxByName
_02069C7C:
	cmp r0, #0
	orrge r1, r7, #0x100
	addge r0, r10, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r9, #9]
	add r7, r7, #1
	cmp r7, r0
	blo _02069C38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02069CA0: .word NNS_G3dFuncAnmMatNsBtaDefault
	arm_func_end NNSi_G3dAnmObjInitNsBta

	arm_func_start NNSi_G3dAnmCalcNsBta
NNSi_G3dAnmCalcNsBta: ; 0x02069CA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r1, #8]
	ldr r12, [r1]
	ldrh r1, [r0, #4]
	cmp r12, r1, lsl #12
	mov r1, r1, lsl #0xc
	subge r12, r1, #1
	bge _02069CD0
	cmp r12, #0
	movlt r12, #0
_02069CD0:
	mov r1, r2, lsl #0x10
	mov r3, r4
	mov r1, r1, lsr #0x10
	mov r2, r12, asr #0xc
	bl GetTexSRTAnm_
	ldr r1, [r4, #0x10]
	ldr r0, [r4]
	bic r1, r1, #0xc0000000
	orr r1, r1, #0x40000000
	orr r0, r0, #8
	str r1, [r4, #0x10]
	str r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_G3dAnmCalcNsBta

	arm_func_start NNSi_G3dAnmObjInitNsBtp
NNSi_G3dAnmObjInitNsBtp: ; 0x02069D04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov r9, r1
	cmpne r0, #0
	addne r8, r2, r0
	ldr r0, _02069DD0 ; =NNS_G3dFuncAnmMatNsBtpDefault
	mov r7, #0
	ldr r1, [r0]
	mov r0, r7
	str r1, [r10, #0xc]
	ldrb r2, [r2, #0x18]
	add r1, r10, #0x1a
	moveq r8, #0
	strb r2, [r10, #0x19]
	str r9, [r10, #8]
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrb r0, [r9, #0xd]
	cmp r0, #0
	ldmlsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, r9, #0xc
	mov r5, r7
	mvn r4, #0
_02069D68:
	cmp r6, #0
	beq _02069D94
	ldrb r0, [r9, #0xd]
	cmp r7, r0
	bhs _02069D94
	ldrh r0, [r9, #0x12]
	add r1, r6, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r7, lsl #4
	b _02069D98
_02069D94:
	mov r1, r5
_02069D98:
	cmp r8, #0
	moveq r0, r4
	beq _02069DAC
	add r0, r8, #4
	bl NNS_G3dGetResDictIdxByName
_02069DAC:
	cmp r0, #0
	orrge r1, r7, #0x100
	addge r0, r10, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r9, #0xd]
	add r7, r7, #1
	cmp r7, r0
	blo _02069D68
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02069DD0: .word NNS_G3dFuncAnmMatNsBtpDefault
	arm_func_end NNSi_G3dAnmObjInitNsBtp

	arm_func_start SetTexParamaters_
SetTexParamaters_: ; 0x02069DD4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r2
	moveq r0, #0
	beq _02069DF0
	add r0, r5, #0x3c
	bl NNS_G3dGetResDataByName
_02069DF0:
	ldr r1, [r0]
	ldr r3, [r4, #0x10]
	and r1, r1, #0x1c000000
	cmp r1, #0x14000000
	ldrne r1, [r5, #8]
	ldr r2, _02069EA0 ; =0x000007FF
	ldreq r1, [r5, #0x18]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r5, r1, #0xe0000000
	ldr r1, _02069EA4 ; =0xC00F0000
	and r3, r3, r1
	str r3, [r4, #0x10]
	ldr r1, [r0]
	add r1, r1, r5
	orr r1, r3, r1
	str r1, [r4, #0x10]
	ldr r1, [r0, #4]
	and r1, r1, r2
	strh r1, [r4, #0x2c]
	ldr r3, [r0, #4]
	and r3, r3, r2, lsl #11
	mov r3, r3, lsr #0xb
	strh r3, [r4, #0x2e]
	ldr r0, [r0, #4]
	and r3, r0, r2
	and r0, r0, r2, lsl #11
	cmp r3, r1
	mov r5, r0, lsr #0xb
	moveq r0, #0x1000
	beq _02069E78
	mov r0, r3, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_02069E78:
	ldrh r1, [r4, #0x2e]
	str r0, [r4, #0x30]
	cmp r5, r1
	moveq r0, #0x1000
	beq _02069E98
	mov r0, r5, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_02069E98:
	str r0, [r4, #0x34]
	ldmfd sp!, {r3, r4, r5, pc}
_02069EA0: .word 0x000007FF
_02069EA4: .word 0xC00F0000
	arm_func_end SetTexParamaters_

	arm_func_start SetPlttParamaters_
SetPlttParamaters_: ; 0x02069EA8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldrneh r0, [r5, #0x34]
	mov r4, r2
	cmpne r0, #0
	moveq r0, #0
	beq _02069ECC
	add r0, r5, r0
	bl NNS_G3dGetResDataByName
_02069ECC:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r1, r1, #0xe0000000
	mov r1, r1, lsl #0x10
	ldrh r0, [r0]
	tst r2, #1
	mov r1, r1, lsr #0x10
	moveq r0, r0, lsl #0xf
	moveq r1, r1, lsl #0xf
	moveq r0, r0, lsr #0x10
	moveq r1, r1, lsr #0x10
	add r0, r0, r1
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SetPlttParamaters_

	arm_func_start NNSi_G3dAnmCalcNsBtp
NNSi_G3dAnmCalcNsBtp: ; 0x02069F0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldr r4, [r5, #8]
	ldr r3, [r5]
	ldrh r1, [r4, #4]
	mov r6, r0
	mov r0, r1, lsl #0xc
	cmp r3, r1, lsl #12
	subge r3, r0, #1
	bge _02069F3C
	cmp r3, #0
	movlt r3, #0
_02069F3C:
	mov r1, r2, lsl #0x10
	mov r2, r3, lsl #4
	mov r0, r4
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl NNSi_G3dGetTexPatAnmFV
	mov r7, r0
	ldrb r1, [r7, #2]
	mov r0, r4
	bl NNSi_G3dGetTexPatAnmTexNameByIdx
	mov r1, r0
	ldr r0, [r5, #0x14]
	mov r2, r6
	bl SetTexParamaters_
	ldrb r1, [r7, #3]
	cmp r1, #0xff
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl NNSi_G3dGetTexPatAnmPlttNameByIdx
	mov r1, r0
	ldr r0, [r5, #0x14]
	mov r2, r6
	bl SetPlttParamaters_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_G3dAnmCalcNsBtp

	arm_func_start NNSi_G3dAnmObjInitNsBva
NNSi_G3dAnmObjInitNsBva: ; 0x02069F9C
	ldr r3, _02069FE0 ; =NNS_G3dFuncAnmVisNsBvaDefault
	ldrb r2, [r2, #0x17]
	ldr r3, [r3]
	mov r12, #0
	str r3, [r0, #0xc]
	strb r2, [r0, #0x19]
	str r1, [r0, #8]
	tst r2, #0xff
	bxeq lr
_02069FC0:
	orr r2, r12, #0x100
	add r1, r0, r12, lsl #1
	strh r2, [r1, #0x1a]
	ldrb r1, [r0, #0x19]
	add r12, r12, #1
	cmp r12, r1
	blo _02069FC0
	bx lr
_02069FE0: .word NNS_G3dFuncAnmVisNsBvaDefault
	arm_func_end NNSi_G3dAnmObjInitNsBva

	arm_func_start NNSi_G3dAnmCalcNsBva
NNSi_G3dAnmCalcNsBva: ; 0x02069FE4
	stmfd sp!, {r3, lr}
	ldr lr, [r1, #8]
	ldr r3, [r1]
	ldrh r1, [lr, #4]
	cmp r3, r1, lsl #12
	mov r1, r1, lsl #0xc
	subge r3, r1, #1
	bge _0206A00C
	cmp r3, #0
	movlt r3, #0
_0206A00C:
	ldrh r1, [lr, #6]
	mov r12, r3, asr #0xc
	mov r3, #1
	mla r2, r12, r1, r2
	mov r1, r2, lsr #5
	add r1, lr, r1, lsl #2
	ldr r1, [r1, #0xc]
	and r2, r2, #0x1f
	and r1, r1, r3, lsl r2
	str r1, [r0]
	ldmfd sp!, {r3, pc}
	arm_func_end NNSi_G3dAnmCalcNsBva

	arm_func_start NNSi_G3dSendJointSRTBasic
NNSi_G3dSendJointSRTBasic: ; 0x0206A038
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	tst r0, #4
	bne _0206A074
	tst r0, #2
	bne _0206A064
	add r1, r4, #0x28
	mov r0, #0x19
	mov r2, #0xc
	b _0206A088
_0206A064:
	add r1, r4, #0x4c
	mov r0, #0x1c
	mov r2, #3
	b _0206A088
_0206A074:
	tst r0, #2
	bne _0206A08C
	add r1, r4, #0x28
	mov r0, #0x1a
	mov r2, #9
_0206A088:
	bl NNS_G3dGeBufferOP_N
_0206A08C:
	ldr r0, [r4]
	tst r0, #1
	ldmnefd sp!, {r4, pc}
	add r1, r4, #4
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldmfd sp!, {r4, pc}
	arm_func_end NNSi_G3dSendJointSRTBasic

	arm_func_start NNSi_G3dGetJointScaleBasic
NNSi_G3dGetJointScaleBasic: ; 0x0206A0AC
	tst r3, #4
	ldrne r1, [r0]
	orrne r1, r1, #1
	strne r1, [r0]
	bne _0206A0D8
	ldr r3, [r1]
	ldr r2, [r1, #4]
	ldr r1, [r1, #8]
	str r3, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
_0206A0D8:
	ldr r1, [r0]
	orr r1, r1, #0x18
	str r1, [r0]
	bx lr
	arm_func_end NNSi_G3dGetJointScaleBasic

	arm_func_start NNSi_G3dSendJointSRTMaya
NNSi_G3dSendJointSRTMaya: ; 0x0206A0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, #0
	tst r0, #4
	moveq r4, #1
	tst r0, #0x20
	beq _0206A13C
	tst r0, #8
	bne _0206A13C
	cmp r4, #0
	beq _0206A12C
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	mov r4, #0
_0206A12C:
	add r1, r5, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_0206A13C:
	ldr r0, [r5]
	tst r0, #2
	bne _0206A16C
	cmp r4, #0
	add r1, r5, #0x28
	beq _0206A160
	mov r0, #0x19
	mov r2, #0xc
	b _0206A180
_0206A160:
	mov r0, #0x1a
	mov r2, #9
	b _0206A180
_0206A16C:
	cmp r4, #0
	beq _0206A184
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
_0206A180:
	bl NNS_G3dGeBufferOP_N
_0206A184:
	ldr r0, [r5]
	tst r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r1, r5, #4
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dSendJointSRTMaya

	arm_func_start NNSi_G3dGetJointScaleMaya
NNSi_G3dGetJointScaleMaya: ; 0x0206A1A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	tst r3, #4
	ldrb r12, [r2, #3]
	beq _0206A1F8
	ldr r0, [lr]
	tst r12, #2
	orr r0, r0, #1
	str r0, [lr]
	beq _0206A270
	ldr r0, _0206A2DC ; =NNS_G3dRS
	ldrb r6, [r2, #1]
	ldr r0, [r0]
	mov r1, #1
	add r5, r0, #0xc4
	mov r4, r6, lsr #5
	ldr r3, [r5, r4, lsl #2]
	and r0, r6, #0x1f
	orr r0, r3, r1, lsl r0
	str r0, [r5, r4, lsl #2]
	b _0206A270
_0206A1F8:
	ldr r4, [r1]
	ldr r3, [r1, #4]
	ldr r0, [r1, #8]
	str r4, [lr, #4]
	str r3, [lr, #8]
	str r0, [lr, #0xc]
	tst r12, #2
	beq _0206A270
	ldr r0, _0206A2DC ; =NNS_G3dRS
	ldrb r7, [r2, #1]
	ldr r0, [r0]
	mov r4, #0x18
	add r3, r0, #0xc4
	mov r0, r7, lsr #5
	and r5, r7, #0x1f
	mov r6, #1
	mvn r5, r6, lsl r5
	ldr r6, [r3, r0, lsl #2]
	smulbb r7, r7, r4
	and r4, r6, r5
	ldr r6, [r1, #0xc]
	ldr r5, _0206A2E0 ; =0x020B7E4C
	str r4, [r3, r0, lsl #2]
	ldr r4, [r1, #0x10]
	ldr r3, _0206A2E4 ; =0x020B7E50
	str r6, [r5, r7]
	ldr r1, [r1, #0x14]
	ldr r0, _0206A2E8 ; =0x020B7E54
	str r4, [r3, r7]
	str r1, [r0, r7]
_0206A270:
	tst r12, #1
	beq _0206A2CC
	ldr r0, [lr]
	ldrb r4, [r2, #2]
	orr r3, r0, #0x20
	ldr r0, _0206A2DC ; =NNS_G3dRS
	str r3, [lr]
	ldr r1, [r0]
	mov r0, r4, lsr #5
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0xc4]
	and r1, r4, #0x1f
	mov r2, #1
	tst r0, r2, lsl r1
	orrne r0, r3, #8
	strne r0, [lr]
	bne _0206A2CC
	ldr r1, _0206A2E0 ; =0x020B7E4C
	mov r0, #0x18
	mla r0, r4, r0, r1
	add r3, lr, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
_0206A2CC:
	ldr r0, [lr]
	orr r0, r0, #0x10
	str r0, [lr]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206A2DC: .word NNS_G3dRS
_0206A2E0: .word unk_020B7E4C
_0206A2E4: .word unk_020B7E50
_0206A2E8: .word unk_020B7E54
	arm_func_end NNSi_G3dGetJointScaleMaya

	arm_func_start texmtxCalc_flag_Maya
texmtxCalc_flag_Maya: ; 0x0206A2EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x20]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x22]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [r10]
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #4]
	mov r0, r8
	bl FX_DivAsync
	sub r0, r5, r4
	add r1, r7, r6
	ldr r5, [r9, #0x18]
	ldrh r4, [r9, #0x2c]
	sub r2, r5, r1
	ldr r1, [r9, #0x24]
	mul r3, r4, r2
	smull r2, r1, r5, r1
	mov r2, r2, lsr #8
	orr r2, r2, r1, lsl #24
	mul r1, r4, r2
	rsb r1, r1, r3, lsl #3
	str r1, [r10, #0x30]
	ldr r4, [r9, #0x1c]
	ldrh r3, [r9, #0x2e]
	sub r0, r0, r4
	add r0, r0, #0x2000
	mul r2, r3, r0
	ldr r0, [r9, #0x28]
	smull r1, r0, r4, r0
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	mul r0, r3, r1
	add r0, r0, r2, lsl #3
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flag_Maya

	arm_func_start texmtxCalc_flagS_Maya
texmtxCalc_flagS_Maya: ; 0x0206A3F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r12, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	add r3, r2, r1
	sub r1, r2, r1
	rsb r2, r3, #0
	add r4, r2, #0x1000
	mul r2, r0, r12
	ldrh r3, [r5, #0x2e]
	mul r4, r12, r4
	ldr r0, [r5, #0x28]
	mov r2, r2, lsl #4
	rsb r4, r2, r4, lsl #3
	add r2, r1, #0x1000
	mul r1, r0, r3
	mul r2, r3, r2
	mov r0, r1, lsl #4
	add r0, r0, r2, lsl #3
	str r4, [r6, #0x30]
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagS_Maya

	arm_func_start texmtxCalc_flagR_Maya
texmtxCalc_flagR_Maya: ; 0x0206A4B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, [r1, #0x1c]
	ldr r12, [r1, #0x18]
	ldr r4, [r1, #0x24]
	ldr r2, [r1, #0x28]
	smull r7, r6, r12, r4
	smull r5, r4, r3, r2
	mov r2, #0
	mov lr, r3, lsl #1
	mov r7, r7, lsr #8
	rsb lr, lr, #0
	mov r5, r5, lsr #8
	orr r7, r7, r6, lsl #24
	ldrh r6, [r1, #0x2e]
	add lr, lr, #0x2000
	orr r5, r5, r4, lsl #24
	ldrh r8, [r1, #0x2c]
	rsb r7, r7, #0
	mul r4, r6, lr
	mul r1, r6, r5
	mul r5, r8, r7
	add r1, r1, r4, lsl #3
	str r12, [r0]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	str r5, [r0, #0x30]
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end texmtxCalc_flagR_Maya

	arm_func_start texmtxCalc_flagRS_Maya
texmtxCalc_flagRS_Maya: ; 0x0206A52C
	stmfd sp!, {r3, lr}
	ldrh r3, [r1, #0x2c]
	ldr r12, [r1, #0x24]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r3, r12, r3
	mov lr, #0x1000
	mov r12, #0
	mul r2, r1, r2
	rsb r1, r3, #0
	mov r3, r1, lsl #4
	mov r1, r2, lsl #4
	str lr, [r0]
	str lr, [r0, #0x14]
	str r12, [r0, #4]
	str r3, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r3, pc}
	arm_func_end texmtxCalc_flagRS_Maya

	arm_func_start texmtxCalc_flagT_Maya
texmtxCalc_flagT_Maya: ; 0x0206A578
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x20]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x22]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [r10]
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #4]
	mov r0, r8
	bl FX_DivAsync
	sub r1, r5, r4
	add r0, r7, r6
	ldrh r4, [r9, #0x2c]
	ldr r3, [r9, #0x18]
	ldrh r2, [r9, #0x2e]
	sub r0, r3, r0
	mul r0, r4, r0
	mov r0, r0, lsl #3
	str r0, [r10, #0x30]
	ldr r0, [r9, #0x1c]
	sub r0, r1, r0
	add r0, r0, #0x2000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flagT_Maya

	arm_func_start texmtxCalc_flagTS_Maya
texmtxCalc_flagTS_Maya: ; 0x0206A658
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh r2, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r4, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	add r3, r2, r0
	sub r0, r2, r0
	rsb r2, r3, #0
	add r2, r2, #0x1000
	add r0, r0, #0x1000
	mul r2, r4, r2
	mul r0, r1, r0
	mov r1, r2, lsl #3
	mov r0, r0, lsl #3
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagTS_Maya

	arm_func_start texmtxCalc_flagTR_Maya
texmtxCalc_flagTR_Maya: ; 0x0206A704
	stmfd sp!, {r4, lr}
	ldr lr, [r1, #0x1c]
	ldrh r3, [r1, #0x2e]
	mov r2, lr, lsl #1
	rsb r2, r2, #0
	add r2, r2, #0x2000
	ldr r4, [r1, #0x18]
	mul r1, r3, r2
	mov r12, #0
	str lr, [r0, #0x14]
	stmia r0, {r4, r12}
	mov r1, r1, lsl #3
	str r12, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end texmtxCalc_flagTR_Maya

	arm_func_start texmtxCalc_flagTRS_Maya
texmtxCalc_flagTRS_Maya: ; 0x0206A744
	mov r1, #0
	mov r2, #0x1000
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS_Maya

	arm_func_start NNSi_G3dSendTexSRTMaya
NNSi_G3dSendTexSRTMaya: ; 0x0206A768
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4]
	mov r5, #0
	tst r0, #8
	ldrne r0, _0206A894 ; =0x00101610
	ldr r1, [r4]
	strne r0, [sp]
	ldreq r0, _0206A898 ; =0x00101810
	and r1, r1, #7
	streq r0, [sp]
	ldr r0, _0206A89C ; =calcTexMtx_Maya
	mov lr, #3
	ldr r2, [r0, r1, lsl #2]
	mov r12, #2
	mov r3, #0x1000
	add r0, sp, #8
	mov r1, r4
	str lr, [sp, #4]
	str r12, [sp, #0x48]
	str r5, [sp, #0x40]
	str r5, [sp, #0x34]
	str r5, [sp, #0x30]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x28]
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	str r5, [sp, #0x14]
	str r5, [sp, #0x10]
	str r3, [sp, #0x44]
	blx r2
	ldr r5, [r4, #0x30]
	cmp r5, #0x1000
	beq _0206A830
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x38]
	smull lr, r12, r5, r2
	smull r3, r2, r5, r1
	smull r1, r0, r5, r0
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr lr, lr, r12, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str lr, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x38]
_0206A830:
	ldr lr, [r4, #0x34]
	cmp lr, #0x1000
	beq _0206A878
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	smull r12, r4, lr, r2
	smull r3, r2, lr, r1
	smull r1, r0, lr, r0
	mov r12, r12, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r12, r12, r4, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x3c]
_0206A878:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}
_0206A894: .word 0x00101610
_0206A898: .word 0x00101810
_0206A89C: .word calcTexMtx_Maya
	arm_func_end NNSi_G3dSendTexSRTMaya

	arm_func_start NNSi_G3dSendJointSRTSi3d
NNSi_G3dSendJointSRTSi3d: ; 0x0206A8A0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6]
	mov r4, #0
	ands r5, r0, #0x18
	bne _0206A8CC
	add r1, r6, #0x1c
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_0206A8CC:
	ldr r0, [r6]
	tst r0, #4
	bne _0206A93C
	cmp r5, #0
	movne r4, #1
	bne _0206A93C
	ldr r3, [r6, #0x4c]
	ldr r2, [r6, #0x10]
	ldr r1, [r6, #0x50]
	smull r12, lr, r3, r2
	ldr r0, [r6, #0x14]
	mov r12, r12, lsr #0xc
	smull r2, r0, r1, r0
	mov r3, r2, lsr #0xc
	orr r3, r3, r0, lsl #20
	orr r12, r12, lr, lsl #20
	ldr r2, [r6, #0x54]
	ldr r0, [r6, #0x18]
	add r1, sp, #0
	smull lr, r0, r2, r0
	mov lr, lr, lsr #0xc
	orr lr, lr, r0, lsl #20
	mov r0, #0x1c
	mov r2, #3
	str r12, [sp]
	str r3, [sp, #4]
	str lr, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_0206A93C:
	ldr r0, [r6]
	tst r0, #2
	bne _0206A96C
	cmp r4, #0
	add r1, r6, #0x28
	beq _0206A960
	mov r0, #0x19
	mov r2, #0xc
	b _0206A980
_0206A960:
	mov r0, #0x1a
	mov r2, #9
	b _0206A980
_0206A96C:
	cmp r4, #0
	beq _0206A984
	add r1, r6, #0x4c
	mov r0, #0x1c
	mov r2, #3
_0206A980:
	bl NNS_G3dGeBufferOP_N
_0206A984:
	cmp r5, #0
	bne _0206A99C
	add r1, r6, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_0206A99C:
	ldr r0, [r6]
	tst r0, #1
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #4
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end NNSi_G3dSendJointSRTSi3d

	arm_func_start NNSi_G3dGetJointScaleSi3d
NNSi_G3dGetJointScaleSi3d: ; 0x0206A9C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	tst r3, #4
	ldrb r4, [r2, #1]
	ldrb r0, [r2, #2]
	beq _0206AA64
	ldr r2, [r5]
	ldr r1, _0206ABBC ; =NNS_G3dRS
	orr r2, r2, #1
	str r2, [r5]
	ldr r3, [r1]
	mov r1, r0, lsr #5
	add r1, r3, r1, lsl #2
	ldr r1, [r1, #0xc4]
	and r2, r0, #0x1f
	mov r6, #1
	tst r1, r6, lsl r2
	beq _0206AA34
	add r3, r3, #0xc4
	mov r2, r4, lsr #5
	ldr r1, [r3, r2, lsl #2]
	and r0, r4, #0x1f
	orr r0, r1, r6, lsl r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5]
	orr r0, r0, #0x18
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0206AA34:
	mov r6, #0x18
	ldr r8, _0206ABC0 ; =0x020B7E40
	mul r7, r0, r6
	mla r1, r4, r6, r8
	mov r2, r6
	add r0, r8, r7
	bl MIi_CpuCopy32
	mov r2, r6
	add r0, r8, r7
	add r1, r5, #0x10
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0206AA64:
	ldr r10, [r1]
	ldr r9, [r1, #4]
	ldr r8, [r1, #8]
	ldr r6, _0206ABBC ; =NNS_G3dRS
	str r10, [r5, #4]
	str r9, [r5, #8]
	str r8, [r5, #0xc]
	ldr r3, [r6]
	mov r2, r0, lsr #5
	add r2, r3, r2, lsl #2
	ldr r7, [r2, #0xc4]
	and r11, r0, #0x1f
	mov r2, #1
	tst r7, r2, lsl r11
	mov r2, #0x18
	beq _0206AAE8
	ldr r3, _0206ABC0 ; =0x020B7E40
	mov r0, r1
	mla r1, r4, r2, r3
	bl MIi_CpuCopy32
	ldr r0, [r6]
	and r1, r4, #0x1f
	add r3, r0, #0xc4
	mov r0, #1
	mov r2, r4, lsr #5
	mvn r0, r0, lsl r1
	ldr r1, [r3, r2, lsl #2]
	and r0, r1, r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5]
	orr r0, r0, #0x18
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0206AAE8:
	mul r12, r0, r2
	add r7, r3, #0xc4
	mov r6, r4, lsr #5
	and r0, r4, #0x1f
	mov r3, #1
	mvn r0, r3, lsl r0
	ldr lr, [r7, r6, lsl #2]
	ldr r11, _0206ABC0 ; =0x020B7E40
	and r0, lr, r0
	str r0, [r7, r6, lsl #2]
	ldr r0, [r11, r12]
	mul r3, r4, r2
	smull r4, r0, r10, r0
	mov r4, r4, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r4, [r11, r3]
	ldr r6, _0206ABC4 ; =0x020B7E44
	ldr r4, _0206ABC8 ; =0x020B7E48
	ldr r0, [r6, r12]
	smull r7, r0, r9, r0
	mov r7, r7, lsr #0xc
	orr r7, r7, r0, lsl #20
	str r7, [r6, r3]
	ldr r0, [r4, r12]
	ldr r6, _0206ABCC ; =0x020B7E4C
	smull r7, r0, r8, r0
	mov r7, r7, lsr #0xc
	orr r7, r7, r0, lsl #20
	str r7, [r4, r3]
	ldr r7, [r1, #0xc]
	ldr r0, [r6, r12]
	ldr r4, _0206ABD0 ; =0x020B7E50
	smull r8, r0, r7, r0
	mov r7, r8, lsr #0xc
	orr r7, r7, r0, lsl #20
	str r7, [r6, r3]
	ldr r6, [r1, #0x10]
	ldr r0, [r4, r12]
	ldr r7, [r1, #0x14]
	smull r1, r0, r6, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, r3]
	ldr r6, _0206ABD4 ; =0x020B7E54
	add r1, r5, #0x10
	ldr r4, [r6, r12]
	add r0, r11, r12
	smull r5, r4, r7, r4
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	str r5, [r6, r3]
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0206ABBC: .word NNS_G3dRS
_0206ABC0: .word unk_020B7E40
_0206ABC4: .word unk_020B7E44
_0206ABC8: .word unk_020B7E48
_0206ABCC: .word unk_020B7E4C
_0206ABD0: .word unk_020B7E50
_0206ABD4: .word unk_020B7E54
	arm_func_end NNSi_G3dGetJointScaleSi3d

	arm_func_start NNSi_G3dSendTexSRTSi3d
NNSi_G3dSendTexSRTSi3d: ; 0x0206ABD8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	ldr r1, [r0]
	mov r2, #0
	tst r1, #8
	ldrne r1, _0206AD80 ; =0x00101710
	mov r4, #3
	strne r1, [sp]
	ldreq r1, _0206AD84 ; =0x00101910
	mov r3, #2
	streq r1, [sp]
	ldr r1, [r0]
	str r4, [sp, #4]
	str r3, [sp, #0x38]
	str r2, [sp, #0x34]
	str r2, [sp, #0x28]
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x14]
	str r2, [sp, #0x10]
	str r2, [sp, #0xc]
	tst r1, #4
	beq _0206AC64
	tst r1, #1
	movne r1, #0x1000
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	strne r1, [sp, #8]
	strne r1, [sp, #0x18]
	ldreq r2, [r0, #0x18]
	ldreq r1, [r0, #0x1c]
	streq r2, [sp, #8]
	streq r1, [sp, #0x18]
	b _0206ACFC
_0206AC64:
	tst r1, #1
	beq _0206ACAC
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x28]
	mov r2, r2, lsl #4
	mov r1, r1, lsl #4
	ldrh r4, [r0, #0x2c]
	rsb r5, r2, #0
	ldrh r2, [r0, #0x2e]
	rsb r3, r1, #0
	mul r4, r5, r4
	mov r1, #0x1000
	mul r2, r3, r2
	str r4, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r1, [sp, #8]
	str r1, [sp, #0x18]
	b _0206ACFC
_0206ACAC:
	ldr lr, [r0, #0x18]
	ldr r3, [r0, #0x24]
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x28]
	smull r4, r12, lr, r3
	smull r3, r1, r2, r1
	mov r4, r4, lsr #8
	mov r3, r3, lsr #8
	orr r4, r4, r12, lsl #24
	orr r3, r3, r1, lsl #24
	ldrh r5, [r0, #0x2c]
	rsb r4, r4, #0
	ldrh r12, [r0, #0x2e]
	rsb r1, r3, #0
	mul r3, r5, r4
	mul r1, r12, r1
	str r3, [sp, #0x2c]
	str r1, [sp, #0x30]
	str lr, [sp, #8]
	str r2, [sp, #0x18]
_0206ACFC:
	ldr lr, [r0, #0x30]
	cmp lr, #0x1000
	beq _0206AD30
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x2c]
	smull r12, r3, lr, r2
	smull r2, r1, lr, r1
	mov r12, r12, lsr #0xc
	mov r2, r2, lsr #0xc
	orr r12, r12, r3, lsl #20
	orr r2, r2, r1, lsl #20
	str r12, [sp, #8]
	str r2, [sp, #0x2c]
_0206AD30:
	ldr r12, [r0, #0x34]
	cmp r12, #0x1000
	beq _0206AD64
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x30]
	smull r3, r2, r12, r1
	smull r1, r0, r12, r0
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r3, [sp, #0x18]
	str r1, [sp, #0x30]
_0206AD64:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0xe
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, pc}
_0206AD80: .word 0x00101710
_0206AD84: .word 0x00101910
	arm_func_end NNSi_G3dSendTexSRTSi3d

	arm_func_start texmtxCalc_flag_3dsMax
texmtxCalc_flag_3dsMax: ; 0x0206AD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [r10]
	str r5, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r1, [r9, #0x2c]
	ldrh r0, [r9, #0x2e]
	ldr r3, [r9, #0x28]
	ldr r2, [r9, #0x24]
	mul r8, r3, r0
	mul r9, r2, r1
	rsb r2, r0, #0
	add r8, r8, r2, lsl #11
	smull r3, r2, r5, r8
	smull r8, r5, r6, r8
	rsb r11, r1, #0
	rsb r9, r9, r11, lsl #11
	smlal r3, r2, r4, r9
	smull r9, r4, r7, r9
	subs r7, r9, r8
	sbc r4, r4, r5
	mov r5, r7, lsr #8
	orr r5, r5, r4, lsl #24
	add r1, r5, r1, lsl #15
	str r1, [r10, #0x30]
	mov r1, r3, lsr #8
	orr r1, r1, r2, lsl #24
	add r0, r1, r0, lsl #15
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flag_3dsMax

	arm_func_start texmtxCalc_flagS_3dsMax
texmtxCalc_flagS_3dsMax: ; 0x0206AE8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrh r1, [r5, #0x2e]
	ldr r0, [r5, #0x28]
	ldrh r2, [r5, #0x2c]
	ldr r3, [r5, #0x24]
	mul r4, r0, r1
	rsb r0, r1, #0
	add r0, r4, r0, lsl #11
	ldrsh lr, [r5, #0x22]
	mul r4, r3, r2
	rsb r3, r2, #0
	rsb r9, r4, r3, lsl #11
	ldrsh r12, [r5, #0x20]
	smull r8, r7, lr, r9
	smull r4, r3, lr, r0
	smlal r4, r3, r12, r9
	smull lr, r0, r12, r0
	subs r8, r8, lr
	sbc r0, r7, r0
	mov r7, r8, lsr #8
	orr r7, r7, r0, lsl #24
	add r0, r7, r2, lsl #15
	str r0, [r6, #0x30]
	mov r0, r4, lsr #8
	orr r0, r0, r3, lsl #24
	add r0, r0, r1, lsl #15
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end texmtxCalc_flagS_3dsMax

	arm_func_start texmtxCalc_flagR_3dsMax
texmtxCalc_flagR_3dsMax: ; 0x0206AF64
	stmfd sp!, {r4, r5, r6, lr}
	ldrh r3, [r1, #0x2e]
	ldrh r2, [r1, #0x2c]
	ldr r4, [r1, #0x28]
	ldr r6, [r1, #0x24]
	mul r5, r4, r3
	rsb r4, r3, #0
	ldr lr, [r1, #0x18]
	ldr r12, [r1, #0x1c]
	add r1, r5, r4, lsl #11
	smull r5, r4, r12, r1
	mov r1, #0
	mov r5, r5, lsr #8
	orr r5, r5, r4, lsl #24
	add r3, r5, r3, lsl #15
	mul r4, r6, r2
	rsb r5, r2, #0
	rsb r4, r4, r5, lsl #11
	smull r5, r4, lr, r4
	mov r5, r5, lsr #8
	orr r5, r5, r4, lsl #24
	add r2, r5, r2, lsl #15
	str lr, [r0]
	str r12, [r0, #0x14]
	str r1, [r0, #4]
	str r2, [r0, #0x30]
	str r3, [r0, #0x34]
	str r1, [r0, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end texmtxCalc_flagR_3dsMax

	arm_func_start texmtxCalc_flagRS_3dsMax
texmtxCalc_flagRS_3dsMax: ; 0x0206AFD8
	stmfd sp!, {r3, lr}
	ldr r2, [r1, #0x24]
	ldrh r3, [r1, #0x2c]
	rsb r12, r2, #0
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r3, r12, r3
	mov lr, #0x1000
	mov r12, #0
	mul r2, r1, r2
	mov r3, r3, lsl #4
	mov r1, r2, lsl #4
	str lr, [r0]
	str lr, [r0, #0x14]
	str r12, [r0, #4]
	str r3, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r3, pc}
	arm_func_end texmtxCalc_flagRS_3dsMax

	arm_func_start texmtxCalc_flagT_3dsMax
texmtxCalc_flagT_3dsMax: ; 0x0206B024
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [r10]
	str r5, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r8, [r9, #0x2c]
	ldrh r2, [r9, #0x2e]
	rsb r0, r8, #0
	mov r11, r0, lsl #0xb
	smull r1, r0, r7, r11
	rsb r3, r2, #0
	mov r3, r3, lsl #0xb
	smull r9, r7, r5, r3
	smlal r9, r7, r4, r11
	mov r4, r9, lsr #8
	orr r4, r4, r7, lsl #24
	add r2, r4, r2, lsl #15
	str r2, [r10, #0x34]
	smull r3, r2, r6, r3
	subs r1, r1, r3
	sbc r0, r0, r2
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	add r0, r1, r8, lsl #15
	str r0, [r10, #0x30]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flagT_3dsMax

	arm_func_start texmtxCalc_flagTS_3dsMax
texmtxCalc_flagTS_3dsMax: ; 0x0206B118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrh r0, [r5, #0x2e]
	ldrh r1, [r5, #0x2c]
	ldrsh r12, [r5, #0x22]
	rsb r2, r0, #0
	mov r9, r2, lsl #0xb
	ldrsh r4, [r5, #0x20]
	rsb r2, r1, #0
	mov lr, r2, lsl #0xb
	smull r8, r7, r12, lr
	smull r3, r2, r12, r9
	smlal r3, r2, r4, lr
	smull lr, r12, r4, r9
	subs r8, r8, lr
	sbc r4, r7, r12
	mov r7, r8, lsr #8
	orr r7, r7, r4, lsl #24
	add r1, r7, r1, lsl #15
	str r1, [r6, #0x30]
	mov r1, r3, lsr #8
	orr r1, r1, r2, lsl #24
	add r0, r1, r0, lsl #15
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end texmtxCalc_flagTS_3dsMax

	arm_func_start texmtxCalc_flagTR_3dsMax
texmtxCalc_flagTR_3dsMax: ; 0x0206B1E0
	stmfd sp!, {r4, lr}
	ldr lr, [r1, #0x1c]
	ldr r4, [r1, #0x18]
	ldrh r3, [r1, #0x2c]
	rsb r12, r4, #0x1000
	ldrh r1, [r1, #0x2e]
	rsb r2, lr, #0x1000
	mul r3, r12, r3
	mul r1, r2, r1
	mov r12, #0
	str lr, [r0, #0x14]
	stmia r0, {r4, r12}
	mov r2, r3, lsl #3
	mov r1, r1, lsl #3
	str r2, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end texmtxCalc_flagTR_3dsMax

	arm_func_start texmtxCalc_flagTRS_3dsMax
texmtxCalc_flagTRS_3dsMax: ; 0x0206B228
	mov r1, #0
	mov r2, #0x1000
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS_3dsMax

	arm_func_start NNSi_G3dSendTexSRT3dsMax
NNSi_G3dSendTexSRT3dsMax: ; 0x0206B24C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4]
	mov r5, #0
	tst r0, #8
	ldrne r0, _0206B378 ; =0x00101610
	ldr r1, [r4]
	strne r0, [sp]
	ldreq r0, _0206B37C ; =0x00101810
	and r1, r1, #7
	streq r0, [sp]
	ldr r0, _0206B380 ; =calcTexMtx_3dsMax
	mov lr, #3
	ldr r2, [r0, r1, lsl #2]
	mov r12, #2
	mov r3, #0x1000
	add r0, sp, #8
	mov r1, r4
	str lr, [sp, #4]
	str r12, [sp, #0x48]
	str r5, [sp, #0x40]
	str r5, [sp, #0x34]
	str r5, [sp, #0x30]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x28]
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	str r5, [sp, #0x14]
	str r5, [sp, #0x10]
	str r3, [sp, #0x44]
	blx r2
	ldr r5, [r4, #0x30]
	cmp r5, #0x1000
	beq _0206B314
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x38]
	smull lr, r12, r5, r2
	smull r3, r2, r5, r1
	smull r1, r0, r5, r0
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr lr, lr, r12, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str lr, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x38]
_0206B314:
	ldr lr, [r4, #0x34]
	cmp lr, #0x1000
	beq _0206B35C
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	smull r12, r4, lr, r2
	smull r3, r2, lr, r1
	smull r1, r0, lr, r0
	mov r12, r12, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r12, r12, r4, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x3c]
_0206B35C:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}
_0206B378: .word 0x00101610
_0206B37C: .word 0x00101810
_0206B380: .word calcTexMtx_3dsMax
	arm_func_end NNSi_G3dSendTexSRT3dsMax

	arm_func_start texmtxCalc_flag_Xsi
texmtxCalc_flag_Xsi: ; 0x0206B384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r6, r1
	ldrh r2, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	mov r10, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r10
	bl FX_DivAsync
	ldrsh r3, [r6, #0x22]
	ldr r0, [r6, #0x18]
	ldr r8, [r6, #0x1c]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r7]
	smull r2, r1, r8, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	ldrsh r9, [r6, #0x20]
	str r4, [r7, #0x14]
	smull r2, r1, r0, r9
	mov r5, r2, lsr #0xc
	orr r5, r5, r1, lsl #20
	bl FX_GetDivResult
	smull r2, r1, r8, r9
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #4]
	mov r0, r10
	mov r1, r11
	bl FX_DivAsync
	ldrh r1, [r6, #0x2c]
	ldrh r10, [r6, #0x2e]
	mov r0, r8
	str r1, [sp, #4]
	mov r1, r0, asr #0x1f
	ldr lr, [r6, #0x28]
	ldr r3, [r6, #0x24]
	str r1, [sp]
	smull r2, r1, r3, r9
	rsb r11, r10, #0
	smull r10, r9, lr, r9
	ldrsh r12, [r6, #0x22]
	ldr r8, [r6, #0x18]
	smlal r10, r9, r3, r12
	smull r12, r3, lr, r12
	subs r2, r2, r12
	sbc r1, r1, r3
	mov r12, r2, lsr #0xc
	mov r3, r10, lsr #0xc
	mov r10, r1, asr #0xc
	orr r12, r12, r1, lsl #20
	ldr r1, [sp]
	mov r2, r9, asr #0xc
	orr r3, r3, r9, lsl #20
	umull lr, r9, r12, r0
	mla r9, r12, r1, r9
	mla r9, r10, r0, r9
	mov r0, lr, lsr #0xc
	orr r0, r0, r9, lsl #20
	add r0, r4, r0
	sub r0, r0, #0x1000
	mul r0, r11, r0
	mov r0, r0, lsl #4
	str r0, [r7, #0x34]
	umull r1, r0, r3, r8
	mov r6, r8, asr #0x1f
	mla r0, r3, r6, r0
	mla r0, r2, r8, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #4]
	sub r1, r5, r1
	mul r1, r0, r1
	mov r0, r1, lsl #4
	str r0, [r7, #0x30]
	bl FX_GetDivResult
	rsb r1, r5, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flag_Xsi

	arm_func_start texmtxCalc_flagS_Xsi
texmtxCalc_flagS_Xsi: ; 0x0206B4E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh r12, [r5, #0x20]
	ldr r1, [r5, #0x28]
	ldrsh r2, [r5, #0x22]
	ldr r4, [r5, #0x24]
	smull r3, r0, r1, r12
	smlal r3, r0, r4, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	sub r0, r12, r3
	smull lr, r12, r4, r12
	smull r4, r3, r1, r2
	subs r4, lr, r4
	sbc r1, r12, r3
	mov r3, r4, lsr #0xc
	orr r3, r3, r1, lsl #20
	add r1, r2, r3
	ldrh r2, [r5, #0x2e]
	sub r1, r1, #0x1000
	ldrh r3, [r5, #0x2c]
	rsb r2, r2, #0
	mul r1, r2, r1
	mul r0, r3, r0
	mov r2, r0, lsl #4
	mov r0, r1, lsl #4
	str r2, [r6, #0x30]
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagS_Xsi

	arm_func_start texmtxCalc_flagR_Xsi
texmtxCalc_flagR_Xsi: ; 0x0206B5BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r1, #0x28]
	ldr r3, [r1, #0x1c]
	rsb r4, r2, #0
	ldr r12, [r1, #0x18]
	ldr r2, [r1, #0x24]
	smull r7, r6, r4, r3
	smull r5, lr, r2, r12
	mov r7, r7, lsr #0xc
	mov r2, #0
	ldrh r4, [r1, #0x2e]
	orr r7, r7, r6, lsl #20
	mov r5, r5, lsr #0xc
	orr r5, r5, lr, lsl #20
	add lr, r3, r7
	ldrh r6, [r1, #0x2c]
	rsb r5, r5, #0
	rsb r4, r4, #0
	sub r1, lr, #0x1000
	mul r5, r6, r5
	mul r1, r4, r1
	mov r4, r5, lsl #4
	mov r1, r1, lsl #4
	str r12, [r0]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	str r4, [r0, #0x30]
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagR_Xsi

	arm_func_start texmtxCalc_flagRS_Xsi
texmtxCalc_flagRS_Xsi: ; 0x0206B634
	stmfd sp!, {r4, lr}
	ldrh r2, [r1, #0x2e]
	ldr lr, [r1, #0x28]
	ldr r3, [r1, #0x24]
	ldrh r12, [r1, #0x2c]
	rsb r3, r3, #0
	rsb lr, lr, #0
	mul r3, r12, r3
	rsb r1, r2, #0
	mul r2, r1, lr
	mov r4, #0x1000
	mov r12, #0
	str r4, [r0, #0x14]
	stmia r0, {r4, r12}
	mov r3, r3, lsl #4
	mov r1, r2, lsl #4
	str r3, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end texmtxCalc_flagRS_Xsi

	arm_func_start texmtxCalc_flagT_Xsi
texmtxCalc_flagT_Xsi: ; 0x0206B684
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r3, [r9, #0x22]
	ldr r0, [r9, #0x18]
	ldrsh r7, [r9, #0x20]
	ldr r5, [r9, #0x1c]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [r10]
	smull r2, r1, r5, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, r7
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	smull r2, r1, r5, r7
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #4]
	mov r0, r8
	mov r1, r11
	bl FX_DivAsync
	sub r0, r4, #0x1000
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mul r3, r2, r6
	mov r2, r3, lsl #4
	str r2, [r10, #0x30]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end texmtxCalc_flagT_Xsi

	arm_func_start texmtxCalc_flagTS_Xsi
texmtxCalc_flagTS_Xsi: ; 0x0206B750
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrh r1, [r5, #0x2e]
	ldrsh r0, [r5, #0x22]
	ldrh r3, [r5, #0x2c]
	ldrsh r2, [r5, #0x20]
	rsb r1, r1, #0
	sub r0, r0, #0x1000
	mul r2, r3, r2
	mul r0, r1, r0
	mov r1, r2, lsl #4
	mov r0, r0, lsl #4
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagTS_Xsi

	arm_func_start texmtxCalc_flagTR_Xsi
texmtxCalc_flagTR_Xsi: ; 0x0206B7F0
	stmfd sp!, {r3, lr}
	ldrh r2, [r1, #0x2e]
	ldr lr, [r1, #0x1c]
	mov r12, #0
	rsb r3, r2, #0
	sub r2, lr, #0x1000
	mul r2, r3, r2
	ldr r3, [r1, #0x18]
	str lr, [r0, #0x14]
	stmia r0, {r3, r12}
	mov r1, r2, lsl #4
	str r12, [r0, #0x30]
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	ldmfd sp!, {r3, pc}
	arm_func_end texmtxCalc_flagTR_Xsi

	arm_func_start texmtxCalc_flagTRS_Xsi
texmtxCalc_flagTRS_Xsi: ; 0x0206B82C
	mov r1, #0
	mov r2, #0x1000
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS_Xsi

	arm_func_start NNSi_G3dSendTexSRTXsi
NNSi_G3dSendTexSRTXsi: ; 0x0206B850
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4]
	mov r2, #0
	tst r0, #8
	ldrne r0, _0206B9B8 ; =0x00101610
	mov r1, #0x1000
	strne r0, [sp]
	ldreq r0, _0206B9BC ; =0x00101810
	mov r5, #3
	streq r0, [sp]
	ldr r0, [r4]
	mov r3, #2
	tst r0, #1
	ldr r0, [r4]
	strne r1, [r4, #0x1c]
	strne r1, [r4, #0x18]
	tst r0, #2
	movne r0, #0
	strneh r0, [r4, #0x20]
	str r1, [sp, #0x44]
	movne r1, #0x1000
	strneh r1, [r4, #0x22]
	ldr r0, [r4]
	ldr r1, [r4]
	tst r0, #4
	movne r0, #0
	strne r0, [r4, #0x28]
	strne r0, [r4, #0x24]
	ldr r0, _0206B9C0 ; =calcTexMtx_Xsi
	and r1, r1, #7
	str r2, [sp, #0x40]
	str r2, [sp, #0x34]
	str r2, [sp, #0x30]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
	str r2, [sp, #0x14]
	str r2, [sp, #0x10]
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	str r5, [sp, #4]
	str r3, [sp, #0x48]
	blx r2
	ldr r5, [r4, #0x30]
	cmp r5, #0x1000
	beq _0206B954
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x38]
	smull lr, r12, r5, r2
	smull r3, r2, r5, r1
	smull r1, r0, r5, r0
	mov lr, lr, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr lr, lr, r12, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str lr, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x38]
_0206B954:
	ldr lr, [r4, #0x34]
	cmp lr, #0x1000
	beq _0206B99C
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	smull r12, r4, lr, r2
	smull r3, r2, lr, r1
	smull r1, r0, lr, r0
	mov r12, r12, lsr #0xc
	mov r3, r3, lsr #0xc
	mov r1, r1, lsr #0xc
	orr r12, r12, r4, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x3c]
_0206B99C:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, pc}	
_0206B9B8: .word 0x00101610
_0206B9BC: .word 0x00101810
_0206B9C0: .word calcTexMtx_Xsi
	arm_func_end NNSi_G3dSendTexSRTXsi

	.rodata
	.global matColorMask_
matColorMask_:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F, 0x00, 0x80, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x80, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0x7F
	.global pivotUtil_
pivotUtil_:
	.byte 0x04, 0x05, 0x07, 0x08
	.byte 0x03, 0x05, 0x06, 0x08, 0x03, 0x04, 0x06, 0x07, 0x01, 0x02, 0x07, 0x08, 0x00, 0x02, 0x06, 0x08
	.byte 0x00, 0x01, 0x06, 0x07, 0x01, 0x02, 0x04, 0x05, 0x00, 0x02, 0x03, 0x05, 0x00, 0x01, 0x03, 0x04
	.global pivotUtil_1
pivotUtil_1:
	.byte 0x04, 0x05, 0x07, 0x08, 0x03, 0x05, 0x06, 0x08, 0x03, 0x04, 0x06, 0x07, 0x01, 0x02, 0x07, 0x08
	.byte 0x00, 0x02, 0x06, 0x08, 0x00, 0x01, 0x06, 0x07, 0x01, 0x02, 0x04, 0x05, 0x00, 0x02, 0x03, 0x05
	.byte 0x00, 0x01, 0x03, 0x04

	.data
	.global NNS_G3dAnmFmtNum
	.balign 4, 0
NNS_G3dAnmFmtNum:
	.byte 0x05, 0x00, 0x00, 0x00
	.global NNS_G3dFuncAnmVisNsBvaDefault
NNS_G3dFuncAnmVisNsBvaDefault:
	.word NNSi_G3dAnmCalcNsBva
	.global NNS_G3dFuncAnmJntNsBcaDefault
NNS_G3dFuncAnmJntNsBcaDefault:
	.word NNSi_G3dAnmCalcNsBca
	.global NNS_G3dFuncAnmMatNsBtaDefault
NNS_G3dFuncAnmMatNsBtaDefault:
	.word NNSi_G3dAnmCalcNsBta
	.global NNS_G3dFuncAnmMatNsBtpDefault
NNS_G3dFuncAnmMatNsBtpDefault:
	.word NNSi_G3dAnmCalcNsBtp
	.global NNS_G3dFuncAnmMatNsBmaDefault
NNS_G3dFuncAnmMatNsBmaDefault:
	.word NNSi_G3dAnmCalcNsBma
	.global NNS_G3dFuncBlendVisDefault
NNS_G3dFuncBlendVisDefault:
	.word NNSi_G3dAnmBlendVis
	.global NNS_G3dFuncBlendJntDefault
NNS_G3dFuncBlendJntDefault:
	.word NNSi_G3dAnmBlendJnt
	.global NNS_G3dFuncBlendMatDefault
NNS_G3dFuncBlendMatDefault:
	.word NNSi_G3dAnmBlendMat
	.global NNS_G3dAnmObjInitFuncArray
NNS_G3dAnmObjInitFuncArray:
	.byte 0x4D, 0x00, 0x41, 0x4D
	.word NNSi_G3dAnmObjInitNsBma
	.byte 0x4D, 0x00, 0x50, 0x54
	.word NNSi_G3dAnmObjInitNsBtp
	.byte 0x4D, 0x00, 0x41, 0x54
	.word NNSi_G3dAnmObjInitNsBta
	.byte 0x56, 0x00, 0x41, 0x56
	.word NNSi_G3dAnmObjInitNsBva
	.byte 0x4A, 0x00, 0x41, 0x43
	.word NNSi_G3dAnmObjInitNsBca
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global NNS_G3dSendJointSRT_FuncArray
NNS_G3dSendJointSRT_FuncArray:
	.word NNSi_G3dSendJointSRTBasic
	.word NNSi_G3dSendJointSRTMaya
	.word NNSi_G3dSendJointSRTSi3d
	.global NNS_G3dGetJointScale_FuncArray
NNS_G3dGetJointScale_FuncArray:
	.word NNSi_G3dGetJointScaleBasic
	.word NNSi_G3dGetJointScaleMaya
	.word NNSi_G3dGetJointScaleSi3d
	.global NNS_G3dSendTexSRT_FuncArray
NNS_G3dSendTexSRT_FuncArray:
	.word NNSi_G3dSendTexSRTMaya
	.word NNSi_G3dSendTexSRTSi3d
	.word NNSi_G3dSendTexSRT3dsMax
	.word NNSi_G3dSendTexSRTXsi
	.global Sbc_ENVMAP_cmd
Sbc_ENVMAP_cmd:
	.byte 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global NNS_G3dFuncSbcMatTable
NNS_G3dFuncSbcMatTable:
	.word NNSi_G3dFuncSbc_MAT_InternalDefault
	.word 0
	.word 0
	.word 0
	.global NNS_G3dFuncSbcShpTable
NNS_G3dFuncSbcShpTable:
	.word NNSi_G3dFuncSbc_SHP_InternalDefault
	.word 0
	.word 0
	.word 0
	.global Sbc_PRJMAP_mtx
Sbc_PRJMAP_mtx:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.global Sbc_BB_bbcmd1
Sbc_BB_bbcmd1:
	.byte 0x12, 0x10, 0x17, 0x1B, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global Sbc_BBY_bbcmd1
Sbc_BBY_bbcmd1:
	.byte 0x12, 0x10, 0x17, 0x1B, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global NNS_G3dFuncSbcTable
NNS_G3dFuncSbcTable:
	.word NNSi_G3dFuncSbc_NOP
	.word NNSi_G3dFuncSbc_RET
	.word NNSi_G3dFuncSbc_NODE
	.word NNSi_G3dFuncSbc_MTX
	.word NNSi_G3dFuncSbc_MAT
	.word NNSi_G3dFuncSbc_SHP
	.word NNSi_G3dFuncSbc_NODEDESC
	.word NNSi_G3dFuncSbc_BB
	.word NNSi_G3dFuncSbc_BBY
	.word NNSi_G3dFuncSbc_NODEMIX
	.word NNSi_G3dFuncSbc_CALLDL
	.word NNSi_G3dFuncSbc_POSSCALE
	.word NNSi_G3dFuncSbc_ENVMAP
	.word NNSi_G3dFuncSbc_PRJMAP
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global calcTexMtx_Maya
calcTexMtx_Maya:
	.word texmtxCalc_flag_Maya
	.word texmtxCalc_flagS_Maya
	.word texmtxCalc_flagR_Maya
	.word texmtxCalc_flagRS_Maya
	.word texmtxCalc_flagT_Maya
	.word texmtxCalc_flagTS_Maya
	.word texmtxCalc_flagTR_Maya
	.word texmtxCalc_flagTRS_Maya
	.global calcTexMtx_3dsMax
calcTexMtx_3dsMax:
	.word texmtxCalc_flag_3dsMax
	.word texmtxCalc_flagS_3dsMax
	.word texmtxCalc_flagR_3dsMax
	.word texmtxCalc_flagRS_3dsMax
	.word texmtxCalc_flagT_3dsMax
	.word texmtxCalc_flagTS_3dsMax
	.word texmtxCalc_flagTR_3dsMax
	.word texmtxCalc_flagTRS_3dsMax
	.global calcTexMtx_Xsi
calcTexMtx_Xsi:
	.word texmtxCalc_flag_Xsi
	.word texmtxCalc_flagS_Xsi
	.word texmtxCalc_flagR_Xsi
	.word texmtxCalc_flagRS_Xsi
	.word texmtxCalc_flagT_Xsi
	.word texmtxCalc_flagTS_Xsi
	.word texmtxCalc_flagTR_Xsi
	.word texmtxCalc_flagTRS_Xsi

	.bss
	.global NNS_G3dGlb
NNS_G3dGlb:
	.space 0x04
	.global NNS_G3dGlb_mtxmode_proj
NNS_G3dGlb_mtxmode_proj:
	.space 0x04
	.global NNS_G3dGlb_projMtx
NNS_G3dGlb_projMtx:
	.space 0x44
	.global NNS_G3dGlb_cameraMtx
NNS_G3dGlb_cameraMtx:
	.space 0x30
	.global NNS_G3dGlb_cmd1
NNS_G3dGlb_cmd1:
	.space 0x40
	.global NNS_G3dGlb_prmBaseRot
NNS_G3dGlb_prmBaseRot:
	.space 0x24
	.global NNS_G3dGlb_prmBaseTrans
NNS_G3dGlb_prmBaseTrans:
	.space 0x20
	.global NNS_G3dGlb_invCameraMtx
NNS_G3dGlb_invCameraMtx:
	.space 0x30
	.global NNS_G3dGlb_srtCameraMtx
NNS_G3dGlb_srtCameraMtx:
	.space 0x30
	.global NNS_G3dGlb_invSrtCameraMtx
NNS_G3dGlb_invSrtCameraMtx:
	.space 0x104
	.global NNS_G3dRS
NNS_G3dRS:
	.space 0x04
	.global NNS_G3dRSOnGlb
NNS_G3dRSOnGlb:
	.space 0xE00
	.global unk_020B7E40
unk_020B7E40:
	.space 0x04
	.global unk_020B7E44
unk_020B7E44:
	.space 0x04
	.global unk_020B7E48
unk_020B7E48:
	.space 0x04
	.global unk_020B7E4C
unk_020B7E4C:
	.space 0x04
	.global unk_020B7E50
unk_020B7E50:
	.space 0x04
	.global unk_020B7E54
unk_020B7E54:
	.space 0x5EC
	.global NNS_G3dRSOnGlb_evpCache_M
NNS_G3dRSOnGlb_evpCache_M:
	.space 0x40
	.global NNS_G3dRSOnGlb_evpCache_N
NNS_G3dRSOnGlb_evpCache_N:
	.space 0x18C0
	.global NNS_G3dGeBuffer
NNS_G3dGeBuffer:
	.space 0x04
	.global NNS_G3dFlagGXDmaAsync
NNS_G3dFlagGXDmaAsync:
	.space 0x08

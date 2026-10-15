
.public MIi_CpuClearFast
.public FUN_ov16_020fd21c
.public gNsbResourceMan
.public FUN_ov16_020fd120
.public FUN_ov16_020fd350
.public FUN_ov16_020fa638
.public NNS_G3dGetAnmByIdx
.public _ZN10CAllocator8allocateEm
.public MI_CpuFill8
.public gAllocator
.public _ZN10CAllocator10deallocateEPv
.public FUN_ov16_020fa71c
.public NNS_G3dAnmObjInit
.public NNS_G3dRenderObjAddAnmObj
.public NNS_G3dRenderObjRemoveAnmObj
.public FUN_ov16_020fd278
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020fc524
FUN_ov16_020fc524: ; 0x020FC524
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_020fc524

	arm_func_start FUN_ov16_020fc538
FUN_ov16_020fc538: ; 0x020FC538
	ldr r12, _020FC54C ; =MIi_CpuClearFast
	add r1, r0, #4
	mov r0, #0
	mov r2, #0x10
	bx r12
_020FC54C: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_020fc538

	arm_func_start FUN_ov16_020fc550
FUN_ov16_020fc550: ; 0x020FC550
	ldr r12, _020FC558 ; =FUN_ov16_020fc5f8
	bx r12
_020FC558: .word FUN_ov16_020fc5f8
	arm_func_end FUN_ov16_020fc550

	arm_func_start FUN_ov16_020fc55c
FUN_ov16_020fc55c: ; 0x020FC55C
	stmfd sp!, {r3, lr}
	adds r1, r1, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r1]
	bl FUN_ov16_020fc578
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fc55c

	arm_func_start FUN_ov16_020fc578
FUN_ov16_020fc578: ; 0x020FC578
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020FC5B8 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fc5f8
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FC5B8: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fc578

	arm_func_start FUN_ov16_020fc5bc
FUN_ov16_020fc5bc: ; 0x020FC5BC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020FC5F4 ; =gNsbResourceMan
	mov r5, r0
	ldr r0, [r3]
	mov r3, #6
	bl FUN_ov16_020fd120
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020fc5f8
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FC5F4: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fc5bc

	arm_func_start FUN_ov16_020fc5f8
FUN_ov16_020fc5f8: ; 0x020FC5F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fc714
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020FC61C
	ldr r0, _020FC62C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_020FC61C:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020FC62C: .word gNsbResourceMan
	arm_func_end FUN_ov16_020fc5f8

	arm_func_start FUN_ov16_020fc630
FUN_ov16_020fc630: ; 0x020FC630
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, r5
	ldreqh r0, [r6, #0xa]
	cmpeq r0, r4
	bne _020FC690
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020FC690:
	mov r0, r6
	bl FUN_ov16_020fc714
	mov r0, r5
	bl FUN_ov16_020fa638
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov16_020fc524
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	bl NNS_G3dGetAnmByIdx
	mov r7, #0x100
	ldr r0, _020FC710 ; =gAllocator
	mov r1, r7
	bl _ZN10CAllocator8allocateEm
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _020FC6F4
	mov r0, r6
	bl FUN_ov16_020fc714
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FC6F4:
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	str r5, [r6, #0x10]
	strh r4, [r6, #0xa]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FC710: .word gAllocator
	arm_func_end FUN_ov16_020fc630

	arm_func_start FUN_ov16_020fc714
FUN_ov16_020fc714: ; 0x020FC714
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fc898
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020FC734
	ldr r0, _020FC744 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_020FC734:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020FC744: .word gAllocator
	arm_func_end FUN_ov16_020fc714

	arm_func_start FUN_ov16_020fc748
FUN_ov16_020fc748: ; 0x020FC748
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0xc]
	mov r4, r1
	cmp r2, #0
	ldrneb r1, [r5, #8]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fc788
	cmp r0, #0
	moveq r4, #0
	cmp r4, r0
	subge r4, r0, #1
	ldr r0, [r5, #0xc]
	str r4, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fc748

	arm_func_start FUN_ov16_020fc788
FUN_ov16_020fc788: ; 0x020FC788
	ldrb r1, [r0, #8]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #8]
	ldrneh r0, [r0, #4]
	movne r0, r0, lsl #0xc
	bx lr
	arm_func_end FUN_ov16_020fc788

	arm_func_start FUN_ov16_020fc7b4
FUN_ov16_020fc7b4: ; 0x020FC7B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov16_020fc8d0
	cmp r0, #0
	bne _020FC7E0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ldrne r0, [r5, #0x10]
	cmpne r0, #0
	bne _020FC7E8
_020FC7E0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FC7E8:
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov16_020fc898
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov16_020fc524
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r5, #0xa]
	bl NNS_G3dGetAnmByIdx
	mov r6, r0
	cmp r4, #0
	bne _020FC848
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fa71c
	mov r4, r0
_020FC848:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0xc]
	cmp r0, #9
	cmpeq r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fa638
	mov r2, r0
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r3, r4
	bl NNS_G3dAnmObjInit
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dRenderObjAddAnmObj
	mov r0, #1
	strb r0, [r5, #8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fc7b4

	arm_func_start FUN_ov16_020fc898
FUN_ov16_020fc898: ; 0x020FC898
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	ldrne r2, [r4, #0x10]
	cmpne r2, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
	beq _020FC8C4
	ldr r0, [r2, #8]
	bl NNS_G3dRenderObjRemoveAnmObj
_020FC8C4:
	mov r0, #0
	strb r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fc898

	arm_func_start FUN_ov16_020fc8d0
FUN_ov16_020fc8d0: ; 0x020FC8D0
	ldr r1, _020FC8E8 ; =gNsbResourceMan
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _020FC8EC ; =FUN_ov16_020fd278
	bx r12
_020FC8E8: .word gNsbResourceMan
_020FC8EC: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_020fc8d0

	.section .init, 4
	arm_func_start __sinit_CMotion.cpp
__sinit_CMotion.cpp: ; 0x02117FBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118000 ; =0x021188EC
	str r0, [r4, #0x10]
	ldr r0, _02118004 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02118008 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02118000: .word ov16_021188EC
_02118004: .word 0x00009CCD
_02118008: .word 0x0000EA3C
	arm_func_end __sinit_CMotion.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CMotion.cpp

	.data
	.global ov16_021188EC
ov16_021188EC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

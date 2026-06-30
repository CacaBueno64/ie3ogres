.public FUN_02051800
.public FUN_02051858
.public FUN_020519e4
.public FUN_02051a7c
.public FUN_02051d3c
.public FUN_02051dc4
.public FUN_02053cb0
.public FUN_02053ccc
.public FUN_ov16_020fd278
.public FX_Sqrt
.public MI_CpuCopy8
.public MIi_CpuClearFast
.public NNS_G3dPlttReleasePlttKey
.public NNS_G3dPlttSetPlttKey
.public _ZN10CAllocator10deallocateEPv
.public _ZN10CAllocator8allocateEm
.public _ZdlPv
.public gAllocator
.public gNsbResourceMan
.public gResourceManager

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_021110fc
FUN_ov16_021110fc: ; 0x021110FC
	stmfd sp!, {r4, lr}
	ldr r1, _02111118 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111164
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111118: .word ov16_02119E5C
	arm_func_end FUN_ov16_021110fc

	arm_func_start FUN_ov16_0211111c
FUN_ov16_0211111c: ; 0x0211111C
	stmfd sp!, {r4, lr}
	ldr r1, _02111138 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111138: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211111c

	arm_func_start FUN_ov16_0211113c
FUN_ov16_0211113c: ; 0x0211113C
	stmfd sp!, {r4, lr}
	ldr r1, _02111160 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111160: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211113c

	arm_func_start FUN_ov16_02111164
FUN_ov16_02111164: ; 0x02111164
	ldr r12, _02111178 ; =MIi_CpuClearFast
	add r1, r0, #4
	mov r0, #0
	mov r2, #0x18
	bx r12
_02111178: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_02111164

	arm_func_start FUN_ov16_0211117c
FUN_ov16_0211117c: ; 0x0211117C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r6, r0
	beq _021111A0
	ldr r0, _0211123C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	beq _021111A8
_021111A0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111A8:
	ldr r0, [r4, #4]
	bl FUN_02053ccc
	mov r5, r0
	ldr r0, [r4, #4]
	bl FUN_02053cb0
	mov r4, r0
	cmp r5, #0
	blt _021111D0
	cmp r4, #0
	bne _021111D8
_021111D0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111D8:
	mov r0, r6
	bl FUN_ov16_02111248
	ldr r0, _02111240 ; =gResourceManager
	mov r2, r5
	ldr r0, [r0]
	add r1, r6, #8
	bl FUN_02051800
	cmp r0, #0
	beq _02111214
	ldr r0, _02111244 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r1, r0
	str r1, [r6, #0x14]
	bne _02111224
_02111214:
	mov r0, r6
	bl FUN_ov16_02111248
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02111224:
	mov r0, r4
	mov r2, r5
	str r5, [r6, #0x18]
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211123C: .word gNsbResourceMan
_02111240: .word gResourceManager
_02111244: .word gAllocator
	arm_func_end FUN_ov16_0211117c

	arm_func_start FUN_ov16_02111248
FUN_ov16_02111248: ; 0x02111248
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02111264
	ldr r0, _02111284 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02111264:
	ldr r0, _02111288 ; =gResourceManager
	add r1, r4, #8
	ldr r0, [r0]
	bl FUN_02051858
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_02111284: .word gAllocator
_02111288: .word gResourceManager
	arm_func_end FUN_ov16_02111248

	arm_func_start FUN_ov16_0211128c
FUN_ov16_0211128c: ; 0x0211128C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r12, r0
	ldr r2, [r12, #0x18]
	cmp r2, #0
	ble _021112B0
	ldr r0, [r12, #0x14]
	cmp r0, #0
	bne _021112BC
_021112B0:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {pc}
_021112BC:
	cmp r1, #0
	beq _021112F4
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, _0211131C ; =gResourceManager
	ldr r3, [r12, #0x14]
	ldr r0, [r0]
	add r1, r12, #8
	bl FUN_020519e4
	add sp, sp, #0xc
	and r0, r0, #0xff
	ldmia sp!, {pc}
_021112F4:
	ldr r0, _0211131C ; =gResourceManager
	str r2, [sp]
	ldr r0, [r0]
	ldr r3, [r12, #0x14]
	add r1, r12, #8
	mov r2, #0
	bl FUN_02051a7c
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0211131C: .word gResourceManager
	arm_func_end FUN_ov16_0211128c

	arm_func_start FUN_ov16_02111320
FUN_ov16_02111320: ; 0x02111320
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov16_02111320

	arm_func_start FUN_ov16_02111334
FUN_ov16_02111334: ; 0x02111334
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov16_02111334

	arm_func_start FUN_ov16_02111348
FUN_ov16_02111348: ; 0x02111348
	stmfd sp!, {r3, lr}
	ldr r1, _02111368 ; =gResourceManager
	mov r2, r0
	ldr r0, [r1]
	add r1, r2, #8
	bl FUN_02051d3c
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_02111368: .word gResourceManager
	arm_func_end FUN_ov16_02111348

	arm_func_start FUN_ov16_0211136c
FUN_ov16_0211136c: ; 0x0211136C
	stmfd sp!, {r4, lr}
	ldr r1, _02111394 ; =gResourceManager
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #8
	bl FUN_02051dc4
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_0211128c
	ldmfd sp!, {r4, pc}
_02111394: .word gResourceManager
	arm_func_end FUN_ov16_0211136c

	arm_func_start FUN_ov16_02111398
FUN_ov16_02111398: ; 0x02111398
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	cmpne r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl NNS_G3dPlttReleasePlttKey
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl NNS_G3dPlttSetPlttKey
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02111398


	.section .init, 4
	arm_func_start __sinit_CNsbPlttHook.cpp
__sinit_CNsbPlttHook.cpp: ; 0x02118250
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118298 ; =0x02119E3C
	str r0, [r4, #0x14]
	ldr r0, _0211829C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021182A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118298: .word ov16_02119E3C
_0211829C: .word 0x00009CCD
_021182A0: .word 0x0000EA3C
	arm_func_end __sinit_CNsbPlttHook.cpp


	.section .ctor, 4
#pragma force_active on
	.word __sinit_CNsbPlttHook.cpp


	.data
	.global ov16_02119E3C
ov16_02119E3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E5C
ov16_02119E5C:
	.word FUN_ov16_0211111c
	.word FUN_ov16_0211113c

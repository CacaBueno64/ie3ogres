
	.include "/macros/function.inc"
	.include "/include/resourcemanager.inc"

    .text
	arm_func_start FUN_020514f0
FUN_020514f0: ; 0x020514F0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	bl GX_GetSizeOfTex
	mov r5, r0
	bl GX_GetSizeOfTexPltt
	mov r6, r0
	cmp r5, #0
	beq _0205153C
	mov r0, #1
	str r0, [sp]
	ldr r2, [r4]
	ldr r3, [r4, #0x24]
	mov r0, r5
	mov r1, #0
	bl NNS_GfdInitLnkTexVramManager
	ldr r0, [r4, #0x2c]
	orr r0, r0, #1
	str r0, [r4, #0x2c]
_0205153C:
	cmp r6, #0
	beq _02051564
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	mov r0, r6
	mov r3, #1
	bl NNS_GfdInitLnkPlttVramManager
	ldr r0, [r4, #0x2c]
	orr r0, r0, #2
	str r0, [r4, #0x2c]
_02051564:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_020514f0

	arm_func_start FUN_02051570
FUN_02051570: ; 0x02051570
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, r3
	ldr r12, [sp, #0xc]
	ldr r3, [sp, #8]
	str r12, [sp]
	bl FUN_02040f14
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02051570

	arm_func_start FUN_0205159c
FUN_0205159c: ; 0x0205159C
	stmfd sp!, {r3, lr}
	mov r0, r1
	mov r1, r3
	ldr r12, [sp, #0xc]
	ldr r3, [sp, #8]
	str r12, [sp]
	bl FUN_02041074
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205159c

	arm_func_start FUN_020515c8
FUN_020515c8: ; 0x020515C8
	mov r3, #8
	mov r12, r3, lsl r0
	mov r0, r3, lsl r1
	mul r0, r12, r0
	cmp r2, #7
	addls pc, pc, r2, lsl #2
	b _02051624
_020515E4: ; jump table
	b _02051624 ; case 0
	bx lr ; case 1
	b _02051604 ; case 2
	b _02051610 ; case 3
	bx lr ; case 4
	b _02051624 ; case 5
	bx lr ; case 6
	b _0205161C ; case 7
_02051604:
	add r0, r0, #3
	mov r0, r0, asr #2
	bx lr
_02051610:
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
_0205161C:
	mov r0, r0, lsl #1
	bx lr
_02051624:
	mov r0, #0
	bx lr
	arm_func_end FUN_020515c8

	arm_func_start FUN_0205162c
FUN_0205162c: ; 0x0205162C
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02051688
_02051638: ; jump table
	b _02051688 ; case 0
	b _02051658 ; case 1
	b _02051660 ; case 2
	b _02051668 ; case 3
	b _02051670 ; case 4
	b _02051688 ; case 5
	b _02051678 ; case 6
	b _02051680 ; case 7
_02051658:
	mov r0, #0
	bx lr
_02051660:
	mov r0, #0x20
	bx lr
_02051668:
	mov r0, #0x20
	bx lr
_02051670:
	mov r0, #0x200
	bx lr
_02051678:
	mov r0, #0
	bx lr
_02051680:
	mov r0, #0
	bx lr
_02051688:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205162c

	arm_func_start _ZN10C3DVramMan4initEiii
_ZN10C3DVramMan4initEiii: ; 0x02051690
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, #0
	mov r4, r1
	add r0, r8, #8
	mov r7, r2
	mov r6, r3
	str r5, [r8]
	str r5, [r8, #4]
	str r5, [r8, #0x20]
	str r5, [r8, #0x24]
	str r5, [r8, #0x28]
	str r5, [r8, #0x2c]
	str r5, [r8, #0x30]
	str r5, [r8, #0x34]
	bl OS_InitMutex
	cmp r4, #0
	cmpgt r7, #0
	str r5, [r8, #0x38]
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	mov r1, r0
	ldr r4, _02051774 ; =gAllocator
	str r1, [r8, #0x24]
	mov r0, r4
	bl _ZN10CAllocator8allocateEm
	str r0, [r8]
	mov r0, r7
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	mov r1, r0
	mov r0, r4
	str r1, [r8, #0x28]
	bl _ZN10CAllocator8allocateEm
	ldr r1, [r8]
	str r0, [r8, #4]
	cmp r1, #0
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #0x24]
	mov r0, r5
	bl MIi_CpuClearFast
	ldr r1, [r8, #4]
	ldr r2, [r8, #0x28]
	mov r0, r5
	bl MIi_CpuClearFast
	mov r0, r8
	bl FUN_020514f0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_02040ea0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02051774: .word gAllocator
	arm_func_end _ZN10C3DVramMan4initEiii

	arm_func_start FUN_02051778
FUN_02051778: ; 0x02051778
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	tst r0, #1
	beq _02051790
	bl NNS_GfdResetLnkTexVramState
_02051790:
	ldr r0, [r4, #0x2c]
	tst r0, #2
	beq _020517A0
	bl NNS_GfdResetLnkPlttVramState
_020517A0:
	mov r0, r4
	bl FUN_020514f0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051778

	arm_func_start FUN_020517ac
FUN_020517ac: ; 0x020517AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r1
	bl FUN_02051858
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	mov r4, #0
	bic r5, r0, #0x1f
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkTexVram
	cmp r0, #0
	moveq r0, r4
	strne r0, [r6, #4]
	movne r0, #1
	strne r5, [r6]
	strneb r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020517ac

	arm_func_start FUN_02051800
FUN_02051800: ; 0x02051800
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r1
	bl FUN_02051858
	cmp r5, #0
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	mov r4, #0
	bic r5, r0, #0x1f
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl NNS_GfdAllocLnkPlttVram
	cmp r0, #0
	moveq r0, r4
	movne r1, #2
	strne r0, [r6, #4]
	strne r5, [r6]
	strneb r1, [r6, #8]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02051800

	arm_func_start FUN_02051858
FUN_02051858: ; 0x02051858
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02051890
	ldrb r1, [r4, #8]
	cmp r1, #1
	beq _02051884
	cmp r1, #2
	beq _0205188C
	ldmfd sp!, {r4, pc}
_02051884:
	bl NNS_GfdFreeLnkTexVram
	b _02051890
_0205188C:
	bl NNS_GfdFreeLnkPlttVram
_02051890:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051858

	arm_func_start FUN_020518a8
FUN_020518a8: ; 0x020518A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov r6, r0
	add r4, r4, #3
	ldrb r0, [r1, #8]
	ldr lr, [r1]
	bic r4, r4, #3
	cmp lr, r4
	movlt r4, lr
	mov r5, r3
	ldr r12, [sp, #0x2c]
	cmp r0, #1
	beq _020518EC
	cmp r0, #2
	beq _0205195C
	b _020519CC
_020518EC:
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x24]
	mov r1, r1, lsl #0x10
	cmp r0, #0
	add r7, r2, r1, lsr #13
	beq _02051934
	cmp r12, #0
	movne r0, #0
	strneb r0, [r12]
	mov r0, r6
	bl FUN_02051c7c
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTex
	mov r0, r6
	bl FUN_02051ca8
	b _020519D8
_02051934:
	ldr r1, [sp, #0x28]
	mov r0, r6
	str r1, [sp]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp, #4]
	bl FUN_02051570
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0205195C:
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x24]
	mov r1, r1, lsl #0x10
	cmp r0, #0
	add r7, r2, r1, lsr #13
	beq _020519A4
	cmp r12, #0
	movne r0, #0
	strneb r0, [r12]
	mov r0, r6
	bl FUN_02051cdc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTexPltt
	mov r0, r6
	bl FUN_02051d08
	b _020519D8
_020519A4:
	ldr r1, [sp, #0x28]
	mov r0, r6
	str r1, [sp]
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r12, [sp, #4]
	bl FUN_0205159c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020519CC:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020519D8:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020518a8

	arm_func_start FUN_020519e4
FUN_020519e4: ; 0x020519E4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r12, [sp, #0x10]
	ldr r4, [r1]
	add r12, r12, #3
	bic r12, r12, #3
	cmp r4, r12
	movlt r12, r4
	ldrb r4, [r1, #8]
	cmp r4, #1
	beq _02051A1C
	cmp r4, #2
	beq _02051A48
	b _02051A70
_02051A1C:
	ldr r1, [r1, #4]
	ldr lr, [sp, #0x14]
	mov r1, r1, lsl #0x10
	add r1, r2, r1, lsr #13
	ldr r4, [sp, #0x18]
	str lr, [sp]
	mov r2, r12
	str r4, [sp, #4]
	bl FUN_02051570
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02051A48:
	ldr r1, [r1, #4]
	ldr r4, [sp, #0x14]
	mov r1, r1, lsl #0x10
	ldr lr, [sp, #0x18]
	add r1, r2, r1, lsr #13
	mov r2, r12
	stmia sp, {r4, lr}
	bl FUN_0205159c
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02051A70:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020519e4

	arm_func_start FUN_02051a7c
FUN_02051a7c: ; 0x02051A7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	mov r6, r0
	add r4, r4, #3
	ldrb r0, [r1, #8]
	ldr r12, [r1]
	bic r4, r4, #3
	cmp r12, r4
	movlt r4, r12
	mov r5, r3
	cmp r0, #1
	beq _02051AB8
	cmp r0, #2
	beq _02051AE8
	b _02051B18
_02051AB8:
	ldr r1, [r1, #4]
	mov r0, r6
	mov r1, r1, lsl #0x10
	add r7, r2, r1, lsr #13
	bl FUN_02051c7c
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTex
	mov r0, r6
	bl FUN_02051ca8
	b _02051B20
_02051AE8:
	ldr r1, [r1, #4]
	mov r0, r6
	mov r1, r1, lsl #0x10
	add r7, r2, r1, lsr #13
	bl FUN_02051cdc
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl GX_LoadTexPltt
	mov r0, r6
	bl FUN_02051d08
	b _02051B20
_02051B18:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02051B20:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02051a7c

	arm_func_start FUN_02051b28
FUN_02051b28: ; 0x02051B28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r4
	bl NNS_G3dResDefaultSetup
	mov r4, r0
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b28

	arm_func_start FUN_02051b58
FUN_02051b58: ; 0x02051B58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r4
	bl NNS_G3dResDefaultRelease
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b58

	arm_func_start FUN_02051b84
FUN_02051b84: ; 0x02051B84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl OS_LockMutex
	mov r0, r5
	mov r1, r4
	bl FUN_02051e70
	mov r4, r0
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051b84

	arm_func_start FUN_02051bb8
FUN_02051bb8: ; 0x02051BB8
	ldr r3, [r1, #4]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #8]
	cmp r0, #1
	beq _02051BE0
	cmp r0, #2
	beq _02051BF4
	b _02051C08
_02051BE0:
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r2]
	mov r0, #1
	bx lr
_02051BF4:
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0xd
	str r0, [r2]
	mov r0, #1
	bx lr
_02051C08:
	mov r0, #0
	bx lr
	arm_func_end FUN_02051bb8

	arm_func_start _ZN10C3DVramMan12FUN_02051c10Ev
_ZN10C3DVramMan12FUN_02051c10Ev: ; 0x02051C10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl GX_GetBankForTex
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02051C74 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc1
	bgt _02051C3C
	mov r0, #0x188
	bl OS_SpinWaitSysCycles
_02051C3C:
	ldr r0, _02051C78 ; =0x04000600
	ldr r0, [r0]
	tst r0, #0x8000000
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	str r0, [r4, #0x38]
	bl FUN_020413b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_020411d4
	ldmfd sp!, {r4, pc}
_02051C74: .word 0x04000006
_02051C78: .word 0x04000600
	arm_func_end _ZN10C3DVramMan12FUN_02051c10Ev

	arm_func_start FUN_02051c7c
FUN_02051c7c: ; 0x02051C7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	ldr r1, [r4, #0x30]
	add r0, r1, #1
	str r0, [r4, #0x30]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	bl GX_BeginLoadTex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051c7c

	arm_func_start FUN_02051ca8
FUN_02051ca8: ; 0x02051CA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ble _02051CD0
	sub r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0
	bgt _02051CD0
	bl GX_EndLoadTex
_02051CD0:
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051ca8

	arm_func_start FUN_02051cdc
FUN_02051cdc: ; 0x02051CDC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	ldr r1, [r4, #0x34]
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	bl GX_BeginLoadTexPltt
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051cdc

	arm_func_start FUN_02051d08
FUN_02051d08: ; 0x02051D08
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ble _02051D30
	sub r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #0
	bgt _02051D30
	bl GX_EndLoadTexPltt
_02051D30:
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051d08

	arm_func_start FUN_02051d3c
FUN_02051d3c: ; 0x02051D3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #9]
	mov r5, r0
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #8
	bl OS_LockMutex
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02051DB4
	ldrb r1, [r4, #8]
	cmp r1, #1
	beq _02051D84
	cmp r1, #2
	beq _02051D8C
	b _02051D94
_02051D84:
	bl NNS_GfdFreeLnkTexVram
	b _02051DA4
_02051D8C:
	bl NNS_GfdFreeLnkPlttVram
	b _02051DA4
_02051D94:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02051DA4:
	mov r1, #0
	mov r0, #1
	str r1, [r4, #4]
	strb r0, [r4, #9]
_02051DB4:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051d3c

	arm_func_start FUN_02051dc4
FUN_02051dc4: ; 0x02051DC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #9]
	mov r5, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #8
	bl OS_LockMutex
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _02051E00
	cmp r0, #2
	beq _02051E14
	b _02051E28
_02051E00:
	ldr r2, [r4]
	mov r0, r5
	mov r1, r4
	bl FUN_020517ac
	b _02051E38
_02051E14:
	ldr r2, [r4]
	mov r0, r5
	mov r1, r4
	bl FUN_02051800
	b _02051E38
_02051E28:
	add r0, r5, #8
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02051E38:
	mov r1, #0
	add r0, r5, #8
	strb r1, [r4, #9]
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02051dc4

	arm_func_start FUN_02051e50
FUN_02051e50: ; 0x02051E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #8
	bl OS_LockMutex
	bl FUN_0204142c
	add r0, r4, #8
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02051e50

	arm_func_start FUN_02051e70
FUN_02051e70: ; 0x02051E70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	ldr r2, [r4]
	ldr r1, _02052088 ; =0x30415642
	mov r11, r0
	cmp r2, r1
	bhi _02051EC0
	bhs _02052078
	sub r0, r1, #0x900
	cmp r2, r0
	bhi _02051EB0
	bhs _02052078
	sub r0, r1, #0x1300
	cmp r2, r0
	beq _02052078
	b _02052080
_02051EB0:
	sub r0, r1, #0x200
	cmp r2, r0
	beq _02052078
	b _02052080
_02051EC0:
	ldr r0, _0205208C ; =0x30505442
	cmp r2, r0
	bhi _02051EE0
	bhs _02052078
	ldr r0, _02052090 ; =0x30444D42
	cmp r2, r0
	beq _02051EEC
	b _02052080
_02051EE0:
	add r0, r0, #0x80000
	cmp r2, r0
	bne _02052080
_02051EEC:
	mov r0, #1
	str r0, [sp]
	ldr r9, [sp]
	mov r0, r4
	mov r10, r9
	bl NNS_G3dGetTex
	movs r6, r0
	beq _02052048
	bl NNS_G3dTexGetRequiredSize
	mov r5, r0
	mov r0, r6
	bl NNS_G3dTex4x4GetRequiredSize
	mov r7, r0
	mov r0, r6
	bl NNS_G3dPlttGetRequiredSize
	mov r8, r0
	cmp r5, #0
	beq _02051F5C
	ldr r0, _02052094 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0
	ldr r3, [r0]
	mov r0, r5
	mov r2, r1
	blx r3
	movs r5, r0
	moveq r0, #0
	streq r0, [sp]
	b _02051F60
_02051F5C:
	mov r5, #0
_02051F60:
	cmp r7, #0
	beq _02051F8C
	ldr r0, _02052094 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r2, #0
	ldr r3, [r0]
	mov r0, r7
	mov r1, #1
	blx r3
	movs r7, r0
	moveq r9, #0
	b _02051F90
_02051F8C:
	mov r7, #0
_02051F90:
	cmp r8, #0
	beq _02051FC0
	ldrh r1, [r6, #0x20]
	ldr r0, _02052098 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r2, #0
	ldr r3, [r0]
	mov r0, r8
	and r1, r1, #0x8000
	blx r3
	movs r8, r0
	moveq r10, #0
	b _02051FC4
_02051FC0:
	mov r8, #0
_02051FC4:
	ldr r0, [sp]
	cmp r0, #0
	cmpne r9, #0
	cmpne r10, #0
	bne _0205200C
	ldr r1, _0205209C ; =NNS_GfdDefaultFuncFreePlttVram
	mov r0, r8
	ldr r1, [r1]
	blx r1
	ldr r4, _020520A0 ; =NNS_GfdDefaultFuncFreeTexVram
	mov r0, r7
	ldr r1, [r4]
	blx r1
	ldr r1, [r4]
	mov r0, r5
	blx r1
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205200C:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl NNS_G3dTexSetTexKey
	mov r0, r6
	mov r1, r8
	bl NNS_G3dPlttSetPlttKey
	mov r0, r11
	mov r1, r6
	mov r2, #1
	bl FUN_020520a4
	mov r0, r11
	mov r1, r6
	mov r2, #1
	bl FUN_020520f8
_02052048:
	ldr r1, [r4]
	ldr r0, _02052090 ; =0x30444D42
	cmp r1, r0
	bne _02052070
	mov r0, r4
	bl NNS_G3dGetMdlSet
	cmp r6, #0
	beq _02052070
	mov r1, r6
	bl NNS_G3dBindMdlSet
_02052070:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052078:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052080:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052088: .word 0x30415642
_0205208C: .word 0x30505442
_02052090: .word 0x30444D42
_02052094: .word NNS_GfdDefaultFuncAllocTexVram
_02052098: .word NNS_GfdDefaultFuncAllocPlttVram
_0205209C: .word NNS_GfdDefaultFuncFreePlttVram
_020520A0: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end FUN_02051e70

	arm_func_start FUN_020520a4
FUN_020520a4: ; 0x020520A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	ldrh r1, [r4, #0xc]
	movs r2, r1, lsl #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	add r3, r4, r3
	bl FUN_02051570
	ldrh r0, [r4, #0x10]
	orr r0, r0, #1
	strh r0, [r4, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020520a4

	arm_func_start FUN_020520f8
FUN_020520f8: ; 0x020520F8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r2, #0
	str r2, [sp]
	mov r4, r1
	str r2, [sp, #4]
	ldr r1, [r4, #0x2c]
	ldrh r2, [r4, #0x30]
	ldr r3, [r4, #0x38]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0xd
	mov r2, r2, lsl #3
	add r3, r4, r3
	bl FUN_0205159c
	ldrh r0, [r4, #0x32]
	orr r0, r0, #1
	strh r0, [r4, #0x32]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020520f8

	.data
	.global unk_02090584
unk_02090584:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209059C
unk_0209059C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

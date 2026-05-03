
	.include "/macros/function.inc"
	.include "/include/arm9_0203df80.inc"

    .text
	arm_func_start FUN_0203df80
FUN_0203df80: ; 0x0203DF80
	bx lr
	arm_func_end FUN_0203df80

	arm_func_start FUN_0203df84
FUN_0203df84: ; 0x0203DF84
	bx lr
	arm_func_end FUN_0203df84

	arm_func_start FUN_0203df88
FUN_0203df88: ; 0x0203DF88
	str r1, [r0]
	bx lr
	arm_func_end FUN_0203df88

	arm_func_start FUN_0203df90
FUN_0203df90: ; 0x0203DF90
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0203DFB4
	mov r0, r2
	mov r2, #6
	mov r3, #1
	bl _ZN10CAllocator8allocateEmii
	ldmfd sp!, {r3, pc}
_0203DFB4:
	ldr r2, [r0, #0x240]
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203df90

	arm_func_start FUN_0203dfd0
FUN_0203dfd0: ; 0x0203DFD0
	stmfd sp!, {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0203DFEC
	mov r0, r2
	bl _ZN10CAllocator10deallocateEPv
	ldmfd sp!, {r3, pc}
_0203DFEC:
	ldr r2, [r0, #0x244]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203dfd0

	arm_func_start FUN_0203e004
FUN_0203e004: ; 0x0203E004
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0203E1C4 ; =0x020B5BB0
	mov r6, r0
	ldr r0, [r4]
	mov r5, r1
	cmp r0, #0
	mov r4, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, #0
	bne _0203E04C
	ldr r0, [r6, #0x240]
	cmp r0, #0
	ldrne r0, [r6, #0x244]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_0203E04C:
	mul r1, r2, r3
	add r0, r6, #0x2400
	add r1, r1, #4
	strh r1, [r0, #0x64]
	ldrh r1, [r0, #0x64]
	strh r2, [r0, #0x66]
	strh r3, [r0, #0x5e]
	cmp r1, #0x200
	movhi r0, #0
	ldmhifd sp!, {r4, r5, r6, pc}
	mov r1, r4
	add r0, r6, #0x360
	mov r2, #6
	bl MI_CpuFill8
	ldr r2, _0203E1C8 ; =0x00001078
	mov r1, r4
	add r0, r6, #0x380
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0xf20
	bl FUN_0203df90
	str r0, [r6, #0x20c]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x1f
	ldr r1, _0203E1CC ; =FUN_0203e2f4
	bic r0, r0, #0x1f
	mov r2, #3
	bl WM_Initialize
	cmp r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x44
	mov r1, r4
	add r0, r0, #0x2400
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r6, #0x300
	strh r4, [r0, #0x24]
	ldr r1, _0203E1C4 ; =0x020B5BB0
	str r5, [r6, #0x328]
	str r4, [r6, #0x320]
	str r6, [r1]
	add r1, r6, #0x2400
	ldrh r3, [r1, #0x64]
	ldrh r2, [r1, #0x66]
	add r0, r6, #0x2000
	add r3, r3, #0x23
	add r2, r2, #0x21
	bic r3, r3, #0x1f
	bic r2, r2, #0x1f
	cmp r3, r2
	movlt r3, r2
	str r4, [r0, #0x440]
	add r0, r3, #0x3f
	bic r5, r0, #0x3f
	strh r4, [r1, #0x6a]
	mov r0, r6
	add r1, r5, #0x20
	bl FUN_0203df90
	add r1, r6, #0x2400
	ldrh r3, [r1, #0x66]
	ldrh r2, [r1, #0x5e]
	ldrh r1, [r1, #0x64]
	add r3, r3, #0xe
	sub r2, r2, #1
	mul r2, r3, r2
	add r2, r2, #0x29
	add r1, r1, #0x55
	bic r2, r2, #0x1f
	bic r1, r1, #0x1f
	mov r2, r2, lsl #1
	str r0, [r6, #0x204]
	mov r0, r1, lsl #1
	cmp r2, r1, lsl #1
	movlt r2, r0
	add r0, r2, #0x3f
	str r5, [r6, #0x238]
	bic r5, r0, #0x3f
	mov r0, r6
	add r1, r5, #0x20
	bl FUN_0203df90
	ldr r1, [r6, #0x204]
	str r0, [r6, #0x208]
	cmp r1, #0
	cmpne r0, #0
	moveq r0, #0
	ldrne r0, _0203E1C4 ; =0x020B5BB0
	str r5, [r6, #0x23c]
	strne r4, [r0, #4]
	movne r0, #1
	strneb r0, [r6, #0x236]
	ldmfd sp!, {r4, r5, r6, pc}
_0203E1C4: .word unk_020B5BB0
_0203E1C8: .word 0x00001078
_0203E1CC: .word FUN_0203e2f4
	arm_func_end FUN_0203e004

	arm_func_start FUN_0203e1d0
FUN_0203e1d0: ; 0x0203E1D0
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x6a]
	bx lr
	arm_func_end FUN_0203e1d0

	arm_func_start FUN_0203E1DC
FUN_0203E1DC: ; 0x0203E1DC
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x5c]
	bx lr
	arm_func_end FUN_0203E1DC

	arm_func_start FUN_0203e1e8
FUN_0203e1e8: ; 0x0203E1E8
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x60]
	bx lr
	arm_func_end FUN_0203e1e8

	arm_func_start FUN_0203e1f4
FUN_0203e1f4: ; 0x0203E1F4
	ldrh r0, [r0, #6]
	bx lr
	arm_func_end FUN_0203e1f4

	arm_func_start FUN_0203E1FC
FUN_0203E1FC: ; 0x0203E1FC
	add r0, r0, #0x2000
	ldr r0, [r0, #0x440]
	bx lr
	arm_func_end FUN_0203E1FC

	arm_func_start FUN_0203e208
FUN_0203e208: ; 0x0203E208
	ldr r12, _0203E210 ; =WM_GetLinkLevel
	bx r12
_0203E210: .word WM_GetLinkLevel
	arm_func_end FUN_0203e208

	arm_func_start FUN_0203e214
FUN_0203e214: ; 0x0203E214
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r3, r0
	ldrb r0, [r3, #0x236]
	cmp r1, #0
	add r1, r3, #0x300
	orrne r0, r0, #1
	andeq r0, r0, #0xfe
	strb r0, [r3, #0x236]
	add r0, r3, #0x200
	ldrh r2, [r0, #0x34]
	ldr r0, _0203E268 ; =FUN_0203e2cc
	str r2, [sp]
	ldrb r2, [r3, #0x236]
	str r2, [sp, #4]
	ldrh r2, [r1, #0x24]
	ldr r1, [r3, #0x320]
	ldr r3, [r3, #0x328]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0203E268: .word FUN_0203e2cc
	arm_func_end FUN_0203e214

	arm_func_start FUN_0203e26c
FUN_0203e26c: ; 0x0203E26C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, r0
	add r0, r12, #0x2400
	ldrh r0, [r0, #0x6c]
	add r3, r12, #0x300
	str r1, [r12, #0x320]
	tst r0, #2
	addeq sp, sp, #8
	strh r2, [r3, #0x24]
	ldmeqfd sp!, {r3, pc}
	add r0, r12, #0x200
	ldrh r1, [r0, #0x34]
	ldr r0, _0203E2C8 ; =FUN_0203e2cc
	str r1, [sp]
	ldrb r1, [r12, #0x236]
	str r1, [sp, #4]
	ldrh r2, [r3, #0x24]
	ldr r1, [r12, #0x320]
	ldr r3, [r12, #0x328]
	bl WM_SetGameInfo
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0203E2C8: .word FUN_0203e2cc
	arm_func_end FUN_0203e26c

	arm_func_start FUN_0203e2cc
FUN_0203e2cc: ; 0x0203E2CC
	bx lr
	arm_func_end FUN_0203e2cc

	arm_func_start FUN_0203e2d0
FUN_0203e2d0: ; 0x0203E2D0
	add r2, r0, #0x1000
	ldrb r3, [r2, #0x3e2]
	mov r2, #1
	tst r3, r2, lsl r1
	moveq r0, #0
	addne r2, r0, #0x7e0
	movne r0, #0xc0
	mlane r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0203e2d0

	arm_func_start FUN_0203e2f4
FUN_0203e2f4: ; 0x0203E2F4
	stmfd sp!, {r4, lr}
	ldr r4, _0203E34C ; =0x020B5BB0
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r0, #2]
	cmp r0, #0
	addne r0, r1, #0x2400
	movne r1, #9
	strneh r1, [r0, #0x6a]
	ldmnefd sp!, {r4, pc}
	ldr r0, _0203E350 ; =FUN_0203e354
	bl WM_SetIndCallback
	cmp r0, #0
	ldr r0, [r4]
	movne r1, #9
	addne r0, r0, #0x2400
	strneh r1, [r0, #0x6a]
	moveq r1, #1
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203E34C: .word unk_020B5BB0
_0203E350: .word FUN_0203e354
	arm_func_end FUN_0203e2f4

	arm_func_start FUN_0203e354
FUN_0203e354: ; 0x0203E354
	bx lr
	arm_func_end FUN_0203e354

	arm_func_start FUN_0203e358
FUN_0203e358: ; 0x0203E358
	stmfd sp!, {r3, lr}
	add r1, r0, #0x2400
	mov r2, #2
	ldr r0, _0203E380 ; =FUN_0203e384
	strh r2, [r1, #0x6a]
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203E380: .word FUN_0203e384
	arm_func_end FUN_0203e358

	arm_func_start FUN_0203e384
FUN_0203e384: ; 0x0203E384
	ldr r2, _0203E3E8 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203E3C0
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203E3C0:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r1, [r2]
	ldr r0, _0203E3EC ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203E3E8: .word unk_020B5BB0
_0203E3EC: .word 0x0000FFFD
	arm_func_end FUN_0203e384

	arm_func_start FUN_0203e3f0
FUN_0203e3f0: ; 0x0203E3F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r5, r4, #0x2400
	ldrh r1, [r5, #0x6a]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0203E498
_0203E40C: ; jump table
	b _0203E498 ; case 0
	b _0203E428 ; case 1
	b _0203E46C ; case 2
	b _0203E42C ; case 3
	b _0203E458 ; case 4
	b _0203E434 ; case 5
	b _0203E444 ; case 6
_0203E428:
	ldmfd sp!, {r4, r5, r6, pc}
_0203E42C:
	bl FUN_0203f7bc
	b _0203E4C8
_0203E434:
	bl FUN_0203eaf8
	cmp r0, #0
	beq _0203E4C8
	b _0203E4B8
_0203E444:
	add r0, r4, #0x1400
	bl WM_EndDataSharing
	cmp r0, #0
	beq _0203E458
	b _0203E4B8
_0203E458:
	mov r0, r4
	bl FUN_0203eb30
	cmp r0, #0
	bne _0203E4C8
	b _0203E4B8
_0203E46C:
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #0x6a
	mov r6, #2
_0203E47C:
	mov r1, r6
	add r0, r4, #0x2400
	bl DC_FlushRange
	ldrh r0, [r5, #0x6a]
	cmp r0, #1
	bne _0203E47C
	ldmfd sp!, {r4, r5, r6, pc}
_0203E498:
	add r0, r4, #0x2400
	ldrh r0, [r0, #0x6c]
	tst r0, #2
	mov r0, r4
	beq _0203E4C0
	bl FUN_0203eb30
	cmp r0, #0
	bne _0203E4C8
_0203E4B8:
	mov r0, r4
	b _0203E4C0
_0203E4C0:
	bl FUN_0203e358
	mov r6, r0
_0203E4C8:
	cmp r6, #0
	addne r5, r4, #0x2400
	ldrneh r0, [r5, #0x6a]
	cmpne r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #0x6a
	mov r6, #2
_0203E4E4:
	mov r1, r6
	add r0, r4, #0x2400
	bl DC_FlushRange
	ldrh r0, [r5, #0x6a]
	cmp r0, #1
	bne _0203E4E4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0203e3f0

	arm_func_start FUN_0203e500
FUN_0203e500: ; 0x0203E500
	ldrh r0, [r0, #2]
	cmp r0, #0
	ldrne r0, _0203E528 ; =0x020B5BB0
	movne r1, #9
	ldreq r0, _0203E528 ; =0x020B5BB0
	moveq r1, #0
	ldr r0, [r0]
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	bx lr
_0203E528: .word unk_020B5BB0
	arm_func_end FUN_0203e500

	arm_func_start FUN_0203e52c
FUN_0203e52c: ; 0x0203E52C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r0, r4, #0x2400
	ldrh r0, [r0, #0x6a]
	mov r7, #0
	cmp r0, #1
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0203E604 ; =FUN_0203e500
	bl WM_End
	cmp r0, #2
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r6, r4, #0x2400
	ldrh r0, [r6, #0x6a]
	cmp r0, #1
	bne _0203E590
	add r5, r4, #0x6a
	mov r8, #2
_0203E578:
	mov r1, r8
	add r0, r5, #0x2400
	bl DC_FlushRange
	ldrh r0, [r6, #0x6a]
	cmp r0, #1
	beq _0203E578
_0203E590:
	ldr r0, _0203E608 ; =0x020B5BB0
	ldr r0, [r0]
	add r0, r0, #0x2400
	ldrh r0, [r0, #0x6a]
	cmp r0, #9
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x204]
	cmp r1, #0
	beq _0203E5C4
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x204]
_0203E5C4:
	ldr r1, [r4, #0x208]
	cmp r1, #0
	beq _0203E5DC
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x208]
_0203E5DC:
	ldr r1, [r4, #0x20c]
	cmp r1, #0
	beq _0203E5F4
	mov r0, r4
	bl FUN_0203dfd0
	str r7, [r4, #0x20c]
_0203E5F4:
	ldr r0, _0203E608 ; =0x020B5BB0
	str r7, [r0]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203E604: .word FUN_0203e500
_0203E608: .word unk_020B5BB0
	arm_func_end FUN_0203e52c

	arm_func_start FUN_0203e60c
FUN_0203e60c: ; 0x0203E60C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	add r0, r5, #0x2400
	ldrh r0, [r0, #0x6c]
	tst r0, #2
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x238]
	mov r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r4}
	ldr r2, [r5, #0x208]
	ldr r0, [r5, #0x204]
	ldr r1, [r5, #0x23c]
	add r3, r0, #0x1f
	add r12, r2, #0x1f
	mov r2, r1, lsl #0x10
	ldr r0, _0203E68C ; =FUN_0203e690
	bic r1, r12, #0x1f
	mov r2, r2, lsr #0x10
	bic r3, r3, #0x1f
	bl WM_StartMP
	cmp r0, #2
	addne r1, r5, #0x2000
	strne r0, [r1, #0x440]
	movne r0, #0
	moveq r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0203E68C: .word FUN_0203e690
	arm_func_end FUN_0203e60c

	arm_func_start FUN_0203e690
FUN_0203e690: ; 0x0203E690
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _0203E834 ; =0x020B5BB0
	ldr r2, [r4]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	bgt _0203E6C0
	beq _0203E708
	b _0203E6E0
_0203E6C0:
	cmp r1, #0xf
	bgt _0203E6E0
	cmp r1, #9
	blt _0203E6E0
	cmpne r1, #0xd
	cmpne r1, #0xf
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
_0203E6E0:
	add r1, r2, #0x2400
	mov r2, #9
	strh r2, [r1, #0x6a]
	ldr r1, _0203E834 ; =0x020B5BB0
	ldrh r2, [r0, #2]
	ldr r0, [r1]
	add sp, sp, #4
	add r0, r0, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, r4, pc}
_0203E708:
	ldrh r0, [r0, #4]
	sub r0, r0, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0203E82C
_0203E71C: ; jump table
	b _0203E72C ; case 0
	b _0203E82C ; case 1
	b _0203E82C ; case 2
	b _0203E82C ; case 3
_0203E72C:
	add r0, r2, #0x2400
	ldrh r1, [r0, #0x6c]
	orr r1, r1, #2
	strh r1, [r0, #0x6c]
	ldr r12, [r4]
	add r0, r12, #0x2400
	ldrh r1, [r0, #0x68]
	tst r1, #1
	beq _0203E7AC
	ldrh r0, [r0, #0x6a]
	cmp r0, #5
	beq _0203E820
	add r0, r12, #0xc20
	add r0, r0, #0x1000
	mov r1, #0xd
	bl WM_StartKeySharing
	cmp r0, #0
	beq _0203E790
	ldr r1, [r4]
	mov r2, #9
	add r1, r1, #0x2400
	strh r2, [r1, #0x6a]
	ldr r1, [r4]
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
_0203E790:
	ldr r0, _0203E834 ; =0x020B5BB0
	mov r1, #5
	ldr r0, [r0]
	add sp, sp, #4
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	ldmfd sp!, {r3, r4, pc}
_0203E7AC:
	tst r1, #2
	beq _0203E820
	mov r2, #1
	str r2, [sp]
	ldrh r1, [r0, #0x5e]
	ldrh r3, [r0, #0x66]
	add r0, r12, #0x1400
	mov r1, r2, lsl r1
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, #0xd
	bl WM_StartDataSharing
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #6
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4]
	mov r2, #9
	add r1, r1, #0x2400
	strh r2, [r1, #0x6a]
	ldr r1, [r4]
	add sp, sp, #4
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	ldmfd sp!, {r3, r4, pc}
_0203E820:
	add r0, r12, #0x2400
	mov r1, #4
	strh r1, [r0, #0x6a]
_0203E82C:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0203E834: .word unk_020B5BB0
	arm_func_end FUN_0203e690

	arm_func_start FUN_0203e838
FUN_0203e838: ; 0x0203E838
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x2400
	ldrh r1, [r0, #0x6e]
	ldrh r2, [r0, #0x70]
	ldr r0, _0203E86C ; =FUN_0203e870
	bl WM_SetMPTiming
	cmp r0, #2
	addne r1, r4, #0x2000
	strne r0, [r1, #0x440]
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_0203E86C: .word FUN_0203e870
	arm_func_end FUN_0203e838

	arm_func_start FUN_0203e870
FUN_0203e870: ; 0x0203E870
	stmfd sp!, {r4, lr}
	ldr r4, _0203E898 ; =0x020B5BB0
	ldr r0, [r4]
	bl FUN_0203e60c
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #9
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203E898: .word unk_020B5BB0
	arm_func_end FUN_0203e870

	arm_func_start FUN_0203e89c
FUN_0203e89c: ; 0x0203E89C
	stmfd sp!, {r3, lr}
	mov r2, r0
	add r0, r2, #0x2400
	ldrh r0, [r0, #0x6a]
	cmp r0, #6
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r2, #0x1400
	add r2, r2, #4
	bl WM_StepDataSharing
	cmp r0, #0
	beq _0203E8D4
	cmp r0, #5
	b _0203E8DC
_0203E8D4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0203E8DC:
	ldr r1, _0203E8F4 ; =0x020B5BB0
	ldr r1, [r1]
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0203E8F4: .word unk_020B5BB0
	arm_func_end FUN_0203e89c

	arm_func_start FUN_0203e8f8
FUN_0203e8f8: ; 0x0203E8F8
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203E910
	cmp r1, #0xf
	ldmnefd sp!, {r3, pc}
_0203E910:
	ldr r2, [r0, #0x20]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #1
	cmp r1, #0
	movne r0, #0
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203e8f8

	arm_func_start FUN_0203e930
FUN_0203e930: ; 0x0203E930
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov lr, r0
	add r0, lr, #0x2400
	ldrh r12, [r0, #0x6a]
	mov r6, r1
	mov r5, r2
	cmp r12, #4
	mov r4, r3
	addne sp, sp, #0xc
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r0, #0x6c]
	tst r0, #0x10
	addne sp, sp, #0xc
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [lr, #0x204]
	ldr r1, [lr, #0x238]
	bl DC_FlushRange
	ldr r0, _0203E9D0 ; =0x0000FFFF
	mov r1, r4
	str r0, [sp]
	mov r12, #0xe
	ldr r0, _0203E9D4 ; =FUN_0203e8f8
	mov r2, r6
	mov r3, r5
	str r12, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	bl WM_SetMPDataToPortEx
	ldr r1, _0203E9D8 ; =0x020B5BB0
	cmp r0, #2
	ldr r1, [r1]
	movne r4, #0
	add r1, r1, #0x2000
	str r0, [r1, #0x440]
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0203E9D0: .word 0x0000FFFF
_0203E9D4: .word FUN_0203e8f8
_0203E9D8: .word unk_020B5BB0
	arm_func_end FUN_0203e930

	arm_func_start FUN_0203e9dc
FUN_0203e9dc: ; 0x0203E9DC
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0203EA3C ; =0x020B5BB0
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bne _0203EA20
	ldrh r0, [r1, #0x12]
	ldrh r2, [r1, #0x10]
	ldr r1, [r1, #0xc]
	blx r3
	ldmfd sp!, {r3, pc}
_0203EA20:
	cmp r0, #9
	ldmnefd sp!, {r3, pc}
	ldrh r0, [r1, #0x12]
	mov r1, #0
	mov r2, r1
	blx r3
	ldmfd sp!, {r3, pc}
_0203EA3C: .word unk_020B5BB0
	arm_func_end FUN_0203e9dc

	arm_func_start FUN_0203ea40
FUN_0203ea40: ; 0x0203EA40
	ldr r2, _0203EA5C ; =0x020B5BB0
	ldr r1, _0203EA60 ; =FUN_0203e9dc
	str r0, [r2, #4]
	ldr r12, _0203EA64 ; =WM_SetPortCallback
	mov r0, #0xe
	mov r2, #0
	bx r12
_0203EA5C: .word unk_020B5BB0
_0203EA60: .word FUN_0203e9dc
_0203EA64: .word WM_SetPortCallback
	arm_func_end FUN_0203ea40

	arm_func_start FUN_0203ea68
FUN_0203ea68: ; 0x0203EA68
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	ldr r1, _0203EA94 ; =0x020B5BB0
	ldr r0, _0203EA98 ; =0x0000FFEF
	ldr r1, [r1]
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203EA94: .word unk_020B5BB0
_0203EA98: .word 0x0000FFEF
	arm_func_end FUN_0203ea68

	arm_func_start FUN_0203ea9c
FUN_0203ea9c: ; 0x0203EA9C
	mov r1, r1, lsl #0x10
	ldr r0, _0203EAB0 ; =FUN_0203ea68
	ldr r12, _0203EAB4 ; =WM_SetMPParentSize
	mov r1, r1, lsr #0x10
	bx r12
_0203EAB0: .word FUN_0203ea68
_0203EAB4: .word WM_SetMPParentSize
	arm_func_end FUN_0203ea9c

	arm_func_start FUN_0203eab8
FUN_0203eab8: ; 0x0203EAB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r2
	mov r2, r1
	add r0, r4, #0x1400
	add r1, r4, #4
	mov r4, r3
	bl WM_GetSharedDataAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203eab8

	arm_func_start FUN_0203eaf8
FUN_0203eaf8: ; 0x0203EAF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc20
	add r0, r0, #0x1000
	bl WM_EndKeySharing
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_0203eb30
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203eaf8

	arm_func_start FUN_0203eb30
FUN_0203eb30: ; 0x0203EB30
	stmfd sp!, {r3, lr}
	ldr r0, _0203EB4C ; =FUN_0203eb50
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203EB4C: .word FUN_0203eb50
	arm_func_end FUN_0203eb30

	arm_func_start FUN_0203eb50
FUN_0203eb50: ; 0x0203EB50
	stmfd sp!, {r3, lr}
	ldr r1, _0203EBB0 ; =0x020B5BB0
	ldr r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r0, [r0, #2]
	cmp r0, #0
	add r0, r1, #0x2400
	ldrh r0, [r0, #0x68]
	beq _0203EB94
	tst r0, #0x100
	mov r0, r1
	beq _0203EB8C
	bl FUN_0203e358
	ldmfd sp!, {r3, pc}
_0203EB8C:
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_0203EB94:
	tst r0, #0x100
	mov r0, r1
	beq _0203EBA8
	bl FUN_0203ebb4
	ldmfd sp!, {r3, pc}
_0203EBA8:
	bl FUN_0203ec20
	ldmfd sp!, {r3, pc}
_0203EBB0: .word unk_020B5BB0
	arm_func_end FUN_0203eb50

	arm_func_start FUN_0203ebb4
FUN_0203ebb4: ; 0x0203EBB4
	stmfd sp!, {r3, lr}
	ldr r0, _0203EBD0 ; =FUN_0203ebd4
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0203EBD0: .word FUN_0203ebd4
	arm_func_end FUN_0203ebb4

	arm_func_start FUN_0203ebd4
FUN_0203ebd4: ; 0x0203EBD4
	ldr r1, _0203EC18 ; =0x020B5BB0
	ldr r2, [r1]
	cmp r2, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	add r0, r2, #0x2400
	mov r2, #1
	strh r2, [r0, #0x6a]
	ldr r1, [r1]
	ldr r0, _0203EC1C ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203EC18: .word unk_020B5BB0
_0203EC1C: .word 0x0000FFFD
	arm_func_end FUN_0203ebd4

	arm_func_start FUN_0203ec20
FUN_0203ec20: ; 0x0203EC20
	stmfd sp!, {r4, lr}
	mov r4, #0
	ldr r0, _0203EC54 ; =FUN_0203ec5c
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0203EC58 ; =0x020B5BB0
	ldr r0, [r0]
	bl FUN_0203e358
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0203EC54: .word FUN_0203ec5c
_0203EC58: .word unk_020B5BB0
	arm_func_end FUN_0203ec20

	arm_func_start FUN_0203ec5c
FUN_0203ec5c: ; 0x0203EC5C
	ldr r1, _0203ECA0 ; =0x020B5BB0
	ldr r2, [r1]
	cmp r2, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	bxne lr
	add r0, r2, #0x2400
	mov r2, #1
	strh r2, [r0, #0x6a]
	ldr r1, [r1]
	ldr r0, _0203ECA4 ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203ECA0: .word unk_020B5BB0
_0203ECA4: .word 0x0000FFFD
	arm_func_end FUN_0203ec5c

	arm_func_start FUN_0203eca8
FUN_0203eca8: ; 0x0203ECA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x2400
	ldrh r0, [r0, #0x6a]
	mov r4, r1
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r2
	add r1, r5, #0x220
	mov r2, #0x14
	bl MI_CpuCopy8
	ldr r0, _0203ED04 ; =FUN_0203ed08
	mov r1, r4
	add r3, r5, #0x2400
	mov r12, #8
	add r2, r5, #0x220
	strh r12, [r3, #0x6a]
	bl WM_SetWEPKey
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0203ED04: .word FUN_0203ed08
	arm_func_end FUN_0203eca8

	arm_func_start FUN_0203ed08
FUN_0203ed08: ; 0x0203ED08
	ldr r2, _0203ED68 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203ED44
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203ED44:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r0, [r2]
	add r0, r0, #0x2400
	ldrh r1, [r0, #0x6c]
	orr r1, r1, #4
	strh r1, [r0, #0x6c]
	bx lr
_0203ED68: .word unk_020B5BB0
	arm_func_end FUN_0203ed08

	arm_func_start FUN_0203ed6c
FUN_0203ed6c: ; 0x0203ED6C
	stmfd sp!, {r3, lr}
	add r2, r0, #0x2400
	ldrh r3, [r2, #0x6a]
	cmp r3, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	strh r1, [r2, #0x62]
	add r2, r0, #0x300
	mov r12, #0
	mov r3, #0x65
	mov r1, #1
	strh r12, [r2, #0x62]
	strh r3, [r2, #0x64]
	bl FUN_0203eda8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0203ed6c

	arm_func_start FUN_0203eda8
FUN_0203eda8: ; 0x0203EDA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _0203EE04
_0203EDE0:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _0203EDE0
_0203EE04:
	add r1, r5, #0x2400
	mov r2, #2
	strh r2, [r1, #0x6a]
	mov r3, r4
	mov r4, #0x1e
	ldr r0, _0203EE44 ; =FUN_0203ee48
	mov r1, #3
	mov r2, #0x11
	str r4, [sp]
	bl WM_MeasureChannel
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0203EE44: .word FUN_0203ee48
	arm_func_end FUN_0203eda8

	arm_func_start FUN_0203ee48
FUN_0203ee48: ; 0x0203EE48
	stmfd sp!, {r4, lr}
	ldr r2, _0203EEF8 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203EE88
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r4, pc}
_0203EE88:
	add r1, r3, #0x300
	ldrh r4, [r1, #0x64]
	ldrh r3, [r0, #0xa]
	ldrh r12, [r0, #8]
	cmp r4, r3
	strhih r12, [r1, #0x62]
	ldrhi r1, [r2]
	ldrhih r2, [r0, #0xa]
	addhi r0, r1, #0x300
	ldr r4, _0203EEF8 ; =0x020B5BB0
	strhih r2, [r0, #0x64]
	add r0, r12, #1
	mov r1, r0, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_0203eda8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r3, [r4]
	mov r1, #1
	add r0, r3, #0x300
	ldrh r2, [r0, #0x62]
	add r0, r3, #0x2400
	strh r2, [r0, #0x62]
	ldr r0, [r4]
	add r0, r0, #0x2400
	strh r1, [r0, #0x6a]
	ldmfd sp!, {r4, pc}
_0203EEF8: .word unk_020B5BB0
	arm_func_end FUN_0203ee48

	arm_func_start FUN_0203eefc
FUN_0203eefc: ; 0x0203EEFC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	add r0, r7, #0x2400
	ldrh r4, [r0, #0x6a]
	mov r6, r2
	mov r5, r3
	cmp r4, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	orr r1, r1, #0x100
	mov r4, #0
	strh r1, [r0, #0x68]
	strh r4, [r0, #0x5c]
	bl WM_GetNextTgid
	add r1, r7, #0x200
	strh r0, [r1, #0x34]
	add r0, r7, #0x2400
	ldrh r2, [r1, #0x34]
	add r1, r7, #0x300
	ldrh r0, [r0, #0x62]
	strh r2, [r1, #0x2c]
	strh r0, [r1, #0x52]
	bl WM_GetDispersionBeaconPeriod
	add r2, r7, #0x2400
	add r1, r7, #0x300
	ldrh r8, [r2, #0x5e]
	ldrh lr, [r2, #0x64]
	ldrh r12, [r2, #0x66]
	ldrh r3, [r2, #0x68]
	sub r8, r8, #1
	mov r2, #1
	strh r0, [r1, #0x38]
	strh r8, [r1, #0x30]
	tst r3, #1
	strh r2, [r1, #0x2e]
	ldr r0, _0203EFD4 ; =FUN_0203efd8
	strh lr, [r1, #0x54]
	strh r12, [r1, #0x56]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x32]
	moveq r2, r4
	add r4, r7, #0x2400
	add r3, r7, #0x300
	mov r8, #0
	add r1, r7, #0x320
	strh r2, [r3, #0x34]
	strh r8, [r4, #0x60]
	strh r6, [r4, #0x6e]
	strh r5, [r4, #0x70]
	bl WM_SetParentParameter
	cmp r0, #2
	movne r0, r8
	moveq r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203EFD4: .word FUN_0203efd8
	arm_func_end FUN_0203eefc

	arm_func_start FUN_0203efd8
FUN_0203efd8: ; 0x0203EFD8
	stmfd sp!, {r3, lr}
	ldr r2, _0203F024 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F018
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, pc}
_0203F018:
	ldr r0, _0203F028 ; =FUN_0203f02c
	bl WM_StartParent
	ldmfd sp!, {r3, pc}
_0203F024: .word unk_020B5BB0
_0203F028: .word FUN_0203f02c
	arm_func_end FUN_0203efd8

	arm_func_start FUN_0203f02c
FUN_0203f02c: ; 0x0203F02C
	stmfd sp!, {r4, lr}
	ldr r2, _0203F164 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F06C
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r4, pc}
_0203F06C:
	ldrh r1, [r0, #8]
	cmp r1, #7
	bgt _0203F094
	bge _0203F0B0
	cmp r1, #2
	bgt _0203F148
	cmp r1, #0
	blt _0203F148
	beq _0203F100
	b _0203F148
_0203F094:
	cmp r1, #9
	bgt _0203F0A4
	beq _0203F0D0
	b _0203F148
_0203F0A4:
	cmp r1, #0x1a
	beq _0203F0FC
	b _0203F148
_0203F0B0:
	ldrh r0, [r0, #0x10]
	add r1, r3, #0x2400
	mov r2, #1
	mov r0, r2, lsl r0
	ldrh r2, [r1, #0x60]
	mov r0, r0, lsl #0x10
	orr r0, r2, r0, lsr #16
	b _0203F0F4
_0203F0D0:
	ldrh r0, [r0, #0x10]
	mov r2, #1
	add r1, r3, #0x2400
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mvn r0, r0, lsr #16
	ldrh r2, [r1, #0x60]
	mov r0, r0, lsl #0x10
	and r0, r2, r0, lsr #16
_0203F0F4:
	strh r0, [r1, #0x60]
	b _0203F148
_0203F0FC:
	b _0203F0D0
_0203F100:
	add r0, r3, #0x2400
	ldrh r1, [r0, #0x6e]
	cmp r1, #0
	ldrneh r0, [r0, #0x70]
	cmpne r0, #0
	beq _0203F128
	mov r0, r3
	bl FUN_0203e838
	cmp r0, #0
	bne _0203F148
_0203F128:
	ldr r4, _0203F164 ; =0x020B5BB0
	ldr r0, [r4]
	bl FUN_0203e60c
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #9
	addeq r0, r0, #0x2400
	streqh r1, [r0, #0x6a]
_0203F148:
	ldr r0, _0203F164 ; =0x020B5BB0
	mov r1, #2
	ldr r0, [r0]
	add r0, r0, #0x460
	add r0, r0, #0x2000
	bl DC_FlushRange
	ldmfd sp!, {r4, pc}
_0203F164: .word unk_020B5BB0
	arm_func_end FUN_0203f02c

	arm_func_start FUN_0203f168
FUN_0203f168: ; 0x0203F168
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r3, r5, #0x2400
	ldrh r0, [r3, #0x6a]
	mov r4, r1
	mov r7, r2
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0203F228 ; =0x00001078
	mov r6, #3
	add r0, r5, #0x380
	mov r1, #0
	strh r6, [r3, #0x6a]
	bl MI_CpuFill8
	cmp r7, #0
	add r0, r5, #0x8a
	mov r2, #6
	beq _0203F1C4
	mov r1, r7
	add r0, r0, #0x300
	bl MI_CpuCopy8
	b _0203F1D0
_0203F1C4:
	add r0, r0, #0x300
	mov r1, #0xff
	bl MI_CpuFill8
_0203F1D0:
	mov r6, #0
	add r3, r5, #0x1300
	add r8, r5, #0x3e0
	add lr, r5, #0x1000
	mov r1, r6
	add r12, r5, #0x300
	mov r7, #0x400
	add r0, r5, #0x7e0
	mov r2, #0xc00
	strh r4, [r3, #0xf4]
	str r8, [r5, #0x380]
	strh r7, [r12, #0x84]
	strb r6, [lr, #0x3e2]
	bl MI_CpuFill8
	add r0, r5, #0xe3
	mov r1, r6
	add r0, r0, #0x1300
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r5
	bl FUN_0203f22c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203F228: .word 0x00001078
	arm_func_end FUN_0203f168

	arm_func_start FUN_0203f22c
FUN_0203f22c: ; 0x0203F22C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r6, #0x1300
	ldrh r7, [r1, #0xf4]
	mov r2, #1
	mov r5, r2
	cmp r7, #0
	addeq r1, r7, #1
	moveq r1, r1, lsl #0x10
	moveq r7, r1, lsr #0x10
_0203F270:
	cmp r7, #0x10
	movhi r7, r2
	sub r1, r7, #1
	tst r0, r5, lsl r1
	mov lr, r5, lsl r1
	addeq r1, r7, #1
	moveq r1, r1, lsl #0x10
	moveq r7, r1, lsr #0x10
	beq _0203F270
	add r12, r6, #0x300
	add r3, r6, #0x1300
	mov r4, #0
	add r0, r6, #0x394
	mov r1, #0xff
	mov r2, #0x20
	strh r7, [r3, #0xf4]
	strh lr, [r12, #0x86]
	strh r5, [r12, #0x90]
	strh r4, [r12, #0x92]
	bl MI_CpuFill8
	bl WM_GetDispersionScanPeriod
	add r2, r6, #0x2400
	ldrh r3, [r2, #0x6c]
	add r1, r6, #0x300
	strh r0, [r1, #0x88]
	orr r3, r3, #1
	ldr r0, _0203F2F8 ; =FUN_0203f330
	add r1, r6, #0x380
	strh r3, [r2, #0x6c]
	bl WM_StartScanEx
	cmp r0, #2
	movne r0, r4
	moveq r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F2F8: .word FUN_0203f330
	arm_func_end FUN_0203f22c

	arm_func_start FUN_0203f2fc
FUN_0203f2fc: ; 0x0203F2FC
	mov r12, #0
_0203F300:
	ldrb r3, [r0]
	ldrb r2, [r1]
	cmp r3, r2
	movne r0, #0
	bxne lr
	add r12, r12, #1
	cmp r12, #0x10
	add r0, r0, #1
	add r1, r1, #1
	blt _0203F300
	mov r0, #1
	bx lr
	arm_func_end FUN_0203f2fc

	arm_func_start FUN_0203f330
FUN_0203f330: ; 0x0203F330
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	ldr r0, _0203F7AC ; =0x020B5BB0
	mov r4, #1
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _0203F384
	add r0, r0, #0x2400
	mov r1, #9
	strh r1, [r0, #0x6a]
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	ldr r0, [sp]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F384:
	add r1, r0, #0x2400
	ldrh r1, [r1, #0x6a]
	cmp r1, #3
	beq _0203F39C
	bl FUN_0203f7bc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F39C:
	ldr r1, [sp]
	ldrh r1, [r1, #8]
	cmp r1, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #4
	beq _0203F3C0
	cmp r1, #5
	beq _0203F460
	b _0203F788
_0203F3C0:
	mov r6, #0xc0
	mov r5, #0
	mov r7, r6
	b _0203F454
_0203F3D0:
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	add r0, r1, r5
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	beq _0203F450
	add r0, r1, #0xe3
	add r1, r0, #0x1300
	ldrb r0, [r1, r5]
	sub r0, r0, #1
	strb r0, [r1, r5]
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r1, [r0]
	add r0, r1, r5
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	bne _0203F450
	add r0, r1, #0x7e0
	mla r0, r5, r7, r0
	mov r1, #0
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _0203F7AC ; =0x020B5BB0
	mvn r1, r4, lsl r5
	ldr r0, [r0]
	and r1, r1, #0xff
	add r0, r0, #0x1000
	ldrb r2, [r0, #0x3e2]
	and r1, r2, r1
	strb r1, [r0, #0x3e2]
_0203F450:
	add r5, r5, #1
_0203F454:
	cmp r5, #0x10
	blt _0203F3D0
	b _0203F788
_0203F460:
	ldr r1, [sp]
	ldrh r1, [r1, #0xe]
	cmp r1, #0
	beq _0203F47C
	add r0, r0, #0x3e0
	mov r1, #0x400
	bl DC_InvalidateRange
_0203F47C:
	mov r5, #0
	b _0203F778
_0203F484:
	ldr r0, [sp]
	mov r2, #0
	add r0, r0, r5, lsl #2
	ldr r6, [r0, #0x10]
	mov r3, r2
	ldrh r1, [r6, #0x3c]
	mov r0, r2
	cmp r1, #0x10
	blo _0203F4B0
	cmp r1, #0x80
	movls r0, #1
_0203F4B0:
	cmp r0, #0
	beq _0203F4C8
	ldrb r0, [r6, #0x4a]
	add r0, r0, #0x10
	cmp r1, r0
	moveq r3, #1
_0203F4C8:
	cmp r3, #0
	beq _0203F4DC
	ldrh r0, [r6, #0x40]
	cmp r0, #1
	moveq r2, #1
_0203F4DC:
	cmp r2, #0
	beq _0203F774
	ldr r0, _0203F7AC ; =0x020B5BB0
	ldr r2, [r6, #0x44]
	ldr r1, [r0]
	ldr r0, [r1, #0x328]
	cmp r2, r0
	bne _0203F774
	ldrb r0, [r6, #0x4b]
	tst r0, #1
	beq _0203F774
	tst r0, #2
	bne _0203F774
	ldr r1, [r1, #0x320]
	add r0, r6, #0x50
	bl FUN_0203f2fc
	cmp r0, #0
	beq _0203F774
	ldrb r0, [r6, #0x75]
	cmp r0, #0
	bne _0203F774
	ldr r0, _0203F7AC ; =0x020B5BB0
	mov r12, #0
	ldr r0, [r0]
	add r1, r0, #0x3e4
	add r11, r1, #0x400
	b _0203F604
_0203F548:
	add r1, r0, r12
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x3e3]
	cmp r1, #0
	beq _0203F600
	mov r1, #0xc0
	mul r2, r12, r1
	ldrb r10, [r11, r2]
	ldrb r9, [r6, #4]
	add r1, r11, r2
	mov r2, #0
	cmp r10, r9
	ldreqb r10, [r1, #1]
	ldreqb r9, [r6, #5]
	mov r8, r2
	mov r3, r2
	cmpeq r10, r9
	moveq r8, r4
	mov lr, r2
	mov r7, r2
	cmp r8, #0
	beq _0203F5B0
	ldrb r9, [r1, #2]
	ldrb r8, [r6, #6]
	cmp r9, r8
	moveq r7, r4
_0203F5B0:
	cmp r7, #0
	beq _0203F5C8
	ldrb r8, [r1, #3]
	ldrb r7, [r6, #7]
	cmp r8, r7
	moveq lr, r4
_0203F5C8:
	cmp lr, #0
	beq _0203F5E0
	ldrb r8, [r1, #4]
	ldrb r7, [r6, #8]
	cmp r8, r7
	moveq r3, r4
_0203F5E0:
	cmp r3, #0
	beq _0203F5F8
	ldrb r3, [r1, #5]
	ldrb r1, [r6, #9]
	cmp r3, r1
	moveq r2, r4
_0203F5F8:
	cmp r2, #0
	bne _0203F60C
_0203F600:
	add r12, r12, #1
_0203F604:
	cmp r12, #0x10
	blt _0203F548
_0203F60C:
	cmp r12, #0x10
	ldr r1, _0203F7AC ; =0x020B5BB0
	blt _0203F64C
	mov r12, #0
	ldr r2, [r1]
	b _0203F63C
_0203F624:
	add r0, r2, r12
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3e3]
	cmp r0, #0
	beq _0203F644
	add r12, r12, #1
_0203F63C:
	cmp r12, #0x10
	blt _0203F624
_0203F644:
	cmp r12, #0x10
	bge _0203F788
_0203F64C:
	mov r0, #0xc0
	mul r2, r12, r0
	ldr r0, [r1]
	ldrh r1, [r6]
	add r3, r0, #0x7e0
	add r0, r3, r2
	strh r1, [r3, r2]
	ldrh r1, [r6, #2]
	add r8, r6, #0xc
	add r7, r0, #0xc
	strh r1, [r0, #2]
	ldrb r2, [r6, #4]
	ldrb r1, [r6, #5]
	mov r3, #0x10
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldrb r2, [r6, #6]
	ldrb r1, [r6, #7]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	ldrb r2, [r6, #8]
	ldrb r1, [r6, #9]
	strb r2, [r0, #8]
	strb r1, [r0, #9]
	ldrh r1, [r6, #0xa]
	strh r1, [r0, #0xa]
_0203F6B4:
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r8, r8, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	bne _0203F6B4
	ldrh r1, [r6, #0x2c]
	add r9, r6, #0x40
	add r8, r0, #0x40
	strh r1, [r0, #0x2c]
	ldrh r2, [r6, #0x2e]
	ldrh r1, [r6, #0x30]
	mov r7, #8
	strh r2, [r0, #0x2e]
	strh r1, [r0, #0x30]
	ldrh r1, [r6, #0x32]
	strh r1, [r0, #0x32]
	ldrh r1, [r6, #0x34]
	strh r1, [r0, #0x34]
	ldrh r1, [r6, #0x36]
	strh r1, [r0, #0x36]
	ldrh r1, [r6, #0x38]
	strh r1, [r0, #0x38]
	ldrh r1, [r6, #0x3a]
	strh r1, [r0, #0x3a]
	ldrh r1, [r6, #0x3c]
	strh r1, [r0, #0x3c]
	ldrh r1, [r6, #0x3e]
	strh r1, [r0, #0x3e]
_0203F72C:
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _0203F72C
	ldr r1, _0203F7AC ; =0x020B5BB0
	mov r0, #1
	ldr r3, [r1]
	mov r2, r0, lsl r12
	add r0, r3, r12
	add r0, r0, #0x1000
	mov r3, #0x2c
	strb r3, [r0, #0x3e3]
	ldr r0, [r1]
	and r1, r2, #0xff
	add r0, r0, #0x1000
	ldrb r2, [r0, #0x3e2]
	orr r1, r2, r1
	strb r1, [r0, #0x3e2]
_0203F774:
	add r5, r5, #1
_0203F778:
	ldr r0, [sp]
	ldrh r0, [r0, #0xe]
	cmp r5, r0
	blt _0203F484
_0203F788:
	ldr r1, _0203F7AC ; =0x020B5BB0
	ldr r0, [r1]
	add r0, r0, #0x1300
	ldrh r2, [r0, #0xf4]
	add r2, r2, #1
	strh r2, [r0, #0xf4]
	ldr r0, [r1]
	bl FUN_0203f22c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203F7AC: .word unk_020B5BB0
	arm_func_end FUN_0203f330

	arm_func_start FUN_0203f7b0
FUN_0203f7b0: ; 0x0203F7B0
	ldr r12, _0203F7B8 ; =FUN_0203f7bc
	bx r12
_0203F7B8: .word FUN_0203f7bc
	arm_func_end FUN_0203f7b0

	arm_func_start FUN_0203f7bc
FUN_0203f7bc: ; 0x0203F7BC
	stmfd sp!, {r3, lr}
	add r1, r0, #0x2400
	ldrh r0, [r1, #0x6a]
	cmp r0, #3
	ldmnefd sp!, {r3, pc}
	ldr r0, _0203F7E4 ; =FUN_0203f7e8
	mov r2, #2
	strh r2, [r1, #0x6a]
	bl WM_EndScan
	ldmfd sp!, {r3, pc}
_0203F7E4: .word FUN_0203f7e8
	arm_func_end FUN_0203f7bc

	arm_func_start FUN_0203f7e8
FUN_0203f7e8: ; 0x0203F7E8
	ldr r2, _0203F838 ; =0x020B5BB0
	ldr r1, [r2]
	cmp r1, #0
	bxeq lr
	ldrh r0, [r0, #2]
	cmp r0, #0
	addne r0, r1, #0x2400
	movne r1, #9
	strneh r1, [r0, #0x6a]
	bxne lr
	add r1, r1, #0x2400
	ldrh r12, [r1, #0x6c]
	ldr r0, _0203F83C ; =0x0000FFFE
	mov r3, #1
	and r0, r12, r0
	strh r0, [r1, #0x6c]
	ldr r0, [r2]
	add r0, r0, #0x2400
	strh r3, [r0, #0x6a]
	bx lr
_0203F838: .word unk_020B5BB0
_0203F83C: .word 0x0000FFFE
	arm_func_end FUN_0203f7e8

	arm_func_start FUN_0203f840
FUN_0203f840: ; 0x0203F840
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r3, r6, #0x1000
	ldrb r3, [r3, #0x3e2]
	mov r5, #1
	mov r4, #0
	tst r3, r5, lsl r2
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r3, r6, #0x2400
	ldrh r7, [r3, #0x6a]
	cmp r7, #3
	bne _0203F880
	bl FUN_0203f7bc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F880:
	cmp r7, #1
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r3, #0x6c]
	tst r0, #2
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x7e0
	mov r7, #0xc0
	mla r0, r2, r7, r0
	orr r12, r1, #0x200
	mov r2, r7
	add r1, r6, #0x260
	strh r12, [r3, #0x68]
	strh r4, [r3, #0x60]
	bl MI_CpuCopy8
	mov r1, r7
	add r0, r6, #0x260
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	add r0, r6, #0x2400
	ldrh r0, [r0, #0x6c]
	add r2, r6, #0x44
	add r1, r6, #0x260
	tst r0, #4
	moveq r5, r4
	mov r0, r5, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r4, #1
	ldr r0, _0203F918 ; =FUN_0203f9b8
	mov r3, r4
	add r2, r2, #0x2400
	str r5, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	movne r0, #0
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203F918: .word FUN_0203f9b8
	arm_func_end FUN_0203f840

	arm_func_start FUN_0203f91c
FUN_0203f91c: ; 0x0203F91C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0203F948 ; =FUN_0203f94c
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	addeq r0, r4, #0x2400
	moveq r1, #2
	streqh r1, [r0, #0x6a]
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_0203F948: .word FUN_0203f94c
	arm_func_end FUN_0203f91c

	arm_func_start FUN_0203f94c
FUN_0203f94c: ; 0x0203F94C
	ldr r2, _0203F9B0 ; =0x020B5BB0
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0203F988
	add r1, r3, #0x2400
	mov r3, #9
	strh r3, [r1, #0x6a]
	ldr r1, [r2]
	ldrh r2, [r0, #2]
	add r0, r1, #0x2000
	str r2, [r0, #0x440]
	bx lr
_0203F988:
	add r0, r3, #0x2400
	mov r1, #1
	strh r1, [r0, #0x6a]
	ldr r1, [r2]
	ldr r0, _0203F9B4 ; =0x0000FFFD
	add r1, r1, #0x2400
	ldrh r2, [r1, #0x6c]
	and r0, r2, r0
	strh r0, [r1, #0x6c]
	bx lr
_0203F9B0: .word unk_020B5BB0
_0203F9B4: .word 0x0000FFFD
	arm_func_end FUN_0203f94c

	arm_func_start FUN_0203f9b8
FUN_0203f9b8: ; 0x0203F9B8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0203FB58 ; =0x020B5BB0
	mov r6, r0
	ldr r0, [r4]
	mov r5, #9
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #2]
	cmp r1, #0xb
	bgt _0203FA0C
	bge _0203FA30
	cmp r1, #6
	ldmgtfd sp!, {r4, r5, r6, pc}
	cmp r1, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	beq _0203FA84
	cmp r1, #1
	beq _0203FA4C
	cmp r1, #6
	beq _0203FA68
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA0C:
	cmp r1, #0xc
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA30:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA4C:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA68:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	ldrh r1, [r6, #2]
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FA84:
	ldrh r1, [r6, #8]
	cmp r1, #9
	bgt _0203FAC4
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _0203FB4C
_0203FA9C: ; jump table
	b _0203FB4C ; case 0
	b _0203FB4C ; case 1
	b _0203FB4C ; case 2
	b _0203FB4C ; case 3
	b _0203FB4C ; case 4
	b _0203FB4C ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	b _0203FAD0 ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	b _0203FB30 ; case 9
_0203FAC4:
	cmp r1, #0x1a
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _0203FB4C
_0203FAD0:
	bl FUN_0203e60c
	cmp r0, #0
	ldr r0, [r4]
	addeq r0, r0, #0x2400
	streqh r5, [r0, #0x6a]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r1, [r6, #0xa]
	add r0, r0, #0x2400
	mov r2, #1
	strh r1, [r0, #0x5c]
	ldr r1, [r4]
	ldrh r0, [r6, #0xa]
	add r1, r1, #0x2400
	ldrh r3, [r1, #0x60]
	mov r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	orr r0, r3, r0, lsr #16
	strh r0, [r1, #0x60]
	ldr r0, [r4]
	mov r1, #2
	add r0, r0, #0x460
	add r0, r0, #0x2000
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB30:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldr r0, [r4]
	mov r1, #0x14
	add r0, r0, #0x2000
	str r1, [r0, #0x440]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB4C:
	add r0, r0, #0x2400
	strh r5, [r0, #0x6a]
	ldmfd sp!, {r4, r5, r6, pc}
_0203FB58: .word unk_020B5BB0
	arm_func_end FUN_0203f9b8

	.data
	.global unk_0208FF14
unk_0208FF14:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global unk_020B5BB0
unk_020B5BB0:
	.space 0x08

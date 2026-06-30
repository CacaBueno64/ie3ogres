
	.include "/macros/function.inc"
	.include "/include/3dspritefile.inc"

    .text
	arm_func_start FUN_02057ecc
FUN_02057ecc: ; 0x02057ECC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r2, [r4, #0xc]
	mov r5, r0
	tst r2, #0x10
	beq _02057EF0
	mov r2, #1
	mov r3, #0
	bl FUN_02058220
_02057EF0:
	ldrh r0, [r4, #0xc]
	tst r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	mov r3, #0
	bl FUN_020583cc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02057ecc

	arm_func_start FUN_02057f14
FUN_02057f14: ; 0x02057F14
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02057F5C
_02057F30: ; jump table
	b _02057F5C ; case 0
	b _02057F5C ; case 1
	b _02057F54 ; case 2
	b _02057F5C ; case 3
	b _02057F54 ; case 4
	b _02057F54 ; case 5
	b _02057F5C ; case 6
	b _02057F54 ; case 7
	b _02057F54 ; case 8
_02057F54:
	mov r0, #1
	bx lr
_02057F5C:
	mov r0, #0
	bx lr
	arm_func_end FUN_02057f14

	arm_func_start FUN_02057f64
FUN_02057f64: ; 0x02057F64
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02057FAC
_02057F80: ; jump table
	b _02057FAC ; case 0
	b _02057FAC ; case 1
	b _02057FAC ; case 2
	b _02057FA4 ; case 3
	b _02057FA4 ; case 4
	b _02057FA4 ; case 5
	b _02057FAC ; case 6
	b _02057FAC ; case 7
	b _02057FA4 ; case 8
_02057FA4:
	mov r0, #1
	bx lr
_02057FAC:
	mov r0, #0
	bx lr
	arm_func_end FUN_02057f64

	arm_func_start FUN_02057fb4
FUN_02057fb4: ; 0x02057FB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r1, [r4, #0xc]
	tst r1, #0x10
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058090
_02057FF0: ; jump table
	b _02058090 ; case 0
	b _02058090 ; case 1
	b _02058014 ; case 2
	b _02058090 ; case 3
	b _02058014 ; case 4
	b _02058014 ; case 5
	b _02058090 ; case 6
	b _0205807C ; case 7
	b _0205807C ; case 8
_02058014:
	tst r1, #2
	movne r0, r5
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #5
	ldr r0, [r4, #4]
	bne _0205806C
	mov r1, r5
	bl PAC_GetSize
	mov r6, r0
	ldr r0, [r4, #4]
	mov r1, #2
	bl PAC_GetPtr
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #2]
	strb r1, [r4, #0x12]
	ldrb r1, [r0, #3]
	strb r1, [r4, #0x13]
	ldrb r0, [r0, #4]
	strb r0, [r4, #0x14]
	b _02058098
_0205806C:
	mov r1, #1
	bl PAC_GetSize
_02058074:
	mov r6, r0
	b _02058098
_0205807C:
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x14]
	bl FUN_020515c8
	b _02058074
_02058090:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058098:
	cmp r6, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _020580E4 ; =g3DVramMan
	mov r2, r6
	ldr r0, [r5]
	add r1, r4, #0x18
	bl FUN_020517ac
	cmp r0, #0
	ldrneh r1, [r4, #0xc]
	movne r0, #1
	orrne r1, r1, #0x10
	strneh r1, [r4, #0xc]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	add r1, r4, #0x18
	bl FUN_02051858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020580E4: .word g3DVramMan
	arm_func_end FUN_02057fb4

	arm_func_start FUN_020580e8
FUN_020580e8: ; 0x020580E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r1, [r4, #0xc]
	tst r1, #0x20
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020581C8
_02058120: ; jump table
	b _020581C8 ; case 0
	b _020581C8 ; case 1
	b _020581C8 ; case 2
	b _02058144 ; case 3
	b _0205814C ; case 4
	b _0205814C ; case 5
	b _020581C8 ; case 6
	b _020581B4 ; case 7
	b _020581BC ; case 8
_02058144:
	ldr r6, [r4, #8]
	b _020581D0
_0205814C:
	tst r1, #2
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r0, #5
	ldr r0, [r4, #4]
	bne _020581A4
	mov r1, #1
	bl PAC_GetSize
	mov r6, r0
	ldr r0, [r4, #4]
	mov r1, #2
	bl PAC_GetPtr
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r0, #2]
	strb r1, [r4, #0x12]
	ldrb r1, [r0, #3]
	strb r1, [r4, #0x13]
	ldrb r0, [r0, #4]
	strb r0, [r4, #0x14]
	b _020581D0
_020581A4:
	mov r1, #2
	bl PAC_GetSize
_020581AC:
	mov r6, r0
	b _020581D0
_020581B4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020581BC:
	ldrb r0, [r4, #0x14]
	bl FUN_0205162c
	b _020581AC
_020581C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020581D0:
	cmp r6, #0
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r5, _0205821C ; =g3DVramMan
	mov r2, r6
	ldr r0, [r5]
	add r1, r4, #0x24
	bl FUN_02051800
	cmp r0, #0
	ldrneh r1, [r4, #0xc]
	movne r0, #1
	orrne r1, r1, #0x20
	strneh r1, [r4, #0xc]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	add r1, r4, #0x24
	bl FUN_02051858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0205821C: .word g3DVramMan
	arm_func_end FUN_020580e8

	arm_func_start FUN_02058220
FUN_02058220: ; 0x02058220
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r9, #0
	bl FUN_02058e50
	cmp r0, #0
	bne _02058254
	ldrh r1, [r6, #0xc]
	tst r1, #0x10
	bne _02058260
_02058254:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058260:
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058344
_02058270: ; jump table
	b _02058344 ; case 0
	b _02058344 ; case 1
	b _02058294 ; case 2
	b _02058344 ; case 3
	b _02058294 ; case 4
	b _020582E8 ; case 5
	b _02058344 ; case 6
	b _02058338 ; case 7
	b _02058338 ; case 8
_02058294:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #1
	ldr r0, [r6, #4]
	mov r1, r10
	bl PAC_GetPtr
	mov r8, r0
	ldr r0, [r6, #4]
	mov r1, r10
	bl PAC_GetSize
	str r5, [sp]
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	stmib sp, {r4, r9}
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020582E8:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6, #4]
	mov r1, r9
	bl PAC_GetPtr
	mov r8, r0
	ldr r0, [r6, #4]
	mov r1, r9
	bl PAC_GetSize
	str r5, [sp]
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	stmib sp, {r4, r9}
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058338:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058344:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02058220

	arm_func_start FUN_02058350
FUN_02058350: ; 0x02058350
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl FUN_02058e50
	cmp r0, #0
	bne _0205837C
	ldrh r0, [r5, #0xc]
	tst r0, #0x10
	bne _02058388
_0205837C:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058388:
	ldrb r1, [sp, #0x20]
	str r6, [sp]
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r5, #0x30
	ldr r0, _020583C8 ; =g3DVramMan
	str r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	mov r3, r4
	add r1, r5, #0x18
	bl FUN_020518a8
	and r0, r0, #0xff
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020583C8: .word g3DVramMan
	arm_func_end FUN_02058350

	arm_func_start FUN_020583cc
FUN_020583cc: ; 0x020583CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	bne _02058400
	ldrh r1, [r7, #0xc]
	tst r1, #0x20
	bne _0205840C
_02058400:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205840C:
	ldrb r0, [r7, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02058534
_0205841C: ; jump table
	b _02058534 ; case 0
	b _02058534 ; case 1
	b _02058534 ; case 2
	b _020584F0 ; case 3
	b _02058440 ; case 4
	b _02058498 ; case 5
	b _02058534 ; case 6
	b _02058528 ; case 7
	b _02058528 ; case 8
_02058440:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #2
	ldr r0, [r7, #4]
	mov r1, r10
	bl PAC_GetPtr
	mov r9, r0
	ldr r0, [r7, #4]
	mov r1, r10
	bl PAC_GetSize
	str r6, [sp]
	mov r3, r0
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r9
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058498:
	tst r1, #2
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r10, #1
	ldr r0, [r7, #4]
	mov r1, r10
	bl PAC_GetPtr
	mov r9, r0
	ldr r0, [r7, #4]
	mov r1, r10
	bl PAC_GetSize
	str r6, [sp]
	mov r3, r0
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	mov r2, r9
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020584F0:
	ldr r2, [r7, #4]
	ldr r3, [r7, #8]
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, r8
	mov r1, r7
	str r4, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058528:
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02058534:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_020583cc

	arm_func_start FUN_02058540
FUN_02058540: ; 0x02058540
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl FUN_02058e50
	cmp r0, #0
	bne _0205856C
	ldrh r0, [r5, #0xc]
	tst r0, #0x20
	bne _02058578
_0205856C:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058578:
	ldrb r1, [sp, #0x20]
	str r6, [sp]
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r5, #0x31
	ldr r0, _020585B8 ; =g3DVramMan
	str r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	mov r3, r4
	add r1, r5, #0x24
	bl FUN_020518a8
	and r0, r0, #0xff
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020585B8: .word g3DVramMan
	arm_func_end FUN_02058540

	arm_func_start _ZN10C3DSprFileC1Ev
_ZN10C3DSprFileC1Ev: ; 0x020585BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _020585F8 ; =0x020907FC
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #8
	str r3, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	add r1, r5, #0xc
	mov r2, #0x10
	bl MIi_CpuClearFast
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020585F8: .word _ZTV10C3DSprFile+0x8
	arm_func_end _ZN10C3DSprFileC1Ev

	arm_func_start FUN_020585fc
FUN_020585fc: ; 0x020585FC
	stmfd sp!, {r4, lr}
	ldr r1, _02058618 ; =0x020907FC
	mov r4, r0
	str r1, [r4]
	bl FUN_0205866c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02058618: .word _ZTV10C3DSprFile+0x8
	arm_func_end FUN_020585fc

	arm_func_start FUN_0205861c
FUN_0205861c: ; 0x0205861C
	stmfd sp!, {r4, lr}
	ldr r1, _02058640 ; =0x020907FC
	mov r4, r0
	str r1, [r4]
	bl FUN_0205866c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02058640: .word _ZTV10C3DSprFile+0x8
	arm_func_end FUN_0205861c

	arm_func_start FUN_02058644
FUN_02058644: ; 0x02058644
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	mov r4, #0
	bl FUN_02057cac
	cmp r0, #0
	addeq r4, r4, #1
	mov r0, #0
	cmp r4, #0
	movle r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02058644

	arm_func_start FUN_0205866c
FUN_0205866c: ; 0x0205866C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02058fb4
	add r0, r4, #4
	bl FUN_02057d08
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205866c

	arm_func_start FUN_02058684
FUN_02058684: ; 0x02058684
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r9, r0
	mov r4, r2
	mov r7, r3
	cmp r8, #1
	blt _020586AC
	cmp r8, #6
	ble _020586B8
_020586AC:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020586B8:
	mov r6, #0
	add r10, sp, #4
	mov r1, r7
	mov r2, r6
	mov r3, r6
	add r0, r9, #4
	str r10, [sp]
	bl FUN_02057e10
	movs r5, r0
	beq _020586F8
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020586F8:
	mov r1, r10
	add r0, r9, #4
	bl FUN_02057d2c
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp, #4]
	mov r0, r6
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldr r0, [sp, #0x28]
	cmp r0, #0
	add r0, sp, #0x30
	beq _0205874C
	ldr r3, [sp, #4]
	mov r1, r4
	mov r2, r7
	add r3, r3, #0x15
	bl _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
	b _02058758
_0205874C:
	mov r1, r4
	mov r2, r7
	bl _ZN10FileSystem14ReadFileByNameEPPviPKc
_02058758:
	mov r6, r0
	cmp r6, #0
	addle sp, sp, #8
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r4, #0
	str r4, [sp]
	ldr r1, [sp, #4]
	mov r2, r7
	mov r3, r4
	add r0, r9, #4
	bl FUN_02057df0
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r2, [r1, #4]
	ldr r1, [sp, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #4]
	movne r1, #1
	strh r4, [r0, #0xc]
	ldrne r0, [sp, #4]
	strneh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	strb r8, [r1, #0xe]
	cmp r0, #0
	ldrne r0, [sp, #4]
	movne r1, #1
	ldreq r0, [sp, #4]
	moveq r1, #2
	strb r1, [r0, #0xf]
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	ldrsh r1, [r9, #0xa]
	mov r0, r5
	add r1, r1, #1
	strh r1, [r9, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02058684

	arm_func_start FUN_02058800
FUN_02058800: ; 0x02058800
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r1
	mov r10, r0
	mov r8, r2
	mov r7, r3
	cmp r9, #1
	ldr r6, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	blt _02058838
	cmp r9, #6
	bgt _02058838
	cmp r8, #0
	bne _02058844
_02058838:
	add sp, sp, #0x18
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058844:
	mov r0, r8
	mov r1, #0x2f
	mov r11, r8
	bl strrchr
	cmp r0, #0
	addne r11, r0, #1
	mov r0, r8
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r11, r0, #1
	add r4, sp, #0x14
	mov r1, r11
	mov r2, r6
	mov r3, r5
	add r0, r10, #4
	str r4, [sp]
	bl FUN_02057e10
	movs r4, r0
	beq _020588AC
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #0x18
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020588AC:
	add r1, sp, #0x14
	add r0, r10, #4
	bl FUN_02057d2c
	str r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0
	ldr r1, [sp, #0x14]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	cmp r7, #0
	beq _02058920
	ldr r3, _02058A0C ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _02058958
	ldrb r4, [sp, #0x44]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x48
	mov r1, r8
	str r4, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih
	b _02058954
_02058920:
	ldr r3, _02058A0C ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _02058958
	ldrb r4, [sp, #0x44]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x48
	mov r1, r8
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_02058954:
	mov r4, r0
_02058958:
	cmp r4, #0
	mov r8, #1
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	ldr r1, [sp, #0x14]
	mov r2, r11
	mov r3, r5
	add r0, r10, #4
	bl FUN_02057df0
	ldrb r0, [sp, #0x40]
	ldr r2, [sp, #0x48]
	ldr r1, [sp, #0x14]
	cmp r0, #0
	str r2, [r1, #4]
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r4, [r1, #8]
	ldr r1, [sp, #0x14]
	strh r0, [r1, #0xc]
	ldrne r0, [sp, #0x14]
	movne r1, r8
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #0x14]
	cmp r7, #0
	strb r9, [r0, #0xe]
	ldreq r0, [sp, #0x14]
	moveq r1, #2
	streqb r1, [r0, #0xf]
	beq _020589E8
	ldr r0, [sp, #0x14]
	sub r1, r8, #2
	strb r8, [r0, #0xf]
	ldr r0, [sp, #0x14]
	strb r1, [r0, #0x15]
_020589E8:
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	ldr r0, [sp, #0x10]
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058A0C: .word gAllocator
	arm_func_end FUN_02058800

	arm_func_start FUN_02058a10
FUN_02058a10: ; 0x02058A10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r2
	mov r10, r0
	mov r4, r1
	mov r6, r3
	cmp r9, #1
	ldr r7, [sp, #0x3c]
	blt _02058A44
	cmp r9, #6
	bgt _02058A44
	cmp r6, #0
	bne _02058A50
_02058A44:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058A50:
	mov r0, r6
	mov r1, #0x2f
	mov r5, r6
	bl strrchr
	cmp r0, #0
	addne r5, r0, #1
	mov r0, r6
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r5, r0, #1
	add r8, sp, #4
	ldr r2, [sp, #0x38]
	mov r1, r5
	mov r3, r7
	add r0, r10, #4
	str r8, [sp]
	bl FUN_02057e10
	movs r6, r0
	beq _02058AB8
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058AB8:
	mov r1, r8
	add r0, r10, #4
	bl FUN_02057d2c
	movs r11, r0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0x34
	ldr r1, [sp, #4]
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x38]
	mov r0, r4
	mov r2, #0
	bl FS_SeekFile
	ldr r8, _02058C5C ; =gAllocator
	add r1, r6, #0xcd
	mov r0, r8
	bl _ZN10CAllocator12setNextArenaEi
	mov r0, r8
	mov r1, r7
	bl _ZN10CAllocator8allocateEm
	movs r6, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FS_ReadFile
	cmp r0, #0
	bge _02058B50
	mov r0, r8
	mov r1, r6
	bl _ZN10CAllocator10deallocateEPv
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058B50:
	ldr r0, [r6]
	mov r2, #1
	mov r4, r0, lsr #8
	mov r0, r8
	mov r1, r4
	mov r3, r2
	bl _ZN10CAllocator8allocateEmii
	movs r8, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r6]
	and r0, r0, #0xf0
	cmp r0, #0x10
	beq _02058B98
	cmp r0, #0x20
	beq _02058BA8
	b _02058BB8
_02058B98:
	mov r0, r6
	mov r1, r8
	bl MI_UncompressLZ8
	b _02058BBC
_02058BA8:
	mov r0, r6
	mov r1, r8
	bl MI_UncompressHuffman
	b _02058BBC
_02058BB8:
	bl OS_Terminate
_02058BBC:
	ldr r0, _02058C5C ; =gAllocator
	mov r1, r6
	mov r6, #0
	bl _ZN10CAllocator10deallocateEPv
	cmp r4, #0
	addle sp, sp, #8
	movle r0, r6
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	mov r2, r5
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r3, r7
	add r0, r10, #4
	bl FUN_02057df0
	ldr r1, [sp, #4]
	ldrb r0, [sp, #0x30]
	str r8, [r1, #4]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r4, [r1, #8]
	ldr r1, [sp, #4]
	mov r2, #2
	strh r6, [r1, #0xc]
	ldrne r0, [sp, #4]
	movne r1, #1
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r9, [r0, #0xe]
	ldr r0, [sp, #4]
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	mov r0, r11
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058C5C: .word gAllocator
	arm_func_end FUN_02058a10

	arm_func_start FUN_02058c60
FUN_02058c60: ; 0x02058C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r2
	mov r10, r0
	mov r9, r1
	mov r4, r3
	cmp r8, #1
	blt _02058C90
	cmp r8, #6
	bgt _02058C90
	cmp r4, #0
	bne _02058C9C
_02058C90:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058C9C:
	mov r0, r4
	mov r1, #0x2f
	mov r6, r4
	bl strrchr
	cmp r0, #0
	addne r6, r0, #1
	mov r0, r4
	mov r1, #0x5c
	bl strrchr
	cmp r0, #0
	addne r6, r0, #1
	add r5, sp, #4
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r1, r6
	add r0, r10, #4
	str r5, [sp]
	bl FUN_02057e10
	movs r4, r0
	beq _02058D04
	ldr r0, [sp, #4]
	mov r1, #1
	bl FUN_02057c88
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058D04:
	mov r1, r5
	add r0, r10, #4
	bl FUN_02057d2c
	movs r11, r0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldr r4, [sp, #0x38]
	mov r2, #1
	ldr r1, [r9, r4]
	ldr r0, _02058E2C ; =gAllocator
	mov r5, r1, lsr #8
	mov r1, r5
	mov r3, r2
	bl _ZN10CAllocator8allocateEmii
	movs r7, r0
	bne _02058D58
	bl OS_Terminate
_02058D58:
	ldr r0, [r9, r4]
	and r0, r0, #0xf0
	cmp r0, #0x10
	beq _02058D74
	cmp r0, #0x20
	beq _02058D84
	b _02058D94
_02058D74:
	mov r1, r7
	add r0, r9, r4
	bl MI_UncompressLZ8
	b _02058D98
_02058D84:
	mov r1, r7
	add r0, r9, r4
	bl MI_UncompressHuffman
	b _02058D98
_02058D94:
	bl OS_Terminate
_02058D98:
	cmp r5, #0
	addle sp, sp, #8
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r6
	add r0, r10, #4
	bl FUN_02057df0
	ldr r1, [sp, #4]
	ldrb r0, [sp, #0x30]
	str r7, [r1, #4]
	ldr r1, [sp, #4]
	cmp r0, #0
	str r5, [r1, #8]
	ldr r1, [sp, #4]
	mov r0, #0
	strh r0, [r1, #0xc]
	ldrne r0, [sp, #4]
	movne r1, #1
	strneh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	mov r2, #2
	strb r8, [r0, #0xe]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r2, [r0, #0xf]
	ldr r0, [sp, #4]
	bl FUN_02057c88
	ldrsh r1, [r10, #0xa]
	mov r0, r11
	add r1, r1, #1
	strh r1, [r10, #0xa]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02058E2C: .word gAllocator
	arm_func_end FUN_02058c60

	arm_func_start FUN_02058e30
FUN_02058e30: ; 0x02058E30
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r4
	bl FUN_02058e50
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02058e30

	arm_func_start FUN_02058e50
FUN_02058e50: ; 0x02058E50
	stmfd sp!, {r4, lr}
	movs r4, r1
	beq _02058E6C
	mov r0, r4
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	beq _02058E74
_02058E6C:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02058E74:
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	beq _02058E8C
	cmp r0, #2
	beq _02058ECC
	b _02058ED4
_02058E8C:
	ldrsb r0, [r4, #0x15]
	cmp r0, #0
	blt _02058EA0
	bl _ZN10FileSystem10IsFileBusyEa
	b _02058EBC
_02058EA0:
	ldr r0, _02058EDC ; =gAllocator
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _02058EBC
	bl _ZN7CFileIO11tryFinalizeEPv
_02058EBC:
	cmp r0, #0
	moveq r1, #2
	streqb r1, [r4, #0xf]
	ldmfd sp!, {r4, pc}
_02058ECC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02058ED4:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02058EDC: .word gAllocator
	arm_func_end FUN_02058e50

	arm_func_start FUN_02058ee0
FUN_02058ee0: ; 0x02058EE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_02057e9c
	movs r6, r0
	beq _02058F04
	bl _ZN11C3DSprSheet6isIdleEv
	cmp r0, #0
	beq _02058F0C
_02058F04:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02058F0C:
	mov r0, r6
	mvn r1, #0
	bl FUN_02057c88
	ldrsh r0, [r6, #0x10]
	cmp r0, #0
	bgt _02058FA4
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02058F6C
	ldrh r0, [r6, #0xc]
	tst r0, #1
	bne _02058F6C
	ldrb r0, [r6, #0xf]
	cmp r0, #1
	bne _02058F64
	ldr r0, _02058FAC ; =gAllocator
	ldr r0, [r0]
	cmp r0, #0
	beq _02058F6C
	mov r2, #1
	bl _ZN7CFileIO5closeEPvi
	b _02058F6C
_02058F64:
	ldr r0, _02058FAC ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02058F6C:
	ldr r5, _02058FB0 ; =g3DVramMan
	add r1, r6, #0x18
	ldr r0, [r5]
	bl FUN_02051858
	ldr r0, [r5]
	add r1, r6, #0x24
	bl FUN_02051858
	mov r1, r6
	mov r0, #0
	mov r2, #0x34
	bl MIi_CpuClearFast
	ldrsh r0, [r4, #0xa]
	sub r0, r0, #1
	strh r0, [r4, #0xa]
_02058FA4:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02058FAC: .word gAllocator
_02058FB0: .word g3DVramMan
	arm_func_end FUN_02058ee0

	arm_func_start FUN_02058fb4
FUN_02058fb4: ; 0x02058FB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrsh r0, [r6, #8]
	mov r5, #0
	mov r4, r5
	cmp r0, #0
	ble _02058FF4
_02058FD0:
	mov r0, r6
	add r1, r4, #1
	bl FUN_02058ee0
	cmp r0, #0
	ldrsh r0, [r6, #8]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, r0
	blt _02058FD0
_02058FF4:
	mov r0, #1
	cmp r5, #0
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02058fb4

	arm_func_start FUN_02059004
FUN_02059004: ; 0x02059004
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xc]
	mov r0, #1
	tst r1, #0x10
	ldmnefd sp!, {r3, pc}
	tst r1, #0x20
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02059004

	arm_func_start FUN_02059038
FUN_02059038: ; 0x02059038
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	add r0, r8, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r8
	mov r1, r7
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	bl FUN_02057f14
	cmp r0, #0
	beq _020590B4
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02059100
	cmp r0, #0
	bne _020590B4
	mov r0, r8
	mov r1, r7
	bl FUN_020591e8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020590B4:
	mov r0, r8
	mov r1, r4
	bl FUN_02057f64
	cmp r0, #0
	beq _020590F8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02059174
	cmp r0, #0
	bne _020590F8
	mov r0, r8
	mov r1, r7
	bl FUN_020591e8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020590F8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02059038

	arm_func_start FUN_02059100
FUN_02059100: ; 0x02059100
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xc]
	tst r0, #0x10
	bne _0205916C
	mov r0, r7
	mov r1, r4
	bl FUN_02057fb4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_02058220
_0205916C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059100

	arm_func_start FUN_02059174
FUN_02059174: ; 0x02059174
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #4
	mov r6, r2
	mov r5, r3
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xc]
	tst r0, #0x20
	bne _020591E0
	mov r0, r7
	mov r1, r4
	bl FUN_020580e8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	bl FUN_020583cc
_020591E0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059174

	arm_func_start FUN_020591e8
FUN_020591e8: ; 0x020591E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02059208
	mov r0, r5
	mov r1, r4
	bl FUN_02059248
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020591e8

	arm_func_start FUN_02059208
FUN_02059208: ; 0x02059208
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02059240 ; =g3DVramMan
	add r1, r4, #0x18
	ldr r0, [r0]
	bl FUN_02051858
	ldrh r1, [r4, #0xc]
	ldr r0, _02059244 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02059240: .word g3DVramMan
_02059244: .word 0x0000FFEF
	arm_func_end FUN_02059208

	arm_func_start FUN_02059248
FUN_02059248: ; 0x02059248
	stmfd sp!, {r4, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02059280 ; =g3DVramMan
	add r1, r4, #0x24
	ldr r0, [r0]
	bl FUN_02051858
	ldrh r1, [r4, #0xc]
	ldr r0, _02059284 ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02059280: .word g3DVramMan
_02059284: .word 0x0000FFDF
	arm_func_end FUN_02059248

	arm_func_start FUN_02059288
FUN_02059288: ; 0x02059288
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	add r0, r6, #4
	mov r5, r2
	mov r4, r3
	bl FUN_02057e9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_02058350
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_02059288

	arm_func_start FUN_020592d8
FUN_020592d8: ; 0x020592D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	add r0, r6, #4
	mov r5, r2
	mov r4, r3
	bl FUN_02057e9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldr r0, [sp, #0x24]
	str r2, [sp]
	ldr r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_02058540
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_020592d8

	arm_func_start FUN_02059328
FUN_02059328: ; 0x02059328
	stmfd sp!, {r3, lr}
	add r0, r0, #4
	bl FUN_02057e9c
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x30]
	cmp r1, #0
	ldreqb r0, [r0, #0x31]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02059328

	arm_func_start FUN_0205935c
FUN_0205935c: ; 0x0205935C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r6, r2
	mov r5, r3
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r0, [r6]
	cmp r5, #0
	strne r0, [r5]
	add r0, r7, #4
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0205940C
_020593B4: ; jump table
	b _0205940C ; case 0
	b _0205940C ; case 1
	b _020593D8 ; case 2
	b _0205940C ; case 3
	b _020593D8 ; case 4
	b _020593EC ; case 5
	b _0205940C ; case 6
	b _020593F8 ; case 7
	b _020593F8 ; case 8
_020593D8:
	ldr r0, [r4, #4]
	mov r1, #1
_020593E0:
	bl PAC_GetSize
_020593E4:
	mov r1, r0
	b _02059414
_020593EC:
	ldr r0, [r4, #4]
	mov r1, #0
	b _020593E0
_020593F8:
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x14]
	bl FUN_020515c8
	b _020593E4
_0205940C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059414:
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_020594f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205935c

	arm_func_start FUN_02059428
FUN_02059428: ; 0x02059428
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r6, r2
	mov r5, r3
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r0, [r6]
	cmp r5, #0
	strne r0, [r5]
	add r0, r7, #4
	bl FUN_02057e9c
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020594D8
_02059480: ; jump table
	b _020594D8 ; case 0
	b _020594D8 ; case 1
	b _020594D8 ; case 2
	b _020594A4 ; case 3
	b _020594B8 ; case 4
	b _020594CC ; case 5
	b _020594D8 ; case 6
	b _020594D8 ; case 7
	b _020594AC ; case 8
_020594A4:
	ldr r1, [r4, #8]
	b _020594E0
_020594AC:
	ldrb r0, [r4, #0x14]
	bl FUN_0205162c
	b _020594C4
_020594B8:
	ldr r0, [r4, #4]
	mov r1, #2
_020594C0:
	bl PAC_GetSize
_020594C4:
	mov r1, r0
	b _020594E0
_020594CC:
	ldr r0, [r4, #4]
	mov r1, #1
	b _020594C0
_020594D8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020594E0:
	mov r0, r7
	mov r2, r6
	mov r3, r5
	bl FUN_020594f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02059428

	arm_func_start FUN_020594f4
FUN_020594f4: ; 0x020594F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [sp, #0x14]
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	ble _02059518
	cmp r5, #0
	bne _02059528
_02059518:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02059528:
	mov r0, #0
	str r0, [r5]
	cmp r4, #0
	strne r0, [r4]
	add r0, sp, #0x14
	bl FUN_02041498
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	str r0, [r5]
	cmp r4, #0
	ldrne r0, [sp, #0x14]
	strne r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_020594f4

	arm_func_start FUN_02059574
FUN_02059574: ; 0x02059574
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	add r1, sp, #0
	add r0, r9, #4
	mov r7, r2
	mov r6, r3
	bl FUN_02057d2c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_020515c8
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [sp]
	mov r1, #8
	str r0, [r2, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r4, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r5
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r8, [r1, #0x12]
	ldr r1, [sp]
	strb r7, [r1, #0x13]
	ldr r1, [sp]
	strb r6, [r1, #0x14]
	ldrsh r1, [r9, #0xa]
	add r1, r1, #1
	strh r1, [r9, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02059574

	arm_func_start FUN_02059630
FUN_02059630: ; 0x02059630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r8, r1
	add r1, sp, #0
	add r0, r9, #4
	mov r7, r2
	bl FUN_02057d2c
	movs r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	ldr r1, [sp]
	mov r0, r5
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r4, #3
	mov r0, r8
	mov r1, r7
	mov r2, r4
	bl FUN_020515c8
	cmp r0, #0
	movle r0, r5
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, [sp]
	mov r1, #7
	str r0, [r2, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r5, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r6
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r8, [r1, #0x12]
	ldr r1, [sp]
	strb r7, [r1, #0x13]
	ldr r1, [sp]
	strb r4, [r1, #0x14]
	ldrsh r1, [r9, #0xa]
	add r1, r1, #1
	strh r1, [r9, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02059630

	arm_func_start FUN_020596ec
FUN_020596ec: ; 0x020596EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	add r1, sp, #0
	add r0, r7, #4
	mov r8, r2
	bl FUN_02057d2c
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
	ldr r1, [sp]
	mov r0, r4
	mov r2, #0x34
	bl MIi_CpuClearFast
	mov r0, r6
	bl FUN_0205162c
	mul r2, r8, r0
	cmp r2, #0
	addle sp, sp, #4
	movle r0, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	mov r1, #3
	str r2, [r0, #8]
	ldr r0, [sp]
	mov r3, #2
	strh r4, [r0, #0xc]
	ldr r0, [sp]
	mov r2, #1
	strb r1, [r0, #0xe]
	ldr r1, [sp]
	mov r0, r5
	strb r3, [r1, #0xf]
	ldr r1, [sp]
	strh r2, [r1, #0x10]
	ldr r1, [sp]
	strb r6, [r1, #0x14]
	ldrsh r1, [r7, #0xa]
	add r1, r1, #1
	strh r1, [r7, #0xa]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020596ec

	arm_func_start FUN_020597a0
FUN_020597a0: ; 0x020597A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	addgt r0, r0, #1
	strgt r0, [r4, #0x18]
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	ldr r5, _02059830 ; =g3DVramMan
	mov r6, #0x20
	str r7, [r4, #0xc]
	str r7, [r4, #0x10]
	strb r7, [r4, #0x14]
	strb r7, [r4, #0x15]
	str r7, [r4, #0x18]
	ldr r0, [r5]
	mov r2, r6
	add r1, r4, #0xc
	bl FUN_02051800
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r6, [sp]
	ldr r0, [r5]
	ldr r3, _02059834 ; =0x020907D4
	mov r2, r7
	add r1, r4, #0xc
	bl FUN_02051a7c
	cmp r0, #0
	ldrne r1, [r4, #0x18]
	moveq r0, r7
	addne r1, r1, #1
	movne r0, #1
	strne r1, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059830: .word g3DVramMan
_02059834: .word unk_020907D4
	arm_func_end FUN_020597a0

	arm_func_start FUN_02059838
FUN_02059838: ; 0x02059838
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	ble _0205985C
	cmp r1, #0
	beq _02059874
_0205985C:
	ldr r0, _0205987C ; =g3DVramMan
	add r1, r4, #0xc
	ldr r0, [r0]
	bl FUN_02051858
	mov r0, #0
	str r0, [r4, #0x18]
_02059874:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0205987C: .word g3DVramMan
	arm_func_end FUN_02059838

	arm_func_start FUN_02059880
FUN_02059880: ; 0x02059880
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r4, _020598E8 ; =g3DVramMan
	b _020598C4
_02059894:
	add r0, r7, #4
	add r1, r6, #1
	bl FUN_02057e9c
	movs r5, r0
	beq _020598C0
	ldr r0, [r4]
	add r1, r5, #0x18
	bl FUN_02051d3c
	ldr r0, [r4]
	add r1, r5, #0x24
	bl FUN_02051d3c
_020598C0:
	add r6, r6, #1
_020598C4:
	ldrsh r0, [r7, #8]
	cmp r6, r0
	blt _02059894
	ldr r0, _020598E8 ; =g3DVramMan
	add r1, r7, #0xc
	ldr r0, [r0]
	bl FUN_02051d3c
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020598E8: .word g3DVramMan
	arm_func_end FUN_02059880

	arm_func_start FUN_020598ec
FUN_020598ec: ; 0x020598EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r4, _02059984 ; =g3DVramMan
	b _0205993C
_02059900:
	add r0, r7, #4
	add r1, r6, #1
	bl FUN_02057e9c
	movs r5, r0
	beq _02059938
	ldr r0, [r4]
	add r1, r5, #0x18
	bl FUN_02051dc4
	ldr r0, [r4]
	add r1, r5, #0x24
	bl FUN_02051dc4
	mov r0, r7
	mov r1, r5
	bl FUN_02057ecc
_02059938:
	add r6, r6, #1
_0205993C:
	ldrsh r0, [r7, #8]
	cmp r6, r0
	blt _02059900
	ldr r4, _02059984 ; =g3DVramMan
	add r1, r7, #0xc
	ldr r0, [r4]
	bl FUN_02051dc4
	cmp r0, #0
	beq _0205997C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, _02059988 ; =0x020907D4
	add r1, r7, #0xc
	mov r2, #0
	bl FUN_02051a7c
_0205997C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059984: .word g3DVramMan
_02059988: .word unk_020907D4
	arm_func_end FUN_020598ec

	arm_func_start _ZN10C3DSprFile14getSpriteSheetEi
_ZN10C3DSprFile14getSpriteSheetEi: ; 0x0205998C
	ldr r12, _02059998 ; =FUN_02057e9c
	add r0, r0, #4
	bx r12
_02059998: .word FUN_02057e9c
	arm_func_end _ZN10C3DSprFile14getSpriteSheetEi

	arm_func_start FUN_0205999c
FUN_0205999c: ; 0x0205999C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059A70
_020599CC: ; jump table
	b _02059A70 ; case 0
	b _02059A70 ; case 1
	b _020599F0 ; case 2
	b _02059A70 ; case 3
	b _020599F0 ; case 4
	b _02059A30 ; case 5
	b _02059A70 ; case 6
	b _02059A70 ; case 7
	b _02059A70 ; case 8
_020599F0:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, #1
	bl PAC_GetSize
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #1
	bl PAC_GetPtr
	ldmfd sp!, {r4, r5, r6, pc}
_02059A30:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, r4
	bl PAC_GetSize
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #0
	bl PAC_GetPtr
	ldmfd sp!, {r4, r5, r6, pc}
_02059A70:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205999c

	arm_func_start FUN_02059a78
FUN_02059a78: ; 0x02059A78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_02059aa0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059a78

	arm_func_start FUN_02059aa0
FUN_02059aa0: ; 0x02059AA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059B84
_02059ACC: ; jump table
	b _02059B84 ; case 0
	b _02059B84 ; case 1
	b _02059B84 ; case 2
	b _02059AF0 ; case 3
	b _02059B04 ; case 4
	b _02059B44 ; case 5
	b _02059B84 ; case 6
	b _02059B84 ; case 7
	b _02059B84 ; case 8
_02059AF0:
	cmp r4, #0
	ldrne r0, [r5, #8]
	strne r0, [r4]
	ldr r0, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02059B04:
	ldrh r0, [r5, #0xc]
	tst r0, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r1, #2
	bl PAC_GetSize
	cmp r0, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	strne r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #2
	bl PAC_GetPtr
	ldmfd sp!, {r3, r4, r5, pc}
_02059B44:
	ldrh r0, [r5, #0xc]
	tst r0, #2
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r1, #1
	bl PAC_GetSize
	cmp r0, #0
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	strne r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #1
	bl PAC_GetPtr
	ldmfd sp!, {r3, r4, r5, pc}
_02059B84:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059aa0

	arm_func_start FUN_02059b8c
FUN_02059b8c: ; 0x02059B8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r0, r5, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_02059bb4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02059b8c

	arm_func_start FUN_02059bb4
FUN_02059bb4: ; 0x02059BB4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_02058e50
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xe]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02059C88
_02059BE4: ; jump table
	b _02059C88 ; case 0
	b _02059C88 ; case 1
	b _02059C08 ; case 2
	b _02059C88 ; case 3
	b _02059C08 ; case 4
	b _02059C48 ; case 5
	b _02059C88 ; case 6
	b _02059C88 ; case 7
	b _02059C88 ; case 8
_02059C08:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, r4
	bl PAC_GetSize
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #0
	bl PAC_GetPtr
	ldmfd sp!, {r4, r5, r6, pc}
_02059C48:
	ldrh r0, [r6, #0xc]
	tst r0, #2
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r1, #2
	bl PAC_GetSize
	cmp r0, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	strne r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #2
	bl PAC_GetPtr
	ldmfd sp!, {r4, r5, r6, pc}
_02059C88:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02059bb4

	arm_func_start FUN_02059c90
FUN_02059c90: ; 0x02059C90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	add r0, r6, #4
	bl FUN_02057e9c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02059c90

	arm_func_start _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_
_ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_: ; 0x02059CC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r2
	mov r4, r3
	mov r6, r0
	cmpeq r4, #0
	mov r5, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	mvnne r0, #0
	strne r0, [r7]
	cmp r4, #0
	mvnne r0, #0
	strne r0, [r4]
	mov r0, r6
	mov r1, r5
	bl FUN_02058e50
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	beq _02059D38
	ldr r0, _02059D98 ; =g3DVramMan
	mov r2, r7
	ldr r0, [r0]
	add r1, r5, #0x18
	bl FUN_02051bb8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D38:
	cmp r4, #0
	beq _02059D90
	ldrb r0, [r5, #0xe]
	cmp r0, #7
	bne _02059D70
	ldr r0, _02059D98 ; =g3DVramMan
	mov r2, r4
	ldr r0, [r0]
	add r1, r6, #0xc
	bl FUN_02051bb8
	cmp r0, #0
	bne _02059D90
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D70:
	ldr r0, _02059D98 ; =g3DVramMan
	mov r2, r4
	ldr r0, [r0]
	add r1, r5, #0x24
	bl FUN_02051bb8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D90:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02059D98: .word g3DVramMan
	arm_func_end _ZN10C3DSprFile18getResKeyAddressesEP11C3DSprSheetPmS2_

	.data
	.global unk_020907BC
unk_020907BC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_020907D4
unk_020907D4:
	.byte 0x1F, 0x7C, 0xFF, 0x7F, 0x00, 0x00, 0x1F, 0x00, 0xE0, 0x03, 0x00, 0x7C
	.byte 0xE0, 0x7F, 0x1F, 0x7C, 0xFF, 0x03, 0xB5, 0x56, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global _ZTV10C3DSprFile
_ZTV10C3DSprFile:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_020585fc
	.word FUN_0205861c

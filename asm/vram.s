
	.include "/macros/function.inc"
	.include "/include/vram.inc"

    .text
	arm_func_start FUN_02040e6c
FUN_02040e6c: ; 0x02040E6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02040E90 ; =gAllocator
	mov r1, #0x8000
	bl _ZN10CAllocator8allocateEm
	mov r1, #0
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	ldmfd sp!, {r4, pc}
_02040E90: .word gAllocator
	arm_func_end FUN_02040e6c

	arm_func_start FUN_02040e94
FUN_02040e94: ; 0x02040E94
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_02040e94

	arm_func_start FUN_02040ea0
FUN_02040ea0: ; 0x02040EA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02040F08 ; =0x020B5BB8
	mov r4, #0
	mov r7, r0
	mov r0, r4
	mov r1, r6
	mov r2, #0x24
	bl MIi_CpuClearFast
	ldr r0, _02040F0C ; =0x020B5BB8
	cmp r7, #0
	str r7, [r0, #4]
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x1c
	mul r5, r7, r0
	ldr r0, _02040F10 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r1, r0
	str r1, [r6]
	beq _02040EFC
	mov r0, r4
	mov r2, r5
	bl MIi_CpuClearFast
_02040EFC:
	mov r0, r6
	bl FUN_02040e6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02040F08: .word unk_020B5BB8
_02040F0C: .word unk_020B5BB8
_02040F10: .word gAllocator
	arm_func_end FUN_02040ea0

	arm_func_start FUN_02040f14
FUN_02040f14: ; 0x02040F14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _0204106C ; =0x020B5BB8
	mov r8, #0
	ldr r4, [r4]
	ldr r12, _02041070 ; =0x020B5BB8
	cmp r4, #0
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r1, #0
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r5, [r12, #8]
	ldrh r4, [r12, #0xa]
	ldr lr, [r12, #4]
	add r6, r2, #3
	add r2, r5, r4
	cmp r2, lr
	bic r2, r6, #3
	movge r0, r8
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r3, r3, #3
	bics r3, r3, #3
	beq _02040F94
	cmp r3, r2
	bhs _02040F94
	ldr r4, [r12, #0x1c]
	cmp r1, r4
	blo _02040F98
	sub r4, r1, r4
	cmp r4, #0x8000
	bhs _02040F98
_02040F94:
	mov r3, r2
_02040F98:
	ldr r5, [r12, #0xc]
	cmp r5, #0
	beq _02040FD4
_02040FA4:
	ldr r4, [r5, #4]
	cmp r4, r1
	ldreq r4, [r5]
	cmpeq r4, r0
	ldreq r4, [r5, #8]
	cmpeq r4, r2
	streq r8, [r5, #0x14]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _02040FA4
_02040FD4:
	mov r4, #0
	mov r9, r4
	cmp lr, #0
	ble _0204100C
	ldr r10, [r12]
	mov r5, #0x1c
_02040FEC:
	mla r7, r9, r5, r10
	ldr r6, [r7, #4]
	cmp r6, #0
	moveq r4, r7
	beq _0204100C
	add r9, r9, #1
	cmp r9, lr
	blt _02040FEC
_0204100C:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	stmia r4, {r0, r1, r2}
	str r8, [r4, #0xc]
	str r3, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r8, [r4, #0x14]
	cmp r1, #0
	str r1, [r4, #0x18]
	movne r0, #1
	strneb r0, [r1]
	ldr r0, [r12, #0xc]
	cmp r0, #0
	ldr r0, [r12, #0x10]
	streq r4, [r12, #0xc]
	cmp r0, #0
	strne r4, [r0, #0xc]
	ldrh r1, [r12, #8]
	str r4, [r12, #0x10]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r12, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0204106C: .word unk_020B5BB8
_02041070: .word unk_020B5BB8
	arm_func_end FUN_02040f14

	arm_func_start FUN_02041074
FUN_02041074: ; 0x02041074
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020411CC ; =0x020B5BB8
	mov r8, #0
	ldr r4, [r4]
	ldr r12, _020411D0 ; =0x020B5BB8
	cmp r4, #0
	moveq r0, r8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r1, #0
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r5, [r12, #8]
	ldrh r4, [r12, #0xa]
	ldr lr, [r12, #4]
	add r6, r2, #3
	add r2, r5, r4
	cmp r2, lr
	bic r2, r6, #3
	movge r0, r8
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r3, r3, #3
	bics r3, r3, #3
	beq _020410F4
	cmp r3, r2
	bhs _020410F4
	ldr r4, [r12, #0x1c]
	cmp r1, r4
	blo _020410F8
	sub r4, r1, r4
	cmp r4, #0x8000
	bhs _020410F8
_020410F4:
	mov r3, r2
_020410F8:
	ldr r5, [r12, #0x14]
	cmp r5, #0
	beq _02041134
_02041104:
	ldr r4, [r5, #4]
	cmp r4, r1
	ldreq r4, [r5]
	cmpeq r4, r0
	ldreq r4, [r5, #8]
	cmpeq r4, r2
	streq r8, [r5, #0x14]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _02041104
_02041134:
	mov r4, #0
	mov r9, r4
	cmp lr, #0
	ble _0204116C
	ldr r10, [r12]
	mov r5, #0x1c
_0204114C:
	mla r7, r9, r5, r10
	ldr r6, [r7, #4]
	cmp r6, #0
	moveq r4, r7
	beq _0204116C
	add r9, r9, #1
	cmp r9, lr
	blt _0204114C
_0204116C:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	stmia r4, {r0, r1, r2}
	str r8, [r4, #0xc]
	str r3, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r8, [r4, #0x14]
	cmp r1, #0
	str r1, [r4, #0x18]
	movne r0, #1
	strneb r0, [r1]
	ldr r0, [r12, #0x14]
	cmp r0, #0
	ldr r0, [r12, #0x18]
	streq r4, [r12, #0x14]
	cmp r0, #0
	strne r4, [r0, #0xc]
	ldrh r1, [r12, #0xa]
	str r4, [r12, #0x18]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r12, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020411CC: .word unk_020B5BB8
_020411D0: .word unk_020B5BB8
	arm_func_end FUN_02041074

	arm_func_start FUN_020411d4
FUN_020411d4: ; 0x020411D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r0, _020413B0 ; =0x020B5BB8
	mov r4, #0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020413B4 ; =0x020B5BB8
	mov r5, r4
	ldr r8, [r0, #0xc]
	str r5, [sp, #4]
	mov r6, r5
	str r5, [sp]
	mov r7, r5
	mov r11, r5
	cmp r8, #0
	beq _020412C4
	bl GX_BeginLoadTex
	cmp r8, #0
	beq _020412C0
_02041228:
	ldr r1, [r8, #0x14]
	ldr r10, [r8, #0x10]
	ldr r2, [r8, #8]
	add r0, r1, r10
	cmp r0, r2
	subhi r10, r2, r1
	ldmia r8, {r3, r12}
	add r0, r12, r1
	add r1, r3, r1
	mov r2, r10
	ldr r9, [r8, #0xc]
	bl GX_LoadTex
	ldr r0, [r8, #0x14]
	add r1, r0, r10
	str r1, [r8, #0x14]
	ldr r0, [r8, #8]
	cmp r1, r0
	blo _0204128C
	ldr r0, [r8, #0x18]
	cmp r0, #0
	strneb r4, [r0]
	str r4, [r8, #4]
	str r4, [r8, #8]
	str r4, [r8]
	b _020412B4
_0204128C:
	ldr r0, [sp, #4]
	cmp r0, #0
	add r0, r11, #1
	streq r8, [sp, #4]
	cmp r5, #0
	strne r8, [r5, #0xc]
	mov r0, r0, lsl #0x10
	mov r5, r8
	str r4, [r8, #0xc]
	mov r11, r0, lsr #0x10
_020412B4:
	mov r8, r9
	cmp r9, #0
	bne _02041228
_020412C0:
	bl GX_EndLoadTex
_020412C4:
	ldr r0, _020413B4 ; =0x020B5BB8
	ldr r8, [r0, #0x14]
	cmp r8, #0
	beq _0204137C
	bl GX_BeginLoadTexPltt
	cmp r8, #0
	beq _02041378
_020412E0:
	ldr r1, [r8, #0x14]
	ldr r10, [r8, #0x10]
	ldr r2, [r8, #8]
	add r0, r1, r10
	cmp r0, r2
	subhi r10, r2, r1
	ldmia r8, {r3, r12}
	add r0, r12, r1
	add r1, r3, r1
	mov r2, r10
	ldr r9, [r8, #0xc]
	bl GX_LoadTexPltt
	ldr r0, [r8, #0x14]
	add r1, r0, r10
	str r1, [r8, #0x14]
	ldr r0, [r8, #8]
	cmp r1, r0
	blo _02041344
	ldr r0, [r8, #0x18]
	cmp r0, #0
	strneb r4, [r0]
	str r4, [r8, #4]
	str r4, [r8, #8]
	str r4, [r8]
	b _0204136C
_02041344:
	ldr r0, [sp]
	cmp r0, #0
	add r0, r7, #1
	streq r8, [sp]
	cmp r6, #0
	strne r8, [r6, #0xc]
	mov r0, r0, lsl #0x10
	mov r6, r8
	str r4, [r8, #0xc]
	mov r7, r0, lsr #0x10
_0204136C:
	mov r8, r9
	cmp r9, #0
	bne _020412E0
_02041378:
	bl GX_EndLoadTexPltt
_0204137C:
	ldr r0, _020413B4 ; =0x020B5BB8
	ldr r2, [sp, #4]
	mov r1, r0
	str r2, [r1, #0xc]
	ldr r2, [sp]
	str r5, [r1, #0x10]
	str r2, [r1, #0x14]
	str r6, [r1, #0x18]
	strh r11, [r1, #8]
	strh r7, [r1, #0xa]
	bl FUN_02040e94
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020413B0: .word unk_020B5BB8
_020413B4: .word unk_020B5BB8
	arm_func_end FUN_020411d4

	arm_func_start FUN_020413b8
FUN_020413b8: ; 0x020413B8
	ldr r0, _02041424 ; =0x020B5BB8
	ldr r3, _02041428 ; =0x020B5BB8
	ldr r0, [r0]
	cmp r0, #0
	mov r0, #0
	bxeq lr
	ldr r12, [r3, #0xc]
	cmp r12, #0
	beq _020413F8
_020413DC:
	ldr r2, [r12, #8]
	ldr r1, [r12, #0x14]
	ldr r12, [r12, #0xc]
	sub r1, r2, r1
	cmp r12, #0
	add r0, r0, r1
	bne _020413DC
_020413F8:
	ldr r3, [r3, #0x14]
	cmp r3, #0
	bxeq lr
_02041404:
	ldr r2, [r3, #8]
	ldr r1, [r3, #0x14]
	ldr r3, [r3, #0xc]
	sub r1, r2, r1
	cmp r3, #0
	add r0, r0, r1
	bne _02041404
	bx lr
_02041424: .word unk_020B5BB8
_02041428: .word unk_020B5BB8
	arm_func_end FUN_020413b8

	arm_func_start FUN_0204142c
FUN_0204142c: ; 0x0204142C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02041490 ; =0x020B5BB8
	ldr r4, _02041494 ; =0x020B5BB8
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #4]
	mov r0, #0x1c
	mul r5, r1, r0
	mov r0, #0
	ldr r1, [r4]
	mov r2, r5
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	bl MIi_CpuClearFast
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	mov r0, r4
	bl FUN_02040e94
	ldmfd sp!, {r3, r4, r5, pc}
_02041490: .word unk_020B5BB8
_02041494: .word unk_020B5BB8
	arm_func_end FUN_0204142c

	arm_func_start FUN_02041498
FUN_02041498: ; 0x02041498
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020414F4 ; =0x020B5BB8
	ldr r12, _020414F8 ; =0x020B5BB8
	ldr r1, [r1, #0x1c]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	add r1, r1, #0x1f
	bic r2, r1, #0x1f
	str r2, [r0]
	ldr r5, [r12, #0x20]
	rsb r0, r5, #0x8000
	cmp r2, r0
	mov r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r4, [r12, #0x1c]
	add r3, r5, r2
	add r1, r4, r5
	str r3, [r12, #0x20]
	bl MIi_CpuClearFast
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020414F4: .word unk_020B5BB8
_020414F8: .word unk_020B5BB8
	arm_func_end FUN_02041498

	arm_func_start FUN_020414fc
FUN_020414fc: ; 0x020414FC
	ldr r1, _02041510 ; =0x020B5BDC
	ldr r12, _02041514 ; =MIi_CpuClearFast
	mov r0, #0
	mov r2, #0x1c
	bx r12
_02041510: .word unk_020B5BDC
_02041514: .word MIi_CpuClearFast
	arm_func_end FUN_020414fc

	arm_func_start FUN_02041518
FUN_02041518: ; 0x02041518
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	bl FUN_02041618
	mul r5, r6, r7
	ldr r8, _02041608 ; =gAllocator
	mov r1, r5
	mov r0, r8
	mov r9, #0
	bl _ZN10CAllocator8allocateEm
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0204160C ; =g3DVramMan
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, r5
	str r9, [sp]
	str r9, [sp, #4]
	strb r9, [sp, #8]
	strb r9, [sp, #9]
	bl FUN_020517ac
	cmp r0, #0
	bne _02041598
	mov r0, r8
	mov r1, r4
	bl _ZN10CAllocator10deallocateEPv
	add sp, sp, #0xc
	mov r0, r9
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02041598:
	ldr r1, _02041610 ; =0x020B5BDC
	mov r0, r9
	mov r2, #0x1c
	bl MIi_CpuClearFast
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r0, [sp]
	ldr r1, _02041614 ; =0x020B5BDC
	ldr r2, [sp, #4]
	str r0, [r1]
	ldrb r0, [sp, #8]
	str r2, [r1, #4]
	ldrb r2, [sp, #9]
	strb r0, [r1, #8]
	ldrb r0, [sp, #0xa]
	strb r2, [r1, #9]
	ldrb r2, [sp, #0xb]
	strb r0, [r1, #0xa]
	mov r0, #1
	strb r2, [r1, #0xb]
	str r4, [r1, #0xc]
	str r5, [r1, #0x10]
	str r7, [r1, #0x14]
	str r6, [r1, #0x18]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_02041608: .word gAllocator
_0204160C: .word g3DVramMan
_02041610: .word unk_020B5BDC
_02041614: .word unk_020B5BDC
	arm_func_end FUN_02041518

	arm_func_start FUN_02041618
FUN_02041618: ; 0x02041618
	stmfd sp!, {r3, lr}
	ldr r0, _02041658 ; =g3DVramMan
	ldr r1, _0204165C ; =0x020B5BDC
	ldr r0, [r0]
	bl FUN_02051858
	ldr r0, _02041660 ; =0x020B5BDC
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _02041644
	ldr r0, _02041664 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02041644:
	ldr r1, _0204165C ; =0x020B5BDC
	mov r0, #0
	mov r2, #0x1c
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, pc}
_02041658: .word g3DVramMan
_0204165C: .word unk_020B5BDC
_02041660: .word unk_020B5BDC
_02041664: .word gAllocator
	arm_func_end FUN_02041618

	arm_func_start FUN_02041668
FUN_02041668: ; 0x02041668
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _020416C8 ; =0x020B5BDC
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ldrne r0, [r1]
	cmpne r0, #0
	addle sp, sp, #0xc
	ldmleia sp!, {pc}
	ldrb r0, [r1, #9]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	ldr r0, [r1, #0x10]
	mov r2, #0
	stmia sp, {r0, r2}
	str r2, [sp, #8]
	ldr r0, _020416CC ; =g3DVramMan
	ldr r3, [r1, #0xc]
	ldr r0, [r0]
	ldr r1, _020416D0 ; =0x020B5BDC
	bl FUN_020519e4
	add sp, sp, #0xc
	ldmia sp!, {pc}
_020416C8: .word unk_020B5BDC
_020416CC: .word g3DVramMan
_020416D0: .word unk_020B5BDC
	arm_func_end FUN_02041668

	arm_func_start FUN_020416d4
FUN_020416d4: ; 0x020416D4
	cmp r0, #0
	blt _020416EC
	ldr r1, _02041704 ; =0x020B5BDC
	ldr r2, [r1, #0x14]
	cmp r0, r2
	blt _020416F4
_020416EC:
	mov r0, #0
	bx lr
_020416F4:
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x18]
	mla r0, r1, r0, r2
	bx lr
_02041704: .word unk_020B5BDC
	arm_func_end FUN_020416d4

	arm_func_start FUN_02041708
FUN_02041708: ; 0x02041708
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	bmi _02041724
	ldr r4, _02041754 ; =0x020B5BDC
	ldr r0, [r4, #0x14]
	cmp r5, r0
	blt _0204172C
_02041724:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0204172C:
	ldr r0, _02041758 ; =g3DVramMan
	ldr r1, _0204175C ; =0x020B5BDC
	ldr r0, [r0]
	add r2, sp, #0
	bl FUN_02051bb8
	ldr r0, [sp]
	cmn r0, #1
	ldrne r1, [r4, #0x18]
	mlane r0, r1, r5, r0
	ldmfd sp!, {r3, r4, r5, pc}
_02041754: .word unk_020B5BDC
_02041758: .word g3DVramMan
_0204175C: .word unk_020B5BDC
	arm_func_end FUN_02041708

	arm_func_start FUN_02041760
FUN_02041760: ; 0x02041760
	ldr r0, _02041774 ; =g3DVramMan
	ldr r1, _02041778 ; =0x020B5BDC
	ldr r0, [r0]
	ldr r12, _0204177C ; =FUN_02051d3c
	bx r12
_02041774: .word g3DVramMan
_02041778: .word unk_020B5BDC
_0204177C: .word FUN_02051d3c
	arm_func_end FUN_02041760

	arm_func_start FUN_02041780
FUN_02041780: ; 0x02041780
	ldr r0, _02041794 ; =g3DVramMan
	ldr r1, _02041798 ; =0x020B5BDC
	ldr r0, [r0]
	ldr r12, _0204179C ; =FUN_02051dc4
	bx r12
_02041794: .word g3DVramMan
_02041798: .word unk_020B5BDC
_0204179C: .word FUN_02051dc4
	arm_func_end FUN_02041780

	.data
	.global unk_0208FF44
unk_0208FF44:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global unk_020B5BB8
unk_020B5BB8:
	.space 0x24
	.global unk_020B5BDC
unk_020B5BDC:
	.space 0x1C


	.include "/macros/function.inc"
	.include "/include/3dgamechar.inc"

    .text
	arm_func_start _ZN11C3DGameChar5resetEv
_ZN11C3DGameChar5resetEv: ; 0x02059FCC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x18
	mov r2, #0x78
	str r4, [r5, #0xc]
	str r4, [r5, #8]
	str r4, [r5, #0x10]
	str r4, [r5, #4]
	bl MIi_CpuClearFast
	str r4, [r5, #0x90]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN11C3DGameChar5resetEv

	arm_func_start FUN_0205a000
FUN_0205a000: ; 0x0205A000
	ldr r3, [r0, #0xc]
	cmp r1, #0
	movne r2, #0
	strne r2, [r1]
	ldr r12, [r0, #4]
	mov r2, #0
	cmp r12, #0
	ble _0205A04C
_0205A020:
	ldr r0, [r3, #8]
	tst r0, #1
	bne _0205A03C
	cmp r1, #0
	strne r3, [r1]
	add r0, r2, #1
	bx lr
_0205A03C:
	add r2, r2, #1
	cmp r2, r12
	add r3, r3, #0x1c
	blt _0205A020
_0205A04C:
	mov r0, #0
	bx lr
	arm_func_end FUN_0205a000

	arm_func_start FUN_0205a054
FUN_0205a054: ; 0x0205A054
	stmfd sp!, {r4, lr}
	ldr lr, [r0, #0xc]
	cmp r3, #0
	movne r12, #0
	strne r12, [r3]
	ldr r4, [r0, #4]
	mov r12, #0
	cmp r4, #0
	ble _0205A0B8
_0205A078:
	ldr r0, [lr, #8]
	tst r0, #1
	beq _0205A0A8
	ldr r0, [lr]
	cmp r0, r1
	ldreq r0, [lr, #4]
	cmpeq r0, r2
	bne _0205A0A8
	cmp r3, #0
	strne lr, [r3]
	add r0, r12, #1
	ldmfd sp!, {r4, pc}
_0205A0A8:
	add r12, r12, #1
	cmp r12, r4
	add lr, lr, #0x1c
	blt _0205A078
_0205A0B8:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a054

	arm_func_start FUN_0205a0c0
FUN_0205a0c0: ; 0x0205A0C0
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0205A0DC
	bl FUN_ov16_020fb7ac
_0205A0DC:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _0205A0F4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_0205A0F4:
	ldr r1, [r6, #0x18]
	cmp r1, #0
	beq _0205A10C
	ldr r0, _0205A130 ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_0205A10C:
	mov r0, r6
	mov r1, #0
	mov r2, #0x1c
	ldr r5, [r6, #0x14]
	ldr r4, [r6, #0x10]
	bl MI_CpuFill8
	str r4, [r6, #0x10]
	str r5, [r6, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
_0205A130: .word gNsbResourceMan
	arm_func_end FUN_0205a0c0

	arm_func_start FUN_0205a134
FUN_0205a134: ; 0x0205A134
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #8]
	tst r0, #1
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xd]
	cmp r0, #3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	bl FUN_ov16_020fba10
	movs r4, r0
	beq _0205A19C
	cmp r4, #1
	moveq r1, #1
	streqb r1, [r5, #0xd]
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_0205a0c0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0205A19C:
	mov r0, #2
	strb r0, [r5, #0xd]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205a134

	arm_func_start FUN_0205a1ac
FUN_0205a1ac: ; 0x0205A1AC
	ldr r0, [r1, #0x10]
	ldr r12, _0205A1B8 ; =FUN_ov16_020fbcdc
	bx r12
_0205A1B8: .word FUN_ov16_020fbcdc
	arm_func_end FUN_0205a1ac

	arm_func_start _ZN11C3DGameChar4initEi
_ZN11C3DGameChar4initEi: ; 0x0205A1BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	bl _ZN11C3DGameChar5resetEv
	mov r4, #8
	ldr r5, _0205A2D8 ; =FUN_0205a460
	str r9, [r10, #4]
	ldr r3, _0205A2DC ; =FUN_0205a324
	ldr r1, _0205A2E0 ; =0x000009A4
	mov r0, r9
	mov r2, r4
	str r5, [sp]
	bl __cxa_vec_new
	str r0, [r10, #8]
	ldr r0, _0205A2E4 ; =FUN_020525e8
	ldr r3, _0205A2E8 ; =FUN_0205a2f0
	str r0, [sp]
	mov r2, r4
	mov r0, r9
	mov r1, #0x114
	bl __cxa_vec_new
	mov r1, #0x1c
	str r0, [r10, #0x10]
	mul r1, r9, r1
	ldr r0, _0205A2EC ; =gAllocator
	bl _ZN9Allocator8allocateEm
	ldr r1, [r10, #8]
	str r0, [r10, #0xc]
	cmp r1, #0
	ldrne r1, [r10, #0x10]
	cmpne r1, #0
	cmpne r0, #0
	bne _0205A250
	mov r0, r10
	bl FUN_0205a504
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205A250:
	cmp r9, #0
	mov r5, #0
	ble _0205A2C8
	mov r11, #0x114
	mov r4, #0x1c
_0205A264:
	ldr r0, _0205A2E0 ; =0x000009A4
	mul r6, r5, r0
	ldr r0, [r10, #8]
	add r0, r0, r6
	bl FUN_ov16_020fb448
	mul r7, r5, r11
	ldr r0, [r10, #0x10]
	ldr r1, [r0, r7]!
	ldr r1, [r1, #8]
	blx r1
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #8]
	add r8, r1, r7
	add r7, r0, r6
	ldr r0, [r10, #0xc]
	mov r1, #0
	mla r6, r5, r4, r0
	mov r0, r6
	mov r2, #0x1c
	bl MI_CpuFill8
	str r7, [r6, #0x10]
	add r5, r5, #1
	str r8, [r6, #0x14]
	cmp r5, r9
	blt _0205A264
_0205A2C8:
	mov r0, #0
	strb r0, [r10, #0x14]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205A2D8: .word FUN_0205a460
_0205A2DC: .word FUN_0205a324
_0205A2E0: .word 0x000009A4
_0205A2E4: .word FUN_020525e8
_0205A2E8: .word FUN_0205a2f0
_0205A2EC: .word gAllocator
	arm_func_end _ZN11C3DGameChar4initEi

	arm_func_start FUN_0205a2f0
FUN_0205a2f0: ; 0x0205A2F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _0205A320 ; =0x02118880
	add r0, r4, #0xc
	str r1, [r4]
	bl _ZN16CSceneScriptDataC1Ev
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205A320: .word ov16_02118880
	arm_func_end FUN_0205a2f0

	arm_func_start FUN_0205a324
FUN_0205a324: ; 0x0205A324
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _0205A3D4 ; =FUN_020527d4
	ldr r3, _0205A3D8 ; =FUN_0205a3f0
	mov r1, #4
	mov r2, #0x1bc
	mov r4, r0
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _0205A3DC ; =FUN_020527ac
	ldr r3, _0205A3E0 ; =FUN_02052780
	add r0, r4, #0x6f0
	mov r1, #1
	mov r2, #0x30
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _0205A3E4 ; =FUN_02052760
	ldr r3, _0205A3E8 ; =FUN_02052740
	add r0, r4, #0x720
	mov r1, #2
	mov r2, #0x14
	str r5, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x348
	add r6, r0, #0x400
	ldr r5, _0205A3EC ; =0x02118880
	add r0, r6, #0xc
	str r5, [r4, #0x748]
	bl _ZN16CSceneScriptDataC1Ev
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r5, [r4, #0x860]
	add r5, r4, #0x860
	add r0, r5, #0xc
	bl _ZN16CSceneScriptDataC1Ev
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0205A3D4: .word FUN_020527d4
_0205A3D8: .word FUN_0205a3f0
_0205A3DC: .word FUN_020527ac
_0205A3E0: .word FUN_02052780
_0205A3E4: .word FUN_02052760
_0205A3E8: .word FUN_02052740
_0205A3EC: .word ov16_02118880
	arm_func_end FUN_0205a324

	arm_func_start FUN_0205a3f0
FUN_0205a3f0: ; 0x0205A3F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0205A44C ; =0x02118854
	mov r5, r0
	mov r4, #5
	ldr r12, _0205A450 ; =FUN_02052760
	str r1, [r5]
	ldr r3, _0205A454 ; =FUN_02052740
	mov r1, r4
	add r0, r5, #0x4c
	mov r2, #0x14
	str r12, [sp]
	bl __cxa_vec_ctor
	ldr r12, _0205A458 ; =FUN_020527ac
	ldr r3, _0205A45C ; =FUN_02052780
	mov r1, r4
	add r0, r5, #0xb0
	mov r2, #0x30
	str r12, [sp]
	bl __cxa_vec_ctor
	add r0, r5, #0x1a0
	bl FUN_ov16_021110fc
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_0205A44C: .word _ZTV6CModel+0x8
_0205A450: .word FUN_02052760
_0205A454: .word FUN_02052740
_0205A458: .word FUN_020527ac
_0205A45C: .word FUN_02052780
	arm_func_end FUN_0205a3f0

	arm_func_start FUN_0205a460
FUN_0205a460: ; 0x0205A460
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, _0205A4F4 ; =0x02118880
	add r5, r6, #0x860
	mov r0, r5
	str r4, [r6, #0x860]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0xc
	bl _ZN16CSceneScriptDataD1Ev
	add r0, r6, #0x348
	add r5, r0, #0x400
	mov r0, r5
	str r4, [r6, #0x748]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0xc
	bl _ZN16CSceneScriptDataD1Ev
	add r0, r6, #0x720
	mov r1, #2
	mov r2, #0x14
	ldr r3, _0205A4F8 ; =FUN_02052760
	bl __cxa_vec_cleanup
	add r0, r6, #0x6f0
	mov r1, #1
	mov r2, #0x30
	ldr r3, _0205A4FC ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r0, r6
	mov r1, #4
	mov r2, #0x1bc
	ldr r3, _0205A500 ; =FUN_020527d4
	bl __cxa_vec_cleanup
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_0205A4F4: .word ov16_02118880
_0205A4F8: .word FUN_02052760
_0205A4FC: .word FUN_020527ac
_0205A500: .word FUN_020527d4
	arm_func_end FUN_0205a460

	arm_func_start FUN_0205a504
FUN_0205a504: ; 0x0205A504
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_0205aac0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0205A524
	ldr r0, _0205A5D8 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_0205A524:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0205A57C
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0205A568
	mov r5, #0x114
_0205A544:
	ldr r0, [r4, #0x10]
	mla r0, r6, r5, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0205A544
_0205A568:
	ldr r0, [r4, #0x10]
	ldr r3, _0205A5DC ; =FUN_020525e8
	mov r1, #0x114
	mov r2, #8
	bl __cxa_vec_delete
_0205A57C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205A5CC
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0205A5B8
	ldr r5, _0205A5E0 ; =0x000009A4
_0205A59C:
	ldr r0, [r4, #8]
	mla r0, r6, r5, r0
	bl FUN_ov16_020fb4f8
	ldr r0, [r4, #4]
	add r6, r6, #1
	cmp r6, r0
	blt _0205A59C
_0205A5B8:
	ldr r0, [r4, #8]
	ldr r1, _0205A5E0 ; =0x000009A4
	ldr r3, _0205A5E4 ; =FUN_0205a460
	mov r2, #8
	bl __cxa_vec_delete
_0205A5CC:
	mov r0, r4
	bl _ZN11C3DGameChar5resetEv
	ldmfd sp!, {r4, r5, r6, pc}
_0205A5D8: .word gAllocator
_0205A5DC: .word FUN_020525e8
_0205A5E0: .word 0x000009A4
_0205A5E4: .word FUN_0205a460
	arm_func_end FUN_0205a504

	arm_func_start FUN_0205a5e8
FUN_0205a5e8: ; 0x0205A5E8
	strb r1, [r0, #0x14]
	mov r0, #1
	bx lr
	arm_func_end FUN_0205a5e8

	arm_func_start FUN_0205a5f4
FUN_0205a5f4: ; 0x0205A5F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0205aac0
	mov r0, r4
	bl FUN_0205b398
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a5f4

	arm_func_start FUN_0205a60c
FUN_0205a60c: ; 0x0205A60C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r8, r1
	cmp r0, #1
	blt _0205A630
	ldr r0, [r9, #0xc]
	cmp r0, #0
	bne _0205A638
_0205A630:
	mov r7, #0
	b _0205A640
_0205A638:
	add r0, r0, #0x1c
	sub r7, r0, #0x1c
_0205A640:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0205A738 ; =g3DDevice
	mov r6, #0
	ldr r0, [r0]
	mov r5, r6
	ldrb r0, [r0, #4]
	mov r4, #3
	cmp r0, #0
	movne r8, #0
	b _0205A728
_0205A66C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	ldrne r0, [r7, #0x14]
	cmpne r0, #0
	beq _0205A720
	ldr r1, [r7, #8]
	tst r1, #1
	beq _0205A720
	ldrb r0, [r7, #0xd]
	cmp r0, #1
	beq _0205A6AC
	cmp r0, #2
	beq _0205A6BC
	cmp r0, #3
	beq _0205A708
	b _0205A720
_0205A6AC:
	mov r0, r9
	mov r1, r7
	bl FUN_0205a134
	b _0205A720
_0205A6BC:
	tst r1, #2
	bne _0205A720
	mov r0, r9
	mov r1, r7
	bl FUN_0205a1ac
	cmp r0, #0
	bne _0205A6E8
	mov r0, r9
	mov r1, r7
	bl FUN_0205a0c0
	b _0205A720
_0205A6E8:
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_020efa9c
	mov r1, r0
	ldrb r2, [r7, #0xf]
	ldr r0, [r7, #0x10]
	bl FUN_ov16_020fc288
	strb r4, [r7, #0xd]
_0205A708:
	ldr r0, [r7, #8]
	tst r0, #0x100
	beq _0205A720
	ldr r0, [r7, #0x10]
	mov r1, r8
	bl FUN_ov16_020fb504
_0205A720:
	add r6, r6, #1
	add r7, r7, #0x1c
_0205A728:
	ldr r0, [r9, #4]
	cmp r6, r0
	blt _0205A66C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205A738: .word g3DDevice
	arm_func_end FUN_0205a60c

	arm_func_start FUN_0205a73c
FUN_0205a73c: ; 0x0205A73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r0, [r8, #4]
	mov r7, r1
	cmp r0, #1
	blt _0205A760
	ldr r6, [r8, #0xc]
	cmp r6, #0
	bne _0205A764
_0205A760:
	mov r6, #0
_0205A764:
	cmp r6, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #0
	mov r5, r4
	cmp r0, #0
	ble _0205A7EC
	ldr r9, _0205A824 ; =0x00000101
_0205A780:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0205A7D8
	ldr r1, [r6, #8]
	and r1, r1, r9
	cmp r1, r9
	ldreqb r1, [r6, #0xd]
	cmpeq r1, #3
	bne _0205A7D8
	cmp r7, #0
	beq _0205A7B8
	ldrb r1, [r6, #0xe]
	cmp r1, #0
	beq _0205A7D8
_0205A7B8:
	cmp r7, #0
	bne _0205A7CC
	ldrb r1, [r6, #0xe]
	cmp r1, #0
	bne _0205A7D8
_0205A7CC:
	bl FUN_ov16_020fb564
	cmp r0, #0
	addne r4, r4, #1
_0205A7D8:
	ldr r0, [r8, #4]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, #0x1c
	blt _0205A780
_0205A7EC:
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r3, #3
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r2, r1
	mov r0, #0x15
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205A824: .word 0x00000101
	arm_func_end FUN_0205a73c

	arm_func_start FUN_0205a828
FUN_0205a828: ; 0x0205A828
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r0, r1
	mov r1, #0
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_020efa9c
	ldrb r2, [sp, #0x20]
	mov r1, r0
	ldrb r0, [sp, #0x24]
	str r2, [sp]
	ldrb r12, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #8]
	bl FUN_0205a87c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_0205a828

	arm_func_start FUN_0205a87c
FUN_0205a87c: ; 0x0205A87C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r10, #0
	movs r8, r1
	mov r4, r0
	str r10, [sp, #0xc]
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x10
	subeq r0, r10, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_0205b340
	cmp r0, #0
	addne sp, sp, #0x10
	subne r0, r10, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	bl FUN_0206cbf8
	add r9, sp, #0xc
	mov r1, r0
	mov r0, r4
	mov r2, r7
	mov r3, r9
	bl FUN_0205a054
	mov r5, r0
	cmp r5, #0
	bgt _0205A908
	mov r0, r4
	mov r1, r9
	bl FUN_0205a000
	mov r5, r0
	cmp r5, #0
	addle sp, sp, #0x10
	suble r0, r10, #1
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A908:
	ldrb r1, [sp, #0x34]
	add r0, r4, #0x18
	str r0, [sp]
	ldrb r0, [sp, #0x38]
	str r1, [sp, #4]
	mov r1, r8
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrb r3, [r4, #0x14]
	ldr r0, [r0, #0x10]
	mov r2, r6
	bl FUN_ov16_020fbf60
	cmp r0, #0
	bne _0205A958
	ldr r1, [sp, #0xc]
	mov r0, r4
	bl FUN_0205a0c0
	add sp, sp, #0x10
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A958:
	ldr r0, _0205A9F4 ; =0x0208F6F0
	ldr r2, [sp, #0xc]
	ldr r1, [r0, #0x14]
	ldr r0, [r2, #0x10]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fbe94
	ldr r0, [sp, #0xc]
	mov r4, #1
	ldr r0, [r0, #0x10]
	mov r3, r4
	mov r1, #0x7000
	mov r2, #8
	bl FUN_ov16_020fbee8
	mov r0, r8
	bl FUN_0206cbf8
	ldr r2, [sp, #0xc]
	ldrb r1, [sp, #0x30]
	str r0, [r2]
	ldr r0, [sp, #0xc]
	cmp r1, #0
	str r7, [r0, #4]
	ldr r0, [sp, #0xc]
	ldrb r2, [sp, #0x34]
	str r4, [r0, #8]
	ldreq r1, [sp, #0xc]
	ldreq r0, [r1, #8]
	orreq r0, r0, #2
	streq r0, [r1, #8]
	ldr r0, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #0xd]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, r5
	strb r2, [r1, #0xf]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205A9F4: .word unk_0208F6F0
	arm_func_end FUN_0205a87c

	arm_func_start FUN_0205a9f8
FUN_0205a9f8: ; 0x0205A9F8
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ble _0205AA1C
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AA1C
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AA24
_0205AA1C:
	mov r4, #0
	b _0205AA30
_0205AA24:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r4, r2, #0x1c
_0205AA30:
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #8]
	bic r1, r1, #2
	str r1, [r4, #8]
	ldrb r1, [r4, #0xd]
	cmp r1, #3
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	mov r1, r4
	bl FUN_0205a134
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205a9f8

	arm_func_start FUN_0205aa80
FUN_0205aa80: ; 0x0205AA80
	cmp r1, #0
	ble _0205AAA0
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AAA0
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AAA8
_0205AAA0:
	mov r1, #0
	b _0205AAB4
_0205AAA8:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r1, r2, #0x1c
_0205AAB4:
	ldr r12, _0205AABC ; =FUN_0205a0c0
	bx r12
_0205AABC: .word FUN_0205a0c0
	arm_func_end FUN_0205aa80

	arm_func_start FUN_0205aac0
FUN_0205aac0: ; 0x0205AAC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r6, #0
	ldr r5, _0205AB60 ; =gNsbResourceMan
	ldr r4, _0205AB64 ; =0x000009A4
	mov r11, #0x114
	b _0205AB50
_0205AADC:
	ldr r2, [r10, #0xc]
	mov r1, #0x1c
	mla r1, r6, r1, r2
	ldr r0, [r5]
	ldr r1, [r1, #0x18]
	bl FUN_ov16_020fd350
	ldr r1, [r10, #0xc]
	mov r0, #0x1c
	mla r7, r6, r0, r1
	ldr r1, [r10, #8]
	ldr r2, [r10, #0x10]
	mov r0, #0x114
	mla r9, r6, r0, r2
	mla r8, r6, r4, r1
	mov r0, r7
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	str r8, [r7, #0x10]
	str r9, [r7, #0x14]
	ldr r0, [r10, #0x10]
	mla r0, r6, r11, r0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r10, #8]
	mla r0, r6, r4, r0
	bl FUN_ov16_020fb4f8
	add r6, r6, #1
_0205AB50:
	ldr r0, [r10, #4]
	cmp r6, r0
	blt _0205AADC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205AB60: .word gNsbResourceMan
_0205AB64: .word 0x000009A4
	arm_func_end FUN_0205aac0

	arm_func_start FUN_0205ab68
FUN_0205ab68: ; 0x0205AB68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10c
	mov r10, r0
	mov r9, r2
	cmp r1, #0
	ble _0205AB98
	ldr r0, [r10, #4]
	cmp r1, r0
	bgt _0205AB98
	ldr r2, [r10, #0xc]
	cmp r2, #0
	bne _0205ABA0
_0205AB98:
	mov r8, #0
	b _0205ABAC
_0205ABA0:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r8, r0, #0x1c
_0205ABAC:
	mov r0, r10
	bl FUN_0205b340
	cmp r0, #0
	addne sp, sp, #0x10c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r8, #0
	beq _0205ABD8
	ldr r0, [r8, #8]
	tst r0, #1
	bne _0205ABE4
_0205ABD8:
	add sp, sp, #0x10c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0205ABE4:
	mov r7, #0
	ldr r0, [r8]
	mov r1, r7
	bl FUN_ov16_020efa9c
	add r5, sp, #0xc
	add r4, sp, #0x8c
	mov r1, r9
	mov r2, r5
	mov r3, r4
	mov r6, r0
	bl _ZN7Archive22GetCharacterMotionPathEP4UnitiPcS2_
	add r0, sp, #4
	str r0, [sp]
	ldrb r1, [r6, #0x5c]
	ldr r0, [r10, #0x84]
	mov r2, r9
	add r3, sp, #8
	bl _ZN7Archive31GetCharacterMotionSizeAndOffsetEPviiPlPm
	cmp r0, #0
	addeq sp, sp, #0x10c
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #4]
	mov r1, r5
	str r0, [sp]
	ldr r0, [r8, #0x10]
	ldr r3, [sp, #8]
	mov r2, r4
	bl FUN_ov16_020fb94c
	cmp r0, #0
	moveq r0, r7
	movne r0, #1
	strneb r0, [r8, #0xd]
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0205ab68

	arm_func_start FUN_0205ac70
FUN_0205ac70: ; 0x0205AC70
	cmp r1, #0
	ble _0205AC90
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AC90
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AC98
_0205AC90:
	mov r1, #0
	b _0205ACA4
_0205AC98:
	mov r2, #0x1c
	mla r2, r1, r2, r3
	sub r1, r2, #0x1c
_0205ACA4:
	ldr r12, _0205ACAC ; =FUN_0205a134
	bx r12
_0205ACAC: .word FUN_0205a134
	arm_func_end FUN_0205ac70

	arm_func_start FUN_0205acb0
FUN_0205acb0: ; 0x0205ACB0
	cmp r1, #0
	ble _0205ACD0
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205ACD0
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205ACD8
_0205ACD0:
	mov r1, #0
	b _0205ACE4
_0205ACD8:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r1, r0, #0x1c
_0205ACE4:
	cmp r1, #0
	bxeq lr
	ldr r0, [r1, #8]
	tst r0, #1
	bxeq lr
	cmp r2, #0
	orrne r0, r0, #0x100
	strne r0, [r1, #8]
	biceq r0, r0, #0x100
	streq r0, [r1, #8]
	bx lr
	arm_func_end FUN_0205acb0

	arm_func_start FUN_0205ad10
FUN_0205ad10: ; 0x0205AD10
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AD34
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AD34
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205AD3C
_0205AD34:
	mov r0, #0
	b _0205AD48
_0205AD3C:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205AD48:
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ad10

	arm_func_start FUN_0205ad60
FUN_0205ad60: ; 0x0205AD60
	cmp r1, #0
	ble _0205AD80
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205AD80
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205AD88
_0205AD80:
	mov r0, #0
	b _0205AD94
_0205AD88:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205AD94:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	moveq r0, #0
	bx lr
	arm_func_end FUN_0205ad60

	arm_func_start FUN_0205ada4
FUN_0205ada4: ; 0x0205ADA4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205ADC8
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205ADC8
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205ADD0
_0205ADC8:
	mov r0, #0
	b _0205ADDC
_0205ADD0:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205ADDC:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf0c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ada4

	arm_func_start FUN_0205adf8
FUN_0205adf8: ; 0x0205ADF8
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AE1C
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205AE1C
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AE24
_0205AE1C:
	mov r0, #0
	b _0205AE30
_0205AE24:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205AE30:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf30 ; may be ov17 ; ov16(Mica)
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205adf8

	arm_func_start FUN_0205ae4c
FUN_0205ae4c: ; 0x0205AE4C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AE70
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205AE70
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205AE78
_0205AE70:
	mov r0, #0
	b _0205AE84
_0205AE78:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r0, r0, #0x1c
_0205AE84:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	bl FUN_ov16_020fbf3c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205ae4c

	arm_func_start FUN_0205aea0
FUN_0205aea0: ; 0x0205AEA0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AEC4
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AEC4
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AECC
_0205AEC4:
	mov r0, #0
	b _0205AED8
_0205AECC:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AED8:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe5c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205aea0

	arm_func_start FUN_0205aefc
FUN_0205aefc: ; 0x0205AEFC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AF20
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AF20
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AF28
_0205AF20:
	mov r0, #0
	b _0205AF34
_0205AF28:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AF34:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe6c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205aefc

	arm_func_start FUN_0205af58
FUN_0205af58: ; 0x0205AF58
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205AF7C
	ldr r12, [r0, #4]
	cmp r1, r12
	bgt _0205AF7C
	ldr r12, [r0, #0xc]
	cmp r12, #0
	bne _0205AF84
_0205AF7C:
	mov r0, #0
	b _0205AF90
_0205AF84:
	mov r0, #0x1c
	mla r0, r1, r0, r12
	sub r0, r0, #0x1c
_0205AF90:
	cmp r0, #0
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov16_020fbe94
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205af58

	arm_func_start FUN_0205afb4
FUN_0205afb4: ; 0x0205AFB4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r12, sp, #0xc
	mov r3, #0
	mov r4, r0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r2, #0
	ble _0205AFF4
	ldr r0, [r1, #4]
	cmp r2, r0
	bgt _0205AFF4
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0205AFFC
_0205AFF4:
	mov r0, #0
	b _0205B008
_0205AFFC:
	mov r0, #0x1c
	mla r0, r2, r0, r1
	sub r0, r0, #0x1c
_0205B008:
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	beq _0205B038
	add r0, sp, #0
	bl FUN_ov16_020fbea4
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205B038:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205afb4

	arm_func_start FUN_0205b04c
FUN_0205b04c: ; 0x0205B04C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r12, sp, #0xc
	mov r3, #0
	mov r4, r0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r2, #0
	ble _0205B08C
	ldr r0, [r1, #4]
	cmp r2, r0
	bgt _0205B08C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0205B094
_0205B08C:
	mov r0, #0
	b _0205B0A0
_0205B094:
	mov r0, #0x1c
	mla r0, r2, r0, r1
	sub r0, r0, #0x1c
_0205B0A0:
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	beq _0205B0D0
	add r0, sp, #0
	bl FUN_ov16_020fbeb8
	ldr r2, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_0205B0D0:
	add r0, sp, #0xc
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205b04c

	arm_func_start FUN_0205b0e4
FUN_0205b0e4: ; 0x0205B0E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _0205B110
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B110
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B118
_0205B110:
	mov r0, #0
	b _0205B124
_0205B118:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B124:
	cmp r0, #0
	moveq r6, #0
	beq _0205B13C
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	mov r6, r0
_0205B13C:
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faf80
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fb040
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205b0e4

	arm_func_start FUN_0205b174
FUN_0205b174: ; 0x0205B174
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _0205B1A0
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B1A0
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B1A8
_0205B1A0:
	mov r0, #0
	b _0205B1B4
_0205B1A8:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B1B4:
	cmp r0, #0
	moveq r6, #0
	beq _0205B1CC
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
	mov r6, r0
_0205B1CC:
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020faf5c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fb040
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0205b174

	arm_func_start FUN_0205b204
FUN_0205b204: ; 0x0205B204
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ble _0205B228
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B228
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B230
_0205B228:
	mov r0, #0
	b _0205B23C
_0205B230:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B23C:
	cmp r0, #0
	moveq r0, #0
	beq _0205B250
	ldr r0, [r0, #0x10]
	bl FUN_ov16_020fb348 ; may be ov17 ; ov16(Mica)
_0205B250:
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fb02c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205b204

	arm_func_start FUN_0205b264
FUN_0205b264: ; 0x0205B264
	cmp r1, #0
	ble _0205B284
	ldr r2, [r0, #4]
	cmp r1, r2
	bgt _0205B284
	ldr r2, [r0, #0xc]
	cmp r2, #0
	bne _0205B28C
_0205B284:
	mov r0, #0
	b _0205B298
_0205B28C:
	mov r0, #0x1c
	mla r0, r1, r0, r2
	sub r0, r0, #0x1c
_0205B298:
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0, #0xd]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0205b264

	arm_func_start FUN_0205b2b8
FUN_0205b2b8: ; 0x0205B2B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x128
	ldr r6, _0205B338 ; =0x020908FC
	add r5, sp, #0
	mov r4, r0
	mov r8, r5
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r5, _0205B33C ; =0x02090924
	add r9, r4, #0x84
	mov r10, #9
	mov r7, #0
	add r6, sp, #0x28
_0205B2FC:
	str r7, [r9]
	ldr r2, [r8, r10, lsl #2]
	mov r0, r6
	mov r1, r5
	bl sprintf
	mov r0, r6
	mov r1, r9
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	sub r9, r9, #0xc
	subs r10, r10, #1
	bpl _0205B2FC
	mov r0, #1
	str r0, [r4, #0x90]
	add sp, sp, #0x128
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0205B338: .word unk_020908FC
_0205B33C: .word unk_02090924
	arm_func_end FUN_0205b2b8

	arm_func_start FUN_0205b340
FUN_0205b340: ; 0x0205B340
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	beq _0205B390
	cmp r0, #1
	beq _0205B36C
	cmp r0, #2
	bne _0205B390
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0205B36C:
	add r0, r4, #0x18
	mov r1, #0xa
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	strne r0, [r4, #0x90]
	movne r0, #0
	ldmfd sp!, {r4, pc}
_0205B390:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205b340

	arm_func_start FUN_0205b398
FUN_0205b398: ; 0x0205B398
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #0xa
	bl _ZN7Archive5CloseEP9SFileDatai
	add r4, r4, #0x84
	mov r5, #9
_0205B3B4:
	mov r0, r4
	bl _ZN7Archive10DeallocateEP9SFileData
	sub r4, r4, #0xc
	subs r5, r5, #1
	bpl _0205B3B4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0205b398

	arm_func_start FUN_0205b3cc
FUN_0205b3cc: ; 0x0205B3CC
	stmdb sp!, {r3}
	sub sp, sp, #0xc
	add r12, sp, #0
	mov r3, #0
	str r3, [r12]
	str r3, [r12, #4]
	str r3, [r12, #8]
	cmp r1, #0
	ble _0205B408
	ldr r3, [r0, #4]
	cmp r1, r3
	bgt _0205B408
	ldr r3, [r0, #0xc]
	cmp r3, #0
	bne _0205B410
_0205B408:
	mov r1, #0
	b _0205B41C
_0205B410:
	mov r0, #0x1c
	mla r0, r1, r0, r3
	sub r1, r0, #0x1c
_0205B41C:
	cmp r1, #0
	ldrne r0, [r1, #0x10]
	cmpne r0, #0
	strneb r2, [r1, #0xe]
	add sp, sp, #0xc
	ldmia sp!, {r3}
	bx lr
	arm_func_end FUN_0205b3cc

	arm_func_start FUN_0205b438
FUN_0205b438: ; 0x0205B438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r9, r0
	mov r5, r6
	mov r4, r6
_0205B44C:
	ldr r0, [r9, #4]
	cmp r0, #1
	blt _0205B464
	ldr r8, [r9, #0xc]
	cmp r8, #0
	bne _0205B468
_0205B464:
	mov r8, r5
_0205B468:
	cmp r8, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, r4
	cmp r0, #0
	ble _0205B4DC
_0205B480:
	ldr r0, [r8, #0x10]
	cmp r0, #0
	ldrne r1, [r8, #0x14]
	cmpne r1, #0
	beq _0205B4C8
	ldr r1, [r8, #8]
	tst r1, #1
	beq _0205B4C8
	cmp r6, #0
	bne _0205B4BC
	bl FUN_ov16_020fc4a8
	cmp r0, #0
	bne _0205B4C8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0205B4BC:
	cmp r6, #1
	bne _0205B4C8
	bl FUN_ov16_020fc48c
_0205B4C8:
	ldr r0, [r9, #4]
	add r7, r7, #1
	cmp r7, r0
	add r8, r8, #0x1c
	blt _0205B480
_0205B4DC:
	add r6, r6, #1
	cmp r6, #2
	blt _0205B44C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0205b438

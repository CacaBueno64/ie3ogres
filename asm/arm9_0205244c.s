
	.include "/macros/function.inc"
	.include "/include/arm9_0205244c.inc"

    .text
	arm_func_start FUN_0205244c
FUN_0205244c: ; 0x0205244C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _02052494
	ldr r4, _0205249C ; =0x000009A4
_02052478:
	ldr r0, [r6, #8]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fc4bc
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _02052478
_02052494:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0205249C: .word 0x000009A4
	arm_func_end FUN_0205244c

	arm_func_start FUN_020524a0
FUN_020524a0: ; 0x020524A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _020524E8
	ldr r4, _020524F0 ; =0x000009A4
_020524CC:
	ldr r0, [r6, #8]
	mla r0, r5, r4, r0
	bl FUN_ov16_020fc4f0
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020524CC
_020524E8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020524F0: .word 0x000009A4
	arm_func_end FUN_020524a0

	arm_func_start FUN_020524f4
FUN_020524f4: ; 0x020524F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x70
	bl FUN_ov16_020fa638
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _0205253C ; =0x02090630
	bl FUN_02053c20
	strh r0, [r5, #0x16]
	ldr r1, _02052540 ; =0x02090634
	mov r0, r4
	bl FUN_02053c20
	strh r0, [r5, #0x18]
	ldr r1, _02052544 ; =0x0209063C
	mov r0, r4
	bl FUN_02053c20
	strh r0, [r5, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_0205253C: .word unk_02090630
_02052540: .word unk_02090634
_02052544: .word unk_0209063C
	arm_func_end FUN_020524f4

	arm_func_start FUN_02052548
FUN_02052548: ; 0x02052548
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x70
	bl FUN_ov16_020fa154
	add r0, r5, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, [r5, #0x340]
	cmp r1, #0
	beq _0205257C
	ldr r0, _020525E4 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_0205257C:
	mov r4, #0
	sub r3, r4, #1
	mov r0, r4
	add r1, r5, #0x2c
	mov r2, #0x40
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	str r4, [r5, #0x24]
	strb r4, [r5, #0x15]
	strh r3, [r5, #0x16]
	strh r3, [r5, #0x18]
	strh r3, [r5, #0x1a]
	str r4, [r5, #0x28]
	bl MIi_CpuClearFast
	add r0, r5, #0x70
	str r4, [r5, #0x6c]
	bl FUN_ov16_020f9cdc
	add r0, r5, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r4, [r5, #0x340]
	str r4, [r5, #0x344]
	str r4, [r5, #0x348]
	str r4, [r5, #0x34c]
	ldmfd sp!, {r3, r4, r5, pc}
_020525E4: .word gAllocator
	arm_func_end FUN_02052548

	arm_func_start FUN_020525e8
FUN_020525e8: ; 0x020525E8
	stmfd sp!, {r4, lr}
	ldr r1, _02052614 ; =0x02118880
	mov r4, r0
	str r1, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r4, #0xc
	bl _ZN16CSceneScriptDataD1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02052614: .word ov16_02118880
	arm_func_end FUN_020525e8

	arm_func_start _ZN14C3DMagicCameraC1Ev
_ZN14C3DMagicCameraC1Ev: ; 0x02052618
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r2, _02052724 ; =0x02090608
	mov r4, r0
	ldr r0, _02052728 ; =0x02118854
	mov r6, #5
	ldr r5, _0205272C ; =FUN_02052760
	ldr r3, _02052730 ; =FUN_02052740
	mov r1, r6
	str r2, [r4]
	str r0, [r4, #0x70]
	add r0, r4, #0xbc
	mov r2, #0x14
	str r5, [sp]
	bl __cxa_vec_ctor
	ldr r5, _02052734 ; =FUN_020527ac
	ldr r3, _02052738 ; =FUN_02052780
	mov r1, r6
	add r0, r4, #0x120
	mov r2, #0x30
	str r5, [sp]
	bl __cxa_vec_ctor
	add r0, r4, #0x210
	bl FUN_ov16_021110fc
	ldr r1, _0205273C ; =0x02118880
	add r0, r4, #0x238
	str r1, [r4, #0x22c]
	bl _ZN16CSceneScriptDataC1Ev
	add r0, r4, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #4
	mov r6, #0
	mov r1, r6
	mov r5, #0xc
	mov r2, r5
	bl MI_CpuFill8
	sub r0, r5, #0xd
	str r6, [r4, #0x10]
	strb r6, [r4, #0x14]
	str r6, [r4, #0x1c]
	str r6, [r4, #0x20]
	str r6, [r4, #0x24]
	strb r6, [r4, #0x15]
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	str r6, [r4, #0x28]
	mov r0, r6
	add r1, r4, #0x2c
	mov r2, #0x40
	bl MIi_CpuClearFast
	str r6, [r4, #0x6c]
	add r0, r4, #0x70
	bl FUN_ov16_020f9cdc
	add r0, r4, #0x22c
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
	str r6, [r4, #0x340]
	str r6, [r4, #0x344]
	str r6, [r4, #0x348]
	str r6, [r4, #0x34c]
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02052724: .word unk_02090608
_02052728: .word _ZTV6CModel+0x8
_0205272C: .word FUN_02052760
_02052730: .word FUN_02052740
_02052734: .word FUN_020527ac
_02052738: .word FUN_02052780
_0205273C: .word ov16_02118880
	arm_func_end _ZN14C3DMagicCameraC1Ev

	arm_func_start FUN_02052740
FUN_02052740: ; 0x02052740
	stmfd sp!, {r4, lr}
	ldr r1, _0205275C ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc538
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205275C: .word _ZTV7CMotion+0x8
	arm_func_end FUN_02052740

	arm_func_start FUN_02052760
FUN_02052760: ; 0x02052760
	stmfd sp!, {r4, lr}
	ldr r1, _0205277C ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc550
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0205277C: .word _ZTV7CMotion+0x8
	arm_func_end FUN_02052760

	arm_func_start FUN_02052780
FUN_02052780: ; 0x02052780
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, _020527A8 ; =0x02090618
	add r0, r4, #0x14
	str r1, [r4]
	bl FUN_ov16_021110fc
	mov r0, r4
	bl FUN_ov16_02110b80
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020527A8: .word _ZTV8CTexture+0x8
	arm_func_end FUN_02052780

	arm_func_start FUN_020527ac
FUN_020527ac: ; 0x020527AC
	stmfd sp!, {r4, lr}
	ldr r1, _020527D0 ; =0x02090618
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02110bb0
	add r0, r4, #0x14
	bl FUN_ov16_0211111c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020527D0: .word _ZTV8CTexture+0x8
	arm_func_end FUN_020527ac

	arm_func_start FUN_020527d4
FUN_020527d4: ; 0x020527D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1a0
	bl FUN_ov16_0211111c
	mov r4, #5
	ldr r3, _02052818 ; =FUN_020527ac
	mov r1, r4
	add r0, r5, #0xb0
	mov r2, #0x30
	bl __cxa_vec_cleanup
	ldr r3, _0205281C ; =FUN_02052760
	mov r1, r4
	add r0, r5, #0x4c
	mov r2, #0x14
	bl __cxa_vec_cleanup
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052818: .word FUN_020527ac
_0205281C: .word FUN_02052760
	arm_func_end FUN_020527d4

	arm_func_start FUN_02052820
FUN_02052820: ; 0x02052820
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02052890 ; =0x02090608
	mov r5, r0
	str r1, [r5]
	bl FUN_02052548
	ldr r1, _02052894 ; =0x02118880
	add r0, r5, #0x22c
	str r1, [r5, #0x22c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0x238
	bl _ZN16CSceneScriptDataD1Ev
	add r0, r5, #0x210
	bl FUN_ov16_0211111c
	add r0, r5, #0x120
	mov r4, #5
	mov r1, r4
	mov r2, #0x30
	ldr r3, _02052898 ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r1, r4
	add r0, r5, #0xbc
	mov r2, #0x14
	ldr r3, _0205289C ; =FUN_02052760
	bl __cxa_vec_cleanup
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052890: .word unk_02090608
_02052894: .word ov16_02118880
_02052898: .word FUN_020527ac
_0205289C: .word FUN_02052760
	arm_func_end FUN_02052820

	arm_func_start FUN_020528a0
FUN_020528a0: ; 0x020528A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02052918 ; =0x02090608
	mov r5, r0
	str r1, [r5]
	bl FUN_02052548
	ldr r1, _0205291C ; =0x02118880
	add r0, r5, #0x22c
	str r1, [r5, #0x22c]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r5, #0x238
	bl _ZN16CSceneScriptDataD1Ev
	add r0, r5, #0x210
	bl FUN_ov16_0211111c
	add r0, r5, #0x120
	mov r4, #5
	mov r1, r4
	mov r2, #0x30
	ldr r3, _02052920 ; =FUN_020527ac
	bl __cxa_vec_cleanup
	mov r1, r4
	add r0, r5, #0xbc
	mov r2, #0x14
	ldr r3, _02052924 ; =FUN_02052760
	bl __cxa_vec_cleanup
	mov r0, r5
	bl _ZdlPv
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02052918: .word unk_02090608
_0205291C: .word ov16_02118880
_02052920: .word FUN_020527ac
_02052924: .word FUN_02052760
	arm_func_end FUN_020528a0

	arm_func_start FUN_02052928
FUN_02052928: ; 0x02052928
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052548
	mov r0, r4
	bl FUN_0205296c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02052928

	arm_func_start FUN_02052940
FUN_02052940: ; 0x02052940
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r0, _02052968 ; =0x02090644
	add r1, r1, #4
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldmfd sp!, {r3, pc}
_02052968: .word unk_02090644
	arm_func_end FUN_02052940

	arm_func_start FUN_0205296c
FUN_0205296c: ; 0x0205296C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	add r0, r4, #4
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xe]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0205296c

	arm_func_start FUN_020529a4
FUN_020529a4: ; 0x020529A4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	add r0, r0, #4
	mov r1, #1
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020529a4

	arm_func_start FUN_020529d8
FUN_020529d8: ; 0x020529D8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r0
	mov r8, r1
	mov r6, r2
	mov r4, #1
	bl FUN_020529a4
	cmp r0, #0
	ldr r0, [r7, #4]
	bne _02052A34
	cmp r0, #0
	bne _02052A10
	mov r0, r7
	bl FUN_02052940
_02052A10:
	cmp r6, #0
	andne r0, r4, #0xff
	strb r4, [r7, #0x14]
	orrne r0, r0, #2
	strneb r0, [r7, #0x14]
	add sp, sp, #0x18
	str r8, [r7, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052A34:
	mov r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r8
	str r5, [r7, #0x10]
	strb r5, [r7, #0x14]
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_02052548
	str r5, [r7, #0x340]
	cmp r6, #0
	beq _02052AAC
	ldr r3, _02052B14 ; =gAllocator
	ldr r12, [sp, #0x10]
	ldr r0, [r3]
	ldr r2, [sp, #0x14]
	cmp r0, #0
	ldr r1, _02052B18 ; =0x02090660
	beq _02052AA8
	stmia sp, {r2, r12}
	str r4, [sp, #8]
	add r2, r7, #0x340
	str r4, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP9Allocatorlmih
	mov r5, r0
_02052AA8:
	b _02052AE0
_02052AAC:
	ldr r3, _02052B14 ; =gAllocator
	ldr r12, [sp, #0x10]
	ldr r0, [r3]
	ldr r2, [sp, #0x14]
	cmp r0, #0
	ldr r1, _02052B1C ; =0x0209067C
	beq _02052AE0
	stmia sp, {r2, r12}
	str r4, [sp, #8]
	add r2, r7, #0x340
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	mov r5, r0
_02052AE0:
	str r5, [r7, #0x344]
	ldr r0, [r7, #0x344]
	cmp r0, #0
	addle sp, sp, #0x18
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #1
	cmp r6, #0
	movne r0, #0
	str r0, [r7, #0x348]
	mov r0, #1
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02052B14: .word gAllocator
_02052B18: .word unk_02090660
_02052B1C: .word unk_0209067C
	arm_func_end FUN_020529d8

	arm_func_start FUN_02052b20
FUN_02052b20: ; 0x02052B20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_020529a4
	cmp r0, #0
	bne _02052B4C
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02052B4C:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _02052B80
	tst r0, #2
	movne r2, #1
	ldr r1, [r5, #0x10]
	moveq r2, #0
	mov r0, r5
	bl FUN_020529d8
	cmp r0, #0
	movne r0, #1
	mvneq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02052B80:
	mov r0, r5
	bl FUN_02052c0c
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x70
	bl FUN_ov16_020fa924
	cmp r0, #0
	beq _02052BBC
	ldr r0, [r5, #0x230]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052BBC:
	add r0, r5, #0x70
	bl FUN_ov16_020fa924
	cmp r0, #0
	bne _02052BDC
	add r0, r5, #0x70
	bl FUN_ov16_020fa93c
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052BDC:
	ldr r0, [r5, #0x230]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02052C04
	add r0, r5, #0x22c
	bl FUN_ov16_020fb2ac
	movs r4, r0
	ldmnefd sp!, {r3, r4, r5, pc}
_02052C04:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02052b20

	arm_func_start FUN_02052c0c
FUN_02052c0c: ; 0x02052C0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x348]
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x340]
	cmp r1, #0
	beq _02052C3C
	ldr r0, [r4, #0x344]
	cmp r0, #0
	bge _02052C44
_02052C3C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02052C44:
	ldr r0, _02052C6C ; =gAllocator
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _02052C5C
	bl _ZN7CFileIO11tryFinalizeEPv
_02052C5C:
	cmp r0, #0
	moveq r1, #1
	streq r1, [r4, #0x348]
	ldmfd sp!, {r4, pc}
_02052C6C: .word gAllocator
	arm_func_end FUN_02052c0c

	arm_func_start FUN_02052c70
FUN_02052c70: ; 0x02052C70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x70
	bl FUN_ov16_020fa930
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x348]
	cmp r0, #0
	bne _02052CAC
	mov r0, r10
	bl FUN_02052c0c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052CAC:
	ldr r0, [r10, #0x340]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0
	bl FUN_020539c8
	mov r9, r0
	mov r11, #1
	ldr r0, [r10, #0x340]
	mov r1, r11
	bl FUN_020539c8
	mov r8, r0
	mov r4, #2
	ldr r0, [r10, #0x340]
	mov r1, r4
	bl FUN_020539c8
	mov r7, r0
	ldr r0, [r10, #0x340]
	mov r1, #0
	bl FUN_02053994
	mov r6, r0
	ldr r0, [r10, #0x340]
	mov r1, r11
	bl FUN_02053994
	mov r5, r0
	ldr r0, [r10, #0x340]
	mov r1, r4
	bl FUN_02053994
	cmp r9, #0
	cmpne r8, #0
	mov r4, r0
	cmpne r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r9
	mov r2, r6
	add r0, r10, #0x70
	bl FUN_ov16_020f9f40 ; may be ov17 ; ov16(Mica)
	mov r1, r8
	mov r2, r5
	mov r3, #0
	add r0, r10, #0x70
	bl FUN_ov16_020fa814
	add r0, r10, #0x22c
	ldr r3, [r0]
	mov r1, r7
	ldr r3, [r3, #0x1c]
	mov r2, r4
	blx r3
	add r0, r10, #0x70
	mov r1, #0
	mov r2, r11
	bl FUN_ov16_020f9f7c
	mov r1, #0
	add r0, r10, #0x70
	mov r2, r1
	bl FUN_ov16_020fa838
	mov r1, #0
	add r0, r10, #0x70
	bl FUN_ov16_020fa8b8
	ldr r1, _02052DC4 ; =0x0208F6F0
	add r0, r10, #0x70
	ldr r1, [r1, #0x24]
	mov r2, r1
	mov r3, r1
	bl FUN_ov16_020fa504
	mov r0, r10
	bl FUN_020524f4
	mov r0, r11
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052DC4: .word unk_0208F6F0
	arm_func_end FUN_02052c70

	arm_func_start FUN_02052dc8
FUN_02052dc8: ; 0x02052DC8
	ldrsh r1, [r0, #0x16]
	cmp r1, #0
	ldrgesh r0, [r0, #0x18]
	cmpge r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_02052dc8

	arm_func_start FUN_02052de4
FUN_02052de4: ; 0x02052DE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r10, r0
	ldr r4, [r10, #0x84]
	cmp r4, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_02052dc8
	cmp r0, #0
	ldrne r0, [r10, #0x34c]
	cmpne r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x16]
	ldrsh r1, [r10, #0x18]
	mov r0, #0x30
	smlabb r6, r2, r0, r4
	smlabb r7, r1, r0, r4
	ldrsh r5, [r10, #0x1a]
	ldr r1, _02052F98 ; =gCameraController
	ldr r3, [r6, #0x24]
	ldr r2, [r7, #0x24]
	smlabb r8, r5, r0, r4
	cmp r3, r2
	ldr r9, [r1]
	ldreq r1, [r6, #0x28]
	ldreq r0, [r7, #0x28]
	cmpeq r1, r0
	bne _02052E6C
	ldr r1, [r6, #0x2c]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052E6C:
	add r5, sp, #0x18
	ldr r11, [r6, #0x2c]
	ldr r4, [r6, #0x28]
	ldr r3, [r6, #0x24]
	add r0, sp, #0xc
	mov r2, r5
	add r1, r10, #0x1c
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	bl VEC_Add
	mov r0, #2
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r11, #0x1000
	str r11, [sp, #8]
	mov r0, r9
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f794c
	ldr r3, [r7, #0x2c]
	ldr r2, [r7, #0x28]
	ldr r1, [r7, #0x24]
	mov r0, r5
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r1, r10, #0x1c
	mov r2, r5
	str r3, [sp, #0x20]
	bl VEC_Add
	mov r7, #1
	str r7, [sp]
	stmib sp, {r4, r11}
	mov r0, r9
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	ldrsh r1, [r10, #0x1a]
	sub r0, r7, #2
	cmp r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r6, #0x24]
	ldr r0, [r8, #0x24]
	cmp r1, r0
	ldreq r1, [r6, #0x28]
	ldreq r0, [r8, #0x28]
	cmpeq r1, r0
	ldreq r1, [r6, #0x2c]
	ldreq r0, [r8, #0x2c]
	cmpeq r1, r0
	bne _02052F58
	mov r0, r9
	str r4, [sp, #0x18]
	str r11, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldmia r5, {r1, r2, r3}
	bl FUN_ov16_020f7bb0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052F58:
	add r4, sp, #0x18
	ldr r6, [r8, #0x2c]
	ldr r5, [r8, #0x28]
	ldr r3, [r8, #0x24]
	add r1, sp, #0xc
	mov r0, r4
	mov r2, r4
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r6, [sp, #0x20]
	bl VEC_Subtract
	mov r0, r9
	ldmia r4, {r1, r2, r3}
	bl FUN_ov16_020f7bb0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02052F98: .word gCameraController
	arm_func_end FUN_02052de4

	arm_func_start FUN_02052f9c
FUN_02052f9c: ; 0x02052F9C
	stmfd sp!, {r4, lr}
	ldr r2, _02053028 ; =g3DDevice
	mov r4, r0
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x22c
	ldr r2, [r0]
	ldr r2, [r2, #0x24]
	blx r2
	ldr r1, [r4, #0x250]
	add r0, r4, #0x70
	mvn r2, #0
	bl FUN_ov16_020fa340
	add r0, r4, #0x70
	bl FUN_ov16_020fa300
	add r0, r4, #0x22c
	bl FUN_ov16_020fb02c
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	ldrne r1, [r4, #0x28]
	cmpne r0, r1
	addlt r0, r0, #1
	strlt r0, [r4, #0x6c]
	cmplt r0, r1
	ldmgefd sp!, {r4, pc}
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x2c]
	add r0, r4, #0x22c
	bl FUN_ov16_020faf5c
	ldmfd sp!, {r4, pc}
_02053028: .word g3DDevice
	arm_func_end FUN_02052f9c

	arm_func_start FUN_0205302c
FUN_0205302c: ; 0x0205302C
	mov r1, #0
	str r1, [r0, #0x6c]
	str r1, [r0, #0x28]
	str r1, [r0, #0x34c]
	bx lr
	arm_func_end FUN_0205302c

	arm_func_start FUN_02053040
FUN_02053040: ; 0x02053040
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldr r3, [r0, #0x28]
	cmp r3, #0x10
	movge r0, #0
	bxge lr
	mov r1, r1, lsl #0x10
	mov r2, r1, asr #0x10
	add r1, r0, r3, lsl #2
	str r2, [r1, #0x2c]
	ldr r1, [r0, #0x28]
	add r1, r1, #1
	str r1, [r0, #0x28]
	mov r0, #1
	bx lr
	arm_func_end FUN_02053040

	arm_func_start FUN_02053080
FUN_02053080: ; 0x02053080
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x22c
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r4
	bl FUN_02053040
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02053080

	arm_func_start FUN_020530a0
FUN_020530a0: ; 0x020530A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052dc8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x2c]
	mov r3, #0
	mov r2, #1
	add r0, r4, #0x22c
	str r3, [r4, #0x6c]
	str r2, [r4, #0x34c]
	bl FUN_ov16_020faf5c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020530a0

	arm_func_start FUN_020530e0
FUN_020530e0: ; 0x020530E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02052dc8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x34c]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x6c]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	blt _0205312C
	add r0, r4, #0x22c
	bl FUN_ov16_020fb02c
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, pc}
_0205312C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020530e0

	arm_func_start FUN_02053134
FUN_02053134: ; 0x02053134
	stmfd sp!, {r4, lr}
	ldr r1, _02053160 ; =0x02090618
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02110bb0
	add r0, r4, #0x14
	bl FUN_ov16_0211111c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02053160: .word _ZTV8CTexture+0x8
	arm_func_end FUN_02053134

	arm_func_start FUN_02053164
FUN_02053164: ; 0x02053164
	stmfd sp!, {r4, lr}
	ldr r1, _02053188 ; =0x02090628
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fc550
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02053188: .word _ZTV7CMotion+0x8
	arm_func_end FUN_02053164

	.data
	.global unk_020905E8
unk_020905E8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_02090608
unk_02090608:
	.word FUN_02052820
	.word FUN_020528a0
	.global _ZTV8CTexture
_ZTV8CTexture:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_020527ac
	.word FUN_02053134
	.global _ZTV7CMotion
_ZTV7CMotion:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_02052760
	.word FUN_02053164
	.global unk_02090630
unk_02090630:
	.asciz "eye"
	.balign 4, 0
	.global unk_02090634
unk_02090634:
	.asciz "lookat"
	.balign 4, 0
	.global unk_0209063C
unk_0209063C:
	.asciz "roll"
	.balign 4, 0
	.global unk_02090644
unk_02090644:
	.asciz "/data_iz/model/pac/cmr.pkh"
	.balign 4, 0
	.global unk_02090660
unk_02090660:
	.asciz "/data_iz/model/pac/cmr.pkb"
	.balign 4, 0
	.global unk_0209067C
unk_0209067C:
	.asciz "/data_iz/model/pac/cmr.pkb"
	.balign 4, 0

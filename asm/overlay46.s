
	.include "/macros/function.inc"
	.include "/include/overlay46.inc"

	.text
	arm_func_start FUN_ov46_02119f00
FUN_ov46_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, _02119F6C ; =0x0212148C
	add r1, r4, #0xd8
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02119F70 ; =0x021214A8
	add r1, r4, #0xe4
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02119F74 ; =0x021214C8
	add r1, r4, #0xf0
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r0, _02119F78 ; =0x021214E0
	add r1, r4, #0xfc
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	add r1, r4, #0x108
	ldr r0, _02119F7C ; =0x02121504
	bl _ZN7Archive17ReadNewUncompressEPKcP9SFileData
	ldr r5, _02119F80 ; =gAudioPlayer
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl _ZN11AudioPlayer12FUN_0202cf00Ei
	mov r0, r5
	mov r1, r4
	ldr r2, _02119F84 ; =0x02121528
	bl _ZN11AudioPlayer12FUN_0202cdd4EiPKc
	ldmfd sp!, {r3, r4, r5, pc}
_02119F6C: .word ov46_0212148C
_02119F70: .word ov46_021214A8
_02119F74: .word ov46_021214C8
_02119F78: .word ov46_021214E0
_02119F7C: .word ov46_02121504
_02119F80: .word gAudioPlayer
_02119F84: .word ov46_02121528
	arm_func_end FUN_ov46_02119f00

	arm_func_start FUN_ov46_02119f88
FUN_ov46_02119f88: ; 0x02119F88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _02119FF8 ; =0x020A6C40
	mov r8, #0
	mov r6, #0x800
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r5, _02119FFC ; =0x020A7440
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r4, _0211A000 ; =0x020A7C40
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02119FF8: .word gMainScreen0
_02119FFC: .word gMainScreen1
_0211A000: .word gMainScreen2
	arm_func_end FUN_ov46_02119f88

	arm_func_start FUN_ov46_0211a004
FUN_ov46_0211a004: ; 0x0211A004
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	mov r10, r1
	ldr r0, _0211A0C8 ; =0x55555556
	mov r2, #3
	smull r1, r6, r0, r10
	add r6, r6, r10, lsr #31
	smull r0, r1, r2, r6
	mov r9, #0
	sub r6, r10, r0
	sub r5, r10, #1
	add r7, r10, #1
	sub r8, r10, #3
	add r4, r10, #3
	b _0211A0B8
_0211A040:
	cmp r9, r10
	cmpne r9, r8
	beq _0211A088
	ldr r0, _0211A0C8 ; =0x55555556
	smull r1, r2, r0, r9
	add r2, r2, r9, lsr #31
	mov r0, #3
	smull r1, r2, r0, r2
	subs r2, r9, r1
	beq _0211A070
	cmp r9, r7
	beq _0211A088
_0211A070:
	cmp r6, #0
	beq _0211A080
	cmp r9, r5
	beq _0211A088
_0211A080:
	cmp r9, r4
	bne _0211A0B4
_0211A088:
	add r0, r11, r9, lsl #2
	ldr r1, [r0, #0x114]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211A0CC ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A0B4:
	add r9, r9, #1
_0211A0B8:
	cmp r9, #9
	blt _0211A040
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A0C8: .word 0x55555556
_0211A0CC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211a004

	arm_func_start FUN_ov46_0211a0d0
FUN_ov46_0211a0d0: ; 0x0211A0D0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x21c
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x114]
	cmp r0, #0
	addne sp, sp, #0x21c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	add r7, sp, #0x1c
	ldr r1, _0211A17C ; =0x02121530
	mov r0, r7
	bl sprintf
	ldr r0, _0211A180 ; =0x021211B8
	add r6, sp, #0x11c
	ldr r2, [r0, r4, lsl #2]
	ldr r1, _0211A184 ; =0x0212154C
	mov r0, r6
	bl sprintf
	ldr r1, [r5, #0xd8]
	add r2, sp, #0x18
	mov r0, r6
	add r3, sp, #0x14
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	ldr r0, _0211A188 ; =g3DPlaneCtrl
	ldr r12, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r6, #0
	mov r3, #1
	str r6, [sp]
	stmib sp, {r3, r6}
	str r1, [sp, #0xc]
	mov r2, r7
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x114]
	add r0, r5, r4
	strb r6, [r0, #0x988]
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A17C: .word ov46_02121530
_0211A180: .word ov46_021211B8
_0211A184: .word ov46_0212154C
_0211A188: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211a0d0

	arm_func_start FUN_ov46_0211a18c
FUN_ov46_0211a18c: ; 0x0211A18C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x114]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A1CC ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x114]
	add r0, r5, r4
	strb r1, [r0, #0x988]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A1CC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211a18c

	arm_func_start FUN_ov46_0211a1d0
FUN_ov46_0211a1d0: ; 0x0211A1D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A2E4 ; =0x02121554
	mov r0, r11
	bl sprintf
	mov r9, #9
	mov r6, #0
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A2E8 ; =0x02121418
	ldr r4, _0211A2EC ; =g3DPlaneCtrl
	b _0211A26C
_0211A208:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A2F0 ; =0x02121570
	mov r0, r8
	bl sprintf
	ldr r1, [r10, #0xd8]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	cmp r0, #0
	beq _0211A268
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, r6
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x114]
_0211A268:
	add r9, r9, #1
_0211A26C:
	cmp r9, #0x1d
	blt _0211A208
	add r1, r10, #0x13c
	ldr r0, [r10, #0x108]
	add r1, r1, #0x800
	mov r2, #0x12
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #4
	bl FUN_ov46_0211abe4
	mov r0, r10
	bl FUN_ov46_02120744
	mov r0, r10
	mov r1, #3
	bl FUN_ov46_0211abe4
	mov r0, r10
	bl FUN_ov46_0211ab08
	mov r0, r10
	bl FUN_ov46_0211a420
	ldr r1, _0211A2F4 ; =0x020A0640
	mov r0, r10
	ldrb r1, [r1, #0xc5e]
	bl FUN_ov46_0211a3b0
	mov r0, r10
	mov r1, #1
	bl FUN_ov46_0211abe4
	mov r0, r10
	bl FUN_ov46_0211a2f8
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A2E4: .word ov46_02121554
_0211A2E8: .word ov46_02121418
_0211A2EC: .word g3DPlaneCtrl
_0211A2F0: .word ov46_02121570
_0211A2F4: .word unk_020A0640
	arm_func_end FUN_ov46_0211a1d0

	arm_func_start FUN_ov46_0211a2f8
FUN_ov46_0211a2f8: ; 0x0211A2F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	add r9, r7, #0x300
	ldrh r0, [r9, #0xe0]
	mov r4, #0
	mov r5, #1
	cmp r0, #1
	ble _0211A398
	mov r8, #0x1c
_0211A31C:
	mul r6, r5, r8
	ldr r0, [r7, #0x4f8]
	add r1, r0, r6
	ldrh r0, [r1, #0xc]
	cmp r0, #3
	cmpne r0, #0
	cmpne r0, #2
	beq _0211A388
	ldrh r1, [r1, #0xa]
	mov r0, r7
	bl FUN_ov46_0211c890
	cmp r0, #0
	bne _0211A374
	ldr r1, [r7, #0x4f8]
	mov r0, r7
	add r2, r1, r6
	ldrb r1, [r2, #1]
	ldrh r2, [r2, #0x14]
	mov r3, r5
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211A388
_0211A374:
	mov r0, r7
	mov r1, r5
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	addne r4, r4, #1
_0211A388:
	ldrh r0, [r9, #0xe0]
	add r5, r5, #1
	cmp r5, r0
	blt _0211A31C
_0211A398:
	ldr r0, [r7, #0x74]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0x44]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov46_0211a2f8

	arm_func_start FUN_ov46_0211a3b0
FUN_ov46_0211a3b0: ; 0x0211A3B0
	add r2, r0, #0x300
	ldrh r2, [r2, #0xe0]
	cmp r1, r2
	bxge lr
	and r3, r1, #0xff
	mov r2, #0x1c
	smulbb r3, r3, r2
	ldr r12, [r0, #0x4f8]
	strb r1, [r0, #0x3d6]
	strb r1, [r0, #0x3d7]
	ldrb r2, [r12, r3]
	strb r2, [r0, #0x3d8]
	ldrb r1, [r12, r3]
	add r2, r0, r2, lsl #3
	strb r1, [r0, #0x3d9]
	ldr r1, [r2, #8]
	str r1, [r0, #0x3bc]
	ldr r1, [r2, #0xc]
	str r1, [r0, #0x3c0]
	bx lr
	arm_func_end FUN_ov46_0211a3b0

	arm_func_start FUN_ov46_0211a400
FUN_ov46_0211a400: ; 0x0211A400
	ldr r2, [r1]
	ldrb r0, [r2], #1
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov46_0211a400

	arm_func_start FUN_ov46_0211a410
FUN_ov46_0211a410: ; 0x0211A410
	ldr r2, [r1]
	ldrh r0, [r2], #2
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov46_0211a410

	arm_func_start FUN_ov46_0211a420
FUN_ov46_0211a420: ; 0x0211A420
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	add r8, sp, #0
	ldr r2, [r5, #0xe4]
	mov r1, r8
	str r2, [sp]
	mov r7, #0
	bl FUN_ov46_0211a410
	add r1, r5, #0x300
	strh r0, [r1, #0xe0]
	ldrh r2, [r1, #0xe0]
	mov r1, #0x1c
	ldr r0, _0211A7F8 ; =gAllocator
	mul r1, r2, r1
	bl _ZN9Allocator8allocateEm
	add r6, r5, #0x300
	ldrh r1, [r6, #0xe0]
	str r0, [r5, #0x4f8]
	mov r9, r7
	cmp r1, #0
	ble _0211A670
	mov r11, #0x1c
_0211A478:
	mul r4, r9, r11
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	strb r0, [r2, r4]
	mov r0, r5
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strb r0, [r2, #1]
	mov r0, r5
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strb r0, [r2, #2]
	mov r0, r5
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strb r0, [r2, #3]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #4]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #6]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #8]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #0xa]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #0xc]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r1, [r5, #0x4f8]
	add r1, r1, r4
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0x4f8]
	add r0, r0, r4
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0211A5AC
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a410
	ldr r2, [r5, #0x4f8]
	mov r1, r8
	add r2, r2, r4
	strh r0, [r2, #0x10]
	mov r0, r5
	bl FUN_ov46_0211a410
	ldr r1, [r5, #0x4f8]
	add r1, r1, r4
	strh r0, [r1, #0x12]
_0211A5AC:
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a410
	ldr r1, [r5, #0x4f8]
	add r1, r1, r4
	strh r0, [r1, #0x14]
	ldr r0, [r5, #0x4f8]
	add r0, r0, r4
	str r7, [r0, #0x18]
	ldr r0, [r5, #0x4f8]
	add r1, r0, r4
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	bne _0211A660
	ldrb r0, [r1, #1]
	cmp r0, #0x32
	blo _0211A660
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a410
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r10, r0, lsr #0x10
	ldr r0, _0211A7F8 ; =gAllocator
	mov r1, r10
	bl _ZN9Allocator8allocateEm
	ldr r2, [r5, #0x4f8]
	mov r1, r7
	add r2, r2, r4
	str r0, [r2, #0x18]
	ldr r0, [r5, #0x4f8]
	mov r2, r10
	add r0, r0, r4
	ldr r0, [r0, #0x18]
	bl MI_CpuFill8
	ldr r1, [r5, #0x4f8]
	sub r10, r10, #1
	add r1, r1, r4
	ldr r0, [sp]
	ldr r1, [r1, #0x18]
	mov r2, r10
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r0, r0, r10
	str r0, [sp]
_0211A660:
	ldrh r0, [r6, #0xe0]
	add r9, r9, #1
	cmp r9, r0
	blt _0211A478
_0211A670:
	mov r0, r5
	mov r4, #0
	bl FUN_ov46_0211a800
	add r6, sp, #0
	mov r0, r5
	mov r1, r6
	bl FUN_ov46_0211a410
	add r1, r5, #0x300
	strh r0, [r1, #0xe2]
	ldrh r1, [r1, #0xe2]
	ldr r0, _0211A7F8 ; =gAllocator
	mov r1, r1, lsl #3
	bl _ZN9Allocator8allocateEm
	add r8, r5, #0x300
	ldrh r1, [r8, #0xe2]
	str r0, [r5, #0x950]
	mov r7, r4
	cmp r1, #0
	ble _0211A714
_0211A6BC:
	mov r0, r5
	mov r1, r6
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x950]
	mov r1, r7, lsl #3
	strh r0, [r2, r1]
	mov r0, r5
	mov r1, r6
	bl FUN_ov46_0211a400
	ldr r1, [r5, #0x950]
	add r1, r1, r7, lsl #3
	strh r0, [r1, #2]
	ldr r0, [r5, #0x950]
	add r0, r0, r7, lsl #3
	strh r4, [r0, #6]
	ldr r0, [r5, #0x950]
	add r0, r0, r7, lsl #3
	strh r4, [r0, #4]
	ldrh r0, [r8, #0xe2]
	add r7, r7, #1
	cmp r7, r0
	blt _0211A6BC
_0211A714:
	mov r0, r5
	bl FUN_ov46_0211a870
	add r8, sp, #0
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a400
	mov r2, r0
	ldr r7, _0211A7F8 ; =gAllocator
	and r1, r2, #0xff
	mov r0, r7
	strb r2, [r5, #0x3e4]
	mov r1, r1, lsl #3
	bl _ZN9Allocator8allocateEm
	ldrb r1, [r5, #0x3e4]
	str r0, [r5, #0x4f4]
	mov r9, #0
	cmp r1, #0
	ble _0211A7E4
	ldr r4, _0211A7FC ; =0x02121578
_0211A760:
	mov r0, r5
	mov r1, r8
	bl FUN_ov46_0211a400
	ldr r2, [r5, #0x4f4]
	mov r1, r8
	strb r0, [r2, r9, lsl #3]
	mov r0, r5
	bl FUN_ov46_0211a400
	mov r6, r0
	mov r0, r7
	add r1, r6, #1
	bl _ZN9Allocator8allocateEm
	ldr r1, [r5, #0x4f4]
	add r2, r6, #1
	add r1, r1, r9, lsl #3
	str r0, [r1, #4]
	ldr r0, [r5, #0x4f4]
	ldr r1, [sp]
	add r0, r0, r9, lsl #3
	ldr r0, [r0, #4]
	bl STD_CopyLString
	ldr r0, [r5, #0x4f4]
	mov r1, r4
	add r0, r0, r9, lsl #3
	ldr r0, [r0, #4]
	bl STD_ConcatenateString
	ldr r0, [sp]
	add r9, r9, #1
	add r0, r0, r6
	str r0, [sp]
	ldrb r0, [r5, #0x3e4]
	cmp r9, r0
	blt _0211A760
_0211A7E4:
	mov r0, r5
	bl FUN_ov46_021207b4
	mov r0, r5
	bl FUN_ov46_02120fc8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7F8: .word gAllocator
_0211A7FC: .word ov46_02121578
	arm_func_end FUN_ov46_0211a420

	arm_func_start FUN_ov46_0211a800
FUN_ov46_0211a800: ; 0x0211A800
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r7, r5, #0x300
	ldrh r0, [r7, #0xe0]
	mov r4, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x1c
_0211A820:
	ldr r0, [r5, #0x4f8]
	mla r2, r4, r6, r0
	ldrh r0, [r2, #0xc]
	cmp r0, #3
	bne _0211A85C
	ldrb r1, [r2, #1]
	ldrh r2, [r2, #0x14]
	mov r0, r5
	mov r3, r4
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211A85C
	mov r0, r5
	mov r1, r4
	bl FUN_ov46_0211c810
_0211A85C:
	ldrh r0, [r7, #0xe0]
	add r4, r4, #1
	cmp r4, r0
	blt _0211A820
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov46_0211a800

	arm_func_start FUN_ov46_0211a870
FUN_ov46_0211a870: ; 0x0211A870
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r0, r10, #0x300
	ldrh r0, [r0, #0xe2]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x10
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A894:
	ldr r2, [r10, #0x950]
	mov r1, r7, lsl #3
	add r0, r2, r7, lsl #3
	ldrh r4, [r2, r1]
	ldrh r3, [r0, #2]
	ldr r2, [r10, #0x4f8]
	mov r0, #0x1c
	mla r1, r4, r0, r2
	mla r0, r3, r0, r2
	ldrh r1, [r1, #0xa]
	ldrh r0, [r0, #0xa]
	str r4, [sp, #8]
	add r6, sp, #0
	mov r8, #0
	str r3, [sp, #0xc]
	strh r1, [sp, #2]
	strh r0, [sp, #4]
	strb r8, [r6]
	strb r8, [r6, #1]
	mvn r4, #0
	add r11, sp, #8
	add r5, sp, #2
_0211A8EC:
	mov r0, r8, lsl #1
	ldrh r1, [r5, r0]
	cmp r1, #0
	bne _0211A928
	ldr r9, [r11, r8, lsl #2]
	mov r0, r10
	mov r1, r9
	bl FUN_ov46_0211c794
	cmp r0, #1
	bne _0211A934
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov46_0211a97c
	b _0211A930
_0211A928:
	mov r0, r10
	bl FUN_ov46_0211c890
_0211A930:
	strb r0, [r6, r8]
_0211A934:
	add r8, r8, #1
	cmp r8, #2
	blt _0211A8EC
	ldrb r0, [sp]
	cmp r0, #0
	ldreqb r0, [sp, #1]
	cmpeq r0, #0
	beq _0211A960
	mov r0, r10
	mov r1, r7
	bl FUN_ov46_0211c720
_0211A960:
	add r0, r10, #0x300
	ldrh r0, [r0, #0xe2]
	add r7, r7, #1
	cmp r7, r0
	blt _0211A894
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov46_0211a870

	arm_func_start FUN_ov46_0211a97c
FUN_ov46_0211a97c: ; 0x0211A97C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r4, r10, #0x300
	ldrh r0, [r4, #0xe2]
	mov r9, r1
	mov r8, r2
	cmp r0, #0
	mov r7, #0
	ble _0211AA40
	mvn r5, #0
	mov r11, #0x1c
_0211A9A8:
	ldr r2, [r10, #0x950]
	mov r1, r7, lsl #3
	ldrh r0, [r2, r1]
	mov r6, r5
	cmp r9, r0
	addeq r1, r2, r1
	ldreqh r6, [r1, #2]
	add r1, r2, r7, lsl #3
	ldrh r1, [r1, #2]
	cmp r9, r1
	moveq r6, r0
	cmp r6, r8
	cmpne r6, r5
	beq _0211AA30
	mov r0, r10
	mov r1, r6
	bl FUN_ov46_0211aa48
	cmp r0, #0
	beq _0211AA30
	ldr r0, [r10, #0x4f8]
	mla r0, r6, r11, r0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0211AA28
	mov r0, r10
	mov r1, r6
	mov r2, r9
	bl FUN_ov46_0211a97c
	cmp r0, #0
	beq _0211AA30
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA28:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA30:
	ldrh r0, [r4, #0xe2]
	add r7, r7, #1
	cmp r7, r0
	blt _0211A9A8
_0211AA40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov46_0211a97c

	arm_func_start FUN_ov46_0211aa48
FUN_ov46_0211aa48: ; 0x0211AA48
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x4f8]
	mov r2, #0x1c
	mla r2, r1, r2, r3
	ldrh r2, [r2, #0xa]
	cmp r2, #0
	bne _0211AA78
	bl FUN_ov46_0211c794
	cmp r0, #0
	beq _0211AA8C
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0211AA78:
	mov r1, r2
	bl FUN_ov46_0211c890
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
_0211AA8C:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov46_0211aa48

	arm_func_start FUN_ov46_0211aa94
FUN_ov46_0211aa94: ; 0x0211AA94
	stmfd sp!, {r3, lr}
	add r1, r0, #0x300
	ldrh r1, [r1, #0xe0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r2, #0
	mov lr, r2
_0211AAB0:
	add r1, r0, r2
	add r2, r2, #1
	strb lr, [r1, #0x958]
	cmp r2, #9
	blt _0211AAB0
	add r2, r0, #0x300
	ldrh r1, [r2, #0xe0]
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
	mov r1, #0x1c
_0211AAD8:
	mul r3, lr, r1
	ldr r12, [r0, #0x4f8]
	add lr, lr, #1
	ldrb r3, [r12, r3]
	add r12, r0, r3
	ldrb r3, [r12, #0x958]
	add r3, r3, #1
	strb r3, [r12, #0x958]
	ldrh r3, [r2, #0xe0]
	cmp lr, r3
	blt _0211AAD8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov46_0211aa94

	arm_func_start FUN_ov46_0211ab08
FUN_ov46_0211ab08: ; 0x0211AB08
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r4, _0211ABE0 ; =gAllocator
	ldr r1, [r6, #0x950]
	mov r0, r4
	bl _ZN9Allocator10deallocateEPv
	add r8, r6, #0x300
	ldrh r0, [r8, #0xe0]
	mov r5, #0
	cmp r0, #0
	ble _0211AB5C
	mov r7, #0x1c
_0211AB38:
	ldr r1, [r6, #0x4f8]
	mov r0, r4
	mla r1, r5, r7, r1
	ldr r1, [r1, #0x18]
	bl _ZN9Allocator10deallocateEPv
	ldrh r0, [r8, #0xe0]
	add r5, r5, #1
	cmp r5, r0
	blt _0211AB38
_0211AB5C:
	ldr r4, _0211ABE0 ; =gAllocator
	ldr r1, [r6, #0x4f8]
	mov r0, r4
	bl _ZN9Allocator10deallocateEPv
	ldrb r0, [r6, #0x3e4]
	mov r5, #0
	cmp r0, #0
	ble _0211ABB0
	mov r7, r5
_0211AB80:
	ldr r1, [r6, #0x4f4]
	mov r0, r4
	add r1, r1, r5, lsl #3
	ldr r1, [r1, #4]
	bl _ZN9Allocator10deallocateEPv
	ldr r0, [r6, #0x4f4]
	add r0, r0, r5, lsl #3
	str r7, [r0, #4]
	ldrb r0, [r6, #0x3e4]
	add r5, r5, #1
	cmp r5, r0
	blt _0211AB80
_0211ABB0:
	ldr r1, [r6, #0x4f4]
	ldr r0, _0211ABE0 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r1, #0
	add r0, r6, #0x300
	strh r1, [r0, #0xe0]
	strb r1, [r6, #0x3e4]
	strh r1, [r0, #0xe2]
	str r1, [r6, #0x950]
	str r1, [r6, #0x4f8]
	str r1, [r6, #0x4f4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211ABE0: .word gAllocator
	arm_func_end FUN_ov46_0211ab08

	arm_func_start FUN_ov46_0211abe4
FUN_ov46_0211abe4: ; 0x0211ABE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211ABF8
	cmp r4, #5
	blt _0211AC4C
_0211ABF8:
	mov r4, #0
	add r9, r0, #0xd8
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211AC0C:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r10
	bl _ZN7Archive10DeallocateEP9SFileData
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #5
	blt _0211AC0C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AC4C:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0xd8
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r0, r6
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov46_0211abe4

	arm_func_start FUN_ov46_0211ac8c
FUN_ov46_0211ac8c: ; 0x0211AC8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov46_0211ab08
	mov r0, r5
	mvn r1, #0
	bl FUN_ov46_0211abe4
	mov r0, r5
	bl FUN_ov46_02120db4
	mov r4, #0
	add r7, r5, #0x1c0
	mov r6, #0xa8
	b _0211ACCC
_0211ACBC:
	mla r1, r4, r6, r7
	mov r0, r5
	bl FUN_ov46_0211b41c
	add r4, r4, #1
_0211ACCC:
	cmp r4, #3
	blt _0211ACBC
	mov r4, #0
	mov r7, r4
	ldr r6, _0211AD98 ; =g3DPlaneCtrl
	b _0211AD08
_0211ACE4:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _0211AD04
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x114]
_0211AD04:
	add r4, r4, #1
_0211AD08:
	cmp r4, #0x1d
	blt _0211ACE4
	mov r6, #0
	ldr r4, _0211AD98 ; =g3DPlaneCtrl
	b _0211AD38
_0211AD1C:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _0211AD34
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211AD34:
	add r6, r6, #1
_0211AD38:
	cmp r6, #2
	blt _0211AD1C
	mvn r4, #0
	mov r1, r4
	add r0, r5, #0xa4
	bl FUN_ov16_020f57b0
	add r0, r5, #0xa4
	bl FUN_ov16_020f52c4
	mov r1, r4
	add r0, r5, #0xac
	bl FUN_ov16_020f57b0
	add r0, r5, #0xac
	bl FUN_ov16_020f52c4
	mov r1, r4
	add r0, r5, #0xc0
	bl FUN_ov16_020f57b0
	add r0, r5, #0xc0
	bl FUN_ov16_020f52c4
	mov r1, r4
	add r0, r5, #0xc8
	bl FUN_ov16_020f57b0
	add r0, r5, #0xc8
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD98: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211ac8c

	arm_func_start FUN_ov46_0211ad9c
FUN_ov46_0211ad9c: ; 0x0211AD9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r0
	ldrb r0, [r9, #0xa0]
	mov r11, r1
	add r1, r9, #0xc0
	eor r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r1, r0, lsl #3
	mvn r1, #0
	bl FUN_ov16_020f57b0
	ldr r0, [sp, #0x10]
	add r1, r9, #0xc0
	add r0, r1, r0, lsl #3
	bl FUN_ov16_020f52c4
	ldr r1, [sp, #0x10]
	mov r0, r9
	bl FUN_ov46_0211afe8
	ldr r0, [sp, #0x10]
	add r1, r9, #0xa4
	add r0, r1, r0, lsl #3
	add r1, r9, r11
	ldrb r1, [r1, #0x958]
	add r1, r1, #1
	bl FUN_ov16_020f5278
	ldr r0, [sp, #0x10]
	add r1, r9, #0xc0
	add r0, r1, r0, lsl #3
	mov r1, #8
	bl FUN_ov16_020f5278
	add r0, r9, r11
	ldrb r1, [r0, #0x958]
	ldr r10, _0211AFDC ; =g3DPlaneCtrl
	mov r7, #1
	ldr r0, [r10]
	add r1, r1, #1
	mov r2, r7
	bl FUN_ov16_02112724
	ldr r1, [sp, #0x10]
	mov r8, #0
	add r6, r9, r1, lsl #2
	str r0, [r6, #0xb4]
	ldr r0, [sp, #0x10]
	add r1, r9, #0xa4
	add r5, r1, r0, lsl #3
	add r0, r9, #0x300
	add r4, r9, r11, lsl #3
	str r0, [sp, #0x14]
	b _0211AFA4
_0211AE60:
	mov r0, #0x1c
	mul r0, r8, r0
	ldr r1, [r9, #0x4f8]
	ldrb r0, [r1, r0]
	cmp r11, r0
	bne _0211AFA0
	ldr r0, [r10]
	ldr r1, [r6, #0xb4]
	mov r2, r7
	mov r3, #0x258
	bl FUN_ov16_021139bc
	mov r0, #0x1c
	mul r2, r8, r0
	ldr r1, [r9, #0x4f8]
	add r1, r1, r2
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0211AEE0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r12, [r9, #0x4f8]
	ldr r0, [r9, #0xf0]
	add r2, r12, r2
	ldr r1, _0211AFE0 ; =0x0212157C
	mov r3, r5
	ldrh r2, [r2, #0xa]
	b _0211AF20
_0211AEE0:
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _0211AF80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r12, [r9, #0x4f8]
	ldr r0, [r9, #0xf0]
	add r2, r12, r2
	ldrh r2, [r2, #0x10]
	ldr r1, _0211AFE4 ; =0x02121594
	mov r3, r5
_0211AF20:
	bl FUN_ov16_020f55b4
	mov r0, #0x1c
	mul lr, r8, r0
	ldr r1, [r9, #0x4f8]
	mov r2, r7
	add r0, r1, lr
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0xc]
	sub r0, r1, r0
	sub r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r12, [r9, #0x4f8]
	ldr r3, [r4, #8]
	add r12, r12, lr
	ldrh r12, [r12, #6]
	ldr r0, [r10]
	ldr r1, [r6, #0xb4]
	sub r3, r12, r3
	sub r3, r3, #4
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	b _0211AF98
_0211AF80:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r10]
	ldr r1, [r6, #0xb4]
	mov r2, r7
	mov r3, #0x100
_0211AF98:
	bl FUN_ov16_02113b78
	add r7, r7, #1
_0211AFA0:
	add r8, r8, #1
_0211AFA4:
	ldr r0, [sp, #0x14]
	ldrh r0, [r0, #0xe0]
	cmp r8, r0
	blt _0211AE60
	ldr r2, [sp, #0x10]
	mov r0, r9
	mov r1, r11
	bl FUN_ov46_0211cbd0
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r0, r9, r0
	strb r1, [r0, #0xbc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AFDC: .word g3DPlaneCtrl
_0211AFE0: .word ov46_0212157C
_0211AFE4: .word ov46_02121594
	arm_func_end FUN_ov46_0211ad9c

	arm_func_start FUN_ov46_0211afe8
FUN_ov46_0211afe8: ; 0x0211AFE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211B03C ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r5, #0xa4
	add r0, r0, r4, lsl #3
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r5, #0xa4
	add r0, r0, r4, lsl #3
	bl FUN_ov16_020f52c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211B03C: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211afe8

	arm_func_start FUN_ov46_0211b040
FUN_ov46_0211b040: ; 0x0211B040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r8, r2
	add r0, r10, r8
	ldrb r0, [r0, #0xbc]
	mov r9, r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #1
	mov r7, #0
	add r5, r10, r8, lsl #2
	add r4, r10, #0x300
	ldr r11, _0211B0F4 ; =g3DPlaneCtrl
	b _0211B0D8
_0211B078:
	mov r0, #0x1c
	mul r0, r7, r0
	ldr r1, [r10, #0x4f8]
	ldrb r0, [r1, r0]
	cmp r9, r0
	bne _0211B0D4
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov46_0211b0f8
	mov r3, r0
	ldr r0, [r11]
	ldr r1, [r5, #0xb4]
	mov r2, r6
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r11]
	ldr r1, [r5, #0xb4]
	mov r2, r6
	mov r3, #0
	bl FUN_ov16_0211401c
	add r6, r6, #1
_0211B0D4:
	add r7, r7, #1
_0211B0D8:
	ldrh r0, [r4, #0xe0]
	cmp r7, r0
	blt _0211B078
	add r0, r10, r8
	mov r1, #1
	strb r1, [r0, #0xbc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B0F4: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b040

	arm_func_start FUN_ov46_0211b0f8
FUN_ov46_0211b0f8: ; 0x0211B0F8
	stmfd sp!, {r3, lr}
	mov r12, r0
	ldr r3, [r12, #0x4f8]
	mov r0, #0x1c
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xc]
	cmp r0, #3
	bne _0211B160
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _0211B13C
	ldrh r0, [r3, #0x10]
	add r1, r12, #0xa4
	add r1, r1, r2, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0211B13C:
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	ldrh r0, [r3, #0x10]
	add r1, r12, #0xc0
	add r1, r1, r2, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_0211B160:
	ldrh r0, [r3, #0xa]
	add r1, r12, #0xa4
	add r1, r1, r2, lsl #3
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov46_0211b0f8

	arm_func_start FUN_ov46_0211b178
FUN_ov46_0211b178: ; 0x0211B178
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211B1C4 ; =g3DPlaneCtrl
	b _0211B1B4
_0211B18C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _0211B1B0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211B1B0:
	add r5, r5, #1
_0211B1B4:
	cmp r5, #0x1d
	blt _0211B18C
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211B1C4: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b178

	arm_func_start FUN_ov46_0211b1c8
FUN_ov46_0211b1c8: ; 0x0211B1C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211B228 ; =g3DPlaneCtrl
	b _0211B21C
_0211B1E0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _0211B218
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B218
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x114]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211B218:
	add r6, r6, #1
_0211B21C:
	cmp r6, #0x1d
	blt _0211B1E0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B228: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b1c8

	arm_func_start FUN_ov46_0211b22c
FUN_ov46_0211b22c: ; 0x0211B22C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r5, _0211B418 ; =gSprButtonCtrl
	mov r4, r0
	ldr r0, [r5]
	mov r6, r1
	mov r1, #2
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #1
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #3
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #4
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #5
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #6
	bl FUN_ov16_0210eb3c
	mov r0, r4
	bl FUN_ov46_02120db4
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _0211B410
_0211B29C: ; jump table
	b _0211B2B4 ; case 0
	b _0211B2E0 ; case 1
	b _0211B338 ; case 2
	b _0211B3B8 ; case 3
	b _0211B398 ; case 4
	b _0211B3D8 ; case 5
_0211B2B4:
	mov r0, r4
	add r1, r4, #0x268
	bl FUN_ov46_0211b41c
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211b41c
	mov r0, r4
	add r1, r4, #0x1c0
	bl FUN_ov46_0211d090
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B2E0:
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211b41c
	mov r1, #0x48
	str r1, [sp]
	mov r0, #0xb0
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	mov r5, #0
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	str r5, [sp, #0x1c]
	mov r0, r4
	add r1, r4, #0x268
	mov r2, #0x18
	mov r3, #0x30
	str r5, [sp, #0x20]
	bl FUN_ov46_0211d750
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B338:
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211b41c
	mov r1, #0x48
	str r1, [sp]
	mov r0, #0xb0
	stmib sp, {r0, r1}
	str r0, [sp, #0xc]
	mov r2, #0x60
	str r2, [sp, #0x10]
	ldr r1, [r4, #0x99c]
	mov r0, #0x68
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	mov r5, #8
	mov r0, r4
	add r1, r4, #0x268
	mov r2, #0x15
	mov r3, #0x18
	str r5, [sp, #0x20]
	bl FUN_ov46_0211d750
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B398:
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211b41c
	mov r0, r4
	add r1, r4, #0x268
	bl FUN_ov46_0211ddec
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B3B8:
	mov r0, r4
	add r1, r4, #0x268
	bl FUN_ov46_0211b41c
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211dce4
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B3D8:
	mov r0, r4
	add r1, r4, #0x310
	bl FUN_ov46_0211b41c
	mov r0, #0x38
	str r0, [sp]
	mov r1, #0x68
	mov r0, r4
	str r1, [sp, #4]
	mov r5, #0x67
	add r1, r4, #0x268
	mov r2, #0x1c
	mov r3, #0x10
	str r5, [sp, #8]
	bl FUN_ov46_02120a30
_0211B410:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B418: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211b22c

	arm_func_start FUN_ov46_0211b41c
FUN_ov46_0211b41c: ; 0x0211B41C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211B468 ; =g3DPlaneCtrl
	b _0211B44C
_0211B430:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B448
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211B448:
	add r5, r5, #1
_0211B44C:
	cmp r5, #0x20
	blt _0211B430
	mov r0, r6
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B468: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b41c

	arm_func_start FUN_ov46_0211b46c
FUN_ov46_0211b46c: ; 0x0211B46C
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	bx lr
_0211B478: ; jump table
	b _0211B490 ; case 0
	b _0211B498 ; case 1
	b _0211B498 ; case 2
	b _0211B4A0 ; case 3
	b _0211B498 ; case 4
	b _0211B498 ; case 5
_0211B490:
	mov r0, #0
	bx lr
_0211B498:
	mov r0, #1
	bx lr
_0211B4A0:
	mov r0, #2
	bx lr
	arm_func_end FUN_ov46_0211b46c

	arm_func_start FUN_ov46_0211b4a8
FUN_ov46_0211b4a8: ; 0x0211B4A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r1, [r10, #0xd4]
	ldr r4, _0211B5CC ; =g3DPlaneCtrl
	bl FUN_ov46_0211b46c
	movs r5, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, #0x1c0
	mov r0, #0xa8
	mla r9, r5, r0, r1
	mov r7, #0
	ldr r6, _0211B5D0 ; =0x00007FFF
	b _0211B4FC
_0211B4DC:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B4F8
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_02114204
_0211B4F8:
	add r7, r7, #1
_0211B4FC:
	cmp r7, #0x20
	blt _0211B4DC
	cmp r5, #0
	ldr r1, [r10, #0xb4]
	ble _0211B53C
	cmp r1, #0
	beq _0211B524
	ldr r0, [r4]
	ldr r2, _0211B5D4 ; =0x00004210
	bl FUN_ov16_02114204
_0211B524:
	ldr r1, [r10, #0xb8]
	cmp r1, #0
	beq _0211B568
	ldr r0, [r4]
	ldr r2, _0211B5D4 ; =0x00004210
	b _0211B564
_0211B53C:
	cmp r1, #0
	beq _0211B550
	ldr r0, [r4]
	ldr r2, _0211B5D0 ; =0x00007FFF
	bl FUN_ov16_02114204
_0211B550:
	ldr r1, [r10, #0xb8]
	cmp r1, #0
	beq _0211B568
	ldr r0, [r4]
	ldr r2, _0211B5D0 ; =0x00007FFF
_0211B564:
	bl FUN_ov16_02114204
_0211B568:
	sub r8, r5, #1
	add r6, r10, #0x1c0
	ldr r5, _0211B5D4 ; =0x00004210
	mov r11, #0xa8
	b _0211B5C0
_0211B57C:
	mla r9, r8, r11, r6
	mov r7, #0
	b _0211B5B4
_0211B588:
	add r0, r9, r7, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211B5B0
	ldr r0, [r10, #0x1a8]
	cmp r0, r1
	beq _0211B5B0
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
_0211B5B0:
	add r7, r7, #1
_0211B5B4:
	cmp r7, #0x20
	blt _0211B588
	sub r8, r8, #1
_0211B5C0:
	cmp r8, #0
	bge _0211B57C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5CC: .word g3DPlaneCtrl
_0211B5D0: .word 0x00007FFF
_0211B5D4: .word 0x00004210
	arm_func_end FUN_ov46_0211b4a8

	arm_func_start FUN_ov46_0211b5d8
FUN_ov46_0211b5d8: ; 0x0211B5D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r7, _0211B680 ; =0x00005AD6
	ldr r6, _0211B684 ; =g3DPlaneCtrl
	b _0211B63C
_0211B5F0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x1e0]
	cmp r1, #0
	ble _0211B638
	ldr r0, [r5, #0x1a8]
	cmp r0, r1
	ldrne r0, [r5, #0x18c]
	cmpne r0, r1
	ldrne r0, [r5, #0x190]
	cmpne r0, r1
	ldrne r0, [r5, #0x194]
	cmpne r0, r1
	ldrne r0, [r5, #0x198]
	cmpne r0, r1
	beq _0211B638
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02114204
_0211B638:
	add r4, r4, #1
_0211B63C:
	cmp r4, #0x20
	blt _0211B5F0
	ldr r1, [r5, #0xb4]
	cmp r1, #0
	beq _0211B660
	ldr r0, _0211B684 ; =g3DPlaneCtrl
	ldr r2, _0211B680 ; =0x00005AD6
	ldr r0, [r0]
	bl FUN_ov16_02114204
_0211B660:
	ldr r1, [r5, #0xb8]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B684 ; =g3DPlaneCtrl
	ldr r2, _0211B680 ; =0x00005AD6
	ldr r0, [r0]
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B680: .word 0x00005AD6
_0211B684: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b5d8

	arm_func_start FUN_ov46_0211b688
FUN_ov46_0211b688: ; 0x0211B688
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	ldr r5, _0211B704 ; =0x00007FFF
	ldr r4, _0211B708 ; =g3DPlaneCtrl
	b _0211B6C0
_0211B6A0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1e0]
	cmp r1, #0
	ble _0211B6BC
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_02114204
_0211B6BC:
	add r6, r6, #1
_0211B6C0:
	cmp r6, #0x20
	blt _0211B6A0
	ldr r1, [r7, #0xb4]
	cmp r1, #0
	beq _0211B6E4
	ldr r0, _0211B708 ; =g3DPlaneCtrl
	ldr r2, _0211B704 ; =0x00007FFF
	ldr r0, [r0]
	bl FUN_ov16_02114204
_0211B6E4:
	ldr r1, [r7, #0xb8]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211B708 ; =g3DPlaneCtrl
	ldr r2, _0211B704 ; =0x00007FFF
	ldr r0, [r0]
	bl FUN_ov16_02114204
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B704: .word 0x00007FFF
_0211B708: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211b688

	arm_func_start FUN_ov46_0211b70c
FUN_ov46_0211b70c: ; 0x0211B70C
	ldrb r12, [r0, #0x3e4]
	mov r2, #0
	cmp r12, #0
	ble _0211B740
	ldr r3, [r0, #0x4f4]
_0211B720:
	ldrb r0, [r3, r2, lsl #3]
	cmp r1, r0
	addeq r0, r3, r2, lsl #3
	ldreq r0, [r0, #4]
	bxeq lr
	add r2, r2, #1
	cmp r2, r12
	blt _0211B720
_0211B740:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov46_0211b70c

	arm_func_start FUN_ov46_0211b748
FUN_ov46_0211b748: ; 0x0211B748
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0211B7B4 ; =gUnitMan
	mov r5, #0
	mov r0, r4
	mov r8, r1
	mov r7, r2
	mov r6, r5
	bl FUN_0206c2f8
	cmp r0, #0
	ble _0211B7A4
_0211B770:
	mov r0, r4
	mov r1, r6
	bl FUN_0206c6fc
	cmp r0, #0
	beq _0211B790
	ldrb r0, [r0, #0x62]
	cmp r8, r0
	addeq r5, r5, #1
_0211B790:
	mov r0, r4
	add r6, r6, #1
	bl FUN_0206c2f8
	cmp r6, r0
	blt _0211B770
_0211B7A4:
	mov r0, #1
	cmp r7, r5
	movgt r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B7B4: .word gUnitMan
	arm_func_end FUN_ov46_0211b748

	arm_func_start FUN_ov46_0211b7b8
FUN_ov46_0211b7b8: ; 0x0211B7B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r5, [r7, #0x4f8]
	mov r4, r3
	mov r8, #0x1c
	mla r3, r4, r8, r5
	mov r6, r1
	ldrh r1, [r3, #0xa]
	mov r5, r2
	cmp r1, #0
	beq _0211B814
	bl FUN_ov46_0211c890
	cmp r0, #0
	beq _0211B814
	ldr r1, [r7, #0x4f8]
	ldr r0, _0211B950 ; =gUnitMan
	mla r1, r4, r8, r1
	ldrh r1, [r1, #0xa]
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B814:
	cmp r6, #9
	addls pc, pc, r6, lsl #2
	b _0211B8F8
_0211B820: ; jump table
	b _0211B8F8 ; case 0
	b _0211B848 ; case 1
	b _0211B860 ; case 2
	b _0211B870 ; case 3
	b _0211B884 ; case 4
	b _0211B89C ; case 5
	b _0211B8B0 ; case 6
	b _0211B8C4 ; case 7
	b _0211B8D8 ; case 8
	b _0211B8E0 ; case 9
_0211B848:
	ldr r0, _0211B954 ; =gLogicThink
	bl FUN_ov16_020edfc0
	cmp r5, r0
	movls r0, #1
	movhi r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B860:
	mov r0, r7
	mov r1, r5
	bl FUN_ov46_02120ec8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B870:
	mov r0, r7
	mov r2, r5
	mov r1, #3
	bl FUN_ov46_0211b748
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B884:
	ldr r0, _0211B954 ; =gLogicThink
	bl FUN_ov16_020edf7c
	cmp r5, r0
	movls r0, #1
	movhi r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B89C:
	mov r0, r7
	mov r2, r5
	mov r1, #1
	bl FUN_ov46_0211b748
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B8B0:
	mov r0, r7
	mov r2, r5
	mov r1, #2
	bl FUN_ov46_0211b748
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B8C4:
	mov r0, r7
	mov r2, r5
	mov r1, #4
	bl FUN_ov46_0211b748
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B8D8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B8E0:
	ldr r0, _0211B958 ; =0x020A0B00
	ldr r0, [r0, #0x20]
	cmp r5, r0
	movls r0, #1
	movhi r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B8F8:
	cmp r6, #0x32
	blo _0211B918
	cmp r6, #0x64
	bhi _0211B918
	mov r0, r7
	mov r1, r5
	bl FUN_ov46_0211c890
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B918:
	cmp r6, #0x65
	blo _0211B948
	cmp r6, #0xff
	bhi _0211B948
	ldr r0, _0211B95C ; =0x020AF81C
	mov r1, #0x25
	bl FUN_02044658
	ldr r0, [r0]
	cmp r5, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B948:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B950: .word gUnitMan
_0211B954: .word gLogicThink
_0211B958: .word unk_020A0B00
_0211B95C: .word unk_020AF81C
	arm_func_end FUN_ov46_0211b7b8

	arm_func_start FUN_ov46_0211b960
FUN_ov46_0211b960: ; 0x0211B960
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r2
	mov r6, #0
	ldr r8, _0211BAA4 ; =0x00002710
	ldr r11, _0211BAA8 ; =0x021215B0
	ldr r5, _0211BAAC ; =0x021215AC
	ldr r4, _0211BAB0 ; =0x66666667
	mov r10, r1
	strb r6, [r9]
_0211B984:
	mov r0, r10
	mov r1, r8
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	movs r7, r0, lsr #0x10
	cmpeq r6, #1
	bne _0211B9AC
	mov r0, r9
	mov r1, r5
	b _0211BA5C
_0211B9AC:
	cmp r7, #1
	bne _0211B9C0
	mov r0, r9
	mov r1, r11
	b _0211BA5C
_0211B9C0:
	cmp r7, #2
	bne _0211B9D4
	mov r0, r9
	ldr r1, _0211BAB4 ; =0x021215B4
	b _0211BA5C
_0211B9D4:
	cmp r7, #3
	bne _0211B9E8
	mov r0, r9
	ldr r1, _0211BAB8 ; =0x021215B8
	b _0211BA5C
_0211B9E8:
	cmp r7, #4
	bne _0211B9FC
	mov r0, r9
	ldr r1, _0211BABC ; =0x021215BC
	b _0211BA5C
_0211B9FC:
	cmp r7, #5
	bne _0211BA10
	mov r0, r9
	ldr r1, _0211BAC0 ; =0x021215C0
	b _0211BA5C
_0211BA10:
	cmp r7, #6
	bne _0211BA24
	mov r0, r9
	ldr r1, _0211BAC4 ; =0x021215C4
	b _0211BA5C
_0211BA24:
	cmp r7, #7
	bne _0211BA38
	mov r0, r9
	ldr r1, _0211BAC8 ; =0x021215C8
	b _0211BA5C
_0211BA38:
	cmp r7, #8
	bne _0211BA4C
	mov r0, r9
	ldr r1, _0211BACC ; =0x021215CC
	b _0211BA5C
_0211BA4C:
	cmp r7, #9
	bne _0211BA60
	ldr r1, _0211BAD0 ; =0x021215D0
	mov r0, r9
_0211BA5C:
	bl STD_ConcatenateString
_0211BA60:
	cmp r7, #1
	blo _0211BA70
	cmp r7, #9
	movls r6, #1
_0211BA70:
	mul r0, r7, r8
	mov r0, r0, lsl #0x10
	sub r0, r10, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r10, r0, lsr #0x10
	smull r0, r1, r4, r8
	mov r0, r8, lsr #0x1f
	add r1, r0, r1, asr #2
	mov r0, r1, lsl #0x10
	mov r8, r0, lsr #0x10
	cmp r8, #1
	bhs _0211B984
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BAA4: .word 0x00002710
_0211BAA8: .word ov46_021215B0
_0211BAAC: .word ov46_021215AC
_0211BAB0: .word 0x66666667
_0211BAB4: .word ov46_021215B4
_0211BAB8: .word ov46_021215B8
_0211BABC: .word ov46_021215BC
_0211BAC0: .word ov46_021215C0
_0211BAC4: .word ov46_021215C4
_0211BAC8: .word ov46_021215C8
_0211BACC: .word ov46_021215CC
_0211BAD0: .word ov46_021215D0
	arm_func_end FUN_ov46_0211b960

	arm_func_start FUN_ov46_0211bad4
FUN_ov46_0211bad4: ; 0x0211BAD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	movs r10, r1
	str r0, [sp]
	addeq sp, sp, #0x24
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #0x300
	ldrh r0, [r0, #0xe2]
	ldr r5, _0211BCD8 ; =0xFFFE7960
	mov r6, #0
	str r0, [sp, #0xc]
	mvn r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0211BC84
	ldr r0, [sp]
	mov r1, #0x1c
	ldrb r0, [r0, #0x3d7]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r0, [r0, #0x950]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mul r1, r0, r1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
_0211BB4C:
	ldr r0, [sp, #0x14]
	mov r1, r6, lsl #3
	ldrh r1, [r0, r1]
	add r0, r0, r6, lsl #3
	ldrh r2, [r0, #2]
	ldr r0, [sp, #8]
	ldr r7, [sp, #0x18]
	cmp r1, r0
	moveq r7, r2
	beq _0211BB7C
	cmp r2, r0
	moveq r7, r1
_0211BB7C:
	ldr r0, [sp, #0x20]
	cmp r7, r0
	beq _0211BC74
	ldr r0, [sp]
	ldr r1, [r0, #0x4f8]
	mov r0, #0x1c
	mla r8, r7, r0, r1
	ldr r0, [sp, #0x1c]
	add r4, r1, r0
	ldrh r0, [r8, #6]
	str r0, [sp, #0x10]
	ldrh r11, [r4, #6]
	mov r0, r0
	sub r0, r11, r0
	bl abs
	ldrh r9, [r4, #8]
	ldrh r8, [r8, #8]
	mov r4, r0
	sub r0, r9, r8
	bl abs
	cmp r10, #3
	bne _0211BBF0
	cmp r9, r8
	bls _0211BC74
	cmp r4, #0
	addeq sp, sp, #0x24
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0211BC10
_0211BBF0:
	cmp r10, #4
	bne _0211BC18
	cmp r9, r8
	bhs _0211BC74
	cmp r4, #0
	addeq sp, sp, #0x24
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC10:
	sub r0, r0, r4
	b _0211BC68
_0211BC18:
	cmp r10, #1
	bne _0211BC40
	ldr r1, [sp, #0x10]
	cmp r11, r1
	bls _0211BC74
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _0211BC64
_0211BC40:
	cmp r10, #2
	bne _0211BC74
	ldr r1, [sp, #0x10]
	cmp r11, r1
	bhs _0211BC74
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC64:
	sub r0, r4, r0
_0211BC68:
	cmp r5, r0
	strlt r7, [sp, #4]
	movlt r5, r0
_0211BC74:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0211BB4C
_0211BC84:
	ldr r0, [sp, #4]
	mvn r4, #0
	cmp r0, r4
	bne _0211BCCC
	ldr r0, [sp]
	mov r1, r10
	bl FUN_ov46_0211bcdc
	str r0, [sp, #4]
	cmp r0, r4
	beq _0211BCCC
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	streq r4, [sp, #4]
	ldr r0, [sp, #4]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BCCC:
	ldr r0, [sp, #4]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BCD8: .word 0xFFFE7960
	arm_func_end FUN_ov46_0211bad4

	arm_func_start FUN_ov46_0211bcdc
FUN_ov46_0211bcdc: ; 0x0211BCDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	str r0, [sp]
	add r0, r0, #0x300
	ldrh r0, [r0, #0xe0]
	mov r11, r1
	mov r5, #0
	str r0, [sp, #4]
	mvn r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	cmp r0, #0
	ldr r0, _0211BE08 ; =0x05F5E100
	str r0, [sp, #0xc]
	ble _0211BDFC
	ldr r0, [sp]
	ldrb r0, [r0, #0x3d8]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r10, [r0, #0x4f8]
_0211BD2C:
	mov r0, #0x1c
	mul r3, r5, r0
	ldrb r1, [r10, r3]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _0211BDEC
	ldr r0, [sp]
	ldrb r2, [r0, #0x3d7]
	cmp r5, r2
	beq _0211BDEC
	mov r0, #0x1c
	mla r1, r2, r0, r10
	add r0, r10, r3
	ldrh r6, [r1, #6]
	ldrh r8, [r0, #6]
	ldrh r9, [r0, #8]
	ldrh r7, [r1, #8]
	sub r0, r6, r8
	bl abs
	mov r4, r0
	sub r0, r7, r9
	bl abs
	mul r1, r4, r4
	mla r1, r0, r0, r1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0211BDEC
	cmp r11, #4
	addls pc, pc, r11, lsl #2
	b _0211BDEC
_0211BDA4: ; jump table
	b _0211BDEC ; case 0
	b _0211BDD0 ; case 1
	b _0211BDDC ; case 2
	b _0211BDB8 ; case 3
	b _0211BDC4 ; case 4
_0211BDB8:
	cmp r7, r9
	ble _0211BDEC
	b _0211BDE4
_0211BDC4:
	cmp r7, r9
	bge _0211BDEC
	b _0211BDE4
_0211BDD0:
	cmp r6, r8
	ble _0211BDEC
	b _0211BDE4
_0211BDDC:
	cmp r6, r8
	bge _0211BDEC
_0211BDE4:
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
_0211BDEC:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0211BD2C
_0211BDFC:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE08: .word 0x05F5E100
	arm_func_end FUN_ov46_0211bcdc

	arm_func_start FUN_ov46_0211be0c
FUN_ov46_0211be0c: ; 0x0211BE0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	bl FUN_ov46_0211bf84
	ldrb r0, [r6, #0x3da]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x3d7]
	mov r7, #0x1c
	ldr r2, [r6, #0x4f8]
	smulbb r0, r0, r7
	ldrb r1, [r6, #0x3d8]
	ldrb r0, [r2, r0]
	cmp r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov46_0211a004
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r0, r1, r7, r0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0211BEDC
	mov r0, r6
	bl FUN_ov46_0211c794
	cmp r0, #0
	bne _0211BED8
	ldrb r1, [r6, #0x3d7]
	mov r0, r6
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	beq _0211BECC
	ldrb r3, [r6, #0x3d7]
	ldr r1, [r6, #0x4f8]
	mov r0, r6
	mla r2, r3, r7, r1
	ldrb r1, [r2, #1]
	ldrh r2, [r2, #0x14]
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211BECC
	ldrb r1, [r6, #0x3d7]
	mov r0, r6
	bl FUN_ov46_0211c810
	b _0211BEDC
_0211BECC:
	mov r0, #1
	strb r0, [r6, #0x9b4]
	b _0211BEE0
_0211BED8:
	b _0211BEDC
_0211BEDC:
	strb r4, [r6, #0x9b4]
_0211BEE0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov46_0211bad4
	mov r5, r0
	cmn r5, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r6, #0x3d7]
	mov r2, r5, lsl #0x10
	mov r0, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov46_0211cddc
	mov r1, #0x1c
	ldrb r3, [r6, #0x3d7]
	mov r2, #0
	mul r7, r5, r1
	smulbb r3, r3, r1
	ldr r12, [r6, #0x4f8]
	strb r2, [r6, #0x991]
	ldrb r1, [r12, r7]
	ldrb r3, [r12, r3]
	mov r7, r0
	cmp r3, r1
	beq _0211BF48
	mov r0, r6
	bl FUN_ov46_0211ec58
	b _0211BF54
_0211BF48:
	ldr r0, _0211BF7C ; =gAudioPlayer
	ldr r1, _0211BF80 ; =0x000040D3
	bl _ZN11AudioPlayer10playEffectEi
_0211BF54:
	and r1, r5, #0xff
	mov r0, r6
	str r7, [r6, #0x994]
	strb r5, [r6, #0x3d7]
	strb r1, [r6, #0x3d6]
	bl FUN_ov46_0211ce50
	mov r0, r6
	bl FUN_ov46_0211bf84
	str r4, [r6, #0x9c0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BF7C: .word gAudioPlayer
_0211BF80: .word 0x000040D3
	arm_func_end FUN_ov46_0211be0c

	arm_func_start FUN_ov46_0211bf84
FUN_ov46_0211bf84: ; 0x0211BF84
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0211C03C ; =g3DPlaneCtrl
	sub r7, r4, #0x100
	mov r5, r0
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0x1a8]
	mov r3, r7
	mov r2, #2
	bl FUN_ov16_02113b78
	str r4, [sp]
	mov r4, #1
	ldr r0, [r6]
	ldr r1, [r5, #0x1bc]
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_02113b78
	ldrb r0, [r5, #0x3da]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r5, #0x3d7]
	ldr r0, [r5, #0x4f8]
	mov r1, #0x1c
	mla r0, r2, r1, r0
	ldrh r3, [r0, #8]
	ldr r0, [r5, #0x3c0]
	mov r2, r4
	sub r3, r3, #4
	sub r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrb r4, [r5, #0x3d7]
	ldr r0, [r5, #0x4f8]
	ldr r3, [r5, #0x3bc]
	mla r0, r4, r1, r0
	ldrh r4, [r0, #6]
	ldr r0, [r6]
	ldr r1, [r5, #0x1bc]
	sub r4, r4, #4
	sub r3, r4, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C03C: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211bf84

	arm_func_start FUN_ov46_0211c040
FUN_ov46_0211c040: ; 0x0211C040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r0, [r6, #0x9a8]
	mov r5, r1
	cmp r0, #0x3e8
	mov r8, #1
	mov r7, #0x1c
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	bne _0211C088
	ldrb r0, [r6, #0x998]
	cmp r0, #5
	addls r0, r0, #1
	addls sp, sp, #0x10
	strlsb r0, [r6, #0x998]
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C088:
	mov r0, #0
	strb r0, [r6, #0x998]
	cmp r5, #0
	bne _0211C0D8
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r0, r1, r7, r0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0211C0D8
	ldr r0, [r6, #0x9b8]
	cmp r0, r1
	bne _0211C0D8
	ldr r0, [r6, #0x74]
	add r1, r6, #0x3e8
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C0D8:
	ldrb r0, [r6, #0x3d7]
	ldr r1, [r6, #0x4f8]
	mov r9, #0
	mla r2, r0, r7, r1
	add r0, r6, #0x300
	mvn r3, #0
	add r1, r6, #0x400
	strh r9, [r0, #0xec]
	str r3, [r6, #0x3e8]
	strb r9, [r6, #0x3ee]
	strb r9, [r6, #0x3ef]
	strb r9, [r6, #0x3f0]
	strb r9, [r6, #0x3f1]
	strb r9, [r6, #0x3f2]
	strh r9, [r1, #0xf2]
	ldrb r1, [r2, #1]
	mov r0, r6
	bl FUN_ov46_0211b70c
	mov r4, r0
	mov r2, r9
_0211C128:
	ldrsb r0, [r4, r2]
	add r1, r4, r2
	cmp r0, #0x25
	bne _0211C148
	ldrsb r0, [r1, #1]
	cmp r0, #0x73
	moveq r9, r8
	b _0211C150
_0211C148:
	cmp r0, #0
	beq _0211C15C
_0211C150:
	cmp r9, #0
	add r2, r2, #1
	beq _0211C128
_0211C15C:
	cmp r9, #0
	mov r8, #1
	beq _0211C1A0
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	add r9, sp, #0
	mla r0, r1, r7, r0
	ldrh r1, [r0, #0x14]
	mov r0, r6
	mov r2, r9
	bl FUN_ov46_0211b960
	add r0, r6, #0xf2
	mov r1, r4
	mov r2, r9
	add r0, r0, #0x300
	bl sprintf
	b _0211C1B0
_0211C1A0:
	add r0, r6, #0xf2
	mov r1, r4
	add r0, r0, #0x300
	bl STD_CopyString
_0211C1B0:
	ldrb r0, [r6, #0x3d7]
	ldr r1, [r6, #0x4f8]
	mla r2, r0, r7, r1
	ldrh r1, [r2, #0xc]
	add r0, r6, #0x400
	strh r1, [r0, #0xf2]
	ldrh r0, [r2, #0xc]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211C234
_0211C1D8: ; jump table
	b _0211C1F0 ; case 0
	b _0211C1FC ; case 1
	b _0211C208 ; case 2
	b _0211C214 ; case 3
	b _0211C220 ; case 4
	b _0211C22C ; case 5
_0211C1F0:
	mov r0, r6
	bl FUN_ov46_021208a0
	b _0211C234
_0211C1FC:
	mov r0, r6
	bl FUN_ov46_021208bc
	b _0211C234
_0211C208:
	mov r0, r6
	bl FUN_ov46_021208c0
	b _0211C234
_0211C214:
	mov r0, r6
	bl FUN_ov46_02120948
	b _0211C234
_0211C220:
	mov r0, r6
	bl FUN_ov46_02120a28
	b _0211C234
_0211C22C:
	mov r0, r6
	bl FUN_ov46_02120a2c
_0211C234:
	ldrb r0, [r6, #0x3d7]
	ldr r2, [r6, #0x4f8]
	mul r1, r0, r7
	add r0, r2, r1
	ldrh r0, [r0, #0xc]
	cmp r0, #1
	beq _0211C268
	add r0, r0, #0x3fc
	add r0, r0, #0xfc00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _0211C320
_0211C268:
	add r0, r2, r1
	ldrh r1, [r0, #0xa]
	mov r0, r6
	bl FUN_ov46_0211c890
	cmp r0, #0
	beq _0211C2EC
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mov r2, #0
	mla r0, r1, r7, r0
	ldrh r1, [r0, #0xa]
	ldr r0, _0211C46C ; =gUnitMan
	bl FUN_0206c7dc
	cmp r0, #0
	beq _0211C2B0
	add r0, r6, #0xf2
	ldr r1, _0211C470 ; =0x021215D4
	b _0211C318
_0211C2B0:
	ldrb r2, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r1, r2, r7, r0
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	ldreqh r0, [r1, #0xe]
	addeq r0, r6, r0
	ldreqb r0, [r0, #0x9e4]
	cmpeq r0, #0
	add r0, r6, #0xf2
	bne _0211C2E4
	ldr r1, _0211C474 ; =0x021215F8
	b _0211C318
_0211C2E4:
	ldr r1, _0211C478 ; =0x0212161C
	b _0211C318
_0211C2EC:
	ldrb r3, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r0, r3, r7, r0
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r6
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211C320
	add r0, r6, #0xf2
	ldr r1, _0211C47C ; =0x02121630
_0211C318:
	add r0, r0, #0x300
	bl STD_CopyString
_0211C320:
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	add r2, r6, #0x300
	mla r0, r1, r7, r0
	ldrh r3, [r0, #0xa]
	mov r0, r6
	strh r3, [r2, #0xec]
	bl FUN_ov46_0211c8c4
	movs r4, r0
	bne _0211C37C
	ldrb r0, [r6, #0x3d7]
	cmp r0, #0
	beq _0211C37C
	mul r1, r0, r7
	ldr r0, [r6, #0x4f8]
	add r0, r0, #0xa
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0211C380
	mov r0, r6
	bl FUN_ov46_0211c890
	cmp r0, #0
	beq _0211C380
_0211C37C:
	strb r8, [r6, #0x3f0]
_0211C380:
	cmp r4, #0
	ldreqb r1, [r6, #0x3d7]
	ldreq r0, [r6, #0x4f8]
	mlaeq r0, r1, r7, r0
	ldreqh r0, [r0, #0xa]
	cmpeq r0, #0
	bne _0211C3C8
	mov r0, r6
	bl FUN_ov46_0211c794
	cmp r0, #0
	beq _0211C3C8
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r0, r1, r7, r0
	ldrb r0, [r0, #1]
	cmp r0, #0x32
	strhsb r8, [r6, #0x3f0]
	bhs _0211C3E4
_0211C3C8:
	cmp r4, #0
	ldreqb r1, [r6, #0x3d7]
	ldreq r0, [r6, #0x4f8]
	mlaeq r0, r1, r7, r0
	ldreqh r0, [r0, #0xc]
	cmpeq r0, #3
	streqb r8, [r6, #0x3f0]
_0211C3E4:
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x4f8]
	mla r0, r1, r7, r0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	addeq r0, r6, #0x300
	moveq r1, #0xbe
	streqh r1, [r0, #0xec]
	ldrb r0, [r6, #0x3d7]
	ldr r1, [r6, #0x4f8]
	streqb r8, [r6, #0x3f1]
	mla r2, r0, r7, r1
	add r0, r6, #0x300
	ldrh r1, [r0, #0xec]
	ldrb r2, [r2, #2]
	mov r0, r6
	bl FUN_ov46_0211e47c
	add r0, r6, #0x300
	ldrh r1, [r0, #0xec]
	ldr r0, _0211C480 ; =gLogicThink
	bl FUN_0204eb2c
	ldrb r1, [r6, #0x3d7]
	ldr r0, [r6, #0x74]
	strb r5, [r6, #0x3ee]
	str r1, [r6, #0x9b8]
	str r1, [r6, #0x3e8]
	ldr r2, [r0]
	add r1, r6, #0x3e8
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, #0
	strb r0, [r6, #0xa1d]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C46C: .word gUnitMan
_0211C470: .word ov46_021215D4
_0211C474: .word ov46_021215F8
_0211C478: .word ov46_0212161C
_0211C47C: .word ov46_02121630
_0211C480: .word gLogicThink
	arm_func_end FUN_ov46_0211c040

	arm_func_start FUN_ov46_0211c484
FUN_ov46_0211c484: ; 0x0211C484
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov lr, #0
	mov r1, #3
	mov r10, r0
	mov r5, #1
	mov r6, lr
	add r3, sp, #4
	ldr r2, _0211C714 ; =0x55555556
	mov r0, r1
	b _0211C564
_0211C4B0:
	ldrb r11, [r10, #0x3d8]
	mov r9, r5
	mov r7, r5
	cmp r6, r11
	subne r11, r11, #3
	cmpne r6, r11
	movne r9, lr
	mov r8, r5
	mov r4, r5
	cmp r9, #0
	bne _0211C50C
	smull r11, r12, r2, r6
	add r12, r12, r6, lsr #31
	smull r11, r12, r1, r12
	mov r9, #0
	subs r12, r6, r11
	beq _0211C504
	ldrb r11, [r10, #0x3d8]
	add r11, r11, #1
	cmp r6, r11
	moveq r9, r5
_0211C504:
	cmp r9, #0
	moveq r4, #0
_0211C50C:
	cmp r4, #0
	bne _0211C544
	ldrb r4, [r10, #0x3d8]
	mov r9, #0
	smull r11, r12, r2, r4
	add r12, r12, r4, lsr #31
	smull r11, r12, r0, r12
	subs r12, r4, r11
	beq _0211C53C
	sub r4, r4, #1
	cmp r6, r4
	moveq r9, r5
_0211C53C:
	cmp r9, #0
	moveq r8, #0
_0211C544:
	cmp r8, #0
	bne _0211C55C
	ldrb r4, [r10, #0x3d8]
	add r4, r4, #3
	cmp r6, r4
	movne r7, #0
_0211C55C:
	strb r7, [r3, r6]
	add r6, r6, #1
_0211C564:
	cmp r6, #9
	blt _0211C4B0
	mov r7, #0
	mov r6, #1
	mov r5, r7
	add r4, sp, #4
	b _0211C59C
_0211C580:
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _0211C598
	mov r0, r10
	mov r1, r5
	bl FUN_ov46_0211a18c
_0211C598:
	add r5, r5, #1
_0211C59C:
	cmp r5, #9
	blt _0211C580
	mov r9, #0
	ldr r11, _0211C718 ; =0x000003E7
	add r8, sp, #4
	mvn r5, #0xff
	ldr r4, _0211C71C ; =g3DPlaneCtrl
	b _0211C704
_0211C5BC:
	ldrb r0, [r8, r9]
	cmp r0, #0
	beq _0211C5D4
	mov r0, r10
	mov r1, r9
	bl FUN_ov46_0211a0d0
_0211C5D4:
	add r2, r10, r9, lsl #2
	ldr r1, [r2, #0x114]
	cmp r1, #0
	beq _0211C6E8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r9
	ldrb r0, [r0, #0x988]
	cmp r0, #0
	bne _0211C678
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x114]
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211C700
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x114]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	add r0, r10, r9
	strb r6, [r0, #0x988]
	ldr r0, [r4]
	add r2, r10, r9, lsl #2
	ldr r1, [r2, #0x964]
	ldr r3, [r2, #0x114]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	add r1, r10, r9, lsl #2
	ldr r1, [r1, #0x964]
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_0211401c
_0211C678:
	ldrb r0, [r10, #0x3d8]
	mov r2, r6
	cmp r0, r9
	ldrneb r0, [r10, #0x3d9]
	cmpne r0, r9
	add r0, r10, r9, lsl #2
	moveq r3, r11
	ldr r1, [r0, #0x964]
	ldr r0, [r4]
	movne r3, #0x3e8
	bl FUN_ov16_021139bc
	add r0, r10, r9, lsl #3
	ldr r3, [r0, #0xc]
	ldr r1, [r10, #0x3c0]
	add r2, r10, r9, lsl #2
	sub r1, r3, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	ldr r12, [r0, #8]
	ldr r3, [r10, #0x3bc]
	ldr r1, [r2, #0x964]
	sub r3, r12, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r2, r6
	mov r3, r3, asr #0x10
	b _0211C6FC
_0211C6E8:
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r2, #0x964]
	mov r2, r6
	mov r3, r5
_0211C6FC:
	bl FUN_ov16_02113b78
_0211C700:
	add r9, r9, #1
_0211C704:
	cmp r9, #9
	blt _0211C5BC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C714: .word 0x55555556
_0211C718: .word 0x000003E7
_0211C71C: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211c484

	arm_func_start FUN_ov46_0211c720
FUN_ov46_0211c720: ; 0x0211C720
	mov r3, r1, lsr #0x1f
	mov r0, r1, asr #2
	rsb r2, r3, r1, lsl #29
	ldr r12, _0211C754 ; =0x020A1280
	add r0, r1, r0, lsr #29
	add r2, r3, r2, ror #29
	mov r1, #1
	mov r1, r1, lsl r2
	ldrb r2, [r12, r0, asr #3]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r12, r0, asr #3]
	bx lr
_0211C754: .word unk_020A1280
	arm_func_end FUN_ov46_0211c720

	arm_func_start FUN_ov46_0211c758
FUN_ov46_0211c758: ; 0x0211C758
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	mov r0, r1, asr #2
	ldr r3, _0211C790 ; =0x020A1280
	add r0, r1, r0, lsr #29
	mov r2, r1, lsr #0x1f
	ldrb r3, [r3, r0, asr #3]
	rsb r1, r2, r1, lsl #29
	add r1, r2, r1, ror #29
	mov r0, #1
	tst r3, r0, lsl r1
	moveq r0, #0
	bx lr
_0211C790: .word unk_020A1280
	arm_func_end FUN_ov46_0211c758

	arm_func_start FUN_ov46_0211c794
FUN_ov46_0211c794: ; 0x0211C794
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x4f8]
	mov r2, #0x1c
	mla r3, r1, r2, r3
	ldrh r3, [r3, #0xa]
	cmp r3, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	sub r12, r2, #0x1d
	mov lr, #0
	b _0211C7D8
_0211C7C0:
	ldr r3, [r0, #0x4f8]
	mla r3, lr, r2, r3
	ldrh r3, [r3, #0xa]
	add lr, lr, #1
	cmp r3, #0
	addeq r12, r12, #1
_0211C7D8:
	cmp lr, r1
	ble _0211C7C0
	mov r0, r12, asr #2
	ldr r3, _0211C80C ; =0x020A1278
	add r0, r12, r0, lsr #29
	mov r2, r12, lsr #0x1f
	ldrb r3, [r3, r0, asr #3]
	rsb r1, r2, r12, lsl #29
	add r1, r2, r1, ror #29
	mov r0, #1
	tst r3, r0, lsl r1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_0211C80C: .word unk_020A1278
	arm_func_end FUN_ov46_0211c794

	arm_func_start FUN_ov46_0211c810
FUN_ov46_0211c810: ; 0x0211C810
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x4f8]
	mov r2, #0x1c
	mla r3, r1, r2, r3
	ldrh r3, [r3, #0xa]
	cmp r3, #0
	ldmnefd sp!, {r3, pc}
	sub r12, r2, #0x1d
	mov lr, #0
	b _0211C850
_0211C838:
	ldr r3, [r0, #0x4f8]
	mla r3, lr, r2, r3
	ldrh r3, [r3, #0xa]
	add lr, lr, #1
	cmp r3, #0
	addeq r12, r12, #1
_0211C850:
	cmp lr, r1
	ble _0211C838
	mov r2, r12, lsr #0x1f
	mov r0, r12, asr #2
	rsb r1, r2, r12, lsl #29
	ldr r3, _0211C88C ; =0x020A1278
	add r0, r12, r0, lsr #29
	add r2, r2, r1, ror #29
	mov r1, #1
	mov r1, r1, lsl r2
	ldrb r2, [r3, r0, asr #3]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r3, r0, asr #3]
	ldmfd sp!, {r3, pc}
_0211C88C: .word unk_020A1278
	arm_func_end FUN_ov46_0211c810

	arm_func_start FUN_ov46_0211c890
FUN_ov46_0211c890: ; 0x0211C890
	stmfd sp!, {r4, lr}
	ldr r4, _0211C8BC ; =0x020A0DB0
	ldr r0, _0211C8C0 ; =gLogicThink
	bl FUN_0204bc4c
	mov r1, r0
	mov r0, r4
	bl FUN_020508fc
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_0211C8BC: .word unk_020A0DB0
_0211C8C0: .word gLogicThink
	arm_func_end FUN_ov46_0211c890

	arm_func_start FUN_ov46_0211c8c4
FUN_ov46_0211c8c4: ; 0x0211C8C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r2, [r6, #0x4f8]
	mov r5, r1
	mov r0, #0x1c
	mla r1, r5, r0, r2
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211C998
_0211C8EC: ; jump table
	b _0211C904 ; case 0
	b _0211C904 ; case 1
	b _0211C904 ; case 2
	b _0211C904 ; case 3
	b _0211C964 ; case 4
	b _0211C980 ; case 5
_0211C904:
	add r7, r6, #0x300
	ldrh r0, [r7, #0xe2]
	mov r4, #0
	cmp r0, #0
	ble _0211C998
_0211C918:
	mov r0, r6
	mov r1, r4
	bl FUN_ov46_0211c758
	cmp r0, #0
	beq _0211C950
	ldr r2, [r6, #0x950]
	mov r1, r4, lsl #3
	ldrh r0, [r2, r1]
	cmp r5, r0
	addne r0, r2, r1
	ldrneh r0, [r0, #2]
	cmpne r5, r0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C950:
	ldrh r0, [r7, #0xe2]
	add r4, r4, #1
	cmp r4, r0
	blt _0211C918
	b _0211C998
_0211C964:
	ldrh r0, [r1, #0xe]
	add r0, r6, r0
	ldrb r0, [r0, #0x9dc]
	cmp r0, #0
	beq _0211C998
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C980:
	ldrh r0, [r1, #0xe]
	add r0, r6, r0
	ldrb r0, [r0, #0x9e4]
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211C998:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov46_0211c8c4

	arm_func_start FUN_ov46_0211c9a0
FUN_ov46_0211c9a0: ; 0x0211C9A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0x1c
	mov r9, r0
	mov r8, #1
	add r4, r9, #0x300
	mov r7, #0xc0
	mov r10, r5
	mov r11, r5
	ldr r6, _0211CB18 ; =g3DPlaneCtrl
	b _0211CB08
_0211C9C8:
	sub r0, r8, #1
	mul r1, r0, r5
	ldr r0, [r9, #0x4f8]
	ldrb r2, [r9, #0x3d8]
	ldrb r1, [r0, r1]
	cmp r2, r1
	ldrneb r0, [r9, #0x3d9]
	cmpne r0, r1
	beq _0211CA20
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r9, #0x1b0]
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r6]
	ldr r1, [r9, #0x1b0]
	mov r2, r8
	mov r3, #0x100
	b _0211CB00
_0211CA20:
	ldr r0, [r9, #0x4f8]
	sub r1, r8, #1
	mla r0, r1, r10, r0
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211CAB0
_0211CA3C: ; jump table
	b _0211CA54 ; case 0
	b _0211CA64 ; case 1
	b _0211CA74 ; case 2
	b _0211CA84 ; case 3
	b _0211CA94 ; case 4
	b _0211CAA4 ; case 5
_0211CA54:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_0211fec8
	b _0211CAB0
_0211CA64:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_0211fef8
	b _0211CAB0
_0211CA74:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_0212011c
	b _0211CAB0
_0211CA84:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_021201e0
	b _0211CAB0
_0211CA94:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_021202b0
	b _0211CAB0
_0211CAA4:
	mov r0, r9
	mov r1, r8
	bl FUN_ov46_02120428
_0211CAB0:
	sub r1, r8, #1
	mul r0, r1, r11
	ldr r2, [r9, #0x4f8]
	ldr r1, [r9, #0x3c0]
	add r2, r2, r0
	ldrh r3, [r2, #8]
	mov r2, r8
	sub r1, r3, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	ldr r1, [r9, #0x4f8]
	ldr r3, [r9, #0x3bc]
	add r0, r1, r0
	ldrh r12, [r0, #6]
	ldr r0, [r6]
	ldr r1, [r9, #0x1b0]
	sub r3, r12, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
_0211CB00:
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211CB08:
	ldrh r0, [r4, #0xe0]
	cmp r8, r0
	ble _0211C9C8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CB18: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211c9a0

	arm_func_start FUN_ov46_0211cb1c
FUN_ov46_0211cb1c: ; 0x0211CB1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xa0]
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	beq _0211CB74
	ldrb r2, [r4, #0x3d8]
	ldr r0, _0211CBCC ; =g3DPlaneCtrl
	ldr r12, [r4, #0x3bc]
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #8]
	ldr r3, [r2, #0xc]
	ldr r2, [r4, #0x3c0]
	sub r12, lr, r12
	sub r3, r3, r2
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
_0211CB74:
	ldrb r0, [r4, #0xa0]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0xb4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r4, #0x3d9]
	ldr r0, _0211CBCC ; =g3DPlaneCtrl
	ldr r12, [r4, #0x3bc]
	add r2, r4, r2, lsl #3
	ldr lr, [r2, #8]
	ldr r3, [r2, #0xc]
	ldr r2, [r4, #0x3c0]
	sub r4, lr, r12
	sub r3, r3, r2
	mov r2, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldmfd sp!, {r4, pc}
_0211CBCC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211cb1c

	arm_func_start FUN_ov46_0211cbd0
FUN_ov46_0211cbd0: ; 0x0211CBD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r0
	add r5, r8, r2, lsl #2
	ldr r0, [r5, #0xb4]
	mov r11, r1
	cmp r0, #0
	mov r9, #0x1c
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r8, #0x300
	mov r6, #1
	mov r7, #0
	add r4, r8, r11, lsl #3
	ldr r10, _0211CDD8 ; =g3DPlaneCtrl
	str r0, [sp, #4]
	b _0211CDC0
_0211CC14:
	ldr r1, [r8, #0x4f8]
	mul r0, r7, r9
	ldrb r0, [r1, r0]
	cmp r11, r0
	bne _0211CDBC
	cmp r7, #0
	beq _0211CC58
	mov r0, r8
	mov r1, r7
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	bne _0211CC58
	ldr r0, [r8, #0x4f8]
	mla r0, r7, r9, r0
	ldrh r1, [r0, #0xa]
	cmp r1, #0
	bne _0211CD84
_0211CC58:
	ldr r0, [r8, #0x4f8]
	mla r0, r7, r9, r0
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0211CCA4
	mov r0, r8
	mov r1, r7
	bl FUN_ov46_0211c794
	cmp r0, #0
	bne _0211CCA4
	mov r0, r8
	ldr r1, [r8, #0x4f8]
	mov r3, r7
	mla r2, r7, r9, r1
	ldrb r1, [r2, #1]
	ldrh r2, [r2, #0x14]
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211CD80
_0211CCA4:
	ldr r0, [r8, #0x4f8]
	mla r1, r7, r9, r0
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	ldreqh r0, [r1, #0x12]
	cmpeq r0, #2
	bne _0211CCC4
	b _0211CD9C
_0211CCC4:
	mul lr, r7, r9
	ldr r0, [r8, #0x4f8]
	add r1, r0, lr
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	ldreqh r0, [r1, #0x12]
	cmpeq r0, #1
	bne _0211CD28
	ldrh r1, [r1, #8]
	ldr r0, [r4, #0xc]
	mov r2, r6
	sub r0, r1, r0
	add r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r1, [r5, #0xb4]
	ldr r12, [r8, #0x4f8]
	ldr r3, [r4, #8]
	add r12, r12, lr
	ldrh r12, [r12, #6]
	sub r3, r12, r3
	add r3, r3, #4
	b _0211CD74
_0211CD28:
	mul lr, r7, r9
	ldr r0, [r8, #0x4f8]
	mov r2, r6
	add r0, r0, lr
	ldrh r1, [r0, #8]
	ldr r0, [r4, #0xc]
	sub r0, r1, r0
	sub r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r12, [r8, #0x4f8]
	ldr r3, [r4, #8]
	add r12, r12, lr
	ldrh r12, [r12, #6]
	ldr r0, [r10]
	ldr r1, [r5, #0xb4]
	sub r3, r12, r3
	sub r3, r3, #4
_0211CD74:
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	b _0211CDB4
_0211CD80:
	b _0211CD9C
_0211CD84:
	beq _0211CD9C
	mov r0, r8
	bl FUN_ov46_0211c890
	cmp r0, #0
	beq _0211CD9C
	b _0211CD28
_0211CD9C:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r10]
	ldr r1, [r5, #0xb4]
	mov r2, r6
	mov r3, #0x100
_0211CDB4:
	bl FUN_ov16_02113b78
	add r6, r6, #1
_0211CDBC:
	add r7, r7, #1
_0211CDC0:
	ldr r0, [sp, #4]
	ldrh r0, [r0, #0xe0]
	cmp r7, r0
	blt _0211CC14
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CDD8: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211cbd0

	arm_func_start FUN_ov46_0211cddc
FUN_ov46_0211cddc: ; 0x0211CDDC
	stmfd sp!, {r4, lr}
	cmp r1, r2
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r3, r0, #0x300
	ldrh lr, [r3, #0xe2]
	mov r12, #0
	cmp lr, #0
	ble _0211CE48
	ldr r3, [r0, #0x950]
_0211CE04:
	mov r0, r12, lsl #3
	ldrh r4, [r3, r0]
	cmp r1, r4
	beq _0211CE24
	add r0, r3, r0
	ldrh r0, [r0, #2]
	cmp r1, r0
	bne _0211CE3C
_0211CE24:
	cmp r2, r4
	addne r0, r3, r12, lsl #3
	ldrneh r0, [r0, #2]
	cmpne r2, r0
	moveq r0, r12
	ldmeqfd sp!, {r4, pc}
_0211CE3C:
	add r12, r12, #1
	cmp r12, lr
	blt _0211CE04
_0211CE48:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov46_0211cddc

	arm_func_start FUN_ov46_0211ce50
FUN_ov46_0211ce50: ; 0x0211CE50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r4, r0
	add r0, r4, #0x300
	mov r11, #0x1c
	mov r6, #1
	str r0, [sp, #8]
	ldr r5, _0211D08C ; =g3DPlaneCtrl
	b _0211D074
_0211CE74:
	ldr r2, [r4, #0x950]
	sub r0, r6, #1
	mov r1, r0, lsl #3
	add r0, r2, r0, lsl #3
	ldrh r7, [r2, r1]
	ldrh r8, [r0, #2]
	mov r0, #1
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1ac]
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r4
	sub r1, r6, #1
	bl FUN_ov46_0211c758
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1ac]
	beq _0211CED8
	mov r2, r6
	mov r3, #2
	b _0211CEE0
_0211CED8:
	mov r2, r6
	mov r3, #0
_0211CEE0:
	bl FUN_ov16_0211401c
	ldr r1, [r4, #0x950]
	sub r0, r6, #1
	add r0, r1, r0, lsl #3
	ldrh r9, [r0, #6]
	ldrsh r10, [r0, #4]
	cmp r9, #0
	cmpeq r10, #0
	bne _0211CFAC
	ldr r0, [r4, #0x4f8]
	mla r1, r8, r11, r0
	mla r0, r7, r11, r0
	ldrh r3, [r1, #6]
	ldrh r2, [r0, #6]
	ldrh r1, [r1, #8]
	ldrh r0, [r0, #8]
	sub r10, r3, r2
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	mov r0, r10
	bl FX_Atan2Idx
	mov r9, r0
	mul r0, r8, r11
	ldr r2, [r4, #0x4f8]
	ldrb r1, [r2, r0]
	mul r0, r7, r11
	ldrb r0, [r2, r0]
	cmp r1, r0
	beq _0211CF70
	mov r1, r9, lsr #0x1f
	rsb r0, r1, r9, lsl #18
	adds r0, r1, r0, ror #18
	addeq r0, r9, #0xa
	moveq r0, r0, lsl #0x10
	moveq r9, r0, lsr #0x10
_0211CF70:
	ldr r0, [sp, #4]
	str r10, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	bl VEC_Mag
	mov r10, r0
	ldr r0, [r4, #0x950]
	sub r1, r6, #1
	add r0, r0, r1, lsl #3
	strh r9, [r0, #6]
	ldr r0, [r4, #0x950]
	add r0, r0, r1, lsl #3
	strh r10, [r0, #4]
_0211CFAC:
	mov r0, #0xd
	mul r0, r10, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x1ac]
	mov r2, r6
	mov r3, #0x5f
	bl FUN_ov16_02113c60
	ldr r0, [r5]
	ldr r1, [r4, #0x1ac]
	mov r3, r9
	mov r2, r6
	bl FUN_ov16_02113e30
	ldr r0, [r4, #0x4f8]
	ldr r3, [r4, #0x3c0]
	mla r1, r8, r11, r0
	mla r0, r7, r11, r0
	ldrh r8, [r1, #6]
	ldrh r7, [r0, #6]
	ldrh r1, [r1, #8]
	ldrh r0, [r0, #8]
	add r7, r8, r7
	ldr r9, [r4, #0x3bc]
	add r1, r1, r0
	add r1, r1, #0x18
	add r1, r1, r1, lsr #31
	rsb r1, r3, r1, asr #1
	add r0, r7, #0x18
	mov r1, r1, lsl #0x10
	add r0, r0, r0, lsr #31
	mov r1, r1, asr #0x10
	rsb r0, r9, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	sub r0, r0, #7
	mov r0, r0, lsl #0x10
	add r2, r10, r10, lsr #31
	sub r1, r1, #2
	sub r1, r1, r2, asr #1
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	ldr r1, [r4, #0x1ac]
	mov r2, r6
	bl FUN_ov16_02113b78
	add r6, r6, #1
_0211D074:
	ldr r0, [sp, #8]
	ldrh r0, [r0, #0xe2]
	cmp r6, r0
	ble _0211CE74
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D08C: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211ce50

	arm_func_start FUN_ov46_0211d090
FUN_ov46_0211d090: ; 0x0211D090
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r9, r1
	str r8, [sp, #8]
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #4]
	add r6, sp, #8
	mov r7, #1
	ldr r4, _0211D684 ; =g3DPlaneCtrl
	mov r5, r8
	bl FUN_ov46_0211b41c
	ldr r1, [r10, #0xd4]
	mov r0, #0x3e8
	str r1, [r9, #0x1c]
	str r0, [r9, #0xa4]
	mov r11, r0
	b _0211D15C
_0211D0DC:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov46_0211e57c
	add r1, r10, r8, lsl #2
	str r0, [r1, #0x964]
	add r0, r10, r8
	ldrb r0, [r0, #0x988]
	cmp r0, #0
	beq _0211D158
	ldr r0, [r4]
	ldr r1, [r1, #0x964]
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_021139bc
	add r2, r10, r8, lsl #2
	ldr r0, [r4]
	ldr r1, [r2, #0x964]
	ldr r3, [r2, #0x114]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	add r1, r10, r8, lsl #2
	ldr r1, [r1, #0x964]
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
_0211D158:
	add r8, r8, #1
_0211D15C:
	cmp r8, #9
	blt _0211D0DC
	mov r0, r10
	add r6, sp, #8
	mov r7, #1
	ldr r4, _0211D684 ; =g3DPlaneCtrl
	bl FUN_ov46_0211c484
	mov r8, #0
	mov r11, #0x1f4
	b _0211D1D8
_0211D184:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov46_0211e57c
	mov r1, r0
	add r0, r10, r8, lsl #2
	str r1, [r0, #0x18c]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	add r1, r10, r8, lsl #2
	ldr r1, [r1, #0x18c]
	mov r2, r7
	ldr r3, [r10, #0x15c]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r8, r8, #1
_0211D1D8:
	cmp r8, #4
	blt _0211D184
	ldr r4, _0211D684 ; =g3DPlaneCtrl
	str r5, [sp]
	mov r8, #1
	ldr r1, [r10, #0x18c]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x190]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x194]
	mov r2, r8
	mov r3, #3
	bl FUN_ov16_0211401c
	str r5, [sp]
	mov r7, #2
	ldr r0, [r4]
	ldr r1, [r10, #0x198]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r0, r10
	bl FUN_ov46_0211e10c
	add r11, sp, #8
	mov r0, r10
	mov r1, r9
	mov r3, r5
	mov r2, r11
	str r7, [sp]
	bl FUN_ov46_0211e57c
	mov r1, r0
	str r1, [r10, #0x1a8]
	mov r6, #0x64
	ldr r0, [r4]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x140]
	ldr r0, [r4]
	ldr r1, [r10, #0x1a8]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x1a8]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x1a8]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r10, #0x1a8]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x13c]
	ldr r0, [r4]
	ldr r1, [r10, #0x1a8]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r2, r7
	ldr r1, [r10, #0x1a8]
	mov r3, r5
	bl FUN_ov16_0211401c
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	bl FUN_ov46_0211e57c
	mov r1, r0
	str r1, [r10, #0x1bc]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	ldr r1, [r10, #0x1bc]
	mov r2, r8
	ldr r3, [r10, #0x138]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x1bc]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r2, r11
	str r8, [sp]
	mov r0, r10
	mov r1, r9
	mov r3, r5
	bl FUN_ov46_0211e57c
	mov r1, r0
	str r1, [r10, #0x19c]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x32
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	ldr r1, [r10, #0x19c]
	mov r2, r8
	ldr r3, [r10, #0x14c]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0x19c]
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_0211401c
	ldr r7, [r10, #0x14c]
	ldr r4, [r10, #0x148]
	ldr r0, _0211D688 ; =gSprButtonCtrl
	str r6, [sp]
	ldr r0, [r0]
	and r6, r7, #0xff
	ldr r3, [r10, #0x19c]
	mov r1, r8
	mov r2, #5
	and r7, r4, #0xff
	bl FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211D474
	mov r11, #0x18
	mov r1, #0xd0
	mov r2, #0xa8
	mov r3, #0x38
	str r11, [sp]
	bl FUN_ov16_0210e674
	mov r1, r8
	mov r2, r5
	add r0, r4, #0x3a
	mov r3, r5
	bl FUN_ov16_0210e6fc
	mov r1, r6
	add r0, r4, #0x3a
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r1, r8
	add r0, r4, #0x3e
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0210e720
_0211D474:
	mov r0, #0xa8
	str r0, [sp]
	ldr r4, _0211D684 ; =g3DPlaneCtrl
	mov r7, #1
	ldr r0, [r4]
	ldr r1, [r10, #0x19c]
	mov r2, r7
	mov r3, #0xd0
	bl FUN_ov16_02113b78
	mov r0, r10
	bl FUN_ov46_0211aa94
	ldrb r1, [r10, #0x3d8]
	mov r0, r10
	bl FUN_ov46_0211ad9c
	mov r0, r10
	bl FUN_ov46_0211cb1c
	add r0, r10, #0x300
	ldrh r2, [r0, #0xe0]
	mov r0, r10
	mov r1, r9
	str r2, [sp]
	add r2, sp, #8
	mov r3, #0
	bl FUN_ov46_0211e57c
	str r0, [r10, #0x1b0]
	add r8, r10, #0x300
	ldr r5, _0211D684 ; =g3DPlaneCtrl
	mov r6, #0x2bc
	b _0211D518
_0211D4E8:
	ldr r0, [r4]
	ldr r1, [r10, #0x1b0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x160]
	ldr r0, [r4]
	and r3, r1, #0xff
	ldr r1, [r10, #0x1b0]
	mov r2, r7
	bl FUN_ov16_021137dc
	add r7, r7, #1
_0211D518:
	ldrh r3, [r8, #0xe0]
	cmp r7, r3
	ble _0211D4E8
	str r3, [sp]
	add r2, sp, #8
	mov r0, r10
	mov r1, r9
	mov r3, #0
	bl FUN_ov46_0211e57c
	str r0, [r10, #0x1b4]
	mov r8, #1
	add r4, r10, #0x300
	mov r11, #0x244
	mov r7, #0xc0
	mvn r6, #0xff
	b _0211D5BC
_0211D558:
	ldr r0, [r5]
	ldr r1, [r10, #0x1b4]
	mov r2, r8
	mov r3, r11
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x164]
	ldr r0, [r5]
	ldr r1, [r10, #0x1b4]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0x1b4]
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r10, #0x1b4]
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211D5BC:
	ldrh r0, [r4, #0xe0]
	cmp r8, r0
	ble _0211D558
	ldrb r1, [r10, #0xa0]
	mov r0, r10
	ldr r7, _0211D684 ; =g3DPlaneCtrl
	eor r1, r1, #1
	strb r1, [r10, #0xa0]
	bl FUN_ov46_0211c9a0
	ldrb r1, [r10, #0x3d8]
	mov r0, r10
	bl FUN_ov46_0211d68c
	add r0, r10, #0x300
	ldrh r1, [r0, #0xe2]
	add r2, sp, #8
	mov r0, r10
	str r1, [sp]
	mov r1, r9
	mov r3, #0
	bl FUN_ov46_0211e57c
	str r0, [r10, #0x1ac]
	mov r5, #1
	add r6, r10, #0x300
	mov r4, #0x320
	b _0211D650
_0211D620:
	ldr r0, [r7]
	ldr r1, [r10, #0x1ac]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_021139bc
	ldr r2, [r10, #0x144]
	ldr r0, [r7]
	ldr r1, [r10, #0x1ac]
	and r3, r2, #0xff
	mov r2, r5
	bl FUN_ov16_021137dc
	add r5, r5, #1
_0211D650:
	ldrh r0, [r6, #0xe2]
	cmp r5, r0
	ble _0211D620
	mov r0, r10
	bl FUN_ov46_0211ce50
	mov r0, r10
	mov r1, #0
	bl FUN_ov46_0211be0c
	ldr r1, [sp, #4]
	mov r0, r9
	bl FUN_ov16_020f52f4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D684: .word g3DPlaneCtrl
_0211D688: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211d090

	arm_func_start FUN_ov46_0211d68c
FUN_ov46_0211d68c: ; 0x0211D68C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _0211D74C ; =gSprButtonCtrl
	mov r10, r0
	ldr r0, [r5]
	mov r9, r1
	mov r1, #5
	bl FUN_ov16_0210eb3c
	mov r8, #0
	add r6, r10, r9, lsl #3
	add r4, r10, #0x300
	mov r7, #0x12
	mov r11, #0x64
	b _0211D73C
_0211D6C0:
	mov r0, #0x1c
	mul r0, r8, r0
	ldr r1, [r10, #0x4f8]
	ldrb r0, [r1, r0]
	cmp r9, r0
	bne _0211D738
	add r0, r8, #0xa
	mov r1, r0, lsl #0x10
	str r11, [sp]
	mov r2, r1, lsr #0x10
	ldr r0, [r5]
	mov r1, #5
	mov r3, #0
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	beq _0211D738
	str r7, [sp]
	ldr r2, [r10, #0x4f8]
	mov r1, #0x1c
	mla r2, r8, r1, r2
	ldrh r1, [r2, #6]
	ldrh r3, [r2, #8]
	ldr r12, [r6, #8]
	add r1, r1, #4
	ldr r2, [r6, #0xc]
	add r3, r3, #4
	sub r2, r3, r2
	sub r1, r1, r12
	mov r3, r7
	bl FUN_ov16_0210e674
_0211D738:
	add r8, r8, #1
_0211D73C:
	ldrh r0, [r4, #0xe0]
	cmp r8, r0
	blt _0211D6C0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D74C: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211d68c

	arm_func_start FUN_ov46_0211d750
FUN_ov46_0211d750: ; 0x0211D750
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	str r3, [sp, #4]
	ldr r7, [sp, #0x3c]
	mov r6, r0
	mov r8, r1
	mov r4, r2
	ldr r5, [sp, #0x40]
	mov r2, #0
	ldr r10, [sp, #0x4c]
	ldr r11, _0211DCD0 ; =0x000F423F
	mov r0, r6
	cmp r10, r11
	mov r1, r8
	str r2, [sp, #0x10]
	ldr r9, _0211DCD4 ; =g3DPlaneCtrl
	movhi r10, r11
	bl FUN_ov46_0211b41c
	ldr r0, [r6, #0xd4]
	mov r11, #0x1e
	str r0, [r8, #0x1c]
	mov r0, #0
	str r0, [r8]
	str r11, [r8, #0xa4]
	mov r0, #1
	str r0, [sp]
	mov r0, r6
	mov r1, r8
	mov r3, #0
	add r2, sp, #0x10
	bl FUN_ov46_0211e57c
	mov r3, r11
	mov r11, r0
	ldr r0, [r9]
	mov r1, r11
	mov r2, #1
	bl FUN_ov16_021139bc
	add r0, r6, r4, lsl #2
	ldr r1, [r0, #0x114]
	ldr r0, [r9]
	and r3, r1, #0xff
	mov r1, r11
	mov r2, #1
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r11
	mov r2, #1
	mov r3, #0
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x38]
	ldr r3, [sp, #4]
	mov r1, r11
	str r0, [sp]
	ldr r0, [r9]
	mov r2, #1
	bl FUN_ov16_02113b78
	add r1, r6, #0x900
	ldrsh r3, [sp, #0x44]
	ldrsh r2, [sp, #0x48]
	strh r7, [r1, #0xa0]
	strh r3, [r1, #0xa4]
	strh r2, [r1, #0xa6]
	strh r5, [r1, #0xa2]
	mov r1, #1
	str r1, [sp]
	mov r0, r6
	mov r1, r8
	add r2, sp, #0x10
	mov r3, #0
	bl FUN_ov46_0211e57c
	mov r4, r0
	ldr r0, [r9]
	mov r1, r4
	mov r2, #1
	mov r3, #0xf
	bl FUN_ov16_021139bc
	ldr r3, [r6, #0x154]
	ldr r0, [r9]
	mov r1, r4
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r4
	mov r2, #1
	mov r3, #0
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r9]
	mov r1, r4
	mov r2, #1
	mov r3, r7
	bl FUN_ov16_02113b78
	ldr r1, [r6, #0x158]
	ldr r0, [r6, #0x150]
	and r4, r1, #0xff
	mov r1, #1
	and r11, r0, #0xff
	str r1, [sp]
	add r2, sp, #0x10
	mov r0, r6
	mov r1, r8
	mov r3, #0
	bl FUN_ov46_0211e57c
	mov r1, r0
	str r1, [r6, #0x1a0]
	ldr r0, [r9]
	mov r2, #1
	mov r3, #0xa
	bl FUN_ov16_021139bc
	ldr r3, [r6, #0x150]
	ldr r0, [r9]
	ldr r1, [r6, #0x1a0]
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r6, #0x1a0]
	mov r2, #1
	mov r3, #0
	bl FUN_ov16_0211401c
	str r5, [sp]
	ldr r0, [r9]
	ldr r1, [r6, #0x1a0]
	mov r2, #1
	mov r3, r7
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211DCD8 ; =gSprButtonCtrl
	ldr r3, [r6, #0x1a0]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #6
	bl FUN_ov16_0210fbe8
	movs r9, r0
	beq _0211D9F4
	mov r12, #0x17
	mov r1, r7
	mov r2, r5
	mov r3, #0x30
	str r12, [sp]
	bl FUN_ov16_0210e674
	mov r1, #1
	mov r2, r1
	add r0, r9, #0x3a
	mov r3, #0
	bl FUN_ov16_0210e6fc
	mov r2, #0
	add r0, r9, #0x3a
	mov r1, r11
	mov r3, r2
	bl FUN_ov16_0210e720
	mov r1, #1
	add r0, r9, #0x3e
	mov r2, r1
	mov r3, #0
	bl FUN_ov16_0210e6fc
	mov r2, #0
	add r0, r9, #0x3e
	mov r1, r4
	mov r3, r2
	bl FUN_ov16_0210e720
_0211D9F4:
	mov r5, #0
	mov r9, #1
	add r2, sp, #0x10
	mov r0, r6
	mov r1, r8
	mov r3, r5
	str r9, [sp]
	bl FUN_ov46_0211e57c
	mov r1, r0
	ldr r7, _0211DCD4 ; =g3DPlaneCtrl
	str r1, [r6, #0x1a4]
	ldr r0, [r7]
	mov r2, r9
	mov r3, #0xa
	bl FUN_ov16_021139bc
	ldr r3, [r6, #0x150]
	ldr r0, [r7]
	ldr r1, [r6, #0x1a4]
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x1a4]
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0x48]
	ldrsh r3, [sp, #0x44]
	mov r2, r9
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x1a4]
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211DCD8 ; =gSprButtonCtrl
	ldr r3, [r6, #0x1a4]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #7
	bl FUN_ov16_0210fbe8
	movs r7, r0
	beq _0211DB0C
	ldrsh r1, [sp, #0x44]
	ldrsh r2, [sp, #0x48]
	mov r12, #0x17
	mov r3, #0x30
	str r12, [sp]
	bl FUN_ov16_0210e674
	mov r1, r9
	mov r2, r9
	add r0, r7, #0x3a
	mov r3, r5
	bl FUN_ov16_0210e6fc
	mov r1, r11
	add r0, r7, #0x3a
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_0210e720
	add r0, r7, #0x3e
	mov r1, r9
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r1, r4
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_0210e720
_0211DB0C:
	mov r7, #0
	mov r0, r6
	mov r2, r7
	mov r1, #1
	ldr r4, _0211DCD4 ; =g3DPlaneCtrl
	bl FUN_ov46_0211def4
	mov r5, #6
	add r2, sp, #0x10
	mov r0, r6
	mov r1, r8
	mov r3, r7
	str r5, [sp]
	bl FUN_ov46_0211e57c
	mov r5, r0
	mov r8, #0x14
	b _0211DB7C
_0211DB4C:
	ldr r0, [r4]
	mov r1, r5
	mov r3, r8
	add r2, r7, #1
	bl FUN_ov16_021139bc
	ldr r2, [r6, #0x17c]
	ldr r0, [r4]
	mov r1, r5
	and r3, r2, #0xff
	add r2, r7, #1
	bl FUN_ov16_021137dc
	add r7, r7, #1
_0211DB7C:
	cmp r7, #6
	blt _0211DB4C
	cmp r10, #0
	bne _0211DBE4
	mov r8, #0
	mov r7, #0xc0
	mov r6, #0x100
	b _0211DBD4
_0211DB9C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r3, #0
	add r2, r8, #1
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	add r2, r8, #1
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211DBD4:
	cmp r8, #6
	blt _0211DB9C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DBE4:
	ldrsh r0, [sp, #0x50]
	mov r7, #0
	mov r8, r7
	str r0, [sp, #8]
	ldrsh r0, [sp, #0x58]
	ldr r6, _0211DCDC ; =0x000186A0
	ldrsh r11, [sp, #0x54]
	str r0, [sp, #0xc]
	b _0211DCC0
_0211DC08:
	mov r0, r10
	mov r1, r6
	bl _u32_div_f
	mov r1, #0
	str r1, [sp]
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	ldr r0, [r4]
	mov r1, r5
	add r2, r8, #1
	mov r3, r9
	bl FUN_ov16_0211401c
	cmp r7, #1
	beq _0211DC50
	cmp r9, #0
	bne _0211DC50
	cmp r6, #1
	bne _0211DC78
_0211DC50:
	ldr r12, [sp, #0xc]
	ldr r3, [sp, #8]
	str r11, [sp]
	mla r3, r12, r8, r3
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r5
	add r2, r8, #1
	mov r3, r3, asr #0x10
	b _0211DC90
_0211DC78:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r8, #1
	mov r3, #0x100
_0211DC90:
	bl FUN_ov16_02113b78
	cmp r9, #1
	blo _0211DCA4
	cmp r9, #9
	movls r7, #1
_0211DCA4:
	mul r0, r9, r6
	sub r10, r10, r0
	ldr r0, _0211DCE0 ; =0xCCCCCCCD
	mov r1, r6
	umull r0, r6, r1, r0
	mov r6, r6, lsr #3
	add r8, r8, #1
_0211DCC0:
	cmp r6, #1
	bhs _0211DC08
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DCD0: .word 0x000F423F
_0211DCD4: .word g3DPlaneCtrl
_0211DCD8: .word gSprButtonCtrl
_0211DCDC: .word 0x000186A0
_0211DCE0: .word 0xCCCCCCCD
	arm_func_end FUN_ov46_0211d750

	arm_func_start FUN_ov46_0211dce4
FUN_ov46_0211dce4: ; 0x0211DCE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, r0
	str r4, [sp, #4]
	mov r7, r1
	bl FUN_ov46_0211b41c
	ldr r6, [r5, #0xd4]
	mov r9, #0x1e
	add r2, sp, #4
	mov r0, r5
	mov r1, r7
	mov r3, r4
	str r6, [r7, #0x1c]
	str r9, [r7, #0xa4]
	str r4, [r7]
	mov r8, #1
	str r8, [sp]
	bl FUN_ov46_0211e57c
	mov r7, r0
	ldr r6, _0211DDE4 ; =g3DPlaneCtrl
	mov r3, r9
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021139bc
	ldr r1, [r5, #0x170]
	ldr r0, [r6]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	mov r3, #0x40
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211DDE8 ; =gSprButtonCtrl
	mov r1, #4
	ldr r0, [r0]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0xc0
	mov r1, r4
	mov r2, r4
	mov r3, #0x100
	str r5, [sp]
	bl FUN_ov16_0210e674
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DDE4: .word g3DPlaneCtrl
_0211DDE8: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211dce4

	arm_func_start FUN_ov46_0211ddec
FUN_ov46_0211ddec: ; 0x0211DDEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, r0
	str r4, [sp, #4]
	mov r7, r1
	bl FUN_ov46_0211b41c
	ldr r6, [r5, #0xd4]
	mov r9, #0x1e
	add r2, sp, #4
	mov r0, r5
	mov r1, r7
	mov r3, r4
	str r6, [r7, #0x1c]
	str r9, [r7, #0xa4]
	str r4, [r7]
	mov r8, #1
	str r8, [sp]
	bl FUN_ov46_0211e57c
	mov r7, r0
	ldr r6, _0211DEEC ; =g3DPlaneCtrl
	mov r3, r9
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021139bc
	ldr r1, [r5, #0x178]
	ldr r0, [r6]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r8
	mov r3, #0x40
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211DEF0 ; =gSprButtonCtrl
	mov r1, #4
	ldr r0, [r0]
	mov r2, #8
	mov r3, r4
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0xc0
	mov r1, r4
	mov r2, r4
	mov r3, #0x100
	str r5, [sp]
	bl FUN_ov16_0210e674
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DEEC: .word g3DPlaneCtrl
_0211DEF0: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211ddec

	arm_func_start FUN_ov46_0211def4
FUN_ov46_0211def4: ; 0x0211DEF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r0
	cmp r1, #0
	mov r2, #1
	beq _0211DF2C
	add r0, r4, #0x900
	ldrsh r3, [r0, #0xa2]
	ldr r1, _0211DF98 ; =g3DPlaneCtrl
	str r3, [sp]
	ldrsh r3, [r0, #0xa0]
	ldr r0, [r1]
	ldr r1, [r4, #0x1a0]
	b _0211DF44
_0211DF2C:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, _0211DF98 ; =g3DPlaneCtrl
	ldr r1, [r4, #0x1a0]
	ldr r0, [r0]
	mov r3, #0x100
_0211DF44:
	bl FUN_ov16_02113b78
	cmp r5, #0
	mov r2, #1
	beq _0211DF78
	add r0, r4, #0x900
	ldrsh r3, [r0, #0xa6]
	ldr r1, _0211DF98 ; =g3DPlaneCtrl
	str r3, [sp]
	ldrsh r3, [r0, #0xa4]
	ldr r0, [r1]
	ldr r1, [r4, #0x1a4]
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_0211DF78:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, _0211DF98 ; =g3DPlaneCtrl
	ldr r1, [r4, #0x1a4]
	ldr r0, [r0]
	mov r3, #0x100
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, pc}
_0211DF98: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211def4

	arm_func_start FUN_ov46_0211df9c
FUN_ov46_0211df9c: ; 0x0211DF9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrb r0, [r6, #0x3da]
	ldr r7, _0211E108 ; =g3DPlaneCtrl
	mov r5, #1
	mov r4, #0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, r4
	mvn r8, #0xbf
	b _0211DFE8
_0211DFC8:
	str r8, [sp]
	add r1, r6, r9, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0x18c]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	add r9, r9, #1
_0211DFE8:
	cmp r9, #4
	blt _0211DFC8
	ldrb r2, [r6, #0x3d8]
	ldrb r1, [r6, #0x3d9]
	sub r0, r2, #1
	cmp r0, r1
	bne _0211E03C
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x18c]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x18c]
	mov r2, r5
	mov r3, #5
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E03C:
	add r0, r2, #1
	cmp r0, r1
	bne _0211E080
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x190]
	mov r2, r5
	mov r3, #0xf0
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x190]
	mov r2, r5
	mov r3, #4
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E080:
	sub r0, r2, #3
	cmp r0, r1
	bne _0211E0C4
	mvn r0, #1
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x194]
	mov r2, r5
	mov r3, #0x78
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x194]
	mov r2, r5
	mov r3, #7
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E0C4:
	add r0, r2, #3
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #0xb0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x198]
	mov r2, r5
	mov r3, #0x78
	bl FUN_ov16_02113b78
	str r4, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x198]
	mov r2, r5
	mov r3, #6
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E108: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211df9c

	arm_func_start FUN_ov46_0211e10c
FUN_ov46_0211e10c: ; 0x0211E10C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, #0
	mov r8, r0
	ldr r4, _0211E474 ; =g3DPlaneCtrl
	mov r7, #1
	mov r9, r6
	mvn r5, #0xbf
	b _0211E150
_0211E130:
	str r5, [sp]
	add r1, r8, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x18c]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113b78
	add r9, r9, #1
_0211E150:
	cmp r9, #4
	blt _0211E130
	ldr r9, _0211E478 ; =gSprButtonCtrl
	mov r5, #2
	ldr r0, [r9]
	mov r1, r5
	bl FUN_ov16_0210eb3c
	ldrb r0, [r8, #0x3d8]
	cmp r0, #0
	cmpne r0, #3
	cmpne r0, #6
	beq _0211E224
	mov r0, #0x64
	str r0, [sp]
	ldr r0, [r9]
	ldr r3, [r8, #0x18c]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210fbe8
	movs r5, r0
	beq _0211E208
	mov r3, #0x10
	mov r1, r6
	mov r2, #0x58
	str r3, [sp]
	bl FUN_ov16_0210e674
	mov r1, r6
	mov r2, r7
	add r0, r5, #0x3a
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r6
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #5
	bl FUN_ov16_0210e720
_0211E208:
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x18c]
	mov r2, #1
	mov r3, #0
	bl FUN_ov16_02113b78
_0211E224:
	ldrb r0, [r8, #0x3d8]
	cmp r0, #2
	cmpne r0, #5
	cmpne r0, #8
	beq _0211E2E0
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211E478 ; =gSprButtonCtrl
	mov r1, #2
	ldr r0, [r0]
	ldr r3, [r8, #0x190]
	mov r2, r1
	bl FUN_ov16_0210fbe8
	movs r5, r0
	beq _0211E2C4
	mov r3, #0x10
	mov r1, #0xf0
	mov r2, #0x58
	str r3, [sp]
	bl FUN_ov16_0210e674
	mov r1, r6
	mov r2, r7
	add r0, r5, #0x3a
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3a
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #4
	bl FUN_ov16_0210e720
_0211E2C4:
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x190]
	mov r2, #1
	mov r3, #0xf0
	bl FUN_ov16_02113b78
_0211E2E0:
	ldrb r0, [r8, #0x3d8]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	beq _0211E3A4
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211E478 ; =gSprButtonCtrl
	mov r5, #3
	ldr r0, [r0]
	ldr r3, [r8, #0x194]
	mov r2, r5
	mov r1, #2
	bl FUN_ov16_0210fbe8
	movs r10, r0
	beq _0211E388
	mov r1, #0x78
	mov r9, #0x12
	sub r2, r1, #0x7a
	mov r3, #0x10
	str r9, [sp]
	bl FUN_ov16_0210e674
	mov r1, r6
	add r0, r10, #0x3a
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r10, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #7
	bl FUN_ov16_0210e720
_0211E388:
	mvn r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x194]
	mov r2, #1
	mov r3, #0x78
	bl FUN_ov16_02113b78
_0211E3A4:
	ldrb r0, [r8, #0x3d8]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #8
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211E478 ; =gSprButtonCtrl
	mov r5, #2
	ldr r0, [r0]
	ldr r3, [r8, #0x198]
	mov r1, r5
	mov r2, #4
	bl FUN_ov16_0210fbe8
	movs r10, r0
	beq _0211E450
	mov r9, #0x14
	mov r1, #0x78
	mov r2, #0xac
	mov r3, #0x10
	str r9, [sp]
	bl FUN_ov16_0210e674
	mov r1, r6
	mov r2, r7
	mov r3, r6
	add r0, r10, #0x3a
	bl FUN_ov16_0210e6fc
	mov r2, r5
	add r0, r10, #0x3a
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	mov r2, r7
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e6fc
	add r0, r10, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #6
	bl FUN_ov16_0210e720
_0211E450:
	mov r0, #0xb0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x198]
	mov r2, #1
	mov r3, #0x78
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E474: .word g3DPlaneCtrl
_0211E478: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211e10c

	arm_func_start FUN_ov46_0211e47c
FUN_ov46_0211e47c: ; 0x0211E47C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	add r0, r9, #0x78
	mov r8, r1
	mov r7, r2
	bl FUN_0206c62c
	add r0, r9, #0x78
	bl FUN_0206c788
	mov r6, #0
	mov r1, r0
	add r0, r9, #0x78
	mov r2, r6
	mov r3, r6
	str r6, [sp]
	bl FUN_0206c300
	movs r5, r0
	beq _0211E564
	ldr r0, _0211E574 ; =gUnitMan
	mov r1, r8
	bl FUN_0206c718
	cmp r0, #0
	beq _0211E4E4
	mov r1, r5
	mov r2, #0x98
	bl MIi_CpuCopyFast
	b _0211E564
_0211E4E4:
	ldr r4, _0211E578 ; =gLogicThink
	mov r1, r8
	mov r0, r4
	mov r2, r5
	bl FUN_0204bd64
	cmp r0, #0
	beq _0211E564
	mov r0, r5
	strh r8, [r5, #0x4e]
	bl FUN_0206dcd4
	bl FUN_0206ecc4
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206dd58
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r5, #0x4d]
	bl FUN_0206e4a4
	mov r0, r5
	bl FUN_0206dcd4
	ldrh r1, [r5, #0x58]
	bl FUN_0206de90
	mov r0, r5
	mov r1, r6
	mov r2, #1
	bl FUN_0206d9cc
	mov r0, r4
	mov r1, r5
	mov r2, r7
	mov r3, r6
	bl FUN_0204ea4c
_0211E564:
	add r0, r9, #0x300
	strh r8, [r0, #0xde]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E574: .word gUnitMan
_0211E578: .word gLogicThink
	arm_func_end FUN_ov46_0211e47c

	arm_func_start FUN_ov46_0211e57c
FUN_ov46_0211e57c: ; 0x0211E57C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x20
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #1
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211E5FC ; =g3DPlaneCtrl
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0xa1]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0xa0]
	ldr r1, [r5]
	add r2, r6, #0xa1
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211E5FC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211e57c

	arm_func_start FUN_ov46_0211e600
FUN_ov46_0211e600: ; 0x0211E600
	mov r1, #6
	str r1, [r0, #0xd0]
	ldr r12, _0211E614 ; = _ZN8Graphics16FadeScreensBlackEl
	mov r0, r1
	bx r12
_0211E614: .word _ZN8Graphics16FadeScreensBlackEl
	arm_func_end FUN_ov46_0211e600

	arm_func_start FUN_ov46_0211e618
FUN_ov46_0211e618: ; 0x0211E618
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	bne _0211E638
	ldr r0, _0211E648 ; =gSprButtonCtrl
	mov r1, #0x64
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
_0211E638:
	mov r0, #4
	str r4, [r5, #0xd4]
	str r0, [r5, #0xd0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E648: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211e618

	arm_func_start FUN_ov46_0211e64c
FUN_ov46_0211e64c: ; 0x0211E64C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x9a8]
	mov r4, r1
	cmp r0, #0x3e8
	cmpge r4, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211E71C ; =gSprButtonCtrl
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r4, #6
	bne _0211E6A4
	ldr r0, _0211E720 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #1
	mov r2, #0
	bl FUN_ov46_0211def4
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6A4:
	cmp r4, #7
	bne _0211E6CC
	ldr r0, _0211E720 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #0
	mov r2, #1
	bl FUN_ov46_0211def4
	ldmfd sp!, {r3, r4, r5, pc}
_0211E6CC:
	cmp r4, #0xa
	ldmltfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x300
	ldrh r1, [r0, #0xe0]
	add r1, r1, #0xa
	cmp r4, r1
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #0x3d7]
	sub r1, r4, #0xa
	mvn r4, #0
	cmp r1, r2
	str r1, [r5, #0x9ac]
	strh r4, [r0, #0xdc]
	streq r4, [r5, #0x9b0]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	str r4, [r5, #0x9b0]
	bl FUN_ov46_0211eafc
	str r4, [r5, #0x9ac]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E71C: .word gSprButtonCtrl
_0211E720: .word gAudioPlayer
	arm_func_end FUN_ov46_0211e64c

	arm_func_start FUN_ov46_0211e724
FUN_ov46_0211e724: ; 0x0211E724
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #0x9a8]
	mov r5, r1
	cmp r0, #0x3e8
	mov r4, #1
	cmpge r5, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211E9DC ; =gSprButtonCtrl
	mov r1, r5, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r5, #1
	bne _0211E788
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer10playEffectEi
	ldrb r1, [r6, #0x3d8]
	mov r0, r6
	mov r2, r4
	sub r1, r1, #1
	and r1, r1, #0xff
	bl FUN_ov46_0211ec58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E788:
	cmp r5, #2
	bne _0211E7B8
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer10playEffectEi
	ldrb r1, [r6, #0x3d8]
	mov r0, r6
	mov r2, r4
	add r1, r1, #1
	and r1, r1, #0xff
	bl FUN_ov46_0211ec58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7B8:
	cmp r5, #3
	bne _0211E7E8
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer10playEffectEi
	ldrb r1, [r6, #0x3d8]
	mov r0, r6
	mov r2, r4
	sub r1, r1, #3
	and r1, r1, #0xff
	bl FUN_ov46_0211ec58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7E8:
	cmp r5, #4
	bne _0211E818
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer10playEffectEi
	ldrb r1, [r6, #0x3d8]
	mov r0, r6
	mov r2, r4
	add r1, r1, #3
	and r1, r1, #0xff
	bl FUN_ov46_0211ec58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E818:
	cmp r5, #5
	bne _0211E848
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r7]
	mov r1, #5
	bl FUN_ov16_0210efac
	mov r0, r6
	mov r1, r4
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E848:
	cmp r5, #6
	bne _0211E898
	ldr r0, [r6, #0xd4]
	cmp r0, #1
	bne _0211E884
	ldr r0, _0211E9E4 ; =0x020A9C40
	mov r1, #0x66
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	bl FUN_ov46_0211e600
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E884:
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov46_0211f2a4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E898:
	cmp r5, #7
	bne _0211E8D0
	ldr r0, [r6, #0xd4]
	cmp r0, #1
	beq _0211E8B4
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_0211E8B4:
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E8D0:
	cmp r5, #9
	ldreq r0, [r6, #0xd4]
	cmpeq r0, #5
	ldreq r0, [r7]
	addeq r0, r0, #0xf00
	streqh r4, [r0, #0x38]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #8
	ldreq r0, [r6, #0xd4]
	cmpeq r0, #3
	bne _0211E918
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E918:
	cmp r5, #8
	ldreq r0, [r6, #0xd4]
	cmpeq r0, #4
	bne _0211E944
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E944:
	cmp r5, #0xa
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x300
	ldrh r0, [r0, #0xe0]
	add r0, r0, #0xa
	cmp r5, r0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x9ac]
	mvn r0, #0
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x9b0]
	cmp r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x4f8]
	sub r4, r5, #0xa
	mov r0, #0x1c
	mla r0, r4, r0, r1
	ldrh r0, [r0, #0xc]
	mov r1, r4
	cmp r0, #2
	mov r0, r6
	bne _0211E9A8
	bl FUN_ov46_021206a0
	b _0211E9D0
_0211E9A8:
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	bne _0211E9C4
	ldr r0, _0211E9E0 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E9C4:
	mov r0, r6
	mov r1, r4
	bl FUN_ov46_021205a0
_0211E9D0:
	mvn r0, #0
	str r0, [r6, #0x9ac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E9DC: .word gSprButtonCtrl
_0211E9E0: .word gAudioPlayer
_0211E9E4: .word unk_020A9C40
	arm_func_end FUN_ov46_0211e724

	arm_func_start FUN_ov46_0211e9e8
FUN_ov46_0211e9e8: ; 0x0211E9E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r0, [r4, #0x9a8]
	cmp r0, #0x3e8
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4, #0xd4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211EA28
_0211EA0C: ; jump table
	b _0211EA28 ; case 0
	b _0211EA24 ; case 1
	b _0211EA24 ; case 2
	b _0211EA24 ; case 3
	b _0211EA24 ; case 4
	b _0211EA24 ; case 5
_0211EA24:
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EA28:
	ldr r0, _0211EAF8 ; =gSprButtonCtrl
	add r1, sp, #0
	ldr r0, [r0]
	bl FUN_ov16_0210f48c
	ldr r0, [r4, #0x9ac]
	mvn r1, #0
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r2, #0
	add r3, r4, #0x300
	ldrsh r5, [sp, #2]
	ldrsh r0, [sp]
	mov r12, #0x1c
	b _0211EAD8
_0211EA60:
	mul r7, r2, r12
	ldr r8, [r4, #0x4f8]
	ldrb r9, [r4, #0x3d8]
	ldrb r6, [r8, r7]
	cmp r9, r6
	bne _0211EAD4
	add lr, r8, r7
	ldrh r6, [lr, #6]
	add r8, r4, r9, lsl #3
	ldr r7, [r8, #8]
	add r9, r6, #4
	sub r9, r9, r7
	cmp r9, r0
	bgt _0211EAD4
	add r6, r6, #0x16
	sub r6, r6, r7
	cmp r6, r0
	blt _0211EAD4
	ldrh lr, [lr, #8]
	ldr r6, [r8, #0xc]
	add r7, lr, #4
	sub r7, r7, r6
	cmp r7, r5
	bgt _0211EAD4
	add lr, lr, #0x16
	sub lr, lr, r6
	cmp lr, r5
	movge r1, r2
	bge _0211EAE4
_0211EAD4:
	add r2, r2, #1
_0211EAD8:
	ldrh lr, [r3, #0xe0]
	cmp r2, lr
	blt _0211EA60
_0211EAE4:
	cmn r1, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov46_0211eafc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EAF8: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211e9e8

	arm_func_start FUN_ov46_0211eafc
FUN_ov46_0211eafc: ; 0x0211EAFC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	add r3, r7, #0x300
	ldrsh r2, [r3, #0xdc]
	mov r6, r1
	mov r4, #0
	cmp r2, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r7, #0x3d7]
	mov r1, r6, lsl #0x10
	mov r1, r1, lsr #0x10
	strh r6, [r3, #0xdc]
	bl FUN_ov46_0211cddc
	mov r5, r0
	cmn r5, #1
	bne _0211EB58
	mov r0, r7
	strb r6, [r7, #0x3d7]
	bl FUN_ov46_0211bf84
	ldr r0, _0211EC50 ; =gAudioPlayer
	ldr r1, _0211EC54 ; =0x000040D3
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EB58:
	ldr r0, [r7, #0x9b0]
	cmp r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r7, #0x3d7]
	ldr r0, [r7, #0x4f8]
	mov r8, #0x1c
	mla r0, r1, r8, r0
	ldrh r0, [r0, #0xc]
	cmp r0, #3
	bne _0211EC1C
	mov r0, r7
	bl FUN_ov46_0211c794
	cmp r0, #0
	bne _0211EC18
	ldrb r1, [r7, #0x3d7]
	mov r0, r7
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	beq _0211EBD8
	ldrb r3, [r7, #0x3d7]
	ldr r1, [r7, #0x4f8]
	mov r0, r7
	mla r2, r3, r8, r1
	ldrb r1, [r2, #1]
	ldrh r2, [r2, #0x14]
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211EBD8
	ldrb r1, [r7, #0x3d7]
	mov r0, r7
	bl FUN_ov46_0211c810
	b _0211EC1C
_0211EBD8:
	ldr r0, [r7, #0x994]
	cmn r0, #1
	bne _0211EC04
	mov r0, r7
	mov r1, r5
	bl FUN_ov46_0211c758
	cmp r0, #0
	strneb r4, [r7, #0x9b4]
	moveq r0, #1
	streqb r0, [r7, #0x9b4]
	b _0211EC20
_0211EC04:
	cmp r0, r5
	streqb r4, [r7, #0x9b4]
	movne r0, #1
	strneb r0, [r7, #0x9b4]
	b _0211EC20
_0211EC18:
	b _0211EC1C
_0211EC1C:
	strb r4, [r7, #0x9b4]
_0211EC20:
	mov r0, r7
	strb r4, [r7, #0x991]
	str r6, [r7, #0x9b0]
	str r5, [r7, #0x994]
	strb r6, [r7, #0x3d7]
	bl FUN_ov46_0211ce50
	mov r0, r7
	bl FUN_ov46_0211bf84
	ldr r0, _0211EC50 ; =gAudioPlayer
	ldr r1, _0211EC54 ; =0x000040D3
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EC50: .word gAudioPlayer
_0211EC54: .word 0x000040D3
	arm_func_end FUN_ov46_0211eafc

	arm_func_start FUN_ov46_0211ec58
FUN_ov46_0211ec58: ; 0x0211EC58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldrb r0, [r7, #0x3d8]
	mov r6, r1
	mov r5, r2
	mov r4, #0x1c
	cmp r6, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #8
	ldmhifd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0211EEE0 ; =0x55555556
	mov r12, #3
	smull r1, r8, r2, r6
	smull r1, r3, r2, r0
	add r8, r8, r6, lsr #31
	smull r1, r2, r12, r8
	add r3, r3, r0, lsr #31
	smull r2, r3, r12, r3
	sub r8, r6, r1
	sub r3, r0, r2
	sub r0, r8, r3
	bl abs
	cmp r0, #1
	ldrleb r0, [r7, #0x3da]
	cmple r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _0211EE78
	ldrb r0, [r7, #0x3d7]
	ldr r2, [r7, #0x4f8]
	ldrb r3, [r7, #0x3d8]
	mul r1, r0, r4
	ldrb r0, [r2, r1]
	cmp r3, r0
	bne _0211EE78
	mov r0, #0
	mov r2, r0
	sub r1, r0, #1
	add r3, r7, #0x300
	b _0211ED5C
_0211ECF8:
	ldr lr, [r7, #0x950]
	mov r5, r2, lsl #3
	ldrh r12, [lr, r5]
	ldrb r8, [r7, #0x3d7]
	add r5, lr, r2, lsl #3
	ldrh r5, [r5, #2]
	cmp r8, r12
	bne _0211ED38
	mul r12, r5, r4
	ldr lr, [r7, #0x4f8]
	ldrb r5, [lr, r12]
	cmp r6, r5
	bne _0211ED58
	mov r1, r2
	mov r0, #1
	b _0211ED68
_0211ED38:
	cmp r8, r5
	muleq r5, r12, r4
	ldreq r12, [r7, #0x4f8]
	ldreqb r5, [r12, r5]
	cmpeq r6, r5
	moveq r1, r2
	moveq r0, #1
	beq _0211ED68
_0211ED58:
	add r2, r2, #1
_0211ED5C:
	ldrh r5, [r3, #0xe2]
	cmp r2, r5
	blt _0211ECF8
_0211ED68:
	cmp r0, #0
	mov r4, #0x1c
	beq _0211EE78
	mov r0, r7
	bl FUN_ov46_0211c758
	cmp r0, #0
	bne _0211EDE4
	ldrb r1, [r7, #0x3d7]
	ldr r0, [r7, #0x4f8]
	mla r0, r1, r4, r0
	ldrh r1, [r0, #0xa]
	cmp r1, #0
	beq _0211EDAC
	mov r0, r7
	bl FUN_ov46_0211c890
	cmp r0, #0
	bne _0211EDE4
_0211EDAC:
	ldrb r1, [r7, #0x3d7]
	mov r0, r7
	bl FUN_ov46_0211c794
	cmp r0, #0
	beq _0211EE78
	ldrb r3, [r7, #0x3d7]
	ldr r0, [r7, #0x4f8]
	mla r0, r3, r4, r0
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r7
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _0211EE78
_0211EDE4:
	ldrb r1, [r7, #0x3d8]
	sub r0, r1, #1
	cmp r0, r6
	bne _0211EE0C
	ldr r0, _0211EEE4 ; =gSprButtonCtrl
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EE0C:
	add r0, r1, #1
	cmp r0, r6
	bne _0211EE30
	ldr r0, _0211EEE4 ; =gSprButtonCtrl
	mov r1, #0x10
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EE30:
	sub r0, r1, #3
	cmp r0, r6
	bne _0211EE54
	ldr r0, _0211EEE4 ; =gSprButtonCtrl
	mov r1, #0x40
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EE54:
	add r0, r1, #3
	cmp r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211EEE4 ; =gSprButtonCtrl
	mov r1, #0x80
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EE78:
	ldrb r1, [r7, #0x3d8]
	mov r0, r7
	bl FUN_ov46_0211a004
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_ov46_0211ad9c
	ldrb r0, [r7, #0x3d8]
	sub r0, r0, r6
	bl abs
	cmp r0, #1
	add r0, r7, r6, lsl #3
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	mov r0, r7
	bne _0211EEC4
	mov r3, #0x12
	b _0211EEC8
_0211EEC4:
	mov r3, #0x10
_0211EEC8:
	bl FUN_ov46_0211efc8
	mov r0, r7
	and r1, r6, #0xff
	strb r6, [r7, #0x3d9]
	bl FUN_ov46_0211d68c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EEE0: .word 0x55555556
_0211EEE4: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211ec58

	arm_func_start FUN_ov46_0211eee8
FUN_ov46_0211eee8: ; 0x0211EEE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrb r1, [r4, #0xa0]
	mov r7, #0
	strb r7, [r4, #0x3da]
	strb r7, [r4, #0x3e5]
	bl FUN_ov46_0211afe8
	ldrb r0, [r4, #0x3d9]
	mov r6, #1
	ldr r5, _0211EFC4 ; =g3DPlaneCtrl
	strb r0, [r4, #0x3d8]
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x18c]
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x190]
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x194]
	mov r2, r6
	mov r3, #3
	bl FUN_ov16_0211401c
	str r7, [sp]
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r4, #0x198]
	mov r3, #2
	bl FUN_ov16_0211401c
	ldrb r1, [r4, #0xa0]
	mov r0, r4
	eor r1, r1, #1
	strb r1, [r4, #0xa0]
	bl FUN_ov46_0211b688
	ldrb r3, [r4, #0x3d8]
	ldr r2, [r4, #0x4f8]
	ldrb r1, [r4, #0x3d7]
	mov r0, #0x1c
	smulbb r0, r1, r0
	ldrb r0, [r2, r0]
	cmp r3, r0
	beq _0211EFB0
	mov r0, r4
	bl FUN_ov46_02120de4
_0211EFB0:
	mov r0, r4
	bl FUN_ov46_0211e10c
	mov r0, r4
	bl FUN_ov46_0211bf84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EFC4: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211eee8

	arm_func_start FUN_ov46_0211efc8
FUN_ov46_0211efc8: ; 0x0211EFC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x3bc]
	ldr lr, [r5, #0x3c0]
	add r0, r5, #0x300
	mov r12, #1
	str r4, [r5, #0x3c4]
	str lr, [r5, #0x3c8]
	str r1, [r5, #0x3cc]
	str r2, [r5, #0x3d0]
	strh r3, [r0, #0xd4]
	strb r12, [r5, #0x3da]
	bl OS_GetTick
	str r0, [r5, #0x9c4]
	str r1, [r5, #0x9c8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov46_0211efc8

	arm_func_start FUN_ov46_0211f008
FUN_ov46_0211f008: ; 0x0211F008
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r1, [r8, #0x3bc]
	ldr r0, [r8, #0x3cc]
	cmp r1, r0
	ldreq r1, [r8, #0x3c0]
	ldreq r0, [r8, #0x3d0]
	cmpeq r1, r0
	moveq r0, #0
	streqb r0, [r8, #0x3da]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x300
	ldrh r5, [r0, #0xd4]
	bl OS_GetTick
	mov r4, #0
	ldr r2, [r8, #0x9c4]
	mov r6, r0
	subs r12, r6, r2
	ldr r0, [r8, #0x9c8]
	mov r7, r1
	sbc r0, r7, r0
	mov r1, r0, lsl #6
	ldr r2, _0211F128 ; =0x000082EA
	mov r3, r4
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl _ll_udiv
	mov r0, r0, lsl #0xc
	cmp r0, #0x23
	ble _0211F0AC
	add r1, r8, #0x300
	ldrh r2, [r1, #0xd4]
	mov r1, #0x22000
	mov r5, r2, lsl #0xc
	bl FX_Div
	smull r2, r1, r0, r5
	adds r2, r2, #0x800
	adc r0, r1, r4
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r5, r1, asr #0xc
_0211F0AC:
	ldr r1, [r8, #0x3cc]
	ldr r0, [r8, #0x3bc]
	str r6, [r8, #0x9c4]
	str r7, [r8, #0x9c8]
	cmp r0, r1
	beq _0211F0EC
	bge _0211F0DC
	add r0, r0, r5
	str r0, [r8, #0x3bc]
	cmp r0, r1
	strgt r1, [r8, #0x3bc]
	b _0211F0EC
_0211F0DC:
	sub r0, r0, r5
	str r0, [r8, #0x3bc]
	cmp r0, r1
	strlt r1, [r8, #0x3bc]
_0211F0EC:
	ldr r1, [r8, #0x3d0]
	ldr r0, [r8, #0x3c0]
	cmp r0, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bge _0211F114
	add r0, r0, r5
	str r0, [r8, #0x3c0]
	cmp r0, r1
	strgt r1, [r8, #0x3c0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F114:
	sub r0, r0, r5
	str r0, [r8, #0x3c0]
	cmp r0, r1
	strlt r1, [r8, #0x3c0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F128: .word 0x000082EA
	arm_func_end FUN_ov46_0211f008

	arm_func_start FUN_ov46_0211f12c
FUN_ov46_0211f12c: ; 0x0211F12C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r2, _0211F2A0 ; =0x021213AC
	add r0, r4, #0x78
	mov r6, r1
	str r2, [r4]
	bl FUN_0206c0d8
	mov r5, #0
	str r6, [r4, #0x74]
	strb r5, [r4, #0xa0]
	mov r0, r5
	mov r2, #1
_0211F15C:
	add r3, r4, r5, lsl #2
	add r1, r4, r5
	str r0, [r3, #0xb4]
	add r5, r5, #1
	strb r2, [r1, #0xbc]
	cmp r5, #2
	blt _0211F15C
	add r1, r4, #0x300
	mov r9, #0x100
	mov r8, #0x200
	mov r7, #0xc0
	mov r6, #0x180
	mov r12, #0x28
	mov lr, #0x1e
	mov r3, #0x32
	mov r5, #0xf
	mov r2, #0x46
	str r2, [r4, #0x70]
	strb r0, [r4, #0x3d6]
	strb r0, [r4, #0x3d8]
	strb r0, [r4, #0x3d9]
	strh r0, [r1, #0xde]
	strb r0, [r4, #0x3da]
	str r0, [r4, #0x3bc]
	str r0, [r4, #0x3c0]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r9, [r4, #0x10]
	str r0, [r4, #0x14]
	str r8, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r7, [r4, #0x24]
	str r9, [r4, #0x28]
	str r7, [r4, #0x2c]
	str r8, [r4, #0x30]
	str r7, [r4, #0x34]
	str r0, [r4, #0x38]
	str r6, [r4, #0x3c]
	str r9, [r4, #0x40]
	str r6, [r4, #0x44]
	str r8, [r4, #0x48]
	str r6, [r4, #0x4c]
	str r5, [r4, #0x50]
	str lr, [r4, #0x54]
	str r12, [r4, #0x58]
	str lr, [r4, #0x5c]
	str r12, [r4, #0x60]
	str r3, [r4, #0x64]
	str r12, [r4, #0x68]
	str r3, [r4, #0x6c]
	strh r0, [r1, #0xe0]
	strb r0, [r4, #0x3e4]
	strh r0, [r1, #0xe2]
	str r0, [r4, #0x4f4]
	str r0, [r4, #0x4f8]
	str r0, [r4, #0x950]
	mov r2, #0
_0211F244:
	add r1, r4, r0, lsl #2
	add r0, r0, #1
	str r2, [r1, #0x114]
	cmp r0, #0x1d
	blt _0211F244
	mov r3, #0
_0211F25C:
	add r0, r4, r2
	add r2, r2, #1
	strb r3, [r0, #0x988]
	cmp r2, #9
	blt _0211F25C
	mvn r2, #0
	mov r1, #0x3e8
	mov r0, r4
	strb r3, [r4, #0x991]
	str r2, [r4, #0x994]
	strb r3, [r4, #0x998]
	str r1, [r4, #0x9a8]
	str r2, [r4, #0x9ac]
	strb r3, [r4, #0x9b4]
	str r2, [r4, #0x9b8]
	strb r3, [r4, #0x3e5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F2A0: .word ov46_021213AC
	arm_func_end FUN_ov46_0211f12c

	arm_func_start FUN_ov46_0211f2a4
FUN_ov46_0211f2a4: ; 0x0211F2A4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _0211F384 ; =gLogicThink
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020edfc0
	ldr r1, [r4, #0x99c]
	cmp r1, r0
	bls _0211F2E0
	ldr r0, _0211F388 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, #3
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, pc}
_0211F2E0:
	mov r0, r5
	bl FUN_ov16_020edfc0
	mov r2, r0
	ldr r1, [r4, #0x99c]
	mov r0, r5
	sub r1, r2, r1
	bl FUN_ov16_020edfd0
	ldr r0, _0211F38C ; =gSprButtonCtrl
	mov r5, #6
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov16_0210efac
	ldr r0, _0211F388 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r4, #0x74]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldrb r3, [r4, #0x3d7]
	ldr r0, _0211F390 ; =0x020A9C40
	mov r1, #0x6a
	strb r3, [r4, #0x3d6]
	ldr r2, [r4, #0x4f8]
	mov r5, #0x1c
	mla r2, r3, r5, r2
	ldrh r2, [r2, #0xa]
	ldr r6, _0211F394 ; =0x00000FFF
	and r2, r2, r6
	bl FUN_020460a8
	ldr r2, [r4, #0x4f8]
	ldrb r3, [r4, #0x3d7]
	mov r0, r4
	ldr r1, _0211F398 ; =0x02099EA4
	mla r2, r3, r5, r2
	ldrh r2, [r2, #0xa]
	and r2, r2, r6
	strh r2, [r1]
	bl FUN_ov46_0211e600
	ldmfd sp!, {r4, r5, r6, pc}
_0211F384: .word gLogicThink
_0211F388: .word gAudioPlayer
_0211F38C: .word gSprButtonCtrl
_0211F390: .word unk_020A9C40
_0211F394: .word 0x00000FFF
_0211F398: .word unk_02099EA4
	arm_func_end FUN_ov46_0211f2a4

	arm_func_start FUN_ov46_0211f39c
FUN_ov46_0211f39c: ; 0x0211F39C
	ldr r0, _0211F3CC ; =0x02099EA4
	ldrh r2, [r0]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldr r0, _0211F3D0 ; =0x00000FFF
	and r0, r1, r0
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	moveq r0, #1
	movne r0, #0
	bx lr
_0211F3CC: .word unk_02099EA4
_0211F3D0: .word 0x00000FFF
	arm_func_end FUN_ov46_0211f39c

	arm_func_start FUN_ov46_0211f3d4
FUN_ov46_0211f3d4: ; 0x0211F3D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _0211F868 ; =gSprAnimCtrl
	mov r7, r0
	ldr r0, [r3]
	ldr r8, _0211F86C ; =gSprButtonCtrl
	mov r6, r1
	mov r5, r2
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211F428
	ldr r0, [r8]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strh r4, [r0, #0x38]
_0211F428:
	ldr r0, [r7, #0xd0]
	cmp r0, #5
	ldreqb r0, [r7, #0x3da]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7, #0x9bc]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0xd4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F470: ; jump table
	b _0211F488 ; case 0
	b _0211F60C ; case 1
	b _0211F71C ; case 2
	b _0211F80C ; case 3
	b _0211F80C ; case 4
	b _0211F830 ; case 5
_0211F488:
	tst r5, #0x200
	bne _0211F498
	tst r5, #0x100
	beq _0211F50C
_0211F498:
	tst r6, #0x10
	beq _0211F4B4
	ldrb r1, [r7, #0x3d8]
	mov r0, r7
	mov r2, #0
	add r1, r1, #1
	b _0211F504
_0211F4B4:
	tst r6, #0x80
	beq _0211F4D0
	ldrb r1, [r7, #0x3d8]
	mov r0, r7
	mov r2, #0
	add r1, r1, #3
	b _0211F504
_0211F4D0:
	tst r6, #0x20
	beq _0211F4EC
	ldrb r1, [r7, #0x3d8]
	mov r0, r7
	mov r2, #0
	sub r1, r1, #1
	b _0211F504
_0211F4EC:
	tst r6, #0x40
	beq _0211F50C
	ldrb r1, [r7, #0x3d8]
	mov r0, r7
	mov r2, #0
	sub r1, r1, #3
_0211F504:
	and r1, r1, #0xff
	bl FUN_ov46_0211ec58
_0211F50C:
	ldrb r0, [r7, #0x3da]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	tst r6, #1
	beq _0211F574
	ldrb r1, [r7, #0x3d7]
	ldr r2, [r7, #0x4f8]
	mov r0, #0x1c
	mla r0, r1, r0, r2
	ldrh r0, [r0, #0xc]
	cmp r0, #2
	mov r0, r7
	bne _0211F548
	bl FUN_ov46_021206a0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F548:
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	bne _0211F564
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F564:
	ldrb r1, [r7, #0x3d7]
	mov r0, r7
	bl FUN_ov46_021205a0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F574:
	tst r6, #2
	beq _0211F5A4
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r8]
	mov r1, #5
	bl FUN_ov16_0210efac
	mov r0, r7
	mov r1, #1
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F5A4:
	tst r6, #0x400
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	tst r6, #0x10
	beq _0211F5C4
	mov r0, r7
	mov r1, #2
	bl FUN_ov46_0211be0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F5C4:
	tst r6, #0x80
	beq _0211F5DC
	mov r0, r7
	mov r1, #4
	bl FUN_ov46_0211be0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F5DC:
	tst r6, #0x20
	beq _0211F5F4
	mov r0, r7
	mov r1, #1
	bl FUN_ov46_0211be0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F5F4:
	tst r6, #0x40
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, #3
	bl FUN_ov46_0211be0c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F60C:
	tst r6, #1
	beq _0211F680
	ldr r0, [r7, #0x268]
	cmp r0, #0
	bne _0211F658
	mov r4, #6
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov16_0210efac
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, r4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	bl FUN_ov46_0211e600
	ldr r0, _0211F874 ; =0x020A9C40
	mov r1, #0x66
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F658:
	ldr r0, [r8]
	mov r1, #7
	bl FUN_ov16_0210efac
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F680:
	tst r6, #2
	beq _0211F6C4
	mov r2, #1
	mov r0, r7
	mov r1, r4
	str r2, [r7, #0x268]
	bl FUN_ov46_0211def4
	ldr r0, [r8]
	mov r1, #7
	bl FUN_ov16_0210efac
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	mov r1, r4
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F6C4:
	tst r6, #0x40
	bne _0211F6D4
	tst r6, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F6D4:
	ldr r1, [r7, #0x268]
	ldr r0, _0211F870 ; =gAudioPlayer
	eor r1, r1, #1
	str r1, [r7, #0x268]
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r7, #0x268]
	cmp r0, #0
	mov r0, r7
	bne _0211F70C
	mov r1, #1
	mov r2, #0
	bl FUN_ov46_0211def4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F70C:
	mov r1, #0
	mov r2, #1
	bl FUN_ov46_0211def4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F71C:
	tst r6, #1
	beq _0211F770
	ldr r0, [r7, #0x9c0]
	cmp r0, #5
	ldmlsfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x268]
	cmp r0, #0
	bne _0211F748
	mov r0, r7
	bl FUN_ov46_0211f2a4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F748:
	ldr r0, [r8]
	mov r1, #7
	bl FUN_ov16_0210efac
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F770:
	tst r6, #2
	beq _0211F7B4
	mov r2, #1
	mov r0, r7
	mov r1, r4
	str r2, [r7, #0x268]
	bl FUN_ov46_0211def4
	ldr r0, [r8]
	mov r1, #7
	bl FUN_ov16_0210efac
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	mov r1, r4
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7B4:
	tst r6, #0x40
	bne _0211F7C4
	tst r6, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7C4:
	ldr r1, [r7, #0x268]
	ldr r0, _0211F870 ; =gAudioPlayer
	eor r1, r1, #1
	str r1, [r7, #0x268]
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r7, #0x268]
	cmp r0, #0
	mov r0, r7
	bne _0211F7FC
	mov r1, #1
	mov r2, #0
	bl FUN_ov46_0211def4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F7FC:
	mov r1, #0
	mov r2, #1
	bl FUN_ov46_0211def4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F80C:
	tst r6, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r7
	mov r1, #0
	bl FUN_ov46_0211e618
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F830:
	ldrb r0, [r7, #0xa1c]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	tst r6, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211F870 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer10playEffectEi
	ldr r0, [r8]
	mov r1, #9
	bl FUN_ov16_0210efac
	mov r0, r7
	bl FUN_ov46_021207e4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F868: .word gSprAnimCtrl
_0211F86C: .word gSprButtonCtrl
_0211F870: .word gAudioPlayer
_0211F874: .word unk_020A9C40
	arm_func_end FUN_ov46_0211f3d4

	arm_func_start FUN_ov46_0211f878
FUN_ov46_0211f878: ; 0x0211F878
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211F918 ; =gSprAnimCtrl
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #0xd0]
	cmpeq r0, #5
	ldreqb r0, [r7, #0x3da]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211F91C ; =gSprButtonCtrl
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211F8DC
	cmp r0, #2
	beq _0211F8F4
	cmp r0, #3
	beq _0211F90C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F8DC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov46_0211e64c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F8F4:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov46_0211e724
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F90C:
	mov r0, r7
	bl FUN_ov46_0211e9e8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F918: .word gSprAnimCtrl
_0211F91C: .word gSprButtonCtrl
	arm_func_end FUN_ov46_0211f878

	arm_func_start FUN_ov46_0211f920
FUN_ov46_0211f920: ; 0x0211F920
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, _0211FAA0 ; =gAllocator
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl _ZN9Allocator11getHeapInfoEPiS0_S0_
	ldr r1, [sp, #4]
	mov r0, #0x4000000
	str r1, [r6, #4]
	ldr r1, [r0]
	ldr r0, _0211FAA4 ; =gSprButtonCtrl
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r6, #0x3b8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211FAA8 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r5, #0
	add r0, r6, #0xd8
	mov r1, r5
	mov r2, #0x3c
	strb r5, [r6, #0x9bc]
	str r5, [r6, #0xd0]
	str r5, [r6, #0xd4]
	bl MI_CpuFill8
	add r0, r6, #0x114
	mov r1, r5
	mov r2, #0x74
	bl MI_CpuFill8
	add r0, r6, #0x1c0
	mov r1, r5
	mov r2, #0x1f8
	bl MI_CpuFill8
	mov r4, #0x10
	add r0, r6, #0xa4
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	add r0, r6, #0xc0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	add r0, r6, #0x13c
	mov r7, #0x12
	add r0, r0, #0x800
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	sub r1, r7, #0x13
	add r0, r6, #0x300
	strh r1, [r0, #0xdc]
	ldr r0, _0211FAAC ; =g3DPlaneCtrl
	str r5, [r6, #0x9c0]
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _0211FAB0 ; =gLogicThink
	bl FUN_02071fac
	add r0, r6, #0x78
	mov r1, #1
	bl FUN_0206c158
	add r0, r6, #0x1cc
	mov r2, r4
	add r0, r0, #0x800
	mov r1, r5
	bl MI_CpuFill8
	add r0, r6, #0x1dc
	mov r1, r5
	add r0, r0, #0x800
	mov r2, #8
	bl MI_CpuFill8
	add r0, r6, #0x1e4
	mov r1, r5
	add r0, r0, #0x800
	mov r2, #0x34
	bl MI_CpuFill8
	ldr r0, _0211FAB4 ; =0x020AF81C
	str r5, [r6, #0xa18]
	strb r5, [r6, #0xa1c]
	strb r5, [r6, #0xa1d]
	mov r1, #0xf
	bl FUN_02044658
	ldr r2, [r0]
	ldr r1, _0211FAB8 ; =0x02099EA4
	add r0, r6, #0x78
	strh r2, [r1]
	bl FUN_ov16_020efa04
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211FAA0: .word gAllocator
_0211FAA4: .word gSprButtonCtrl
_0211FAA8: .word gSprAnimCtrl
_0211FAAC: .word g3DPlaneCtrl
_0211FAB0: .word gLogicThink
_0211FAB4: .word unk_020AF81C
_0211FAB8: .word unk_02099EA4
	arm_func_end FUN_ov46_0211f920

	arm_func_start FUN_ov46_0211fabc
FUN_ov46_0211fabc: ; 0x0211FABC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xd0]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211FDD8
_0211FAD4: ; jump table
	b _0211FAF4 ; case 0
	b _0211FB08 ; case 1
	b _0211FB3C ; case 2
	b _0211FB5C ; case 3
	b _0211FB68 ; case 4
	b _0211FB9C ; case 5
	b _0211FD60 ; case 6
	b _0211FDA4 ; case 7
_0211FAF4:
	bl FUN_ov46_02119f00
	mov r0, r4
	bl FUN_ov46_02119f88
	mov r0, #1
	str r0, [r4, #0xd0]
_0211FB08:
	add r0, r4, #0xd8
	mov r1, #5
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211FDD8
	ldr r0, _0211FE00 ; =gAudioPlayer
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	beq _0211FDD8
	mov r0, r4
	bl FUN_ov46_0211a1d0
	mov r0, #2
	str r0, [r4, #0xd0]
_0211FB3C:
	mov r0, r4
	bl FUN_ov46_0211b178
	cmp r0, #0
	beq _0211FDD8
	mov r0, r4
	bl FUN_ov46_0211b1c8
	mov r0, #3
	str r0, [r4, #0xd0]
_0211FB5C:
	mov r0, r4
	mov r1, #0
	bl FUN_ov46_0211e618
_0211FB68:
	ldr r0, _0211FE04 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211FDD8
	ldr r1, [r4, #0xd4]
	mov r0, r4
	bl FUN_ov46_0211b22c
	mov r0, r4
	bl FUN_ov46_0211b4a8
	mov r0, #5
	str r0, [r4, #0xd0]
	b _0211FDD8
_0211FB9C:
	ldrb r0, [r4, #0xa0]
	add r1, r4, #0xa4
	add r0, r1, r0, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211FDD8
	ldrb r0, [r4, #0xa0]
	add r1, r4, #0xc0
	add r0, r1, r0, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211FDD8
	ldrb r1, [r4, #0x3d8]
	ldrb r2, [r4, #0xa0]
	mov r0, r4
	bl FUN_ov46_0211b040
	ldrb r0, [r4, #0x3da]
	cmp r0, #0
	beq _0211FCA4
	ldrb r0, [r4, #0xa0]
	add r1, r4, #0xa4
	eor r0, r0, #1
	add r0, r1, r0, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211FDD8
	ldrb r0, [r4, #0xa0]
	add r1, r4, #0xc0
	eor r0, r0, #1
	add r0, r1, r0, lsl #3
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211FDD8
	ldrb r0, [r4, #0x3e5]
	cmp r0, #0
	bne _0211FC40
	ldr r0, _0211FE00 ; =gAudioPlayer
	ldr r1, _0211FE08 ; =0x000040D4
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, #1
	strb r0, [r4, #0x3e5]
_0211FC40:
	ldrb r2, [r4, #0xa0]
	ldrb r1, [r4, #0x3d9]
	mov r0, r4
	eor r2, r2, #1
	bl FUN_ov46_0211b040
	mov r0, r4
	bl FUN_ov46_0211b5d8
	mov r0, r4
	bl FUN_ov46_0211f008
	mov r0, r4
	bl FUN_ov46_0211df9c
	mov r0, r4
	bl FUN_ov46_0211c9a0
	mov r0, r4
	bl FUN_ov46_0211cb1c
	mov r0, r4
	bl FUN_ov46_0211ce50
	mov r0, r4
	mov r1, #0
	bl FUN_ov46_0211be0c
	ldrb r0, [r4, #0x3da]
	cmp r0, #0
	bne _0211FCA4
	mov r0, r4
	bl FUN_ov46_0211eee8
_0211FCA4:
	ldrb r1, [r4, #0xa1d]
	mov r0, r4
	bl FUN_ov46_0211c040
	ldr r0, [r4, #0xd4]
	cmp r0, #0
	bne _0211FCC8
	mov r0, r4
	bl FUN_ov46_0211c484
	b _0211FD28
_0211FCC8:
	cmp r0, #5
	bne _0211FD28
	ldrb r0, [r4, #0xa1c]
	cmp r0, #0
	beq _0211FDD8
	ldr r6, _0211FE00 ; =gAudioPlayer
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202dbd0Ei
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202d578Ei
	mov r0, r6
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202c560Ei
	cmp r0, #0
	bne _0211FD28
	mov r0, r6
	mov r1, #0x64
	bl _ZN11AudioPlayer12FUN_0202c530El
	strb r5, [r4, #0xa1c]
_0211FD28:
	ldrb r0, [r4, #0x9bc]
	cmp r0, #0
	bne _0211FDD8
	mov r0, r4
	bl FUN_ov46_0211b178
	cmp r0, #0
	beq _0211FDD8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #1
	strb r0, [r4, #0x9bc]
	b _0211FDD8
_0211FD60:
	ldr r0, _0211FE04 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211FDD8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211FDD8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r4, #0xd0]
_0211FDA4:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211FDD8
	ldr r5, [r4, #0x74]
	mov r1, #0
	mov r0, r5
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r5
	mov r1, #1
	bl _ZN14CScreenManager8popSceneE12EngineSelect
_0211FDD8:
	ldr r1, [r4, #0x9c0]
	ldr r0, _0211FE0C ; =gDeltaTime
	add r1, r1, #1
	str r1, [r4, #0x9c0]
	ldr r1, _0211FE04 ; =gSprAnimCtrl
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #1
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r4, r5, r6, pc}
_0211FE00: .word gAudioPlayer
_0211FE04: .word gSprAnimCtrl
_0211FE08: .word 0x000040D4
_0211FE0C: .word gDeltaTime
	arm_func_end FUN_ov46_0211fabc

	arm_func_start FUN_ov46_0211fe10
FUN_ov46_0211fe10: ; 0x0211FE10
	ldr r0, _0211FE28 ; =gSprAnimCtrl
	ldr r1, _0211FE2C ; =gDeltaTime
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r12, _0211FE30 ; = FUN_ov16_0210e10c
	bx r12
_0211FE28: .word gSprAnimCtrl
_0211FE2C: .word gDeltaTime
_0211FE30: .word FUN_ov16_0210e10c
	arm_func_end FUN_ov46_0211fe10

	arm_func_start FUN_ov46_0211fe34
FUN_ov46_0211fe34: ; 0x0211FE34
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211FEAC ; =gUnitMan
	bl FUN_ov16_020efa04
	ldrb r3, [r4, #0x3d7]
	ldr r2, _0211FEB0 ; =0x020A0640
	ldr r0, _0211FEB4 ; =gAudioPlayer
	mov r1, #1
	strb r3, [r2, #0xc5e]
	bl _ZN11AudioPlayer12FUN_0202cf00Ei
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r4, #0x3b8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211FEB8 ; =gSprButtonCtrl
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211FEBC ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov46_0211ac8c
	ldr r0, _0211FEC0 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r0, _0211FEC4 ; =gLogicThink
	bl FUN_02072020
	ldmfd sp!, {r4, pc}
_0211FEAC: .word gUnitMan
_0211FEB0: .word unk_020A0640
_0211FEB4: .word gAudioPlayer
_0211FEB8: .word gSprButtonCtrl
_0211FEBC: .word gSprAnimCtrl
_0211FEC0: .word g3DPlaneCtrl
_0211FEC4: .word gLogicThink
	arm_func_end FUN_ov46_0211fe34

	arm_func_start FUN_ov46_0211fec8
FUN_ov46_0211fec8: ; 0x0211FEC8
	stmfd sp!, {r3, lr}
	mov r2, #0
	ldr r3, _0211FEF4 ; =g3DPlaneCtrl
	mov r12, r0
	str r2, [sp]
	mov r2, r1
	ldr r0, [r3]
	ldr r1, [r12, #0x1b0]
	mov r3, #7
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211FEF4: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0211fec8

	arm_func_start FUN_ov46_0211fef8
FUN_ov46_0211fef8: ; 0x0211FEF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r1
	sub r1, r6, #1
	mov r7, r0
	mov r5, #0
	ldr r4, _02120114 ; =g3DPlaneCtrl
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	ldr r0, [r7, #0x4f8]
	mov r8, #0x1c
	sub r1, r6, #1
	mla r0, r1, r8, r0
	ldrh r1, [r0, #0xa]
	beq _0212003C
	mov r0, r7
	bl FUN_ov46_0211c890
	cmp r0, #0
	ldr r0, [r7, #0x4f8]
	beq _0211FFEC
	sub r1, r6, #1
	mla r0, r1, r8, r0
	ldrh r1, [r0, #0xa]
	ldr r0, _02120118 ; =gUnitMan
	mov r2, r5
	bl FUN_0206c7dc
	str r5, [sp]
	cmp r0, #0
	ldr r0, [r4]
	ldr r1, [r7, #0x1b0]
	mov r2, r6
	beq _0211FFDC
	mov r3, #2
	bl FUN_ov16_0211401c
	sub r0, r6, #1
	mul r5, r0, r8
	ldr r1, [r7, #0x4f8]
	ldr r0, [r7, #0x3c0]
	add r1, r1, r5
	ldrh r1, [r1, #8]
	mov r2, r6
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7, #0x4f8]
	ldr r3, [r7, #0x3bc]
	add r0, r0, r5
	ldrh r5, [r0, #6]
	ldr r0, [r4]
	ldr r1, [r7, #0x1b4]
	sub r3, r5, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FFDC:
	mov r3, #3
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211FFEC:
	sub r3, r6, #1
	mla r0, r3, r8, r0
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r7
	bl FUN_ov46_0211b7b8
	str r5, [sp]
	cmp r0, #0
	ldr r0, [r4]
	ldr r1, [r7, #0x1b0]
	mov r2, r6
	beq _0212002C
	mov r3, #6
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212002C:
	mov r3, #1
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212003C:
	mov r0, r7
	bl FUN_ov46_0211c890
	cmp r0, #0
	beq _021200F4
	ldr r0, [r7, #0x4f8]
	sub r1, r6, #1
	mla r0, r1, r8, r0
	ldrh r1, [r0, #0xa]
	ldr r0, _02120118 ; =gUnitMan
	mov r2, r5
	bl FUN_0206c7dc
	str r5, [sp]
	cmp r0, #0
	ldr r0, [r4]
	ldr r1, [r7, #0x1b0]
	mov r2, r6
	beq _021200E4
	mov r3, #2
	bl FUN_ov16_0211401c
	sub r0, r6, #1
	mul r5, r0, r8
	ldr r1, [r7, #0x4f8]
	ldr r0, [r7, #0x3c0]
	add r1, r1, r5
	ldrh r1, [r1, #8]
	mov r2, r6
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7, #0x4f8]
	ldr r3, [r7, #0x3bc]
	add r0, r0, r5
	ldrh r5, [r0, #6]
	ldr r0, [r4]
	ldr r1, [r7, #0x1b4]
	sub r3, r5, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021200E4:
	mov r3, #3
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021200F4:
	mov r3, r5
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x1b0]
	mov r2, r6
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120114: .word g3DPlaneCtrl
_02120118: .word gUnitMan
	arm_func_end FUN_ov46_0211fef8

	arm_func_start FUN_ov46_0212011c
FUN_ov46_0212011c: ; 0x0212011C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x4f8]
	sub r2, r4, #1
	mov r6, #0x1c
	mla r1, r2, r6, r1
	ldrh r1, [r1, #0xe]
	bl FUN_ov46_02120728
	cmp r0, #0
	beq _02120174
	mov r0, #0
	str r0, [sp]
	ldr r0, _021201DC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #0xa
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02120174:
	ldr r0, [r5, #0x4f8]
	sub r1, r4, #1
	mla r0, r1, r6, r0
	ldrh r0, [r0, #0xe]
	add r0, r5, r0
	ldrb r0, [r0, #0x9cc]
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	beq _021201BC
	ldr r0, _021201DC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #9
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021201BC:
	ldr r0, _021201DC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #0xb
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021201DC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_0212011c

	arm_func_start FUN_ov46_021201e0
FUN_ov46_021201e0: ; 0x021201E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	sub r1, r4, #1
	mov r5, r0
	bl FUN_ov46_0211c794
	cmp r0, #0
	bne _02120224
	ldr r1, [r5, #0x4f8]
	sub r3, r4, #1
	mov r0, #0x1c
	mla r0, r3, r0, r1
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r5
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _02120288
_02120224:
	ldr r2, [r5, #0x4f8]
	sub r1, r4, #1
	mov r0, #0x1c
	mla r0, r1, r0, r2
	ldrh r0, [r0, #0x12]
	cmp r0, #2
	mov r0, #0
	str r0, [sp]
	bne _02120260
	ldr r0, _021202AC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #8
	b _02120274
_02120260:
	ldr r0, _021202AC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #5
_02120274:
	bl FUN_ov16_0211401c
	mov r0, r5
	sub r1, r4, #1
	bl FUN_ov46_0211c810
	ldmfd sp!, {r3, r4, r5, pc}
_02120288:
	mov r0, #0
	str r0, [sp]
	ldr r0, _021202AC ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #4
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, pc}
_021202AC: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_021201e0

	arm_func_start FUN_ov46_021202b0
FUN_ov46_021202b0: ; 0x021202B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r2, [r5, #0x4f8]
	sub r1, r4, #1
	mov r6, #0x1c
	mla r2, r1, r6, r2
	ldrh r1, [r2, #0xe]
	ldr r7, _02120420 ; =g3DPlaneCtrl
	add r1, r5, r1
	ldrb r1, [r1, #0x9dc]
	cmp r1, #0
	bne _0212030C
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	mov r2, r4
	mov r3, #4
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212030C:
	ldrh r1, [r2, #0xa]
	bl FUN_ov46_0211c890
	cmp r0, #0
	ldr r0, [r5, #0x4f8]
	beq _021203C8
	sub r1, r4, #1
	mla r0, r1, r6, r0
	ldrh r1, [r0, #0xa]
	mov r8, #0
	ldr r0, _02120424 ; =gUnitMan
	mov r2, r8
	bl FUN_0206c7dc
	str r8, [sp]
	cmp r0, #0
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	mov r2, r4
	beq _021203B8
	mov r3, #2
	bl FUN_ov16_0211401c
	sub r0, r4, #1
	mul r6, r0, r6
	ldr r1, [r5, #0x4f8]
	ldr r0, [r5, #0x3c0]
	add r1, r1, r6
	ldrh r1, [r1, #8]
	mov r2, r4
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5, #0x4f8]
	ldr r3, [r5, #0x3bc]
	add r0, r0, r6
	ldrh r4, [r0, #6]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b4]
	sub r3, r4, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021203B8:
	mov r3, #3
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021203C8:
	sub r3, r4, #1
	mla r0, r3, r6, r0
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r5
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	beq _0212040C
	mov r2, r4
	mov r3, #6
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212040C:
	mov r2, r4
	mov r3, #1
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120420: .word g3DPlaneCtrl
_02120424: .word gUnitMan
	arm_func_end FUN_ov46_021202b0

	arm_func_start FUN_ov46_02120428
FUN_ov46_02120428: ; 0x02120428
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r2, [r5, #0x4f8]
	sub r1, r4, #1
	mov r6, #0x1c
	mla r2, r1, r6, r2
	ldrh r1, [r2, #0xe]
	ldr r7, _02120598 ; =g3DPlaneCtrl
	add r1, r5, r1
	ldrb r1, [r1, #0x9e4]
	cmp r1, #0
	bne _02120484
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	mov r2, r4
	mov r3, #4
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120484:
	ldrh r1, [r2, #0xa]
	bl FUN_ov46_0211c890
	cmp r0, #0
	ldr r0, [r5, #0x4f8]
	beq _02120540
	sub r1, r4, #1
	mla r0, r1, r6, r0
	ldrh r1, [r0, #0xa]
	mov r8, #0
	ldr r0, _0212059C ; =gUnitMan
	mov r2, r8
	bl FUN_0206c7dc
	str r8, [sp]
	cmp r0, #0
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	mov r2, r4
	beq _02120530
	mov r3, #2
	bl FUN_ov16_0211401c
	sub r0, r4, #1
	mul r6, r0, r6
	ldr r1, [r5, #0x4f8]
	ldr r0, [r5, #0x3c0]
	add r1, r1, r6
	ldrh r1, [r1, #8]
	mov r2, r4
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5, #0x4f8]
	ldr r3, [r5, #0x3bc]
	add r0, r0, r6
	ldrh r4, [r0, #6]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b4]
	sub r3, r4, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120530:
	mov r3, #3
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120540:
	sub r3, r4, #1
	mla r0, r3, r6, r0
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r5
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #0x1b0]
	beq _02120584
	mov r2, r4
	mov r3, #6
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120584:
	mov r2, r4
	mov r3, #1
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120598: .word g3DPlaneCtrl
_0212059C: .word gUnitMan
	arm_func_end FUN_ov46_02120428

	arm_func_start FUN_ov46_021205a0
FUN_ov46_021205a0: ; 0x021205A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x1c
	mul r4, r1, r2
	mov r5, r0
	ldr r0, [r5, #0x4f8]
	add r1, r0, r4
	ldrh r0, [r1, #0xc]
	cmp r0, #0
	cmpne r0, #3
	bne _021205D8
	ldr r0, _02120698 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, pc}
_021205D8:
	ldrh r1, [r1, #0xa]
	ldr r0, _0212069C ; =gUnitMan
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	beq _02120600
	ldr r0, _02120698 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, pc}
_02120600:
	ldr r0, [r5, #0x4f8]
	ldrb r3, [r5, #0x3d7]
	add r0, r0, r4
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r5
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	bne _02120634
	ldr r0, _02120698 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, pc}
_02120634:
	ldr r1, [r5, #0x4f8]
	mov r0, r5
	add r1, r1, r4
	ldrh r1, [r1, #0xa]
	bl FUN_ov46_0211f39c
	cmp r0, #0
	beq _0212066C
	ldr r0, _02120698 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #4
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, pc}
_0212066C:
	ldr r1, [r5, #0x4f8]
	ldr r0, _02120698 ; =gAudioPlayer
	add r1, r1, r4
	ldrh r2, [r1, #4]
	mov r1, #1
	str r2, [r5, #0x99c]
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r5
	mov r1, #2
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, pc}
_02120698: .word gAudioPlayer
_0212069C: .word gUnitMan
	arm_func_end FUN_ov46_021205a0

	arm_func_start FUN_ov46_021206a0
FUN_ov46_021206a0: ; 0x021206A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x1c
	mul r5, r1, r2
	mov r4, r0
	ldr r1, [r4, #0x4f8]
	add r1, r1, r5
	ldrh r1, [r1, #0xe]
	bl FUN_ov46_02120728
	cmp r0, #0
	bne _02120700
	ldr r0, [r4, #0x4f8]
	add r0, r0, r5
	ldrh r0, [r0, #0xe]
	add r0, r4, r0
	ldrb r0, [r0, #0x9cc]
	cmp r0, #0
	beq _02120700
	ldr r0, _02120710 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, #5
	bl FUN_ov46_0211e618
	ldmfd sp!, {r3, r4, r5, pc}
_02120700:
	ldr r0, _02120710 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r3, r4, r5, pc}
_02120710: .word gAudioPlayer
	arm_func_end FUN_ov46_021206a0

	arm_func_start FUN_ov46_02120714
FUN_ov46_02120714: ; 0x02120714
	ldr r0, _02120724 ; =0x020A129F
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
_02120724: .word unk_020A129F
	arm_func_end FUN_ov46_02120714

	arm_func_start FUN_ov46_02120728
FUN_ov46_02120728: ; 0x02120728
	ldr r0, _02120740 ; =0x020A129F
	ldrb r0, [r0, r1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02120740: .word unk_020A129F
	arm_func_end FUN_ov46_02120728

	arm_func_start FUN_ov46_02120744
FUN_ov46_02120744: ; 0x02120744
	add r1, r0, #0xfc
	ldr r0, [r0, #0xfc]
	ldr r12, _0212075C ; =MI_CpuCopy8
	add r1, r1, #0x400
	mov r2, #0x440
	bx r12
_0212075C: .word MI_CpuCopy8
	arm_func_end FUN_ov46_02120744

	arm_func_start FUN_ov46_02120760
FUN_ov46_02120760: ; 0x02120760
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0x44
	mla r5, r1, r0, r6
	mov r4, #0
_02120774:
	add r0, r5, r4, lsl #1
	add r0, r0, #0x500
	ldrh r1, [r0, #0x20]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov46_0211c890
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x10
	blt _02120774
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov46_02120760

	arm_func_start FUN_ov46_021207b4
FUN_ov46_021207b4: ; 0x021207B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_021207C0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov46_02120760
	add r1, r5, r4
	add r4, r4, #1
	strb r0, [r1, #0x9cc]
	cmp r4, #0x10
	blt _021207C0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov46_021207b4

	arm_func_start FUN_ov46_021207e4
FUN_ov46_021207e4: ; 0x021207E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrb r1, [r5, #0x3d7]
	ldr r0, [r5, #0x4f8]
	mov r6, #0x1c
	mla r0, r1, r6, r0
	ldrh r1, [r0, #0xe]
	mov r0, #0x44
	ldr r7, _02120898 ; =gLogicThink
	mla r0, r1, r0, r5
	add r0, r0, #0x400
	ldrh r8, [r0, #0xfe]
	mov r4, #1
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl FUN_ov16_020ee4b4
	cmp r0, #0
	beq _02120884
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl FUN_ov16_020ede60 ; may be ov17 ; ov16(Mica)
	ldrb r2, [r5, #0x3d7]
	ldr r1, [r5, #0x4f8]
	mov r0, r5
	mla r1, r2, r6, r1
	ldrh r1, [r1, #0xe]
	bl FUN_ov46_02120714
	mov r0, #0
	str r0, [sp]
	ldrb r2, [r5, #0x3d7]
	ldr r0, _0212089C ; =g3DPlaneCtrl
	ldr r1, [r5, #0x1b0]
	ldr r0, [r0]
	add r2, r2, #1
	mov r3, #0xa
	bl FUN_ov16_0211401c
	strb r4, [r5, #0xa1d]
_02120884:
	mov r0, r5
	mov r1, #0
	bl FUN_ov46_0211e618
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02120898: .word gLogicThink
_0212089C: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_021207e4

	arm_func_start FUN_ov46_021208a0
FUN_ov46_021208a0: ; 0x021208A0
	add r0, r0, #0xf2
	ldr r1, _021208B4 ; =0x02121644
	ldr r12, _021208B8 ; =STD_CopyString
	add r0, r0, #0x300
	bx r12
_021208B4: .word ov46_02121644
_021208B8: .word STD_CopyString
	arm_func_end FUN_ov46_021208a0

	arm_func_start FUN_ov46_021208bc
FUN_ov46_021208bc: ; 0x021208BC
	bx lr
	arm_func_end FUN_ov46_021208bc

	arm_func_start FUN_ov46_021208c0
FUN_ov46_021208c0: ; 0x021208C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r2, [r4, #0x3d7]
	ldr r3, [r4, #0x4f8]
	mov r1, #0x1c
	mla r1, r2, r1, r3
	ldrh r5, [r1, #0xe]
	add r1, r4, r5
	ldrb r1, [r1, #0x9cc]
	cmp r1, #0
	bne _02120900
	add r0, r4, #0xf2
	ldr r1, _02120940 ; =0x02121660
	add r0, r0, #0x300
	bl STD_CopyString
	ldmfd sp!, {r3, r4, r5, pc}
_02120900:
	mov r1, r5
	bl FUN_ov46_02120728
	cmp r0, #0
	bne _02120924
	add r0, r4, #0xf2
	ldr r1, _02120944 ; =0x02121674
	add r0, r0, #0x300
	bl STD_CopyString
	ldmfd sp!, {r3, r4, r5, pc}
_02120924:
	add r1, r4, #0x500
	mov r0, #0x44
	mla r1, r5, r0, r1
	add r0, r4, #0xf2
	add r0, r0, #0x300
	bl STD_CopyString
	ldmfd sp!, {r3, r4, r5, pc}
_02120940: .word ov46_02121660
_02120944: .word ov46_02121674
	arm_func_end FUN_ov46_021208c0

	arm_func_start FUN_ov46_02120948
FUN_ov46_02120948: ; 0x02120948
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x3d7]
	bl FUN_ov46_0211c794
	cmp r0, #0
	bne _02120988
	ldrb r3, [r4, #0x3d7]
	ldr r1, [r4, #0x4f8]
	mov r0, #0x1c
	mla r0, r3, r0, r1
	ldrb r1, [r0, #1]
	ldrh r2, [r0, #0x14]
	mov r0, r4
	bl FUN_ov46_0211b7b8
	cmp r0, #0
	beq _021209C8
_02120988:
	ldrb r2, [r4, #0x3d7]
	ldr r1, [r4, #0x4f8]
	mov r0, #0x1c
	mla r1, r2, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0x32
	blo _021209B8
	ldr r1, [r1, #0x18]
	cmp r1, #0
	beq _021209C8
	add r0, r4, #0xf2
	b _021209C0
_021209B8:
	add r0, r4, #0xf2
	ldr r1, _02120A1C ; =0x02121688
_021209C0:
	add r0, r0, #0x300
	bl STD_CopyString
_021209C8:
	ldrb r1, [r4, #0x3d7]
	mov r0, r4
	bl FUN_ov46_0211c8c4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r1, [r4, #0x3d7]
	ldr r2, [r4, #0x4f8]
	mov r0, #0x1c
	mla r0, r1, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0x65
	add r0, r4, #0xf2
	blo _02120A0C
	ldr r1, _02120A20 ; =0x021216A0
	add r0, r0, #0x300
	bl STD_CopyString
	ldmfd sp!, {r4, pc}
_02120A0C:
	ldr r1, _02120A24 ; =0x021216BC
	add r0, r0, #0x300
	bl STD_CopyString
	ldmfd sp!, {r4, pc}
_02120A1C: .word ov46_02121688
_02120A20: .word ov46_021216A0
_02120A24: .word ov46_021216BC
	arm_func_end FUN_ov46_02120948

	arm_func_start FUN_ov46_02120a28
FUN_ov46_02120a28: ; 0x02120A28
	bx lr
	arm_func_end FUN_ov46_02120a28

	arm_func_start FUN_ov46_02120a2c
FUN_ov46_02120a2c: ; 0x02120A2C
	bx lr
	arm_func_end FUN_ov46_02120a2c

	arm_func_start FUN_ov46_02120a30
FUN_ov46_02120a30: ; 0x02120A30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	mov r6, #0
	mov r10, r0
	str r6, [sp, #0x14]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov46_0211b41c
	ldr r0, [r10, #0xd4]
	mov r4, #0x14
	str r0, [r9, #0x1c]
	mov r11, #1
	ldr r0, _02120DA0 ; =gSprButtonCtrl
	str r4, [r9, #0xa4]
	str r6, [r9]
	ldr r0, [r0]
	mov r1, r11
	bl FUN_ov16_0210eb3c
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r6
	str r11, [sp]
	bl FUN_ov46_0211e57c
	mov r3, r4
	mov r5, r0
	ldr r4, _02120DA4 ; =g3DPlaneCtrl
	mov r1, r5
	ldr r0, [r4]
	mov r2, r11
	bl FUN_ov16_021139bc
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x114]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r11
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r11
	mov r3, r6
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0xc0]
	mov r1, r5
	mov r3, r7
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r11
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0xa18]
	cmp r0, #0
	bne _02120B38
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	bl FUN_02059630
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [r10, #0xa18]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r6
	bl FUN_02059038
_02120B38:
	add r4, sp, #0x14
	mov r5, #1
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, #0
	str r5, [sp]
	bl FUN_ov46_0211e57c
	mov r7, r0
	ldr r6, _02120DA4 ; =g3DPlaneCtrl
	mov r1, r7
	ldr r0, [r6]
	mov r2, r5
	mov r3, #0xf
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0xa18]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	mov r3, #0x100
	bl FUN_ov16_02113d08
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_02113d88
	ldrsh r0, [sp, #0xc0]
	mov r1, r7
	mov r2, r5
	add r0, r0, #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r6]
	mov r3, #0
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r7, sp, #0x18
	ldrb r11, [r10, #0x3d7]
	ldr r12, [r10, #0x4f8]
	mov r3, #0x1c
	mla r3, r11, r3, r12
	ldrh r3, [r3, #0xe]
	add r2, r10, #0x500
	mov r8, #0x44
	mla r2, r3, r8, r2
	ldr r1, _02120DA8 ; =0x021210C0
	mov r0, r7
	bl sprintf
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r1, [r10, #0xa18]
	mov r0, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_020f2304
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, #0
	str r5, [sp]
	bl FUN_ov46_0211e57c
	mov r1, r0
	str r1, [r10, #0x1b8]
	ldr r0, [r6]
	mov r2, r5
	mov r3, #0xa
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x180]
	ldr r0, [r6]
	and r3, r1, #0xff
	ldr r1, [r10, #0x1b8]
	mov r2, r5
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r10, #0x1b8]
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0211401c
	ldrsh r0, [sp, #0xc8]
	ldrsh r3, [sp, #0xc4]
	mov r2, r5
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r10, #0x1b8]
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _02120DA0 ; =gSprButtonCtrl
	ldr r3, [r10, #0x1b8]
	ldr r0, [r0]
	mov r1, #6
	mov r2, #9
	bl FUN_ov16_0210fbe8
	movs r6, r0
	beq _02120D70
	ldrsh r1, [sp, #0xc4]
	ldrsh r2, [sp, #0xc8]
	mov r4, #0x18
	mov r3, #0x30
	str r4, [sp]
	bl FUN_ov16_0210e674
	mov r1, #0
	mov r2, r5
	mov r3, r1
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, #0
	mov r2, r1
	add r0, r6, #0x3a
	mov r3, r1
	bl FUN_ov16_0210e720
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e6fc
	mov r1, #0
	add r0, r6, #0x3e
	mov r2, r5
	mov r3, r1
	bl FUN_ov16_0210e720
_02120D70:
	ldr r4, _02120DAC ; =gAudioPlayer
	mov r1, #0x1e
	mov r0, r4
	bl _ZN11AudioPlayer12FUN_0202c4a0El
	ldr r2, _02120DB0 ; =0x021216D4
	mov r0, r4
	mov r1, #0
	bl _ZN11AudioPlayer12FUN_0202d594EiPKc
	mov r0, #1
	strb r0, [r10, #0xa1c]
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120DA0: .word gSprButtonCtrl
_02120DA4: .word g3DPlaneCtrl
_02120DA8: .word ov46_021210C0
_02120DAC: .word gAudioPlayer
_02120DB0: .word ov46_021216D4
	arm_func_end FUN_ov46_02120a30

	arm_func_start FUN_ov46_02120db4
FUN_ov46_02120db4: ; 0x02120DB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xa18]
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
	ldr r0, _02120DE0 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xa18]
	ldmfd sp!, {r4, pc}
_02120DE0: .word g3DPlaneCtrl
	arm_func_end FUN_ov46_02120db4

	arm_func_start FUN_ov46_02120de4
FUN_ov46_02120de4: ; 0x02120DE4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r1, r0, #0x300
	ldrh r3, [r1, #0xe2]
	mov r2, #0
	cmp r3, #0
	ble _02120E70
	ldrb r12, [r0, #0x3d7]
	mov r5, #0x1c
	ldr r1, [r0, #0x950]
	mov r4, r5
_02120E0C:
	mov r6, r2, lsl #3
	ldrh lr, [r1, r6]
	cmp r12, lr
	beq _02120E2C
	add r6, r1, r6
	ldrh r6, [r6, #2]
	cmp r12, r6
	bne _02120E64
_02120E2C:
	add r6, r1, r2, lsl #3
	ldrh r8, [r6, #2]
	ldr r9, [r0, #0x4f8]
	ldrb r7, [r0, #0x3d9]
	mul r6, r8, r5
	ldrb r6, [r9, r6]
	cmp r7, r6
	streqb r8, [r0, #0x3d7]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mul r6, lr, r4
	ldrb r6, [r9, r6]
	cmp r7, r6
	streqb lr, [r0, #0x3d7]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02120E64:
	add r2, r2, #1
	cmp r2, r3
	blt _02120E0C
_02120E70:
	add r1, r0, #0x300
	ldrh r6, [r1, #0xe0]
	mov r3, #0
	cmp r6, #0
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r1, [r0, #0x3d9]
	ldr r4, [r0, #0x4f8]
	mov r2, #0x1c
	add r1, r0, r1, lsl #1
	add r1, r1, #0x900
	ldrh r5, [r1, #0x3c]
_02120E9C:
	mla r1, r3, r2, r4
	ldrh r1, [r1, #0xa]
	cmp r5, r1
	streqb r3, [r0, #0x3d7]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	cmp r6, r1, lsr #16
	mov r3, r1, lsr #0x10
	bhi _02120E9C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov46_02120de4

	arm_func_start FUN_ov46_02120ec8
FUN_ov46_02120ec8: ; 0x02120EC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #0
	mov r9, r1
	ldr r0, _02120F68 ; =gLogicThink
	mov r1, r7
	bl FUN_0205107c
	ldr r4, _02120F6C ; =gUnitMan
	mov r8, r0
	mov r6, r7
	mov r5, r7
_02120EF0:
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	cmp r0, #0
	beq _02120F30
	mov r0, r8
	mov r1, r5
	bl FUN_0204fbe8
	mov r1, r0
	mov r0, r4
	bl FUN_0206c718
	cmp r0, #0
	beq _02120F30
	bl FUN_0206cc34
	add r7, r7, r0
	add r6, r6, #1
_02120F30:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02120EF0
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, r6, lsr #31
	mov r1, r6
	add r0, r7, r0, asr #1
	bl _s32_div_f
	cmp r9, r0
	movle r0, #1
	movgt r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02120F68: .word gLogicThink
_02120F6C: .word gUnitMan
	arm_func_end FUN_ov46_02120ec8

	arm_func_start FUN_ov46_02120f70
FUN_ov46_02120f70: ; 0x02120F70
	stmfd sp!, {r4, lr}
	ldr r0, _02120F94 ; =0x02099F44
	ldr r4, _02120F98 ; =0x020A11DC
	ldr r0, [r0]
	bl FUN_ov131_0213c868
	mov r1, r0
	mov r0, r4
	bl FUN_ov131_021426bc
	ldmfd sp!, {r4, pc}
_02120F94: .word unk_02099F44
_02120F98: .word unk_020A11DC
	arm_func_end FUN_ov46_02120f70

	arm_func_start FUN_ov46_02120f9c
FUN_ov46_02120f9c: ; 0x02120F9C
	stmfd sp!, {r4, lr}
	ldr r0, _02120FC0 ; =0x02099F44
	ldr r4, _02120FC4 ; =0x020A11DC
	ldr r0, [r0]
	bl FUN_ov131_0213c7e8
	mov r1, r0
	mov r0, r4
	bl FUN_ov131_02142694
	ldmfd sp!, {r4, pc}
_02120FC0: .word unk_02099F44
_02120FC4: .word unk_020A11DC
	arm_func_end FUN_ov46_02120f9c

	arm_func_start FUN_ov46_02120fc8
FUN_ov46_02120fc8: ; 0x02120FC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	ldr r0, _02121084 ; =gLogicThink
	bl FUN_0204eba0
	add r10, r8, #0x300
	ldrh r0, [r10, #0xe0]
	mov r6, #0
	cmp r0, #0
	ble _02121078
	mov r4, #1
	mov r5, r4
	mov r9, #0x1c
_02120FF8:
	mul r7, r6, r9
	ldr r0, [r8, #0x4f8]
	add r1, r0, r7
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	bne _0212103C
	ldrh r1, [r1, #0xa]
	mov r0, r8
	bl FUN_ov46_02120f9c
	cmp r0, #0
	beq _02121068
	ldr r0, [r8, #0x4f8]
	add r0, r0, r7
	ldrh r0, [r0, #0xe]
	add r0, r8, r0
	strb r5, [r0, #0x9e4]
	b _02121068
_0212103C:
	cmp r0, #4
	bne _02121068
	ldrh r1, [r1, #0xa]
	mov r0, r8
	bl FUN_ov46_02120f70
	cmp r0, #0
	ldrne r0, [r8, #0x4f8]
	addne r0, r0, r7
	ldrneh r0, [r0, #0xe]
	addne r0, r8, r0
	strneb r4, [r0, #0x9dc]
_02121068:
	ldrh r0, [r10, #0xe0]
	add r6, r6, #1
	cmp r6, r0
	blt _02120FF8
_02121078:
	ldr r0, _02121084 ; =gLogicThink
	bl FUN_0204ec3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121084: .word gLogicThink
	arm_func_end FUN_ov46_02120fc8

	arm_func_start FUN_ov46_02121088
FUN_ov46_02121088: ; 0x02121088
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x78
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov46_02121088

	arm_func_start FUN_ov46_021210a0
FUN_ov46_021210a0: ; 0x021210A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x78
	bl FUN_0206c110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov46_021210a0

	.rodata
	.global ov46_021210C0
ov46_021210C0:
	.byte 0x25, 0x73, 0x0A, 0x82, 0xF0, 0x5B, 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B, 0x93
	.byte 0xFC, 0x2F, 0x82, 0xA2, 0x5D, 0x82, 0xEA, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov46_02121140
FUN_ov46_02121140: ; 0x02121140
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02121188 ; =0x021211A0
	str r0, [r4, #8]
	ldr r0, _0212118C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02121190 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02121188: .word ov46_021211A0
_0212118C: .word 0x00009CCD
_02121190: .word 0x0000EA3C
	arm_func_end FUN_ov46_02121140

	.section .sinit, 4
ov46_02121194:
	.word FUN_ov46_02121140

	.data
	.global ov46_021211A0
ov46_021211A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov46_021211B8
ov46_021211B8:
	.word ov46_02121314
	.word ov46_02121380
	.word ov46_02121320
	.word ov46_0212132C
	.word ov46_02121338
	.word ov46_02121344
	.word ov46_02121350
	.word ov46_0212135C
	.word ov46_02121368
	.global ov46_021211DC
ov46_021211DC:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x33, 0x35, 0x00, 0x00, 0x00, 0x00
	.global ov46_021211E8
ov46_021211E8:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_021211F4
ov46_021211F4:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x33, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121200
ov46_02121200:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x33, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov46_0212120C
ov46_0212120C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121218
ov46_02121218:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x33, 0x30
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_02121224
ov46_02121224:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x32, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121230
ov46_02121230:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x32, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov46_0212123C
ov46_0212123C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x33, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121248
ov46_02121248:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x32
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_02121254
ov46_02121254:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121260
ov46_02121260:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov46_0212126C
ov46_0212126C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x35, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121278
ov46_02121278:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x30
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_02121284
ov46_02121284:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121290
ov46_02121290:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov46_0212129C
ov46_0212129C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x74, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov46_021212A8
ov46_021212A8:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x33
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_021212B4
ov46_021212B4:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov46_021212C0
ov46_021212C0:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov46_021212CC
ov46_021212CC:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x34, 0x00, 0x00, 0x00
	.global ov46_021212D8
ov46_021212D8:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x35, 0x00, 0x00, 0x00
	.global ov46_021212E4
ov46_021212E4:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x36, 0x00, 0x00, 0x00
	.global ov46_021212F0
ov46_021212F0:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x33, 0x00, 0x00, 0x00
	.global ov46_021212FC
ov46_021212FC:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x37, 0x00, 0x00, 0x00
	.global ov46_02121308
ov46_02121308:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x38, 0x00, 0x00, 0x00
	.global ov46_02121314
ov46_02121314:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.global ov46_02121320
ov46_02121320:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x00, 0x00, 0x00
	.global ov46_0212132C
ov46_0212132C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x33, 0x00, 0x00, 0x00
	.global ov46_02121338
ov46_02121338:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x34, 0x00, 0x00, 0x00
	.global ov46_02121344
ov46_02121344:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x35, 0x00, 0x00, 0x00
	.global ov46_02121350
ov46_02121350:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x36, 0x00, 0x00, 0x00
	.global ov46_0212135C
ov46_0212135C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x37, 0x00, 0x00, 0x00
	.global ov46_02121368
ov46_02121368:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x38, 0x00, 0x00, 0x00
	.global ov46_02121374
ov46_02121374:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x00, 0x00, 0x00
	.global ov46_02121380
ov46_02121380:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov46_0212138C
ov46_0212138C:
	.byte 0x6A, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x31, 0x00, 0x00, 0x00
	.global ov46_02121398
ov46_02121398:
	.byte 0x6A, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov46_021213AC
ov46_021213AC:
	.word FUN_ov46_02121088
	.word FUN_ov46_021210a0
	.word FUN_ov46_0211f3d4
	.word FUN_ov46_0211f878
	.word FUN_ov46_0211f920
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov46_0211fabc
	.word FUN_ov46_0211fe10
	.word FUN_ov46_0211fe34
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov46_02121418
ov46_02121418:
	.word ov46_02121374
	.word ov46_0212138C
	.word ov46_02121398
	.word ov46_021212F0
	.word ov46_021212CC
	.word ov46_021212D8
	.word ov46_021212E4
	.word ov46_021212FC
	.word ov46_02121308
	.word ov46_0212120C
	.word ov46_021211E8
	.word ov46_02121290
	.word ov46_02121284
	.word ov46_021212B4
	.word ov46_0212126C
	.word ov46_02121278
	.word ov46_02121260
	.word ov46_02121248
	.word ov46_021212A8
	.word ov46_02121230
	.word ov46_02121224
	.word ov46_02121218
	.word ov46_021211F4
	.word ov46_02121200
	.word ov46_02121254
	.word ov46_0212123C
	.word ov46_0212129C
	.word ov46_021211DC
	.word ov46_021212C0
	.global ov46_0212148C
ov46_0212148C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6A, 0x69, 0x6E, 0x6D, 0x79
	.byte 0x61, 0x6B, 0x75, 0x2E, 0x53, 0x50, 0x4C, 0x00
	.global ov46_021214A8
ov46_021214A8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x4A, 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x44
	.byte 0x61, 0x74, 0x61, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov46_021214C8
ov46_021214C8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov46_021214E0
ov46_021214E0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x4A
	.byte 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x54, 0x72, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov46_02121504
ov46_02121504:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x4A, 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x43, 0x75, 0x72, 0x73, 0x6F
	.byte 0x72, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov46_02121528
ov46_02121528:
	.byte 0x32, 0x44, 0x5F, 0x30, 0x31, 0x33, 0x00, 0x00
	.global ov46_02121530
ov46_02121530:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6A
	.byte 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov46_0212154C
ov46_0212154C:
	.byte 0x25, 0x73, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00
	.global ov46_02121554
ov46_02121554:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x6A, 0x69, 0x6E, 0x6D, 0x79, 0x61, 0x6B, 0x75, 0x2E, 0x53, 0x50, 0x44, 0x00
	.global ov46_02121570
ov46_02121570:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov46_02121578
ov46_02121578:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_0212157C
ov46_0212157C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov46_02121594
ov46_02121594:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov46_021215AC
ov46_021215AC:
	.byte 0x82, 0x4F, 0x00, 0x00
	.global ov46_021215B0
ov46_021215B0:
	.byte 0x82, 0x50, 0x00, 0x00
	.global ov46_021215B4
ov46_021215B4:
	.byte 0x82, 0x51, 0x00, 0x00
	.global ov46_021215B8
ov46_021215B8:
	.byte 0x82, 0x52, 0x00, 0x00
	.global ov46_021215BC
ov46_021215BC:
	.byte 0x82, 0x53, 0x00, 0x00
	.global ov46_021215C0
ov46_021215C0:
	.byte 0x82, 0x54, 0x00, 0x00
	.global ov46_021215C4
ov46_021215C4:
	.byte 0x82, 0x55, 0x00, 0x00
	.global ov46_021215C8
ov46_021215C8:
	.byte 0x82, 0x56, 0x00, 0x00
	.global ov46_021215CC
ov46_021215CC:
	.byte 0x82, 0x57, 0x00, 0x00
	.global ov46_021215D0
ov46_021215D0:
	.byte 0x82, 0x58, 0x00, 0x00
	.global ov46_021215D4
ov46_021215D4:
	.byte 0x82, 0xB7, 0x82, 0xC5, 0x82, 0xC9, 0x5B, 0x92, 0x87, 0x8A, 0xD4, 0x2F
	.byte 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x5D, 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xC1, 0x82, 0xC4, 0x82
	.byte 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00
	.global ov46_021215F8
ov46_021215F8:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x81, 0x40, 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68
	.byte 0x83, 0x4C, 0x83, 0x83, 0x83, 0x89, 0x82, 0xC5, 0x82, 0xB7, 0x00, 0x00
	.global ov46_0212161C
ov46_0212161C:
	.byte 0x83, 0x58, 0x83, 0x4A
	.byte 0x83, 0x45, 0x83, 0x67, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121630
ov46_02121630:
	.byte 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_02121644
ov46_02121644:
	.byte 0x83, 0x58, 0x83, 0x5E, 0x81, 0x5B, 0x83, 0x67, 0x5B, 0x92, 0x6E, 0x93
	.byte 0x5F, 0x2F, 0x82, 0xBF, 0x82, 0xC4, 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x00, 0x00, 0x00
	.global ov46_02121660
ov46_02121660:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov46_02121674
ov46_02121674:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov46_02121688
ov46_02121688:
	.byte 0x83, 0x8D, 0x83, 0x62, 0x83, 0x4E, 0x5B, 0x89
	.byte 0xF0, 0x8F, 0x9C, 0x2F, 0x82, 0xA9, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x5D, 0x81, 0x49, 0x00
	.global ov46_021216A0
ov46_021216A0:
	.byte 0x83, 0x58, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x8A, 0x81, 0x5B, 0x82, 0xC9, 0x82, 0xE6, 0x82, 0xE9
	.byte 0x83, 0x8D, 0x83, 0x62, 0x83, 0x4E, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00
	.global ov46_021216BC
ov46_021216BC:
	.byte 0x83, 0x58, 0x83, 0x4A
	.byte 0x83, 0x45, 0x83, 0x67, 0x82, 0xC9, 0x82, 0xE6, 0x82, 0xE9, 0x83, 0x8D, 0x83, 0x62, 0x83, 0x4E
	.byte 0x81, 0x49, 0x00, 0x00
	.global ov46_021216D4
ov46_021216D4:
	.byte 0x4A, 0x31, 0x30, 0x2E, 0x53, 0x41, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00

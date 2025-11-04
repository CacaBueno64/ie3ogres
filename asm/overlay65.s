
	.include "/macros/function.inc"
	.include "/include/overlay65.inc"

	.text
	arm_func_start FUN_ov65_02119f00
FUN_ov65_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211A024 ; =0x02099EB4
	str r1, [r4, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A028 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r4, #0x14
	mov r6, #0
	mov r1, r6
	mov r2, #0x60
	bl MI_CpuFill8
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	mov r5, #1
	str r5, [r4, #0x14]
	mov r0, r4
	bl FUN_ov65_0211add0
	mov r0, r4
	bl FUN_ov65_0211aec0
	mov r0, r4
	bl FUN_ov65_0211afb0
	mov r0, r4
	bl FUN_ov65_0211b954
	mov r0, r4
	bl FUN_ov65_0211bc44
	mov r0, r4
	bl FUN_ov65_0211c1ec
	mov r0, r4
	bl FUN_ov65_0211c4e8
	mov r0, r4
	mov r1, r6
	bl FUN_ov65_0211c920
	mov r0, r4
	mov r1, r5
	bl FUN_ov65_0211c920
	mov r0, r4
	bl FUN_ov65_0211ab28
	str r6, [r4, #0x80]
	ldr r1, _0211A02C ; =0x0211CF2C
	ldr r3, _0211A030 ; =gL5Allocator
	ldr r0, [r3]
	cmp r0, #0
	beq _02119FFC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r3]
	add r2, r4, #0x80
	bl _ZN20L5FileRequestManager10readDirectEPKcPPvP11L5Allocatoriiih
_02119FFC:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x84]
	strh r0, [r4, #0x88]
	strh r0, [r4, #0x8a]
	str r0, [r4, #0x4bc]
	str r0, [r4, #0x4c4]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211A024: .word unk_02099EB4
_0211A028: .word unk_02099ED4
_0211A02C: .word ov65_0211CF2C
_0211A030: .word gL5Allocator
	arm_func_end FUN_ov65_02119f00

	arm_func_start FUN_ov65_0211a034
FUN_ov65_0211a034: ; 0x0211A034
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A0C0 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	mov r5, #0
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A0C4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r1, [r4, #0x80]
	cmp r1, #0
	beq _0211A088
	ldr r0, _0211A0C8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	str r5, [r4, #0x80]
_0211A088:
	mov r0, r4
	bl FUN_ov65_0211c500
	mov r0, r4
	bl FUN_ov65_0211c204
	mov r0, r4
	bl FUN_ov65_0211bc5c
	mov r0, r4
	bl FUN_ov65_0211aff0
	mov r0, r4
	bl FUN_ov65_0211aee8
	mov r0, r4
	mov r1, #2
	bl FUN_ov65_0211ade8
	ldmfd sp!, {r3, r4, r5, pc}
_0211A0C0: .word unk_02099EB4
_0211A0C4: .word unk_02099ED4
_0211A0C8: .word gL5Allocator
	arm_func_end FUN_ov65_0211a034

	arm_func_start FUN_ov65_0211a0cc
FUN_ov65_0211a0cc: ; 0x0211A0CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211A1D4 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldreq r0, [r6, #0x3d0]
	cmpeq r0, #0
	ldreq r0, [r6, #0x3dc]
	cmpeq r0, #0
	ldreq r0, [r6, #0x3ec]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211A130
_0211A11C:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0x490]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211A130:
	cmp r4, #2
	blt _0211A11C
	ldr r0, _0211A1D8 ; =0x0209A0F4
	ldr r4, _0211A1DC ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211A180
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211A180:
	tst r5, #1
	beq _0211A194
	mov r0, r6
	bl FUN_ov65_0211a1e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A194:
	tst r5, #2
	beq _0211A1A8
	mov r0, r6
	bl FUN_ov65_0211a26c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1A8:
	tst r7, #0xc0
	beq _0211A1C0
	mov r0, r6
	mov r1, r7
	bl FUN_ov65_0211a344
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1C0:
	tst r5, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov65_0211a3d4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A1D4: .word unk_02099ED4
_0211A1D8: .word unk_0209A0F4
_0211A1DC: .word unk_02099EB4
	arm_func_end FUN_ov65_0211a0cc

	arm_func_start FUN_ov65_0211a1e0
FUN_ov65_0211a1e0: ; 0x0211A1E0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x4bc]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0211A214
	cmp r1, #1
	beq _0211A248
	cmp r1, #2
	beq _0211A254
	ldmfd sp!, {r4, pc}
_0211A214:
	bl FUN_ov65_0211cbdc
	cmp r0, #0
	beq _0211A238
	mov r2, #1
	mov r0, r4
	mov r1, #2
	str r2, [r4, #0x3d0]
	bl FUN_ov65_0211a644
	ldmfd sp!, {r4, pc}
_0211A238:
	ldr r0, _0211A268 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A248:
	mov r0, #1
	str r0, [r4, #0x3dc]
	ldmfd sp!, {r4, pc}
_0211A254:
	ldr r0, _0211A268 ; =gL5Sound
	mov r1, #1
	str r1, [r4, #0x3ec]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211A268: .word gL5Sound
	arm_func_end FUN_ov65_0211a1e0

	arm_func_start FUN_ov65_0211a26c
FUN_ov65_0211a26c: ; 0x0211A26C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r1, [r7, #0x10]
	cmp r1, #0
	bne _0211A2B0
	mov r1, #1
	bl FUN_ov65_0211a644
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl FUN_ov65_0211b87c
	ldr r0, _0211A338 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A2B0:
	cmp r1, #1
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211A33C ; =0x0211CC34
	ldr r1, [r7, #0x498]
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	str r0, [sp, #8]
	cmp r1, #0
	ldr r6, [r7, #0x3c4]
	add r5, sp, #4
	bne _0211A328
	ldr r8, _0211A340 ; =0x02099F38
	mov r4, #2
	ldr r0, [r8]
	ldr r2, [r5, r1, lsl #2]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r1, [r7, #0x498]
	mov r0, #1
	eor r1, r1, #1
	str r1, [r7, #0x498]
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [r5, r1, lsl #2]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113ec0
_0211A328:
	mov r0, #1
	str r0, [r7, #0x3dc]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A338: .word gL5Sound
_0211A33C: .word ov65_0211CC34
_0211A340: .word unk_02099F38
	arm_func_end FUN_ov65_0211a26c

	arm_func_start FUN_ov65_0211a344
FUN_ov65_0211a344: ; 0x0211A344
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	mvn r3, #0
	tst r1, #0x40
	movne r3, #0
	bne _0211A378
	tst r1, #0x80
	movne r3, #1
_0211A378:
	cmp r3, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, pc}
	ldr r0, _0211A3D0 ; =0x0211CC1C
	add r1, sp, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #0x474]
	ldr r1, [r1, r3, lsl #2]
	mov r0, r4
	add r1, r2, r1
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #28
	add r2, r2, r1, ror #28
	mov r1, #0
	bl FUN_ov65_0211c9ec
	mov r0, #6
	str r0, [r4, #0x4bc]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211A3D0: .word ov65_0211CC1C
	arm_func_end FUN_ov65_0211a344

	arm_func_start FUN_ov65_0211a3d4
FUN_ov65_0211a3d4: ; 0x0211A3D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _0211A3FC
	cmp r1, #1
	beq _0211A430
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A3FC:
	mov r1, #0
	mov r2, #0x24
	mla r2, r1, r2, r7
	ldr r2, [r2, #0x474]
	add r2, r2, #8
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	bl FUN_ov65_0211c9ec
	mov r0, #6
	add sp, sp, #0xc
	str r0, [r7, #0x4bc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A430:
	ldr r0, _0211A4A8 ; =0x0211CC24
	mov r4, #2
	ldr r2, [r0]
	ldr r0, [r0, #4]
	ldr r8, _0211A4AC ; =0x02099F38
	str r0, [sp, #8]
	ldr r1, [r7, #0x498]
	ldr r6, [r7, #0x3c4]
	add r5, sp, #4
	str r2, [sp, #4]
	ldr r2, [r5, r1, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r1, [r7, #0x498]
	mov r0, #1
	eor r1, r1, #1
	str r1, [r7, #0x498]
	str r0, [sp]
	ldr r2, [r5, r1, lsl #2]
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	bl FUN_ov16_02113ec0
	ldr r0, _0211A4B0 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211A4A8: .word ov65_0211CC24
_0211A4AC: .word unk_02099F38
_0211A4B0: .word gL5Sound
	arm_func_end FUN_ov65_0211a3d4

	arm_func_start FUN_ov65_0211a4b4
FUN_ov65_0211a4b4: ; 0x0211A4B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211A63C ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r6, #2
	mov r9, r1
	mov r5, #1
	mov r8, r2
	mov r1, r6
	mov r2, r5
	mov r7, r3
	mov r11, #0
	bl FUN_ov16_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0x3b4]
	ldr r1, [r1, #0x37c]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r6
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02113ec0
	ldr r2, [sp, #0x38]
	str r5, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0211A640 ; =0x02099EB4
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	mov r3, r8
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [sp, #0x40]
	strb r11, [r4, #0x10]
	strb r11, [r4, #0xf]
	strh r11, [r4, #0xc]
	cmp r0, #1
	addne sp, sp, #8
	strb r11, [r4, #0x11]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r11
	mov r2, r7
	mov r3, r11
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r11
	mov r2, r5
	mov r3, r11
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	add r2, r7, #1
	mov r1, r11
	mov r3, r11
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A63C: .word unk_02099F38
_0211A640: .word unk_02099EB4
	arm_func_end FUN_ov65_0211a4b4

	arm_func_start FUN_ov65_0211a644
FUN_ov65_0211a644: ; 0x0211A644
	ldr r0, _0211A654 ; =0x02099EB4
	ldr r12, _0211A658 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211A654: .word unk_02099EB4
_0211A658: .word FUN_ov16_0210efac
	arm_func_end FUN_ov65_0211a644

	arm_func_start FUN_ov65_0211a65c
FUN_ov65_0211a65c: ; 0x0211A65C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211A7A0 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	ldreq r0, [r6, #0x3d0]
	cmpeq r0, #0
	ldreq r0, [r6, #0x3dc]
	cmpeq r0, #0
	ldreq r0, [r6, #0x3ec]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211A6C0
_0211A6AC:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0x490]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211A6C0:
	cmp r4, #2
	blt _0211A6AC
	ldr r4, _0211A7A4 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211A784
_0211A6EC: ; jump table
	b _0211A784 ; case 0
	b _0211A704 ; case 1
	b _0211A734 ; case 2
	b _0211A74C ; case 3
	b _0211A768 ; case 4
	b _0211A71C ; case 5
_0211A704:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov65_0211a7a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A71C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov65_0211a820
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A734:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov65_0211a824
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A74C:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov65_0211a880
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A768:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov65_0211a880
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A784:
	ldr r0, [r6, #0x10]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0
	bl FUN_ov65_0211c494
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A7A0: .word unk_02099ED4
_0211A7A4: .word unk_02099EB4
	arm_func_end FUN_ov65_0211a65c

	arm_func_start FUN_ov65_0211a7a8
FUN_ov65_0211a7a8: ; 0x0211A7A8
	stmfd sp!, {r3, lr}
	str r1, [r0, #0x4c0]
	cmp r1, #3
	sub r2, r1, #3
	ldr r3, [r0, #0x474]
	blt _0211A7E4
	cmp r1, #0x12
	bgt _0211A7E4
	cmp r2, r3
	bne _0211A7D8
	bl FUN_ov65_0211a1e0
	ldmfd sp!, {r3, pc}
_0211A7D8:
	mov r1, #0
	bl FUN_ov65_0211c9ec
	ldmfd sp!, {r3, pc}
_0211A7E4:
	cmp r1, #0x13
	bne _0211A7F8
	mov r1, #0
	bl FUN_ov65_0211c160
	ldmfd sp!, {r3, pc}
_0211A7F8:
	cmp r1, #0x14
	bne _0211A80C
	mov r1, #1
	bl FUN_ov65_0211c160
	ldmfd sp!, {r3, pc}
_0211A80C:
	cmp r1, #0x16
	ldmnefd sp!, {r3, pc}
	mov r1, #1
	bl FUN_ov65_0211c494
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov65_0211a7a8

	arm_func_start FUN_ov65_0211a820
FUN_ov65_0211a820: ; 0x0211A820
	bx lr
	arm_func_end FUN_ov65_0211a820

	arm_func_start FUN_ov65_0211a824
FUN_ov65_0211a824: ; 0x0211A824
	stmfd sp!, {r3, lr}
	cmp r1, #0x13
	bgt _0211A854
	bge _0211A870
	cmp r1, #2
	ldmgtfd sp!, {r3, pc}
	cmp r1, #1
	ldmltfd sp!, {r3, pc}
	beq _0211A878
	cmp r1, #2
	beq _0211A870
	ldmfd sp!, {r3, pc}
_0211A854:
	cmp r1, #0x16
	ldmgtfd sp!, {r3, pc}
	cmp r1, #0x14
	ldmltfd sp!, {r3, pc}
	beq _0211A870
	cmp r1, #0x16
	ldmnefd sp!, {r3, pc}
_0211A870:
	bl FUN_ov65_0211a1e0
	ldmfd sp!, {r3, pc}
_0211A878:
	bl FUN_ov65_0211a26c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov65_0211a824

	arm_func_start FUN_ov65_0211a880
FUN_ov65_0211a880: ; 0x0211A880
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r5, _0211A978 ; =0x02099EB4
	mov r4, r0
	ldr r0, [r5]
	mov r9, r1
	mov r7, #0
	add r1, sp, #4
	mov r8, r2
	str r7, [sp, #8]
	bl FUN_ov16_0210f48c
	mov r6, #1
	str r6, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r5]
	add r3, sp, #8
	bl FUN_ov16_0210ecb8
	cmp r8, #0
	bne _0211A96C
	cmp r9, #0x17
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	movne r7, r6
	cmp r0, #2
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0
	ldr r1, [r4, #0x3c8]
	mov r2, #2
	bne _0211A920
	ldr r0, _0211A97C ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A920:
	ldr r0, [sp, #8]
	ldr r3, [r4, #0x4c0]
	ldrh r0, [r0, #8]
	cmp r3, r0
	bne _0211A954
	mov r3, #1
	str r3, [sp]
	ldr r0, _0211A97C ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113ec0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A954:
	ldr r0, _0211A97C ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A96C:
	str r7, [r4, #0x4c0]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211A978: .word unk_02099EB4
_0211A97C: .word unk_02099F38
	arm_func_end FUN_ov65_0211a880

	arm_func_start FUN_ov65_0211a980
FUN_ov65_0211a980: ; 0x0211A980
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211A9F8
_0211A998: ; jump table
	b _0211A9BC ; case 0
	b _0211A9C0 ; case 1
	b _0211A9CC ; case 2
	b _0211A9D4 ; case 3
	b _0211A9DC ; case 4
	b _0211A9E0 ; case 5
	b _0211A9F8 ; case 6
	b _0211A9EC ; case 7
	b _0211A9F4 ; case 8
_0211A9BC:
	bl FUN_ov65_0211ae8c
_0211A9C0:
	mov r0, r4
	bl FUN_ov65_0211af08
	b _0211A9F8
_0211A9CC:
	bl FUN_ov65_0211b084
	b _0211A9F8
_0211A9D4:
	bl FUN_ov65_0211b5b0
	b _0211A9F8
_0211A9DC:
	bl FUN_ov65_0211b634
_0211A9E0:
	mov r0, r4
	bl FUN_ov65_0211b744
	b _0211A9F8
_0211A9EC:
	bl FUN_ov65_0211b7d8
	b _0211A9F8
_0211A9F4:
	bl FUN_ov65_0211b80c
_0211A9F8:
	ldr r0, _0211AAC0 ; =0x02099ED4
	ldr r5, _0211AAC4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211AA30
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211AA3C
_0211AA30:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211AA3C:
	bl _ffix
	ldr r2, _0211AAC8 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x3d0]
	cmp r0, #0
	beq _0211AA64
	mov r0, r4
	bl FUN_ov65_0211b96c
_0211AA64:
	ldr r0, [r4, #0x3dc]
	cmp r0, #0
	beq _0211AA78
	mov r0, r4
	bl FUN_ov65_0211bf6c
_0211AA78:
	ldr r0, [r4, #0x3ec]
	cmp r0, #0
	beq _0211AA8C
	mov r0, r4
	bl FUN_ov65_0211c400
_0211AA8C:
	ldr r0, [r4, #0x490]
	cmp r0, #0
	beq _0211AAA4
	mov r0, r4
	mov r1, #0
	bl FUN_ov65_0211cae8
_0211AAA4:
	mov r0, r4
	bl FUN_ov65_0211aad0
	ldr r0, [r4, #0x4bc]
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x4bc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211AAC0: .word unk_02099ED4
_0211AAC4: .word unk_0209A110
_0211AAC8: .word unk_02099F58
	arm_func_end FUN_ov65_0211a980

	arm_func_start FUN_ov65_0211aacc
FUN_ov65_0211aacc: ; 0x0211AACC
	bx lr
	arm_func_end FUN_ov65_0211aacc

	arm_func_start FUN_ov65_0211aad0
FUN_ov65_0211aad0: ; 0x0211AAD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #2
	str r1, [r4, #0x14]
	bl FUN_ov65_0211cbdc
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #1
	moveq r1, #0
	streqb r0, [r4, #0x21]
	streq r1, [r4, #0x14]
	ldr r0, [r4, #4]
	add r1, r4, #0x14
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov65_0211aad0

	arm_func_start FUN_ov65_0211ab18
FUN_ov65_0211ab18: ; 0x0211AB18
	mov r2, #5
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov65_0211ab18

	arm_func_start FUN_ov65_0211ab28
FUN_ov65_0211ab28: ; 0x0211AB28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r9, #0
	ldr r0, _0211ACAC ; =0x0209BA20
	mov r1, r9
	bl FUN_0205107c
	mov r6, #0x20
	add r4, sp, #0
	mov r7, r0
	mov r0, r4
	mov r1, r9
	mov r2, r6
	bl MI_CpuFill8
	mov r1, r9
	add r0, r5, #0x8c
	mov r2, #0x2c0
	bl MI_CpuFill8
	sub r0, r6, #0x21
	mov r6, r9
	str r9, [r5, #0x354]
	str r0, [r5, #0x358]
_0211AB80:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _0211ABD4
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211ABD4
	mov r0, r8
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r7
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211ABD4
	mov r0, r8
	bl FUN_0206cbf8
	mov r1, r9, lsl #1
	add r9, r9, #1
	strh r0, [r4, r1]
	cmp r9, #0x10
	bge _0211ABE0
_0211ABD4:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0211AB80
_0211ABE0:
	add r8, sp, #0
	mov r0, r5
	mov r1, r8
	bl FUN_ov65_0211acb0
	cmp r9, #0
	mov r4, #0
	addle sp, sp, #0x20
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r6, r5, #0x8c
	mov r11, r4
_0211AC08:
	mov r0, r4, lsl #1
	ldrh r0, [r8, r0]
	mov r1, r11
	bl FUN_ov16_020efa9c
	movs r7, r0
	beq _0211AC98
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211AC98
	mov r0, #0x2c
	mul r10, r4, r0
	mov r2, #0x20
	add r0, r7, #0x1c
	add r1, r6, r10
	bl MI_CpuCopy8
	ldr r0, _0211ACAC ; =0x0209BA20
	add r10, r5, r10
	mov r1, r7
	mov r2, #0x25
	mov r3, r11
	bl FUN_0204f02c
	str r0, [r10, #0xac]
	mov r0, r4, lsl #1
	ldrh r1, [r8, r0]
	mov r0, r7
	strh r1, [r10, #0xb0]
	bl FUN_0206cc00
	strh r0, [r10, #0xb2]
	mov r0, r7
	bl FUN_0204fb60
	strh r0, [r10, #0xb4]
	mov r0, r7
	bl FUN_0206d714
	strb r0, [r10, #0xb6]
	mov r0, #1
	strb r0, [r10, #0xb7]
_0211AC98:
	add r4, r4, #1
	cmp r4, r9
	blt _0211AC08
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACAC: .word unk_0209BA20
	arm_func_end FUN_ov65_0211ab28

	arm_func_start FUN_ov65_0211acb0
FUN_ov65_0211acb0: ; 0x0211ACB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x50
	add r5, sp, #0x30
	mov r9, #0x20
	mov r7, #0
	mov r8, r1
	mov r0, r5
	mov r1, r7
	mov r2, r9
	bl MI_CpuFill8
	add r4, sp, #8
	mov r1, r7
	mov r0, r4
	mov r2, #8
	bl MI_CpuFill8
	add r6, sp, #0x10
	mov r1, r7
	mov r0, r6
	mov r2, r9
	bl MI_CpuFill8
	mov r2, r9
	mov r0, r8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r9, _0211ADCC ; =0x0209BA20
	str r7, [sp]
	mov r1, r7
	mov r0, r9
	mov r2, r4
	mov r3, #4
	bl FUN_0204b2f4
	mov r2, r6
	str r7, [sp]
	mov r6, r0
	mov r0, r9
	mov r1, r7
	mov r3, #0x10
	str r7, [sp, #4]
	bl FUN_0204b540
	mov r1, r6
	mov r12, #1
	mov r0, r7
_0211AD58:
	mov r3, r0
	mov r9, r0
	cmp r6, #0
	ble _0211AD90
	mov r2, r7, lsl #1
	ldrh lr, [r5, r2]
_0211AD70:
	mov r2, r9, lsl #1
	ldrh r2, [r4, r2]
	cmp lr, r2
	moveq r3, r12
	beq _0211AD90
	add r9, r9, #1
	cmp r9, r6
	blt _0211AD70
_0211AD90:
	cmp r3, #0
	moveq r2, r7, lsl #1
	ldreqh r3, [r5, r2]
	moveq r2, r1, lsl #1
	add r7, r7, #1
	addeq r1, r1, #1
	streqh r3, [r8, r2]
	cmp r7, #0x10
	blt _0211AD58
	add r0, sp, #8
	mov r1, r8
	mov r2, r6, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211ADCC: .word unk_0209BA20
	arm_func_end FUN_ov65_0211acb0

	arm_func_start FUN_ov65_0211add0
FUN_ov65_0211add0: ; 0x0211ADD0
	ldr r12, _0211ADE4 ; =MI_CpuFill8
	add r0, r0, #0x35c
	mov r1, #0
	mov r2, #0x18
	bx r12
_0211ADE4: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211add0

	arm_func_start FUN_ov65_0211ade8
FUN_ov65_0211ade8: ; 0x0211ADE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	cmp r1, #2
	blo _0211AE4C
	mov r9, #0
	add r8, r4, #0x35c
	mov r7, #1
	mov r6, r9
	mov r5, #0xc
_0211AE0C:
	mul r10, r9, r5
	mov r1, r7
	add r0, r8, r10
	bl FUN_ov16_020f338c
	add r0, r8, r10
	bl FUN_ov16_020f33fc
	add r0, r4, r10
	str r6, [r0, #0x35c]
	str r6, [r0, #0x360]
	strb r6, [r0, #0x364]
	strb r6, [r0, #0x365]
	add r9, r9, #1
	strb r6, [r0, #0x366]
	cmp r9, #2
	blt _0211AE0C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AE4C:
	mov r0, #0xc
	mul r6, r1, r0
	add r5, r4, #0x35c
	add r0, r5, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r5, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r5, r6]
	add r0, r4, r6
	str r1, [r0, #0x360]
	strb r1, [r0, #0x364]
	strb r1, [r0, #0x365]
	strb r1, [r0, #0x366]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov65_0211ade8

	arm_func_start FUN_ov65_0211ae8c
FUN_ov65_0211ae8c: ; 0x0211AE8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211AEB8 ; =0x0211CF4C
	add r1, r4, #0x35c
	bl FUN_ov16_020f3054
	ldr r0, _0211AEBC ; =0x0211CF64
	add r1, r4, #0x368
	bl FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AEB8: .word ov65_0211CF4C
_0211AEBC: .word ov65_0211CF64
	arm_func_end FUN_ov65_0211ae8c

	arm_func_start FUN_ov65_0211aec0
FUN_ov65_0211aec0: ; 0x0211AEC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x374
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x374
	mov r1, #0x10
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov65_0211aec0

	arm_func_start FUN_ov65_0211aee8
FUN_ov65_0211aee8: ; 0x0211AEE8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x374
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r4, #0x374
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov65_0211aee8

	arm_func_start FUN_ov65_0211af08
FUN_ov65_0211af08: ; 0x0211AF08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r4, r0
	add r0, r4, #0x35c
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r9, #0
	ldr r6, _0211AF90 ; =0x0211CF8C
	mov r8, r9
	mov r7, #1
	mov r5, #0x2c
_0211AF40:
	mla r0, r9, r5, r4
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r2, [r0, #0xb2]
	ldr r0, [r4, #0x35c]
	mov r1, r6
	add r3, r4, #0x374
	bl FUN_ov16_020f55b4
	add r9, r9, #1
	cmp r9, #0x10
	blt _0211AF40
	mov r0, r4
	mov r1, r8
	bl FUN_ov65_0211ade8
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211AF90: .word ov65_0211CF8C
	arm_func_end FUN_ov65_0211af08

	arm_func_start FUN_ov65_0211af94
FUN_ov65_0211af94: ; 0x0211AF94
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0x374
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov65_0211af94

	arm_func_start FUN_ov65_0211afb0
FUN_ov65_0211afb0: ; 0x0211AFB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x37c
	mov r2, #0x38
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x3b4
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r0, _0211AFEC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AFEC: .word unk_02099F38
	arm_func_end FUN_ov65_0211afb0

	arm_func_start FUN_ov65_0211aff0
FUN_ov65_0211aff0: ; 0x0211AFF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B080 ; =0x02099F38
	b _0211B02C
_0211B008:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x3b4]
	cmp r1, #0
	beq _0211B028
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x3b4]
_0211B028:
	add r4, r4, #1
_0211B02C:
	cmp r4, #7
	blt _0211B008
	mov r4, #0
	mov r7, r4
	ldr r6, _0211B080 ; =0x02099F38
	b _0211B068
_0211B044:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x37c]
	cmp r1, #0
	beq _0211B064
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x37c]
_0211B064:
	add r4, r4, #1
_0211B068:
	cmp r4, #0xe
	blt _0211B044
	ldr r0, _0211B080 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B080: .word unk_02099F38
	arm_func_end FUN_ov65_0211aff0

	arm_func_start FUN_ov65_0211b084
FUN_ov65_0211b084: ; 0x0211B084
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x7c
	mov r5, r0
	add r0, r5, #0x374
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x7c
	ldmnefd sp!, {r4, r5, pc}
	ldr r4, _0211B100 ; =0x0211CCE4
	add lr, sp, #4
	mov r12, #7
_0211B0B0:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211B0B0
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x368]
	ldr r0, _0211B104 ; =0x0211CFA4
	add r2, sp, #4
	add r3, r5, #0x37c
	bl FUN_ov16_020f5450
	mov r0, r5
	mov r1, #1
	bl FUN_ov65_0211ade8
	mov r0, #3
	str r0, [r5, #0xc]
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, pc}
_0211B100: .word ov65_0211CCE4
_0211B104: .word ov65_0211CFA4
	arm_func_end FUN_ov65_0211b084

	arm_func_start FUN_ov65_0211b108
FUN_ov65_0211b108: ; 0x0211B108
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x37c]
	ldr r6, _0211B1C4 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B1C4: .word unk_02099F38
	arm_func_end FUN_ov65_0211b108

	arm_func_start FUN_ov65_0211b1c8
FUN_ov65_0211b1c8: ; 0x0211B1C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	mov r4, #0
	mov r10, r0
	str r1, [sp, #0x20]
	mov r6, #4
	mov r9, r2
	add r0, sp, #0x38
	mov r1, r4
	mov r2, r6
	ldr r7, [sp, #0xa8]
	mov r8, r3
	str r4, [sp, #0x30]
	mov r5, #0x80
	bl MI_CpuFill8
	mov r2, r6
	add r0, sp, #0x34
	mov r1, r4
	bl MI_CpuFill8
	str r4, [r7]
	ldr r0, [r10, #0x10]
	add r2, sp, #0x38
	cmp r0, #1
	cmpne r0, #2
	moveq r5, #0x100
	add r3, sp, #0x34
	mov r0, r5
	mov r1, #0x20
	moveq r4, #1
	bl FUN_02054070
	ldr r5, _0211B494 ; =0x02099F38
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r5]
	bl FUN_02059630
	mov r2, #0
	str r0, [r7]
	mov r1, r0
	ldr r0, [r5]
	mov r3, r2
	bl FUN_02059038
	ldr r1, [r7]
	mov r2, #0
	str r2, [sp, #0x2c]
	ldr r0, [r5]
	add r2, sp, #0x2c
	add r3, sp, #0x30
	bl FUN_0205935c
	ldr r0, [sp, #0x2c]
	ldr r1, [r7]
	str r0, [sp, #0x28]
	ldr r0, [r5]
	bl FUN_ov16_02111438
	str r0, [sp, #0x24]
	ldr r0, [r5]
	ldr r1, [r7]
	bl FUN_ov16_02111458
	mov r11, r0
	ldr r0, _0211B498 ; =0x02099F50
	mov r5, #1
	mov r6, #5
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	bl FUN_02043310
	ldr r1, [sp, #0xb8]
	sub r0, r6, #6
	cmp r1, r0
	ble _0211B37C
	mov r0, #0x2c
	mla r0, r1, r0, r10
	ldrh r0, [r0, #0xb0]
	mov r1, #0
	bl FUN_ov16_020efa9c
	ldr r3, [sp, #0xb8]
	mov r1, #0x2c
	mla r1, r3, r1, r10
	add r6, r0, #0x6c
	ldrh r1, [r1, #0xb0]
	ldr r0, _0211B49C ; =0x0209BA20
	add r2, sp, #0x3c
	bl FUN_0204c078
	ldr r0, _0211B4A0 ; =0x020A1540
	ldrh r3, [sp, #0x78]
	ldrb r10, [sp, #0x82]
	ldrh r2, [r0, #0xd0]
	cmp r3, #0
	rsbeq r3, r5, #0x8000
	mov r2, r2, asr r10
	tst r2, #1
	mov r1, #0
	movne r10, #1
	add r0, r3, #0x14
	moveq r10, r1
	mov r2, #0
	b _0211B358
_0211B348:
	add r12, r6, r2
	ldrb r12, [r12, #0xf]
	add r2, r2, #1
	add r1, r1, r12
_0211B358:
	cmp r2, #7
	blt _0211B348
	cmp r1, r0
	movge r5, #8
	bge _0211B37C
	cmp r10, #0
	bne _0211B37C
	cmp r1, r3
	movge r5, #8
_0211B37C:
	str r11, [sp]
	mov r6, #0
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r5, _0211B498 ; =0x02099F50
	str r4, [sp, #0x1c]
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x24]
	bl FUN_020425fc
	ldr r0, [r5]
	bl FUN_0204331c
	ldr r4, _0211B494 ; =0x02099F38
	ldr r3, [sp, #0x30]
	ldr r1, [r7]
	ldr r0, [r4]
	ldr r2, [sp, #0x28]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	ldr r0, [r8]
	mov r1, r9
	add r2, r0, #1
	str r2, [r8]
	ldr r3, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	ldr r2, [r8]
	mov r3, r6
	mov r1, r9
	bl FUN_ov16_02113d88
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [r8]
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r9
	bl FUN_ov16_02113d08
	ldr r0, [sp, #0xb0]
	ldr r3, [sp, #0xac]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r8]
	mov r1, r9
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0xb4]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r8]
	mov r1, r9
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B494: .word unk_02099F38
_0211B498: .word unk_02099F50
_0211B49C: .word unk_0209BA20
_0211B4A0: .word unk_020A1540
	arm_func_end FUN_ov65_0211b1c8

	arm_func_start FUN_ov65_0211b4a4
FUN_ov65_0211b4a4: ; 0x0211B4A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
_0211B4B0:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x3b4]
	mov r0, r4
	bl FUN_ov65_0211b590
	add r5, r5, #1
	cmp r5, #7
	blt _0211B4B0
	mov r5, #0
_0211B4D0:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x3f4]
	mov r0, r4
	bl FUN_ov65_0211b590
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B4D0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211B50C
	cmp r0, #1
	beq _0211B550
	cmp r0, #2
	beq _0211B560
	ldmfd sp!, {r3, r4, r5, pc}
_0211B50C:
	mov r5, #0
_0211B510:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x3b4]
	mov r0, r4
	bl FUN_ov65_0211b570
	add r5, r5, #1
	cmp r5, #7
	blt _0211B510
	mov r5, #0
_0211B530:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0x3f4]
	mov r0, r4
	bl FUN_ov65_0211b570
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B530
	ldmfd sp!, {r3, r4, r5, pc}
_0211B550:
	ldr r1, [r4, #0x3c4]
	mov r0, r4
	bl FUN_ov65_0211b570
	ldmfd sp!, {r3, r4, r5, pc}
_0211B560:
	ldr r1, [r4, #0x3c8]
	mov r0, r4
	bl FUN_ov65_0211b570
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov65_0211b4a4

	arm_func_start FUN_ov65_0211b570
FUN_ov65_0211b570: ; 0x0211B570
	ldr r0, _0211B584 ; =0x02099F38
	ldr r2, _0211B588 ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B58C ; = FUN_ov16_02114204
	bx r12
_0211B584: .word unk_02099F38
_0211B588: .word 0x00007FFF
_0211B58C: .word FUN_ov16_02114204
	arm_func_end FUN_ov65_0211b570

	arm_func_start FUN_ov65_0211b590
FUN_ov65_0211b590: ; 0x0211B590
	ldr r0, _0211B5A4 ; =0x02099F38
	ldr r2, _0211B5A8 ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B5AC ; = FUN_ov16_02114204
	bx r12
_0211B5A4: .word unk_02099F38
_0211B5A8: .word 0x00004210
_0211B5AC: .word FUN_ov16_02114204
	arm_func_end FUN_ov65_0211b590

	arm_func_start FUN_ov65_0211b5b0
FUN_ov65_0211b5b0: ; 0x0211B5B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211B630 ; =0x02099F38
	b _0211B61C
_0211B5C8:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x37c]
	cmp r1, #0
	beq _0211B618
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x37c]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B618
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x37c]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211B618:
	add r7, r7, #1
_0211B61C:
	cmp r7, #0xe
	blt _0211B5C8
	mov r0, #4
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B630: .word unk_02099F38
	arm_func_end FUN_ov65_0211b5b0

	arm_func_start FUN_ov65_0211b634
FUN_ov65_0211b634: ; 0x0211B634
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov65_0211b674
	mov r0, r4
	bl FUN_ov65_0211b8b0
	mov r0, r4
	bl FUN_ov65_0211b900
	mov r0, r4
	bl FUN_ov65_0211bb6c
	mov r0, r4
	bl FUN_ov65_0211c584
	mov r0, r4
	bl FUN_ov65_0211c940
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov65_0211b634

	arm_func_start FUN_ov65_0211b674
FUN_ov65_0211b674: ; 0x0211B674
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B740 ; =0x02099F38
	mov r9, r0
	mov r8, #1
	ldr r0, [r1]
	mov r2, r8
	mov r1, #3
	bl FUN_ov16_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x14]
	str r7, [r9, #0x3b4]
	str r6, [sp]
	str r6, [sp, #4]
	add r5, sp, #0x14
	mov r4, #9
	str r6, [sp, #8]
	mov r0, #0x1f4
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	str r8, [sp, #0x10]
	mov r3, r4
	bl FUN_ov65_0211b108
	rsb r10, r4, #0x1fc
	str r6, [sp]
	mov r4, #8
	str r4, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r10, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	mov r3, #0xa
	bl FUN_ov65_0211b108
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r10, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	mov r3, r4
	str r8, [sp, #0x10]
	bl FUN_ov65_0211b108
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B740: .word unk_02099F38
	arm_func_end FUN_ov65_0211b674

	arm_func_start FUN_ov65_0211b744
FUN_ov65_0211b744: ; 0x0211B744
	stmfd sp!, {r4, lr}
	ldr r1, _0211B7D4 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0211B780
	cmp r0, #1
	beq _0211B794
	cmp r0, #2
	beq _0211B7A0
	b _0211B7B0
_0211B780:
	mov r0, r4
	bl FUN_ov65_0211bc5c
	mov r0, r4
	bl FUN_ov65_0211c204
	b _0211B7B0
_0211B794:
	mov r0, r4
	bl FUN_ov65_0211bcb0
	b _0211B7B0
_0211B7A0:
	mov r0, r4
	bl FUN_ov65_0211bc5c
	mov r0, r4
	bl FUN_ov65_0211c258
_0211B7B0:
	mov r0, r4
	bl FUN_ov65_0211b4a4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211B7D4: .word unk_02099ED4
	arm_func_end FUN_ov65_0211b744

	arm_func_start FUN_ov65_0211b7d8
FUN_ov65_0211b7d8: ; 0x0211B7D8
	stmfd sp!, {r4, lr}
	ldr r1, _0211B808 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #8
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211B808: .word unk_02099ED4
	arm_func_end FUN_ov65_0211b7d8

	arm_func_start FUN_ov65_0211b80c
FUN_ov65_0211b80c: ; 0x0211B80C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r5, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x78]
	ldr r4, [r5, #0x7c]
	mov r1, #0
	cmp r2, r4
	cmpeq r2, #0
	bne _0211B85C
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211B85C:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov65_0211b80c

	arm_func_start FUN_ov65_0211b87c
FUN_ov65_0211b87c: ; 0x0211B87C
	ldr r3, _0211B8AC ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211B898
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211B898:
	mov r3, #7
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	str r3, [r0, #0xc]
	bx lr
_0211B8AC: .word unk_0209A454
	arm_func_end FUN_ov65_0211b87c

	arm_func_start FUN_ov65_0211b8b0
FUN_ov65_0211b8b0: ; 0x0211B8B0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r1, [r0, #0x3b8]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r1, #0xd0
	str r1, [sp]
	mov r1, #0xa8
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r3, #0x64
	str r3, [sp, #0xc]
	mov r3, r2
	str r1, [sp, #0x10]
	bl FUN_ov65_0211a4b4
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov65_0211b8b0

	arm_func_start FUN_ov65_0211b900
FUN_ov65_0211b900: ; 0x0211B900
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r1, [r0, #0x3bc]
	cmp r1, #0
	addne sp, sp, #0x14
	ldmneia sp!, {pc}
	mov r1, #0xa0
	str r1, [sp]
	mov r2, #0xa8
	mov r1, #2
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r2, #0x64
	mov r3, r1
	str r2, [sp, #0xc]
	mov r12, #1
	mov r2, #0
	str r12, [sp, #0x10]
	bl FUN_ov65_0211a4b4
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov65_0211b900

	arm_func_start FUN_ov65_0211b954
FUN_ov65_0211b954: ; 0x0211B954
	ldr r12, _0211B968 ; =MI_CpuFill8
	add r0, r0, #0x3d0
	mov r1, #0
	mov r2, #8
	bx r12
_0211B968: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211b954

	arm_func_start FUN_ov65_0211b96c
FUN_ov65_0211b96c: ; 0x0211B96C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r0, [r5, #0x3d4]
	mov r11, #0xb
	add r9, r11, #1
	ldr r7, [r5, #0x484]
	add r0, r0, #1
	add r1, r9, #1
	ldr r6, [r5, #0x480]
	ldr r8, [r5, #0x3cc]
	bl _s32_div_f
	mov r4, r1
	mov r0, r7, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	str r4, [r5, #0x3d4]
	str r1, [sp]
	ldr r0, _0211BB58 ; =0x02099F38
	mov r1, r8
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02113b78
	ldr r0, _0211BB5C ; =0x020A9C40
	bl FUN_020460fc
	and r10, r0, #0xff
	cmp r4, #1
	bne _0211BA7C
	mov r0, r5
	bl FUN_ov65_0211cbdc
	strh r0, [r5, #0x8a]
	ldrh r0, [r5, #0x8a]
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r7, r0
	ldr r0, _0211BB60 ; =0x0211CC8C
	ldr r6, _0211BB64 ; =0x02099F44
	add r0, r0, r10, lsl #3
	ldr r10, [r0, #4]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r10
	bl FUN_ov131_021419ac
	cmp r10, #0x14
	str r0, [r5, #0x3e4]
	cmpne r10, #0x16
	moveq r0, #1
	streq r0, [r5, #0x4c4]
	beq _0211BA50
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r10
	mov r3, #1
	bl FUN_ov131_02141528
	str r0, [r5, #0x4c4]
_0211BA50:
	ldr r0, [r5, #0x3e4]
	cmp r0, #0
	ldrgt r0, [r5, #0x4c4]
	cmpgt r0, #0
	bgt _0211BA70
	ldr r0, _0211BB68 ; =gL5Sound
	mov r1, #9
	b _0211BA78
_0211BA70:
	ldr r0, _0211BB68 ; =gL5Sound
	mov r1, #1
_0211BA78:
	bl FUN_0202cf6c
_0211BA7C:
	mov r0, #2
	cmp r4, r0
	ldr r0, _0211BB58 ; =0x02099F38
	mov r2, #1
	bgt _0211BAAC
	str r2, [sp]
	mov r2, #2
	ldr r0, [r0]
	mov r1, r8
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BAAC:
	cmp r4, #5
	bgt _0211BACC
	mov r2, #2
	ldr r0, [r0]
	mov r1, r8
	mov r3, r2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BACC:
	cmp r4, #8
	bgt _0211BAF0
	str r2, [sp]
	mov r2, #2
	ldr r0, [r0]
	mov r1, r8
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BAF0:
	cmp r4, r11
	bgt _0211BB10
	mov r2, #2
	ldr r0, [r0]
	mov r1, r8
	mov r3, r2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB10:
	cmp r4, r9
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #0x3e4]
	mov r1, #0
	cmp r0, #0
	ldrgt r0, [r5, #0x4c4]
	str r1, [r5, #0x3d0]
	cmpgt r0, #0
	str r1, [r5, #0x3d4]
	mov r0, r5
	bgt _0211BB4C
	mov r1, #2
	str r2, [r5, #0x84]
	bl FUN_ov65_0211ab18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB4C:
	mov r1, r2
	bl FUN_ov65_0211ab18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB58: .word unk_02099F38
_0211BB5C: .word unk_020A9C40
_0211BB60: .word ov65_0211CC8C
_0211BB64: .word unk_02099F44
_0211BB68: .word gL5Sound
	arm_func_end FUN_ov65_0211b96c

	arm_func_start FUN_ov65_0211bb6c
FUN_ov65_0211bb6c: ; 0x0211BB6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, [r10, #0x3c0]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BC38 ; =0x0209BA20
	bl FUN_ov16_020edf7c
	ldr r1, _0211BC3C ; =0x02099F38
	mov r5, r0
	ldr r0, [r1]
	mov r1, #7
	mov r2, #1
	bl FUN_ov16_02112724
	ldr r4, _0211BC40 ; =0xCCCCCCCD
	mov r3, #0xa
	umull r2, r1, r5, r4
	mov r1, r1, lsr #3
	umull r1, r2, r3, r1
	mov r7, #0
	str r7, [sp, #0x14]
	mov r6, r0
	str r6, [r10, #0x3c0]
	sub r1, r5, r1
	mov r7, #0x78
	mov r8, #0xa8
	mov r9, #0x190
	mov r11, #1
_0211BBE0:
	stmia sp, {r1, r7, r8}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #7
	str r11, [sp, #0x10]
	bl FUN_ov65_0211b108
	mov r1, r5
	umull r0, r5, r1, r4
	movs r5, r5, lsr #3
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	umull r0, r1, r5, r4
	mov r1, r1, lsr #3
	mov r0, #0xa
	umull r1, r2, r0, r1
	sub r1, r5, r1
	sub r7, r7, #8
	b _0211BBE0
	arm_func_end FUN_ov65_0211bb6c

	arm_func_start FUN_ov65_0211bc30
FUN_ov65_0211bc30: ; 0x0211BC30
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC38: .word unk_0209BA20
_0211BC3C: .word unk_02099F38
_0211BC40: .word 0xCCCCCCCD
	arm_func_end FUN_ov65_0211bc30

	arm_func_start FUN_ov65_0211bc44
FUN_ov65_0211bc44: ; 0x0211BC44
	ldr r12, _0211BC58 ; =MI_CpuFill8
	add r0, r0, #0x3d8
	mov r1, #0
	mov r2, #0xc
	bx r12
_0211BC58: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211bc44

	arm_func_start FUN_ov65_0211bc5c
FUN_ov65_0211bc5c: ; 0x0211BC5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x3c4]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211BCA8 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r5, #0
	str r5, [r6, #0x3c4]
	ldr r1, [r6, #0x3d8]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, _0211BCAC ; =0x02099EB4
	str r5, [r6, #0x3d8]
	ldr r0, [r0]
	mov r1, #0x10
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211BCA8: .word unk_02099F38
_0211BCAC: .word unk_02099EB4
	arm_func_end FUN_ov65_0211bc5c

	arm_func_start FUN_ov65_0211bcb0
FUN_ov65_0211bcb0: ; 0x0211BCB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r10, r0
	ldr r0, [r10, #0x3c4]
	cmp r0, #0
	addne sp, sp, #0x38
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BF58 ; =0x02099F38
	mov r6, #0xa
	ldr r0, [r0]
	mov r1, r6
	mov r2, #1
	bl FUN_ov16_02112724
	mov r5, #0
	mov r4, r0
	add r8, r6, #0x154
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	mov r6, #0x20
	mov r7, #0x3c
	mov r0, #8
_0211BD04:
	strb r5, [r1]
	strb r5, [r1, #1]
	strb r5, [r1, #2]
	strb r5, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211BD04
	ldrh r0, [r10, #0x8a]
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r9, r0
	ldr r0, _0211BF5C ; =0x020A9C40
	bl FUN_020460fc
	and r0, r0, #0xff
	cmp r0, #1
	blo _0211BD68
	cmp r0, #9
	bhi _0211BD68
	mov r0, r9
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x5d]
	ldr r1, [r10, #0x80]
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	strh r0, [r10, #0x88]
_0211BD68:
	str r4, [r10, #0x3c4]
	stmia sp, {r5, r6, r7}
	str r8, [sp, #0xc]
	mov r6, #1
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	str r6, [sp, #0x10]
	mov r3, #0xb
	bl FUN_ov65_0211b108
	str r5, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r5, #0x6b
	str r5, [sp, #8]
	sub r8, r8, #1
	str r8, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	mov r3, r6
	str r6, [sp, #0x10]
	bl FUN_ov65_0211b108
	mov r0, #2
	str r0, [sp]
	mov r0, #0x98
	stmib sp, {r0, r5}
	mov r3, r6
	str r8, [sp, #0xc]
	mov r7, #0
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	str r7, [sp, #0x10]
	bl FUN_ov65_0211b108
	add r5, sp, #0x18
	ldr r1, _0211BF60 ; =0x0211CFCC
	mov r0, r5
	mov r6, #0x48
	bl sprintf
	add r0, r10, #0x3d8
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	sub r0, r6, #0x49
	str r8, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r1, r5
	mov r0, r10
	mov r2, r4
	add r3, sp, #0x14
	bl FUN_ov65_0211b1c8
	ldrh r9, [r10, #0x88]
	ldr r11, _0211BF64 ; =0x66666667
	mov r2, #0xa
	smull r0, r5, r11, r9
	mov r0, r9, lsr #0x1f
	add r5, r0, r5, asr #2
	smull r0, r1, r2, r5
	sub r5, r9, r0
	mov r6, #0x90
	mov r7, #0x54
_0211BE5C:
	stmia sp, {r5, r6, r7}
	str r8, [sp, #0xc]
	mov r3, #1
	str r3, [sp, #0x10]
	mov r0, r10
	mov r1, r4
	add r2, sp, #0x14
	mov r3, #7
	bl FUN_ov65_0211b108
	mov r1, r9
	smull r0, r9, r11, r1
	mov r0, r1, lsr #0x1f
	adds r9, r0, r9, asr #2
	beq _0211BEB4
	smull r1, r5, r11, r9
	mov r0, r9, lsr #0x1f
	add r5, r0, r5, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r5
	sub r5, r9, r1
	sub r6, r6, #8
	b _0211BE5C
_0211BEB4:
	mov r9, #0x6b
	str r9, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r7, #0x18
	mov r4, #0x10
	str r7, [sp, #8]
	mov r6, #0x258
	ldr r5, _0211BF68 ; =0x02099EB4
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r4
	mov r2, #0x13
	mov r3, #0x38
	bl FUN_ov16_0210fba4
	str r9, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r4
	mov r2, #0x14
	mov r3, #0x98
	bl FUN_ov16_0210fba4
	mov r3, #0
	mov r1, r4
	str r3, [sp]
	mov r4, #0x100
	str r4, [sp, #4]
	mov r4, #0xc0
	sub r0, r6, #1
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r2, #0x15
	bl FUN_ov16_0210fba4
	mov r0, r10
	mov r1, #1
	bl FUN_ov65_0211c920
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF58: .word unk_02099F38
_0211BF5C: .word unk_020A9C40
_0211BF60: .word ov65_0211CFCC
_0211BF64: .word 0x66666667
_0211BF68: .word unk_02099EB4
	arm_func_end FUN_ov65_0211bcb0

	arm_func_start FUN_ov65_0211bf6c
FUN_ov65_0211bf6c: ; 0x0211BF6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldr r4, _0211C144 ; =0x0211CC0C
	mov r9, r0
	ldr r8, [r4, #4]
	ldr r0, _0211C148 ; =0x0211CC3C
	ldr r5, [r9, #0x3c4]
	add r6, sp, #0xc
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldr r0, [r9, #0x3e0]
	ldr r2, [r4]
	add r7, r0, #1
	mov r1, #0
	ldrh r0, [r9, #0x8a]
	str r2, [sp, #4]
	str r8, [sp, #8]
	str r7, [r9, #0x3e0]
	ldr r6, [r9, #0x498]
	mov r4, r1
	bl FUN_ov16_020efa9c
	ldr r0, _0211C14C ; =0x0209BA20
	bl FUN_ov16_020edf7c
	mov r8, r0
	cmp r7, #1
	bne _0211C010
	ldr r0, [r9, #0x498]
	cmp r0, #0
	beq _0211BFEC
	ldr r0, _0211C150 ; =gL5Sound
	mov r1, #4
	b _0211C00C
_0211BFEC:
	ldrh r0, [r9, #0x88]
	cmp r8, r0
	bhs _0211C004
	ldr r0, _0211C150 ; =gL5Sound
	mov r1, #9
	b _0211C00C
_0211C004:
	ldr r0, _0211C150 ; =gL5Sound
	mov r1, #1
_0211C00C:
	bl FUN_0202cf6c
_0211C010:
	cmp r7, #3
	bge _0211C044
	ldr r0, _0211C154 ; =0x02099F38
	add r2, sp, #4
	str r4, [sp]
	add r1, sp, #0xc
	ldr r3, [r1, r6, lsl #3]
	ldr r0, [r0]
	ldr r2, [r2, r6, lsl #2]
	mov r1, r5
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C044:
	cmp r7, #6
	bge _0211C07C
	add r1, sp, #0xc
	add r2, sp, #4
	ldr r0, _0211C154 ; =0x02099F38
	str r4, [sp]
	add r1, r1, r6, lsl #3
	ldr r3, [r1, #4]
	ldr r0, [r0]
	ldr r2, [r2, r6, lsl #2]
	mov r1, r5
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C07C:
	cmp r7, #9
	bge _0211C0B0
	ldr r0, _0211C154 ; =0x02099F38
	add r2, sp, #4
	str r4, [sp]
	add r1, sp, #0xc
	ldr r3, [r1, r6, lsl #3]
	ldr r0, [r0]
	ldr r2, [r2, r6, lsl #2]
	mov r1, r5
	bl FUN_ov16_0211401c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C0B0:
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	str r4, [r9, #0x3dc]
	str r4, [r9, #0x3e0]
	cmp r6, #0
	beq _0211C0DC
	mov r0, r9
	mov r1, r4
	bl FUN_ov65_0211ab18
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C0DC:
	ldrh r0, [r9, #0x88]
	cmp r8, r0
	blo _0211C12C
	ldr r5, _0211C14C ; =0x0209BA20
	rsb r1, r0, #0
	mov r0, r5
	bl FUN_ov16_020edf8c
	ldrh r2, [r9, #0x8a]
	ldr r0, _0211C158 ; =0x020A9C40
	ldr r1, _0211C15C ; =0x00000192
	bl FUN_020460a8
	ldrh r1, [r9, #0x8a]
	mov r0, r5
	bl FUN_02073a04
	mov r0, r9
	mov r1, r4
	mov r2, r4
	bl FUN_ov65_0211b87c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C12C:
	mov r0, r9
	mov r1, #2
	str r4, [r9, #0x84]
	bl FUN_ov65_0211ab18
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C144: .word ov65_0211CC0C
_0211C148: .word ov65_0211CC3C
_0211C14C: .word unk_0209BA20
_0211C150: .word gL5Sound
_0211C154: .word unk_02099F38
_0211C158: .word unk_020A9C40
_0211C15C: .word 0x00000192
	arm_func_end FUN_ov65_0211bf6c

	arm_func_start FUN_ov65_0211c160
FUN_ov65_0211c160: ; 0x0211C160
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r2, _0211C1E0 ; =0x0211CC2C
	mov r7, r0
	ldr r3, [r2]
	ldr r0, [r2, #4]
	ldr r8, _0211C1E4 ; =0x02099F38
	str r0, [sp, #8]
	ldr r2, [r7, #0x498]
	add r4, sp, #4
	str r3, [sp, #4]
	mov r9, #2
	ldr r5, [r7, #0x3c4]
	mov r6, r1
	ldr r0, [r8]
	ldr r2, [r4, r2, lsl #2]
	mov r1, r5
	mov r3, r9
	bl FUN_ov16_02113f7c
	str r6, [r7, #0x498]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r8]
	ldr r2, [r4, r6, lsl #2]
	mov r1, r5
	mov r3, r9
	bl FUN_ov16_02113ec0
	ldr r0, _0211C1E8 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C1E0: .word ov65_0211CC2C
_0211C1E4: .word unk_02099F38
_0211C1E8: .word gL5Sound
	arm_func_end FUN_ov65_0211c160

	arm_func_start FUN_ov65_0211c1ec
FUN_ov65_0211c1ec: ; 0x0211C1EC
	ldr r12, _0211C200 ; =MI_CpuFill8
	add r0, r0, #0x3e8
	mov r1, #0
	mov r2, #0xc
	bx r12
_0211C200: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211c1ec

	arm_func_start FUN_ov65_0211c204
FUN_ov65_0211c204: ; 0x0211C204
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0x3c8]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211C250 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r5, #0
	str r5, [r6, #0x3c8]
	ldr r1, [r6, #0x3e8]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, _0211C254 ; =0x02099EB4
	str r5, [r6, #0x3e8]
	ldr r0, [r0]
	mov r1, #0x14
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C250: .word unk_02099F38
_0211C254: .word unk_02099EB4
	arm_func_end FUN_ov65_0211c204

	arm_func_start FUN_ov65_0211c258
FUN_ov65_0211c258: ; 0x0211C258
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x60
	mov r5, r0
	ldr r0, [r5, #0x3c8]
	cmp r0, #0
	addne sp, sp, #0x60
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211C3F0 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r6, #0
	mov r1, #0x20
	mov r9, r0
	ldr r12, _0211C3F4 ; =0x0211CC4C
	add r8, sp, #0x20
	mov r7, r1
	str r6, [sp, #0x1c]
	mov r0, #0x38
	mov r4, #0x12c
_0211C2AC:
	ldrb r2, [r12, #1]
	ldrb r3, [r12], #2
	subs r7, r7, #1
	strb r2, [r8, #1]
	strb r3, [r8], #2
	bne _0211C2AC
	ldr r2, _0211C3F8 ; =0x0211CC14
	add r8, sp, #0x1c
	ldr r7, [r2]
	ldr r3, [r2, #4]
	mov r2, #1
	str r9, [r5, #0x3c8]
	str r6, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x84]
	add r1, sp, #0x14
	str r7, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [r1, r0, lsl #2]
	mov r0, r5
	mov r1, r9
	mov r2, r8
	bl FUN_ov65_0211b108
	str r6, [sp]
	mov r7, #0x68
	str r7, [sp, #4]
	str r7, [sp, #8]
	sub r4, r4, #1
	mov r0, r5
	mov r1, r9
	mov r2, r8
	str r4, [sp, #0xc]
	mov r6, #0
	mov r3, #2
	str r6, [sp, #0x10]
	bl FUN_ov65_0211b108
	add r0, r5, #0x3e8
	stmia sp, {r0, r6}
	mov r1, #0x4b
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r1, #0x4c
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x84]
	add r4, sp, #0x20
	mov r2, r9
	mov r3, r8
	mov r0, r5
	add r1, r4, r1, lsl #5
	bl FUN_ov65_0211b1c8
	str r7, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x18
	mov r3, r7
	mov r7, #0x14
	str r0, [sp, #8]
	mov r5, #0x258
	ldr r4, _0211C3FC ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #0x16
	mov r1, r7
	bl FUN_ov16_0210fba4
	sub r0, r5, #1
	str r6, [sp]
	mov r5, #0x100
	str r5, [sp, #4]
	mov r5, #0xc0
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r7
	mov r3, r6
	mov r2, #0x17
	bl FUN_ov16_0210fba4
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C3F0: .word unk_02099F38
_0211C3F4: .word ov65_0211CC4C
_0211C3F8: .word ov65_0211CC14
_0211C3FC: .word unk_02099EB4
	arm_func_end FUN_ov65_0211c258

	arm_func_start FUN_ov65_0211c400
FUN_ov65_0211c400: ; 0x0211C400
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x3f0]
	ldr r1, [r0, #0x3c8]
	add r3, r2, #1
	str r3, [r0, #0x3f0]
	cmp r3, #3
	mov r2, #2
	mov r12, #0
	bge _0211C438
	ldr r0, _0211C490 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211C438:
	cmp r3, #6
	bge _0211C45C
	mov r3, #1
	str r3, [sp]
	ldr r0, _0211C490 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211C45C:
	cmp r3, #9
	bge _0211C478
	ldr r0, _0211C490 ; =0x02099F38
	mov r3, r2
	ldr r0, [r0]
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_0211C478:
	ldmnefd sp!, {r3, pc}
	mov r1, r12
	str r12, [r0, #0x3ec]
	str r12, [r0, #0x3f0]
	bl FUN_ov65_0211ab18
	ldmfd sp!, {r3, pc}
_0211C490: .word unk_02099F38
	arm_func_end FUN_ov65_0211c400

	arm_func_start FUN_ov65_0211c494
FUN_ov65_0211c494: ; 0x0211C494
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211C4E4 ; =0x02099F38
	ldr r6, [r0, #0x3c8]
	mov r5, #2
	mov r7, r1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113f7c
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C4E4: .word unk_02099F38
	arm_func_end FUN_ov65_0211c494

	arm_func_start FUN_ov65_0211c4e8
FUN_ov65_0211c4e8: ; 0x0211C4E8
	ldr r12, _0211C4FC ; =MI_CpuFill8
	add r0, r0, #0x3f4
	mov r1, #0
	mov r2, #0x80
	bx r12
_0211C4FC: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211c4e8

	arm_func_start FUN_ov65_0211c500
FUN_ov65_0211c500: ; 0x0211C500
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211C57C ; =0x02099F38
	b _0211C560
_0211C51C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3f4]
	cmp r1, #0
	beq _0211C53C
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x3f4]
_0211C53C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x434]
	cmp r1, #0
	beq _0211C55C
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r8, [r0, #0x434]
_0211C55C:
	add r5, r5, #1
_0211C560:
	cmp r5, #0x10
	blt _0211C51C
	ldr r0, _0211C580 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C57C: .word unk_02099F38
_0211C580: .word unk_02099EB4
	arm_func_end FUN_ov65_0211c500

	arm_func_start FUN_ov65_0211c584
FUN_ov65_0211c584: ; 0x0211C584
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r6, #0
	mov r9, r0
	str r6, [sp, #0x14]
	str r6, [sp, #0x3c]
	mov r10, #0x2c
	mov r11, #3
	b _0211C900
_0211C5A8:
	ldr r0, [sp, #0x14]
	mov r1, #0x78
	mul r1, r0, r1
	mov r8, #0
	mov r0, r1
	str r1, [sp, #0x30]
	add r1, r0, #0x14
	mov r0, r8
	mov r0, r0
	str r0, [sp, #0x34]
	mov r0, r1, lsl #0x10
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	add r0, r0, #0x70
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r0, r0, #0xb
	str r0, [sp, #0x18]
	mov r0, #0x190
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r0, r0, #0x31
	str r0, [sp, #0x20]
	add r0, r9, #0x8c
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x30]
	add r0, r0, #0x78
	str r0, [sp, #0x28]
	b _0211C8EC
_0211C624:
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x14]
	add r4, r8, r0, lsl #3
	mla r0, r4, r10, r9
	ldrb r0, [r0, #0xb7]
	cmp r0, #1
	bne _0211C89C
	add r0, r9, r4, lsl #2
	ldr r0, [r0, #0x3f4]
	cmp r0, #0
	bne _0211C8F4
	ldr r0, _0211C914 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r1, r9, r4, lsl #2
	str r0, [r1, #0x3f4]
	mov r5, r0
	mla r0, r4, r10, r9
	ldrh r0, [r0, #0xb4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211C6B8
_0211C688: ; jump table
	b _0211C6B8 ; case 0
	b _0211C69C ; case 1
	b _0211C6A4 ; case 2
	b _0211C6AC ; case 3
	b _0211C6B4 ; case 4
_0211C69C:
	mov r6, #3
	b _0211C6B8
_0211C6A4:
	mov r6, #2
	b _0211C6B8
_0211C6AC:
	mov r6, #1
	b _0211C6B8
_0211C6B4:
	mov r6, #0
_0211C6B8:
	mov r0, #5
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x3c]
	mov r0, r9
	mov r1, r5
	add r2, sp, #0x40
	bl FUN_ov65_0211b108
	ldr r1, [sp, #0x40]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0x40]
	mla r1, r4, r10, r9
	ldrh r1, [r1, #0xb2]
	bl FUN_ov65_0211af94
	str r0, [sp, #0x3c]
	and r3, r0, #0xff
	mov r0, r8, lsl #4
	add r7, r0, #0x18
	ldr r0, _0211C914 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211C914 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	mov r1, r5
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211C914 ; =0x02099F38
	ldr r3, [sp, #0x38]
	ldr r0, [r0]
	ldr r2, [sp, #0x40]
	mov r1, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, _0211C914 ; =0x02099F38
	ldr r2, [sp, #0x40]
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	mov r1, r5
	bl FUN_ov16_021139bc
	add r0, sp, #0x3c
	ldr r1, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mla r1, r4, r10, r1
	str r0, [sp, #4]
	mov r0, r8, lsl #4
	add r0, r0, #0x23
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, r9
	mov r2, r5
	add r3, sp, #0x40
	bl FUN_ov65_0211b1c8
	ldr r1, [sp, #0x3c]
	add r0, r9, r4, lsl #2
	str r1, [r0, #0x434]
	mov r0, #6
	str r0, [sp, #0x3c]
	mla r0, r4, r10, r9
	mov r1, r8, lsl #4
	add r7, r1, #0x28
	ldr r0, [r0, #0xac]
	ldr r1, _0211C918 ; =0x66666667
	smull r2, r6, r1, r0
	mov r1, r0, lsr #0x1f
	add r6, r1, r6, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r6
	sub r6, r0, r2
	ldr r0, [sp, #0x28]
	str r6, [sp]
	stmib sp, {r0, r7}
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x3c]
	mov r0, r9
	mov r1, r5
	add r2, sp, #0x40
	bl FUN_ov65_0211b108
	mla r0, r4, r10, r9
	ldr r3, [r0, #0xac]
	cmp r3, #0xa
	blt _0211C89C
	ldr r0, _0211C918 ; =0x66666667
	mov r1, r5
	smull r2, r6, r0, r3
	mov r0, r3, lsr #0x1f
	add r6, r0, r6, asr #2
	ldr r0, [sp, #0x2c]
	str r6, [sp]
	stmib sp, {r0, r7}
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x3c]
	mov r0, r9
	add r2, sp, #0x40
	bl FUN_ov65_0211b108
_0211C89C:
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _0211C91C ; =0x02099EB4
	ldr r3, [sp, #0x30]
	ldr r0, [r0]
	ldr r1, [sp, #0x34]
	mov r2, r11
	add r3, r3, #8
	bl FUN_ov16_0210fba4
	add r0, r11, #1
	mov r0, r0, lsl #0x10
	mov r11, r0, lsr #0x10
	add r8, r8, #1
_0211C8EC:
	cmp r8, #8
	blt _0211C624
_0211C8F4:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_0211C900:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	blt _0211C5A8
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C914: .word unk_02099F38
_0211C918: .word 0x66666667
_0211C91C: .word unk_02099EB4
	arm_func_end FUN_ov65_0211c584

	arm_func_start FUN_ov65_0211c920
FUN_ov65_0211c920: ; 0x0211C920
	add r0, r0, #0x74
	add r0, r0, #0x400
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211C93C ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211C93C: .word MI_CpuFill8
	arm_func_end FUN_ov65_0211c920

	arm_func_start FUN_ov65_0211c940
FUN_ov65_0211c940: ; 0x0211C940
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211C9E8 ; =0x02099F38
	mov r10, r0
	mov r9, #1
	ldr r0, [r1]
	mov r2, r9
	mov r1, #2
	bl FUN_ov16_02112724
	mov r8, r0
	mov r7, #0
	str r7, [sp, #0x14]
	str r8, [r10, #0x3cc]
	add r11, sp, #0x14
	str r7, [sp]
	mov r6, #8
	str r6, [sp, #4]
	mov r5, #0x20
	str r5, [sp, #8]
	add r4, r9, #0x18c
	str r4, [sp, #0xc]
	mov r0, r10
	str r9, [sp, #0x10]
	mov r1, r8
	mov r2, r11
	mov r3, #3
	bl FUN_ov65_0211b108
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r4, #1
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, r8
	mov r2, r11
	mov r0, r10
	mov r3, #4
	str r7, [sp, #0x10]
	bl FUN_ov65_0211b108
	str r6, [r10, #0x480]
	str r5, [r10, #0x484]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9E8: .word unk_02099F38
	arm_func_end FUN_ov65_0211c940

	arm_func_start FUN_ov65_0211c9ec
FUN_ov65_0211c9ec: ; 0x0211C9EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r3, #0x24
	mul r5, r1, r3
	add r1, r0, #0x74
	add r4, r1, #0x400
	ldr r1, [r4, r5]
	mov r12, r2, asr #2
	mov r3, r1, asr #2
	add r3, r1, r3, lsr #29
	add r12, r2, r12, lsr #29
	mov r6, r3, asr #3
	mov r3, #0x78
	mul lr, r6, r3
	mov r6, r12, asr #3
	mul r3, r6, r3
	mov r12, r1, lsr #0x1f
	rsb r1, r12, r1, lsl #29
	add r1, r12, r1, ror #29
	mov r6, r2, lsr #0x1f
	add r7, r0, #0x78
	mov r12, r1, lsl #4
	rsb r1, r6, r2, lsl #29
	add r8, r0, #0x7c
	add r1, r6, r1, ror #29
	mov r1, r1, lsl #4
	add r6, r0, #0x84
	str r2, [r4, r5]
	add r2, r0, r5
	mov r9, #1
	add r4, r0, #0x480
	str r9, [r2, #0x490]
	add r0, lr, #8
	add lr, r7, #0x400
	str r0, [lr, r5]
	add r7, r12, #0x20
	add r0, r8, #0x400
	str r7, [r0, r5]
	add r3, r3, #8
	str r3, [r4, r5]
	add r1, r1, #0x20
	add r7, r6, #0x400
	str r1, [r7, r5]
	ldr r4, [r4, r5]
	ldr r1, [lr, r5]
	ldr r3, _0211CAE0 ; =0x55555556
	sub r4, r4, r1
	smull r1, r6, r3, r4
	add r6, r6, r4, lsr #31
	str r6, [r2, #0x488]
	ldr r4, [r7, r5]
	ldr r1, [r0, r5]
	ldr r0, _0211CAE4 ; =gL5Sound
	sub r4, r4, r1
	smull r1, r5, r3, r4
	add r5, r5, r4, lsr #31
	mov r1, #8
	str r5, [r2, #0x48c]
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAE0: .word 0x55555556
_0211CAE4: .word gL5Sound
	arm_func_end FUN_ov65_0211c9ec

	arm_func_start FUN_ov65_0211cae8
FUN_ov65_0211cae8: ; 0x0211CAE8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r2, #0x24
	mul r6, r1, r2
	add r3, r0, r6
	add r2, r0, #0x94
	add r5, r2, #0x400
	ldr r2, [r5, r6]
	ldr r4, [r0, #0x3cc]
	ldr r12, [r3, #0x478]
	ldr r7, [r3, #0x47c]
	add r2, r2, #1
	str r2, [r5, r6]
	ldr r6, [r3, #0x488]
	ldr lr, [r3, #0x494]
	ldr r5, [r3, #0x48c]
	mla r12, r6, lr, r12
	ldr r2, _0211CBD4 ; =0x0211CC08
	mla lr, r5, lr, r7
	cmp r6, #0
	ldr r2, [r2]
	ldr r3, [r3, #0x480]
	bge _0211CB50
	cmp r12, r3
	movlt r12, r3
	b _0211CB58
_0211CB50:
	cmp r12, r3
	movgt r12, r3
_0211CB58:
	mov r3, #0x24
	mla r5, r1, r3, r0
	ldr r3, [r5, #0x48c]
	cmp r3, #0
	ldr r3, [r5, #0x484]
	bge _0211CB7C
	cmp lr, r3
	movlt lr, r3
	b _0211CB84
_0211CB7C:
	cmp lr, r3
	movgt lr, r3
_0211CB84:
	mov r3, #0x24
	mla r3, r1, r3, r0
	ldr r0, [r3, #0x480]
	cmp r12, r0
	ldreq r0, [r3, #0x484]
	cmpeq lr, r0
	moveq r0, #0
	streq r0, [r3, #0x490]
	streq r0, [r3, #0x494]
	mov r0, lr, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [sp]
	ldr r0, _0211CBD8 ; =0x02099F38
	mov r3, r12, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211CBD4: .word ov65_0211CC08
_0211CBD8: .word unk_02099F38
	arm_func_end FUN_ov65_0211cae8

	arm_func_start FUN_ov65_0211cbdc
FUN_ov65_0211cbdc: ; 0x0211CBDC
	ldr r2, [r0, #0x474]
	mov r1, #0x2c
	mla r0, r2, r1, r0
	ldrh r0, [r0, #0xb0]
	bx lr
	arm_func_end FUN_ov65_0211cbdc

	arm_func_start FUN_ov65_0211cbf0
FUN_ov65_0211cbf0: ; 0x0211CBF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov65_0211cbf0

	arm_func_start FUN_ov65_0211cc04
FUN_ov65_0211cc04: ; 0x0211CC04
	bx lr
	arm_func_end FUN_ov65_0211cc04

	.rodata
	.global ov65_0211CC08
ov65_0211CC08:
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov65_0211CC0C
ov65_0211CC0C:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00
	.global ov65_0211CC14
ov65_0211CC14:
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.global ov65_0211CC1C
ov65_0211CC1C:
	.byte 0x0F, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov65_0211CC24
ov65_0211CC24:
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.global ov65_0211CC2C
ov65_0211CC2C:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00
	.global ov65_0211CC34
ov65_0211CC34:
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.global ov65_0211CC3C
ov65_0211CC3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.global ov65_0211CC4C
ov65_0211CC4C:
	.byte 0x82, 0xCB, 0x82, 0xC1
	.byte 0x82, 0xAF, 0x82, 0xC2, 0x82, 0x6F, 0x82, 0xAA, 0x82, 0xBD, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov65_0211CC8C
ov65_0211CC8C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov65_0211CCE4
ov65_0211CCE4:
	.word ov65_0211CE48
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov65_0211CE28
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov65_0211CE38
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov65_0211CE68
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov65_0211CE78
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov65_0211CE98
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov65_0211CEA8
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov65_0211CDD8
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov65_0211CDE8
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov65_0211CDF8
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov65_0211CE08
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov65_0211CE18
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov65_0211CE58
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov65_0211CE88
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov65_0211cd5c
FUN_ov65_0211cd5c: ; 0x0211CD5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211CDA4 ; =0x0211CDC0
	str r0, [r4, #0xc]
	ldr r0, _0211CDA8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211CDAC ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CDA4: .word ov65_0211CDC0
_0211CDA8: .word 0x00009CCD
_0211CDAC: .word 0x0000EA3C
	arm_func_end FUN_ov65_0211cd5c

	.section .sinit, 4
ov65_0211CDB0:
	.word FUN_ov65_0211cd5c

	.data
	.global ov65_0211CDC0
ov65_0211CDC0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov65_0211CDD8
ov65_0211CDD8:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CDE8
ov65_0211CDE8:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x74, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CDF8
ov65_0211CDF8:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE08
ov65_0211CE08:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE18
ov65_0211CE18:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE28
ov65_0211CE28:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE38
ov65_0211CE38:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x31, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE48
ov65_0211CE48:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE58
ov65_0211CE58:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE68
ov65_0211CE68:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE78
ov65_0211CE78:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE88
ov65_0211CE88:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CE98
ov65_0211CE98:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov65_0211CEA8
ov65_0211CEA8:
	.byte 0x74, 0x6B, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov65_0211CEC0
ov65_0211CEC0:
	.word FUN_ov65_0211cc04
	.word FUN_ov65_0211cbf0
	.word FUN_ov65_0211a0cc
	.word FUN_ov65_0211a65c
	.word FUN_ov65_02119f00
	.word FUN_0202b208
	.word FUN_ov65_0211a980
	.word FUN_ov65_0211aacc
	.word FUN_ov65_0211a034
	.word FUN_0202b204
	.word FUN_0202b200
	.word FUN_0202b1f8
	.word FUN_0202b1f0
	.word FUN_0202b1e8
	.word FUN_0202b1e0
	.word FUN_0202b320
	.word FUN_0202b310
	.word FUN_0202b304
	.word FUN_0202b2f8
	.word FUN_0202b2e8
	.word FUN_0202b2d8
	.word FUN_0202b2c8
	.word FUN_0202b2bc
	.word FUN_0202b2b0
	.word FUN_0202b1d8
	.word FUN_0202b1d0
	.word FUN_0202b1c8
	.global ov65_0211CF2C
ov65_0211CF2C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x54, 0x6F, 0x6B, 0x6B, 0x75
	.byte 0x6E, 0x44, 0x61, 0x74, 0x61, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov65_0211CF4C
ov65_0211CF4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov65_0211CF64
ov65_0211CF64:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x74, 0x6F, 0x6B, 0x6B, 0x75, 0x6E, 0x5F, 0x63, 0x68, 0x61, 0x72, 0x61, 0x5F
	.byte 0x73, 0x65, 0x6C, 0x65, 0x63, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov65_0211CF8C
ov65_0211CF8C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x62, 0x00, 0x00, 0x00
	.global ov65_0211CFA4
ov65_0211CFA4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x74, 0x6F, 0x6B, 0x6B, 0x75, 0x6E, 0x5F, 0x63, 0x68, 0x61, 0x72, 0x61, 0x5F
	.byte 0x73, 0x65, 0x6C, 0x65, 0x63, 0x74, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov65_0211CFCC
ov65_0211CFCC:
	.byte 0x82, 0xD0, 0x82, 0xC2
	.byte 0x82, 0xE6, 0x82, 0xA4, 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2, 0x82, 0x6F, 0x00, 0x00


	.include "/macros/function.inc"
	.include "/include/overlay59.inc"

	.text
	arm_func_start FUN_ov59_02119f00
FUN_ov59_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211A020 ; =0x02099EB4
	str r1, [r4, #8]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A024 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	mov r6, #0
	mov r1, r6
	add r0, r4, #0x14
	mov r2, #0x60
	bl MI_CpuFill8
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	mov r5, #1
	str r5, [r4, #0x14]
	mov r0, r4
	bl FUN_ov59_0211af3c
	mov r0, r4
	bl FUN_ov59_0211b004
	mov r0, r4
	bl FUN_ov59_0211b0e0
	mov r0, r4
	mov r1, r6
	bl FUN_ov59_0211d000
	mov r0, r4
	mov r1, r5
	bl FUN_ov59_0211d000
	mov r0, r4
	mov r1, #2
	bl FUN_ov59_0211d000
	mov r0, r4
	mov r1, #3
	bl FUN_ov59_0211d000
	mov r0, r4
	bl FUN_ov59_0211d740
	mov r0, r4
	bl FUN_ov59_0211a238
	mov r0, r4
	bl FUN_ov59_0211a5b4
	str r6, [r4, #0xb8c]
	mov r0, r4
	bl FUN_ov59_0211a684
	mov r0, r4
	bl FUN_ov59_0211ba88
	mov r0, r4
	bl FUN_ov59_0211b078
	str r6, [r4, #0xb88]
	add r0, r4, #0x1000
	str r5, [r0, #0x214]
	ldr r1, _0211A028 ; =0x020A0640
	ldrb r2, [r1, #0x1a]
	cmp r2, #0
	beq _0211A010
	ldrb r1, [r1, #0x8e]
	cmp r1, #0
	streq r6, [r0, #0x214]
_0211A010:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A020: .word 0x02099EB4
_0211A024: .word 0x02099ED4
_0211A028: .word 0x020A0640
	arm_func_end FUN_ov59_02119f00

	arm_func_start FUN_ov59_0211a02c
FUN_ov59_0211a02c: ; 0x0211A02C
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A0C4 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A0C8 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov59_0211ce54
	mov r0, r4
	bl FUN_ov59_0211caec
	mov r0, r4
	bl FUN_ov59_0211c8a4
	mov r0, r4
	bl FUN_ov59_0211c504
	mov r0, r4
	bl FUN_ov59_0211bfd0
	mov r0, r4
	bl FUN_ov59_0211b0a4
	mov r0, r4
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211a64c
	mov r0, r4
	bl FUN_ov59_0211b124
	mov r0, r4
	bl FUN_ov59_0211b034
	mov r0, r4
	mov r1, #3
	bl FUN_ov59_0211af58
	ldmfd sp!, {r4, pc}
_0211A0C4: .word 0x02099EB4
_0211A0C8: .word 0x02099ED4
	arm_func_end FUN_ov59_0211a02c

	arm_func_start FUN_ov59_0211a0cc
FUN_ov59_0211a0cc: ; 0x0211A0CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _0211A15C
_0211A0E4: ; jump table
	b _0211A110 ; case 0
	b _0211A114 ; case 1
	b _0211A120 ; case 2
	b _0211A128 ; case 3
	b _0211A130 ; case 4
	b _0211A138 ; case 5
	b _0211A13C ; case 6
	b _0211A15C ; case 7
	b _0211A148 ; case 8
	b _0211A150 ; case 9
	b _0211A158 ; case 10
_0211A110:
	bl FUN_ov59_0211a7c8
_0211A114:
	mov r0, r4
	bl FUN_ov59_0211a814
	b _0211A15C
_0211A120:
	bl FUN_ov59_0211a8a8
	b _0211A15C
_0211A128:
	bl FUN_ov59_0211a964
	b _0211A15C
_0211A130:
	bl FUN_ov59_0211a9ec
	b _0211A15C
_0211A138:
	bl FUN_ov59_0211aa70
_0211A13C:
	mov r0, r4
	bl FUN_ov59_0211aa98
	b _0211A15C
_0211A148:
	bl FUN_ov59_0211ad30
	b _0211A15C
_0211A150:
	bl FUN_ov59_0211ad64
	b _0211A15C
_0211A158:
	bl FUN_ov59_0211ae10
_0211A15C:
	mov r0, r4
	bl FUN_ov59_0211aeac
	ldr r0, _0211A228 ; =0x02099ED4
	ldr r5, _0211A22C ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl  FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A19C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A1A8
_0211A19C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A1A8:
	bl FUN_0201fdac
	ldr r2, _0211A230 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	mov r6, #0
	mov r5, #0x24
	b _0211A204
_0211A1C8:
	mla r0, r6, r5, r4
	ldr r0, [r0, #0xc6c]
	cmp r0, #0
	beq _0211A1E4
	mov r0, r4
	mov r1, r6
	bl FUN_ov59_0211d124
_0211A1E4:
	add r0, r4, r6, lsl #3
	ldr r0, [r0, #0xddc]
	cmp r0, #0
	beq _0211A200
	mov r0, r4
	mov r1, r6
	bl FUN_ov59_0211d200
_0211A200:
	add r6, r6, #1
_0211A204:
	cmp r6, #4
	blt _0211A1C8
	add r0, r4, #0x1000
	ldr r0, [r0, #0x200]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov59_0211cee4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A228: .word 0x02099ED4
_0211A22C: .word 0x0209A110
_0211A230: .word 0x02099F58
	arm_func_end FUN_ov59_0211a0cc

	arm_func_start FUN_ov59_0211a234
FUN_ov59_0211a234: ; 0x0211A234
	bx lr
	arm_func_end FUN_ov59_0211a234

	arm_func_start FUN_ov59_0211a238
FUN_ov59_0211a238: ; 0x0211A238
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, #0
	ldr r4, _0211A484 ; =0x0209A454
	mov r10, r0
	add r0, sp, #0
	mov r1, r9
	mov r2, #0x20
	ldrb r6, [r4, #0x28]
	add r5, sp, #0
	mov r7, r9
	mov r11, #1
	bl MI_CpuFill8
	mov r1, r9
	add r0, r10, #0x80
	mov r2, #0x300
	bl MI_CpuFill8
	ldr r0, _0211A488 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0211A29C
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	movne r11, r9
	movne r6, #2
_0211A29C:
	ldr r4, _0211A48C ; =0x0209BA20
	mov r0, r4
	bl FUN_020731a4
	cmp r0, #0
	beq _0211A328
	mov r0, r4
	bl FUN_02073f08
	cmp r0, #0
	beq _0211A328
	mov r0, r4
	mov r1, r6
	bl FUN_0205106c
	mov r4, r0
	mov r8, #0
	b _0211A31C
_0211A2D8:
	mov r0, r4
	mov r1, r8
	bl FUN_02050244
	cmp r0, #0
	beq _0211A318
	mov r0, r4
	mov r1, r8
	bl FUN_02050244
	mov r1, r7
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A318
	bl FUN_0206cbf8
	mov r1, r9, lsl #1
	strh r0, [r5, r1]
	add r9, r9, #1
_0211A318:
	add r8, r8, #1
_0211A31C:
	cmp r8, #4
	blt _0211A2D8
	b _0211A3A8
_0211A328:
	ldr r0, _0211A48C ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	mov r6, r0
	mov r8, #0
	b _0211A380
_0211A340:
	mov r0, r6
	mov r1, r8
	bl FUN_0204fbe8
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _0211A37C
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211A37C
	mov r0, r4
	bl FUN_0206cbf8
	mov r1, r9, lsl #1
	strh r0, [r5, r1]
	add r9, r9, #1
_0211A37C:
	add r8, r8, #1
_0211A380:
	cmp r8, #0x10
	blt _0211A340
	ldr r0, _0211A488 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldr r0, _0211A490 ; =0x02099E98
	movne r11, #0
	ldrb r0, [r0]
	cmp r0, #0
	movne r11, #0
_0211A3A8:
	cmp r11, #0
	add r11, sp, #0
	mov r4, #0x30
	beq _0211A3C4
	add r1, sp, #0
	mov r0, r10
	bl FUN_ov59_0211a494
_0211A3C4:
	mov r8, #0
	add r5, r10, #0x80
	b _0211A474
_0211A3D0:
	mov r0, r8, lsl #1
	ldrh r0, [r11, r0]
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r6, r0
	beq _0211A470
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A470
	mla r1, r8, r4, r5
	add r0, r6, #0x1c
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r8, lsl #1
	ldrh r1, [r11, r0]
	mla r0, r8, r4, r10
	strh r1, [r0, #0xa0]
	mov r0, r6
	bl FUN_0206cc00
	mla r1, r8, r4, r10
	strh r0, [r1, #0xa2]
	strh r7, [r1, #0xa4]
	mov r0, #1
	strh r0, [r1, #0xa6]
	mov r0, r6
	bl FUN_0206cc84
	mla r1, r8, r4, r10
	strh r0, [r1, #0xa8]
	mov r0, r6
	bl FUN_0206cc94
	mla r1, r8, r4, r10
	strh r0, [r1, #0xaa]
	mov r0, r6
	bl FUN_0206ccdc
	mla r1, r8, r4, r10
	strh r0, [r1, #0xac]
	mov r0, r6
	bl FUN_0206ccec
	mla r1, r8, r4, r10
	strh r0, [r1, #0xae]
_0211A470:
	add r8, r8, #1
_0211A474:
	cmp r8, r9
	blt _0211A3D0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A484: .word 0x0209A454
_0211A488: .word 0x020A0640
_0211A48C: .word 0x0209BA20
_0211A490: .word 0x02099E98
	arm_func_end FUN_ov59_0211a238

	arm_func_start FUN_ov59_0211a494
FUN_ov59_0211a494: ; 0x0211A494
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
	ldr r9, _0211A5B0 ; =0x0209BA20
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
_0211A53C:
	mov r3, r0
	mov r9, r0
	cmp r6, #0
	ble _0211A574
	mov r2, r7, lsl #1
	ldrh lr, [r5, r2]
_0211A554:
	mov r2, r9, lsl #1
	ldrh r2, [r4, r2]
	cmp lr, r2
	moveq r3, r12
	beq _0211A574
	add r9, r9, #1
	cmp r9, r6
	blt _0211A554
_0211A574:
	cmp r3, #0
	moveq r2, r7, lsl #1
	ldreqh r3, [r5, r2]
	moveq r2, r1, lsl #1
	add r7, r7, #1
	addeq r1, r1, #1
	streqh r3, [r8, r2]
	cmp r7, #0x10
	blt _0211A53C
	add r0, sp, #8
	mov r1, r8
	mov r2, r6, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A5B0: .word 0x0209BA20
	arm_func_end FUN_ov59_0211a494

	arm_func_start FUN_ov59_0211a5b4
FUN_ov59_0211a5b4: ; 0x0211A5B4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r2, #0
	add r0, r5, #0xb00
	ldr r3, _0211A63C ; =0x0209A250
	str r2, [r5, #0xb80]
	strh r2, [r0, #0x84]
	ldr r0, [r3]
	ldr r1, _0211A640 ; =0x0211EFAC
	cmp r0, #0
	beq _0211A604
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r4, #1
	add r2, r5, #0xb80
	str r4, [sp, #0xc]
	bl FUN_0202eff0
	mov r2, r0
_0211A604:
	ldr r4, _0211A644 ; =0x0209BA20
	mov r2, r2, lsr #1
	add r1, r5, #0xb00
	mov r0, r4
	strh r2, [r1, #0x84]
	bl  FUN_ov16_020eeca0
	ldr r0, _0211A648 ; =0x0209A454
	mov r2, #0
	ldrb r1, [r0, #0x28]
	mov r0, r4
	mov r3, r2
	bl FUN_0204d7fc
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_0211A63C: .word 0x0209A250
_0211A640: .word 0x0211EFAC
_0211A644: .word 0x0209BA20
_0211A648: .word 0x0209A454
	arm_func_end FUN_ov59_0211a5b4

	arm_func_start FUN_ov59_0211a64c
FUN_ov59_0211a64c: ; 0x0211A64C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xb80]
	cmp r1, #0
	beq _0211A670
	ldr r0, _0211A67C ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0xb80]
_0211A670:
	ldr r0, _0211A680 ; =0x0209BA20
	bl  FUN_ov16_020eedb8
	ldmfd sp!, {r4, pc}
_0211A67C: .word 0x0209A250
_0211A680: .word 0x0209BA20
	arm_func_end FUN_ov59_0211a64c

	arm_func_start FUN_ov59_0211a684
FUN_ov59_0211a684: ; 0x0211A684
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #4
	sub sp, sp, #0x800
	mov r8, #0
	mov r4, #0x800
	add r6, sp, #4
	mov r10, r0
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	mov r1, r8
	mov r2, r4
	add r0, r10, #0x380
	bl MI_CpuFill8
	ldr r11, _0211A7C0 ; =0x0209BA20
	mov r1, r6
	mov r0, r11
	mov r2, #0x400
	mov r3, r8
	str r8, [r10, #0xb90]
	bl  FUN_ov16_020ee084
	mov r7, r0
	add r0, r10, #0xb00
	ldrh r0, [r0, #0x84]
	str r8, [sp]
	cmp r0, #0
	ble _0211A784
	mov r4, #1
_0211A6F8:
	mov r9, #0
	cmp r7, #0
	ble _0211A768
	ldr r0, [sp]
	mov r5, r0, lsl #1
_0211A70C:
	ldr r0, [r10, #0xb80]
	mov r1, r9, lsl #1
	ldrh r1, [r6, r1]
	ldrh r0, [r5, r0]
	cmp r0, r1
	bne _0211A75C
	mov r0, r11
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211A75C
	ldrb r1, [r0, #0x1d]
	ldr r0, _0211A7C4 ; =0x00001A0E
	tst r0, r4, lsl r1
	beq _0211A75C
	mov r0, r9, lsl #1
	ldrh r1, [r6, r0]
	add r0, r10, r8, lsl #1
	add r0, r0, #0x300
	strh r1, [r0, #0x80]
	add r8, r8, #1
_0211A75C:
	add r9, r9, #1
	cmp r9, r7
	blt _0211A70C
_0211A768:
	add r0, r10, #0xb00
	ldrh r1, [r0, #0x84]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, r1
	blt _0211A6F8
_0211A784:
	cmp r8, #0
	moveq r0, #1
	beq _0211A7B0
	mov r1, r8, lsr #0x1f
	rsb r0, r1, r8, lsl #29
	adds r0, r1, r0, ror #29
	movne r1, #1
	mov r0, r8, asr #2
	moveq r1, #0
	add r0, r8, r0, lsr #29
	add r0, r1, r0, asr #3
_0211A7B0:
	str r0, [r10, #0xb90]
	add sp, sp, #4
	add sp, sp, #0x800
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A7C0: .word 0x0209BA20
_0211A7C4: .word 0x00001A0E
	arm_func_end FUN_ov59_0211a684

	arm_func_start FUN_ov59_0211a7c8
FUN_ov59_0211a7c8: ; 0x0211A7C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x394
	ldr r0, _0211A808 ; =0x0211EFCC
	add r1, r1, #0x800
	bl  FUN_ov16_020f3054
	ldr r0, _0211A80C ; =0x0211EFE4
	add r1, r4, #0xba0
	bl  FUN_ov16_020f3054
	add r1, r4, #0x3ac
	ldr r0, _0211A810 ; =0x0211EFFC
	add r1, r1, #0x800
	bl  FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211A808: .word 0x0211EFCC
_0211A80C: .word 0x0211EFE4
_0211A810: .word 0x0211EFFC
	arm_func_end FUN_ov59_0211a7c8

	arm_func_start FUN_ov59_0211a814
FUN_ov59_0211a814: ; 0x0211A814
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r0
	add r0, r8, #0x394
	add r0, r0, #0x800
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0
	ldr r4, _0211A8A4 ; =0x0211F014
	add r10, r8, #0x3b8
	mov r6, r7
	mov r5, #1
	mov r9, #0x30
_0211A854:
	mla r0, r7, r9, r8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldrh r2, [r0, #0xa2]
	ldr r0, [r8, #0xb94]
	mov r1, r4
	add r3, r10, #0x800
	bl  FUN_ov16_020f55b4
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211A854
	mov r0, r8
	mov r1, r6
	bl FUN_ov59_0211af58
	mov r0, #2
	str r0, [r8, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A8A4: .word 0x0211F014
	arm_func_end FUN_ov59_0211a814

	arm_func_start FUN_ov59_0211a8a8
FUN_ov59_0211a8a8: ; 0x0211A8A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r9, r0
	add r0, r9, #0x3b8
	add r0, r0, #0x800
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0xb90]
	mov r8, #0
	mov r0, r0, lsl #3
	cmp r0, #0
	ble _0211A940
	ldr r4, _0211A95C ; =0x0211F02C
	ldr r7, _0211A960 ; =0x0209BA20
	mov r6, r8
	mov r5, #1
_0211A8F0:
	add r0, r9, r8, lsl #1
	add r0, r0, #0x300
	ldrh r1, [r0, #0x80]
	mov r0, r7
	bl  FUN_ov16_020ee034
	cmp r0, #0
	beq _0211A930
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldrh r2, [r0, #0x22]
	ldr r0, [r9, #0xbac]
	mov r1, r4
	add r3, r9, #0xbc0
	bl  FUN_ov16_020f55b4
_0211A930:
	ldr r0, [r9, #0xb90]
	add r8, r8, #1
	cmp r8, r0, lsl #3
	blt _0211A8F0
_0211A940:
	mov r0, r9
	mov r1, #2
	bl FUN_ov59_0211af58
	mov r0, #3
	str r0, [r9, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A95C: .word 0x0211F02C
_0211A960: .word 0x0209BA20
	arm_func_end FUN_ov59_0211a8a8

	arm_func_start FUN_ov59_0211a964
FUN_ov59_0211a964: ; 0x0211A964
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x9c
	mov r5, r0
	add r0, r5, #0xbc0
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x9c
	ldmnefd sp!, {r4, r5, pc}
	ldr r4, _0211A9E4 ; =0x0211ECF4
	add lr, sp, #4
	mov r12, #9
_0211A990:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211A990
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, #0
	str r0, [sp]
	add r3, r5, #0x3c8
	ldr r1, [r5, #0xba0]
	ldr r0, _0211A9E8 ; =0x0211F044
	add r2, sp, #4
	add r3, r3, #0x800
	bl  FUN_ov16_020f5450
	mov r0, r5
	mov r1, #1
	bl FUN_ov59_0211af58
	mov r0, #4
	str r0, [r5, #0xc]
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, pc}
_0211A9E4: .word 0x0211ECF4
_0211A9E8: .word 0x0211F044
	arm_func_end FUN_ov59_0211a964

	arm_func_start FUN_ov59_0211a9ec
FUN_ov59_0211a9ec: ; 0x0211A9EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211AA6C ; =0x02099F38
	b _0211AA58
_0211AA04:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xbc8]
	cmp r1, #0
	beq _0211AA54
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xbc8]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AA54
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0xbc8]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211AA54:
	add r7, r7, #1
_0211AA58:
	cmp r7, #0x12
	blt _0211AA04
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA6C: .word 0x02099F38
	arm_func_end FUN_ov59_0211a9ec

	arm_func_start FUN_ov59_0211aa70
FUN_ov59_0211aa70: ; 0x0211AA70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov59_0211b640
	mov r0, r4
	bl FUN_ov59_0211b718
	mov r0, r4
	bl FUN_ov59_0211b8f4
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211aa70

	arm_func_start FUN_ov59_0211aa98
FUN_ov59_0211aa98: ; 0x0211AA98
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _0211AD2C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211AD04
_0211AACC: ; jump table
	b _0211AAE8 ; case 0
	b _0211ABF0 ; case 1
	b _0211AC7C ; case 2
	b _0211ACB8 ; case 3
	b _0211ACCC ; case 4
	b _0211AD04 ; case 5
	b _0211ACCC ; case 6
_0211AAE8:
	mov r0, r4
	bl FUN_ov59_0211c504
	mov r0, r4
	bl FUN_ov59_0211bfd0
	mov r0, r4
	bl FUN_ov59_0211c8a4
	mov r0, r4
	bl FUN_ov59_0211caec
	mov r0, r4
	bl FUN_ov59_0211ce54
	add r1, r4, #0x1000
	ldr r0, [r1, #0x20c]
	cmp r0, #0
	beq _0211AB6C
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x20c]
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211ba58
	mov r0, r4
	bl FUN_ov59_0211a684
	ldr r1, [r4, #0xb8c]
	ldr r0, [r4, #0xb90]
	add r1, r1, #1
	cmp r1, r0
	subgt r0, r0, #1
	strgt r0, [r4, #0xb8c]
	mov r0, r4
	bl FUN_ov59_0211b8f4
	mov r0, r4
	bl FUN_ov59_0211bb20
	b _0211AB94
_0211AB6C:
	ldr r0, [r1, #0x208]
	cmp r0, #0
	bne _0211AB88
	mov r0, r4
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211bb20
_0211AB88:
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x208]
_0211AB94:
	mov r6, #0
	mov r5, #1
	mov r1, #3
	mov r0, r4
	mov r2, r6
	mov r3, r5
	str r1, [sp]
	bl FUN_ov59_0211e45c
	mov r1, #2
	mov r0, r4
	mov r2, r6
	mov r3, r5
	str r1, [sp]
	bl FUN_ov59_0211e45c
	mov r0, r4
	mov r1, r5
	mov r2, #6
	mov r3, #7
	str r5, [sp]
	bl FUN_ov59_0211e45c
	mov r0, r4
	bl FUN_ov59_0211b840
	b _0211AD04
_0211ABF0:
	mov r0, r4
	bl FUN_ov59_0211d740
	mov r0, r4
	bl FUN_ov59_0211be54
	mov r0, r4
	bl FUN_ov59_0211c0c0
	mov r6, #1
	mov r0, r4
	mov r1, r6
	bl FUN_ov59_0211d000
	mov r5, #8
	str r5, [r4, #0xc80]
	mov r0, #0x20
	str r0, [r4, #0xc84]
	mov r1, #3
	str r1, [sp]
	mov r0, r4
	mov r2, r1
	mov r3, #4
	bl FUN_ov59_0211e45c
	mov r1, #2
	str r1, [sp]
	mov r0, r4
	mov r2, r1
	mov r3, r1
	bl FUN_ov59_0211e45c
	mov r2, r5
	str r6, [sp]
	mov r1, r6
	mov r0, r4
	mov r3, #9
	bl FUN_ov59_0211e45c
	mov r0, r4
	bl FUN_ov59_0211ebc8
	b _0211AD04
_0211AC7C:
	mov r0, r4
	bl FUN_ov59_0211c594
	mov r1, #3
	mov r0, r4
	mov r2, r1
	mov r3, #4
	str r1, [sp]
	bl FUN_ov59_0211e45c
	mov r1, #1
	mov r0, r4
	mov r2, #8
	mov r3, #9
	str r1, [sp]
	bl FUN_ov59_0211e45c
	b _0211AD04
_0211ACB8:
	mov r0, r4
	bl FUN_ov59_0211c8a4
	mov r0, r4
	bl FUN_ov59_0211c930
	b _0211AD04
_0211ACCC:
	mov r0, r4
	bl FUN_ov59_0211cbac
	mov r2, #5
	mov r1, #3
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov59_0211e45c
	mov r2, #8
	mov r1, #1
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov59_0211e45c
_0211AD04:
	mov r0, r4
	bl FUN_ov59_0211b494
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	str r0, [r4, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211AD2C: .word 0x02099ED4
	arm_func_end FUN_ov59_0211aa98

	arm_func_start FUN_ov59_0211ad30
FUN_ov59_0211ad30: ; 0x0211AD30
	stmfd sp!, {r4, lr}
	ldr r1, _0211AD60 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #9
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AD60: .word 0x02099ED4
	arm_func_end FUN_ov59_0211ad30

	arm_func_start FUN_ov59_0211ad64
FUN_ov59_0211ad64: ; 0x0211AD64
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
	bne _0211ADEC
	ldr r0, _0211AE0C ; =0x0209A454
	ldrb r0, [r0, #0x32]
	cmp r0, #0
	bne _0211ADC4
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ADC4:
	ldr r5, [r5, #4]
	mov r4, #0x5a
	mov r0, r5
	mov r2, r4
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211ADEC:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE0C: .word 0x0209A454
	arm_func_end FUN_ov59_0211ad64

	arm_func_start FUN_ov59_0211ae10
FUN_ov59_0211ae10: ; 0x0211AE10
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211AE74 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211ba58
	mov r0, r4
	bl FUN_ov59_0211a684
	ldr r0, [r4, #0xb8c]
	ldr r1, [r4, #0xb90]
	add r0, r0, #1
	cmp r0, r1
	subgt r0, r1, #1
	strgt r0, [r4, #0xb8c]
	mov r0, r4
	bl FUN_ov59_0211b8f4
	mov r0, r4
	bl FUN_ov59_0211bb20
	mov r0, #7
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AE74: .word 0x020AF81C
	arm_func_end FUN_ov59_0211ae10

	arm_func_start FUN_ov59_0211ae78
FUN_ov59_0211ae78: ; 0x0211AE78
	ldr r3, _0211AEA8 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211AE94
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211AE94:
	mov r3, #8
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	str r3, [r0, #0xc]
	bx lr
_0211AEA8: .word 0x0209A454
	arm_func_end FUN_ov59_0211ae78

	arm_func_start FUN_ov59_0211aeac
FUN_ov59_0211aeac: ; 0x0211AEAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	mov r4, #0
	strb r4, [r5, #0x21]
	cmp r1, #0
	beq _0211AED4
	cmp r1, #1
	beq _0211AEEC
	b _0211AF14
_0211AED4:
	mov r2, #0xb
	mov r1, r4
	str r2, [r5, #0x14]
	bl FUN_ov59_0211d608
	strh r0, [r5, #0x1c]
	b _0211AF14
_0211AEEC:
	mov r2, #4
	mov r1, r4
	str r2, [r5, #0x14]
	bl FUN_ov59_0211d700
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	moveq r0, #1
	streq r4, [r5, #0x14]
	streqb r0, [r5, #0x21]
_0211AF14:
	ldr r0, [r5, #4]
	add r1, r5, #0x14
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov59_0211aeac

	arm_func_start FUN_ov59_0211af2c
FUN_ov59_0211af2c: ; 0x0211AF2C
	mov r2, #6
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov59_0211af2c

	arm_func_start FUN_ov59_0211af3c
FUN_ov59_0211af3c: ; 0x0211AF3C
	add r0, r0, #0x394
	ldr r12, _0211AF54 ; =MI_CpuFill8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #0x24
	bx r12
_0211AF54: .word MI_CpuFill8
	arm_func_end FUN_ov59_0211af3c

	arm_func_start FUN_ov59_0211af58
FUN_ov59_0211af58: ; 0x0211AF58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, r0
	cmp r1, #3
	blo _0211AFC0
	mov r4, #0
	add r0, r5, #0x394
	add r9, r0, #0x800
	mov r8, #1
	mov r7, r4
	mov r6, #0xc
_0211AF80:
	mul r10, r4, r6
	mov r1, r8
	add r0, r9, r10
	bl  FUN_ov16_020f338c
	add r0, r9, r10
	bl  FUN_ov16_020f33fc
	add r0, r5, r10
	str r7, [r0, #0xb94]
	str r7, [r0, #0xb98]
	strb r7, [r0, #0xb9c]
	strb r7, [r0, #0xb9d]
	add r4, r4, #1
	strb r7, [r0, #0xb9e]
	cmp r4, #3
	blt _0211AF80
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AFC0:
	mov r0, #0xc
	mul r6, r1, r0
	add r0, r5, #0x394
	add r4, r0, #0x800
	add r0, r4, r6
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r4, r6
	bl  FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r6]
	add r0, r5, r6
	str r1, [r0, #0xb98]
	strb r1, [r0, #0xb9c]
	strb r1, [r0, #0xb9d]
	strb r1, [r0, #0xb9e]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov59_0211af58

	arm_func_start FUN_ov59_0211b004
FUN_ov59_0211b004: ; 0x0211B004
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3b8
	add r0, r0, #0x800
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x3b8
	add r0, r0, #0x800
	mov r1, #0x10
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211b004

	arm_func_start FUN_ov59_0211b034
FUN_ov59_0211b034: ; 0x0211B034
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3b8
	add r0, r0, #0x800
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0x3b8
	add r0, r0, #0x800
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211b034

	arm_func_start FUN_ov59_0211b05c
FUN_ov59_0211b05c: ; 0x0211B05C
	stmfd sp!, {r3, lr}
	add r2, r0, #0x3b8
	mov r0, r1
	add r1, r2, #0x800
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov59_0211b05c

	arm_func_start FUN_ov59_0211b078
FUN_ov59_0211b078: ; 0x0211B078
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xbc0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, [r4, #0xb90]
	add r0, r4, #0xbc0
	mov r1, r1, lsl #3
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211b078

	arm_func_start FUN_ov59_0211b0a4
FUN_ov59_0211b0a4: ; 0x0211B0A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xbc0
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0xbc0
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211b0a4

	arm_func_start FUN_ov59_0211b0c4
FUN_ov59_0211b0c4: ; 0x0211B0C4
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0xbc0
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov59_0211b0c4

	arm_func_start FUN_ov59_0211b0e0
FUN_ov59_0211b0e0: ; 0x0211B0E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x3c8
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x800
	mov r2, #0x48
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xc10
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, _0211B120 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B120: .word 0x02099F38
	arm_func_end FUN_ov59_0211b0e0

	arm_func_start FUN_ov59_0211b124
FUN_ov59_0211b124: ; 0x0211B124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B1B4 ; =0x02099F38
	b _0211B160
_0211B13C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xc10]
	cmp r1, #0
	beq _0211B15C
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0xc10]
_0211B15C:
	add r4, r4, #1
_0211B160:
	cmp r4, #0x10
	blt _0211B13C
	mov r4, #0
	mov r7, r4
	ldr r6, _0211B1B4 ; =0x02099F38
	b _0211B19C
_0211B178:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xbc8]
	cmp r1, #0
	beq _0211B198
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0xbc8]
_0211B198:
	add r4, r4, #1
_0211B19C:
	cmp r4, #0x12
	blt _0211B178
	ldr r0, _0211B1B4 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1B4: .word 0x02099F38
	arm_func_end FUN_ov59_0211b124

	arm_func_start FUN_ov59_0211b1b8
FUN_ov59_0211b1b8: ; 0x0211B1B8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0xbc8]
	ldr r6, _0211B274 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r6]
	mov r5, r1
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	ldr r3, [sp, #0x18]
	mov r1, r5
	bl  FUN_ov16_0211401c
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
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r3, r3, lsl #0x10
	ldr r2, [r4]
	mov r1, r5
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	ldrb r0, [sp, #0x28]
	mov r1, r5
	mov r3, #2
	str r0, [sp]
	ldr r0, [r6]
	ldr r2, [r4]
	bl  FUN_ov16_02113ec0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B274: .word 0x02099F38
	arm_func_end FUN_ov59_0211b1b8

	arm_func_start FUN_ov59_0211b278
FUN_ov59_0211b278: ; 0x0211B278
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r7, #0
	mov r6, r0
	str r1, [sp, #0x20]
	mov r4, #4
	mov r10, r2
	add r0, sp, #0x30
	mov r1, r7
	mov r2, r4
	ldr r8, [sp, #0x58]
	mov r9, r3
	str r7, [sp, #0x28]
	mov r5, #0x100
	bl MI_CpuFill8
	mov r2, r4
	add r0, sp, #0x2c
	mov r1, r7
	bl MI_CpuFill8
	str r7, [r8]
	ldr r0, [r6, #0x10]
	add r2, sp, #0x30
	cmp r0, #3
	add r3, sp, #0x2c
	mov r0, r5
	mov r1, #0x20
	moveq r7, #1
	bl FUN_02054070
	ldr r4, _0211B48C ; =0x02099F38
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [r4]
	bl FUN_02059630
	mov r2, #0
	str r0, [r8]
	mov r1, r0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	ldr r1, [r8]
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r0, [r4]
	add r2, sp, #0x24
	add r3, sp, #0x28
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r8]
	ldr r6, [sp, #0x24]
	bl  FUN_ov16_02111438
	mov r11, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl  FUN_ov16_02111458
	mov r5, r0
	ldr r0, _0211B490 ; =0x02099F50
	mov r1, #1
	ldr r0, [r0]
	mov r2, #5
	bl FUN_02043310
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211B490 ; =0x02099F50
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r6
	mov r3, r11
	bl FUN_020425fc
	ldr r0, _0211B490 ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	mov r2, r6
	ldr r3, [sp, #0x28]
	ldr r1, [r8]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, r6
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r6
	mov r1, r10
	bl  FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r11, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x5c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x64]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B48C: .word 0x02099F38
_0211B490: .word 0x02099F50
	arm_func_end FUN_ov59_0211b278

	arm_func_start FUN_ov59_0211b494
FUN_ov59_0211b494: ; 0x0211B494
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
_0211B4A0:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xc10]
	mov r0, r4
	bl FUN_ov59_0211b620
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B4A0
	mov r5, #0
_0211B4C0:
	add r0, r4, r5, lsl #3
	ldr r1, [r0, #0xcf4]
	mov r0, r4
	bl FUN_ov59_0211b620
	add r5, r5, #1
	cmp r5, #8
	blt _0211B4C0
	mov r5, #0
_0211B4E0:
	add r0, r4, r5, lsl #3
	ldr r1, [r0, #0xd34]
	mov r0, r4
	bl FUN_ov59_0211b620
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B4E0
	ldr r0, [r4, #0x10]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211B5E4
_0211B50C: ; jump table
	b _0211B528 ; case 0
	b _0211B56C ; case 1
	b _0211B5BC ; case 2
	b _0211B5CC ; case 3
	b _0211B5CC ; case 4
	b _0211B5E4 ; case 5
	b _0211B5CC ; case 6
_0211B528:
	mov r5, #0
_0211B52C:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xc10]
	mov r0, r4
	bl FUN_ov59_0211b600
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B52C
	mov r5, #0
_0211B54C:
	add r0, r4, r5, lsl #3
	ldr r1, [r0, #0xcf4]
	mov r0, r4
	bl FUN_ov59_0211b600
	add r5, r5, #1
	cmp r5, #8
	blt _0211B54C
	b _0211B5E4
_0211B56C:
	ldr r1, [r4, #0xc30]
	mov r0, r4
	bl FUN_ov59_0211b600
	mov r5, #0
_0211B57C:
	add r0, r4, r5, lsl #3
	ldr r1, [r0, #0xd34]
	mov r0, r4
	bl FUN_ov59_0211b600
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B57C
	mov r5, #0
_0211B59C:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xc34]
	mov r0, r4
	bl FUN_ov59_0211b600
	add r5, r5, #1
	cmp r5, #5
	blt _0211B59C
	b _0211B5E4
_0211B5BC:
	ldr r1, [r4, #0xc2c]
	mov r0, r4
	bl FUN_ov59_0211b600
	b _0211B5E4
_0211B5CC:
	ldr r1, [r4, #0xc4c]
	cmp r0, #3
	ldreq r1, [r4, #0xc48]
	mov r0, r4
	bl FUN_ov59_0211b600
	ldmfd sp!, {r3, r4, r5, pc}
_0211B5E4:
	ldr r1, [r4, #0xc1c]
	mov r0, r4
	bl FUN_ov59_0211b600
	ldr r1, [r4, #0xc14]
	mov r0, r4
	bl FUN_ov59_0211b600
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov59_0211b494

	arm_func_start FUN_ov59_0211b600
FUN_ov59_0211b600: ; 0x0211B600
	ldr r0, _0211B614 ; =0x02099F38
	ldr r2, _0211B618 ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B61C ; = FUN_ov16_02114204
	bx r12
_0211B614: .word 0x02099F38
_0211B618: .word 0x00007FFF
_0211B61C: .word  FUN_ov16_02114204
	arm_func_end FUN_ov59_0211b600

	arm_func_start FUN_ov59_0211b620
FUN_ov59_0211b620: ; 0x0211B620
	ldr r0, _0211B634 ; =0x02099F38
	ldr r2, _0211B638 ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B63C ; = FUN_ov16_02114204
	bx r12
_0211B634: .word 0x02099F38
_0211B638: .word 0x00004210
_0211B63C: .word  FUN_ov16_02114204
	arm_func_end FUN_ov59_0211b620

	arm_func_start FUN_ov59_0211b640
FUN_ov59_0211b640: ; 0x0211B640
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B714 ; =0x02099F38
	mov r10, r0
	mov r9, #1
	ldr r0, [r1]
	mov r2, r9
	mov r1, #3
	bl  FUN_ov16_02112724
	mov r7, #0
	mov r8, r0
	str r7, [sp, #0x14]
	str r8, [r10, #0xc10]
	str r7, [sp]
	str r7, [sp, #4]
	add r6, sp, #0x14
	str r7, [sp, #8]
	mov r4, #0x1f4
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r6
	str r9, [sp, #0x10]
	mov r3, r7
	bl FUN_ov59_0211b1b8
	sub r0, r4, #0x19
	mov r4, #7
	str r7, [sp]
	mov r5, #0x20
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	mov r2, r6
	mov r3, r4
	bl FUN_ov59_0211b1b8
	str r9, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0x1ec
	str r0, [sp, #0xc]
	mov r1, r8
	mov r2, r6
	mov r3, r4
	mov r0, r10
	str r7, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	str r5, [r10, #0xc5c]
	str r5, [r10, #0xc60]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211B714: .word 0x02099F38
	arm_func_end FUN_ov59_0211b640

	arm_func_start FUN_ov59_0211b718
FUN_ov59_0211b718: ; 0x0211B718
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r2, [r8, #0xc14]
	ldr r1, [r8, #0xc18]
	ldr r3, [r8, #0xc1c]
	add r1, r2, r1
	add r1, r3, r1
	ldr r2, [r8, #0xc20]
	ldr r3, [r8, #0xc24]
	add r1, r2, r1
	adds r1, r3, r1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0xd0
	str r1, [sp]
	mov r6, #1
	mov r7, #0xa8
	str r7, [sp, #4]
	str r6, [sp, #8]
	rsb r5, r6, #0x1f4
	str r5, [sp, #0xc]
	mov r1, r6
	mov r2, r6
	mov r3, #6
	str r6, [sp, #0x10]
	bl FUN_ov59_0211e2a4
	mov r4, #2
	mov r0, #0x98
	stmia sp, {r0, r7}
	str r4, [sp, #8]
	mov r9, #0
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r4
	mov r2, r4
	mov r3, r9
	str r6, [sp, #0x10]
	bl FUN_ov59_0211e2a4
	mov r0, #0x60
	stmia sp, {r0, r7}
	mov r1, #3
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r8
	mov r2, r6
	mov r3, r9
	str r6, [sp, #0x10]
	bl FUN_ov59_0211e2a4
	mov r7, #4
	mov r0, #0x20
	mov r3, r9
	str r0, [sp]
	mov r9, #0x10
	str r9, [sp, #4]
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r7
	str r6, [sp, #0x10]
	bl FUN_ov59_0211e2a4
	mov r1, #0xc0
	stmia sp, {r1, r9}
	mov r1, #5
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r8
	mov r2, r7
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov59_0211e2a4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov59_0211b718

	arm_func_start FUN_ov59_0211b840
FUN_ov59_0211b840: ; 0x0211B840
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r1, #4
	mov r4, r0
	bl FUN_ov59_0211d608
	ldr r2, _0211B8A4 ; =0x0211EC50
	ldr r1, _0211B8A8 ; =0x0211EC48
	ldr r6, [r2]
	ldr r5, [r2, #4]
	ldr r12, [r1]
	ldr r2, [r1, #4]
	mov r1, #3
	add lr, sp, #0xc
	add r3, sp, #4
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r2, [sp, #8]
	str r12, [sp, #4]
	ldr r2, [lr, r0, lsl #2]
	ldr r3, [r3, r0, lsl #2]
	mov r0, r4
	str r1, [sp]
	bl FUN_ov59_0211e45c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B8A4: .word 0x0211EC50
_0211B8A8: .word 0x0211EC48
	arm_func_end FUN_ov59_0211b840

	arm_func_start FUN_ov59_0211b8ac
FUN_ov59_0211b8ac: ; 0x0211B8AC
	stmfd sp!, {r4, lr}
	ldr r4, _0211B8F0 ; =0x0209BA20
	mov r0, r4
	bl FUN_02073f08
	cmp r0, #0
	beq _0211B8E8
	mov r0, r4
	bl FUN_020731a4
	cmp r0, #0
	bne _0211B8E8
	ldrb r0, [r4, #0x849]
	cmp r0, #3
	movlo r0, #1
	movhs r0, #0
	ldmfd sp!, {r4, pc}
_0211B8E8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0211B8F0: .word 0x0209BA20
	arm_func_end FUN_ov59_0211b8ac

	arm_func_start FUN_ov59_0211b8f4
FUN_ov59_0211b8f4: ; 0x0211B8F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211BA50 ; =0x02099F38
	mov r10, r0
	mov r9, #1
	ldr r0, [r1]
	mov r2, r9
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [r10, #0xb90]
	ldr r4, _0211BA54 ; =0x66666667
	mov r8, r0
	mov r2, r1, lsr #0x1f
	smull r3, r12, r4, r1
	mov r7, #0xd
	add r12, r2, r12, asr #2
	mov r11, #0xa
	smull r0, r2, r11, r12
	sub r12, r1, r0
	str r8, [r10, #0xc28]
	mov r6, #0x10
	str r12, [sp]
	mov r0, #0x80
	stmib sp, {r0, r6}
	rsb r5, r7, #0x200
	str r5, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, r7
	bl FUN_ov59_0211b1b8
	ldr r1, [r10, #0xb8c]
	mov r0, #0x68
	add r1, r1, #1
	smull r2, r3, r4, r1
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, r11, r3
	sub r3, r1, r2
	str r3, [sp]
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	str r9, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, r7
	bl FUN_ov59_0211b1b8
	ldr r0, [r10, #0xb8c]
	cmp r0, #0xa
	blt _0211BA40
	ldr r1, [r10, #0xb90]
	mov r2, #0x78
	mov r0, r1, lsr #0x1f
	smull r1, r3, r4, r1
	add r3, r0, r3, asr #2
	str r3, [sp]
	stmib sp, {r2, r6}
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, r7
	str r9, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	ldr r0, [r10, #0xb8c]
	mov r1, r8
	add r2, r0, #1
	smull r0, r3, r4, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #2
	str r3, [sp]
	mov r0, #0x60
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	mov r0, r10
	add r2, sp, #0x14
	mov r3, r7
	str r9, [sp, #0x10]
	bl FUN_ov59_0211b1b8
_0211BA40:
	mov r0, r10
	bl FUN_ov59_0211b840
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA50: .word 0x02099F38
_0211BA54: .word 0x66666667
	arm_func_end FUN_ov59_0211b8f4

	arm_func_start FUN_ov59_0211ba58
FUN_ov59_0211ba58: ; 0x0211BA58
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc28]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BA84 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc28]
	ldmfd sp!, {r4, pc}
_0211BA84: .word 0x02099F38
	arm_func_end FUN_ov59_0211ba58

	arm_func_start FUN_ov59_0211ba88
FUN_ov59_0211ba88: ; 0x0211BA88
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0xf4
	mov r4, #0
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x40
	bl MI_CpuFill8
	add r0, r5, #0x134
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r5, #0x1b4
	mov r6, #0x20
	mov r1, r4
	mov r2, r6
	add r0, r0, #0xc00
	bl MI_CpuFill8
	add r0, r5, #0x1d4
	add r0, r0, #0xc00
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x1dc
	add r0, r0, #0xc00
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r2, r6, #0x3ec
	add r0, r5, #0x1fc
	add r0, r0, #0xc00
	mov r1, r4
	bl MI_CpuFill8
	add r0, r5, #0x1000
	str r4, [r0, #0x208]
	str r4, [r0, #0x20c]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov59_0211ba88

	arm_func_start FUN_ov59_0211bb20
FUN_ov59_0211bb20: ; 0x0211BB20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r8, #0
	mov r10, r0
	str r8, [sp, #0x24]
	ldr r0, [r10, #0xb8c]
	add r1, r10, #0xf8
	mov r9, r0, lsl #3
	add r0, r9, #8
	str r0, [sp, #0x14]
	mov r0, #0x1e0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x1c]
	add r0, r1, #0xc00
	str r0, [sp, #0x20]
	ldr r11, _0211BDB0 ; =0x02099F38
	b _0211BD9C
_0211BB68:
	mov r0, #0
	add r1, r10, r9, lsl #1
	str r0, [sp, #0x24]
	add r1, r1, #0x300
	ldrh r1, [r1, #0x80]
	ldr r0, _0211BDB4 ; =0x0209BA20
	mov r7, r8, lsl #4
	bl  FUN_ov16_020ee034
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0211BD94
	add r1, r10, r9, lsl #1
	add r1, r1, #0x300
	ldrh r1, [r1, #0x80]
	ldr r0, _0211BDB4 ; =0x0209BA20
	bl  FUN_ov16_020edec4
	mov r4, r0
	cmp r4, #1
	blt _0211BD54
	ldr r0, [r11]
	mov r1, #5
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r10, r8, lsl #3
	str r0, [r1, #0xcf4]
	ldr r1, [sp, #0x18]
	mov r5, r0
	ldrh r1, [r1, #0x22]
	mov r0, r10
	bl FUN_ov59_0211b0c4
	and r3, r0, #0xff
	ldr r0, [sp, #0x24]
	mov r1, r5
	add r2, r0, #1
	ldr r0, [r11]
	add r6, r7, #0x20
	str r2, [sp, #0x24]
	bl  FUN_ov16_021137dc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [sp, #0x24]
	mov r1, r5
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [sp, #0x24]
	mov r1, r5
	mov r3, #0x28
	bl  FUN_ov16_02113b78
	ldr r0, [r11]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x1c]
	mov r1, r5
	bl  FUN_ov16_021139bc
	ldr r0, [sp, #0x20]
	add r2, r7, #0x23
	add r0, r0, r8, lsl #3
	str r0, [sp]
	mov r0, #0x46
	stmib sp, {r0, r2}
	mov r0, #0x1e0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	mov r0, r10
	mov r2, r5
	add r3, sp, #0x24
	bl FUN_ov59_0211b278
	ldr r0, _0211BDB8 ; =0x66666667
	mov r3, #0xb
	smull r1, r2, r0, r4
	mov r0, r4, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r4, r1
	str r2, [sp]
	mov r0, #0xd0
	stmib sp, {r0, r6}
	mov r0, #0x1e0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x24
	bl FUN_ov59_0211b1b8
	cmp r4, #0xa
	blt _0211BD18
	ldr r0, _0211BDB8 ; =0x66666667
	mov r3, #0xb
	smull r1, r2, r0, r4
	mov r0, r4, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0xc8
	stmib sp, {r0, r6}
	mov r0, #0x1e0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r5
	add r2, sp, #0x24
	bl FUN_ov59_0211b1b8
_0211BD18:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xd8
	str r0, [sp, #4]
	add r0, r7, #0x28
	str r0, [sp, #8]
	mov r0, #0x1e0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r1, r5
	mov r0, r10
	add r2, sp, #0x24
	mov r3, #0xc
	bl FUN_ov59_0211b1b8
_0211BD54:
	add r0, r7, #0x20
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	add r0, r8, #0xb
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldr r0, _0211BDBC ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	mov r3, #0x20
	bl  FUN_ov16_0210fba4
_0211BD94:
	add r9, r9, #1
	add r8, r8, #1
_0211BD9C:
	ldr r0, [sp, #0x14]
	cmp r9, r0
	blt _0211BB68
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDB0: .word 0x02099F38
_0211BDB4: .word 0x0209BA20
_0211BDB8: .word 0x66666667
_0211BDBC: .word 0x02099EB4
	arm_func_end FUN_ov59_0211bb20

	arm_func_start FUN_ov59_0211bdc0
FUN_ov59_0211bdc0: ; 0x0211BDC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211BE4C ; =0x02099F38
	b _0211BE30
_0211BDDC:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xcf4]
	cmp r1, #0
	beq _0211BDFC
	ldr r0, [r7]
	bl  FUN_ov16_021128c4
	add r0, r6, r5, lsl #3
	str r4, [r0, #0xcf4]
_0211BDFC:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xcf8]
	cmp r1, #0
	beq _0211BE2C
	ldr r0, [r7]
	bl FUN_020591e8
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xcf8]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #3
	str r8, [r0, #0xcf8]
_0211BE2C:
	add r5, r5, #1
_0211BE30:
	cmp r5, #8
	blt _0211BDDC
	ldr r0, _0211BE50 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211BE4C: .word 0x02099F38
_0211BE50: .word 0x02099EB4
	arm_func_end FUN_ov59_0211bdc0

	arm_func_start FUN_ov59_0211be54
FUN_ov59_0211be54: ; 0x0211BE54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r5, r0
	ldr r0, [r5, #0xc30]
	cmp r0, #0
	addne sp, sp, #0x40
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211BFC0 ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r2, r6
	mov r1, #3
	bl  FUN_ov16_02112724
	ldr r7, _0211BFC4 ; =0x0211ECB4
	mov r9, r0
	ldmia r7!, {r0, r1, r2, r3}
	add r8, sp, #0x2c
	stmia r8!, {r0, r1, r2, r3}
	ldr r7, [r7]
	mov r4, #0
	str r7, [r8]
	ldr r8, _0211BFC8 ; =0x0211ECC8
	add r10, sp, #0x18
	ldmia r8!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldr r7, _0211BFCC ; =0x02099EB4
	ldr r8, [r8]
	ldr r0, [r7]
	str r4, [sp, #0x14]
	str r8, [r10]
	mov r1, r4
	bl  FUN_ov16_0210eb3c
	str r9, [r5, #0xc30]
	str r4, [sp]
	add r8, sp, #0x14
	str r4, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r5
	mov r1, r9
	mov r3, #0xe
	mov r2, r8
	str r6, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	mov r7, #8
	mov r6, #0x20
	b _0211BF54
_0211BF18:
	add r0, r4, r4, lsl #1
	stmia sp, {r4, r7}
	rsb r0, r0, #4
	eor r10, r4, #1
	rsb r12, r0, #0x190
	str r6, [sp, #8]
	mov r0, r5
	mov r1, r9
	mov r2, r8
	mov r3, r7
	str r12, [sp, #0xc]
	and r10, r10, #0xff
	str r10, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	add r4, r4, #1
_0211BF54:
	cmp r4, #2
	blt _0211BF18
	mov r0, #3
	str r0, [sp, #0x14]
	add r8, r0, #0x18c
	mov r7, #0x68
	mov r4, #0
	add r6, sp, #0x18
	mov r10, #1
	add r9, sp, #0x2c
	b _0211BFB0
_0211BF80:
	str r7, [sp]
	ldr r0, [r6, r4, lsl #2]
	add r1, r4, #6
	stmib sp, {r0, r1}
	str r8, [sp, #0xc]
	str r10, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [r9, r4, lsl #2]
	mov r0, r5
	add r1, r4, #9
	bl FUN_ov59_0211e2a4
	add r4, r4, #1
_0211BFB0:
	cmp r4, #5
	blt _0211BF80
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFC0: .word 0x02099F38
_0211BFC4: .word 0x0211ECB4
_0211BFC8: .word 0x0211ECC8
_0211BFCC: .word 0x02099EB4
	arm_func_end FUN_ov59_0211be54

	arm_func_start FUN_ov59_0211bfd0
FUN_ov59_0211bfd0: ; 0x0211BFD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r1, [r5, #0xc30]
	mov r4, #0
	cmp r1, #0
	beq _0211BFFC
	ldr r0, _0211C0B8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r4, [r5, #0xc30]
_0211BFFC:
	mov r6, #0
	mov r4, r6
	ldr r8, _0211C0B8 ; =0x02099F38
	ldr r7, _0211C0BC ; =0x02099EB4
	b _0211C050
_0211C010:
	add r0, r6, #9
	add r0, r5, r0, lsl #2
	ldr r1, [r0, #0xc10]
	cmp r1, #0
	beq _0211C038
	ldr r0, [r8]
	bl  FUN_ov16_021128c4
	add r0, r6, #9
	add r0, r5, r0, lsl #2
	str r4, [r0, #0xc10]
_0211C038:
	add r0, r6, #6
	mov r1, r0, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210eab4
	add r6, r6, #1
_0211C050:
	cmp r6, #5
	blt _0211C010
	mov r6, #0
	mov r7, #0x20
	mov r8, #0xc0
	mov r9, #0x10
	mov r10, #0xb
	mov r4, r6
	mov r5, #0x64
	ldr r11, _0211C0BC ; =0x02099EB4
	b _0211C0A8
_0211C07C:
	stmia sp, {r7, r8, r9}
	str r5, [sp, #0xc]
	mov r2, r10, lsl #0x10
	ldr r0, [r11]
	mov r1, r4
	mov r3, #0x20
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r7, r7, #0x10
	add r10, r10, #1
	add r6, r6, #1
_0211C0A8:
	cmp r6, #8
	blt _0211C07C
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C0B8: .word 0x02099F38
_0211C0BC: .word 0x02099EB4
	arm_func_end FUN_ov59_0211bfd0

	arm_func_start FUN_ov59_0211c0c0
FUN_ov59_0211c0c0: ; 0x0211C0C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	mov r6, #0
	mov r10, r0
	str r6, [sp, #0x3c]
	ldr r1, [r10, #0xce0]
	mov r4, #0x30
	str r1, [sp, #0x1c]
	mov r1, #1
	bl FUN_ov59_0211d608
	str r0, [sp, #0x18]
	ldr r0, _0211C4E0 ; =0x0000018E
	add r2, r10, #0x138
	sub r0, r0, #1
	str r0, [sp, #0x24]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x28]
	add r0, r2, #0xc00
	str r0, [sp, #0x2c]
	ldr r0, _0211C4E0 ; =0x0000018E
	add r1, r10, #0x1fc
	add r0, r0, #1
	str r0, [sp, #0x30]
	ldr r0, _0211C4E0 ; =0x0000018E
	ldr r9, [sp, #0x1c]
	add r0, r0, #0xd4
	str r0, [sp, #0x34]
	mov r0, r9
	add r0, r0, #8
	add r11, r1, #0xc00
	add r5, r10, #0x80
	str r0, [sp, #0x38]
	b _0211C498
_0211C148:
	ldr r0, [sp, #0x1c]
	mov r1, r6
	sub r0, r9, r0
	mov r8, r0, lsl #4
	add r0, sp, #0x50
	mov r2, #0x10
	str r6, [sp, #0x3c]
	bl MI_CpuFill8
	add r0, sp, #0x40
	mov r1, r6
	mov r2, #0x10
	bl MI_CpuFill8
	ldr r0, _0211C4E4 ; =0x02099F38
	mov r1, #3
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r7, r0
	add r0, r10, r9, lsl #3
	str r7, [r0, #0xd34]
	mla r0, r9, r4, r10
	ldrh r1, [r0, #0xa6]
	cmp r1, #0
	beq _0211C410
	mov r1, #1
	strh r1, [r0, #0xa4]
	ldr r1, [sp, #0x18]
	cmp r1, #1
	mov r1, #1
	str r1, [sp, #0x14]
	bne _0211C224
	ldrsh r1, [r0, #0xac]
	ldrsh r0, [r0, #0xae]
	cmp r1, r0
	bge _0211C2F0
	mov r0, r10
	mov r1, #2
	str r6, [sp, #0x14]
	bl FUN_ov59_0211d608
	mov r2, r0
	mla r0, r9, r4, r10
	ldrsh r1, [r0, #0xac]
	ldrsh r0, [r0, #0xae]
	add r3, r2, r1
	cmp r3, r0
	subgt r2, r0, r1
	ldr r1, _0211C4E8 ; =0x0211F05C
	add r0, sp, #0x50
	bl FUN_02023c40
	add r0, sp, #0x50
	add r1, sp, #0x40
	bl  FUN_ov16_020f1f5c
	add r0, r11, r9, lsl #6
	ldr r1, _0211C4EC ; =0x0211F060
	b _0211C28C
_0211C224:
	ldr r1, [sp, #0x18]
	cmp r1, #2
	bne _0211C298
	ldrsh r1, [r0, #0xa8]
	ldrsh r0, [r0, #0xaa]
	cmp r1, r0
	bge _0211C2F0
	mov r0, r10
	mov r1, #2
	str r6, [sp, #0x14]
	bl FUN_ov59_0211d608
	mov r2, r0
	mla r0, r9, r4, r10
	ldrsh r1, [r0, #0xa8]
	ldrsh r0, [r0, #0xaa]
	add r3, r2, r1
	cmp r3, r0
	subgt r2, r0, r1
	ldr r1, _0211C4F0 ; =0x0211F084
	add r0, sp, #0x50
	bl FUN_02023c40
	add r0, sp, #0x50
	add r1, sp, #0x40
	bl  FUN_ov16_020f1f5c
	ldr r1, _0211C4F4 ; =0x0211F088
	add r0, r11, r9, lsl #6
_0211C28C:
	mla r2, r9, r4, r5
	add r3, sp, #0x40
	b _0211C2EC
_0211C298:
	cmp r1, #3
	bne _0211C2F0
	ldrsh r2, [r0, #0xac]
	ldrsh r1, [r0, #0xae]
	cmp r2, r1
	blt _0211C2C0
	ldrsh r1, [r0, #0xa8]
	ldrsh r0, [r0, #0xaa]
	cmp r1, r0
	bge _0211C2F0
_0211C2C0:
	mov r0, r10
	mov r1, #2
	str r6, [sp, #0x14]
	bl FUN_ov59_0211d608
	cmp r0, #0x384
	add r0, r11, r9, lsl #6
	blt _0211C2E4
	ldr r1, _0211C4F8 ; =0x0211F0AC
	b _0211C2E8
_0211C2E4:
	ldr r1, _0211C4FC ; =0x0211F0D4
_0211C2E8:
	mla r2, r9, r4, r5
_0211C2EC:
	bl FUN_02023c40
_0211C2F0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0211C340
	mla r0, r9, r4, r10
	strh r6, [r0, #0xa4]
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r8, #0x20
	str r0, [sp, #8]
	ldr r0, _0211C4E0 ; =0x0000018E
	mov r1, r7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	add r2, sp, #0x3c
	mov r3, #8
	bl FUN_ov59_0211b1b8
_0211C340:
	ldr r1, [sp, #0x3c]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x3c]
	mla r1, r9, r4, r10
	ldrh r1, [r1, #0xa2]
	bl FUN_ov59_0211b05c
	and r3, r0, #0xff
	add r0, r8, #0x18
	str r0, [sp, #0x20]
	ldr r0, _0211C4E4 ; =0x02099F38
	ldr r2, [sp, #0x3c]
	ldr r0, [r0]
	mov r1, r7
	bl  FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, _0211C4E4 ; =0x02099F38
	ldr r2, [sp, #0x3c]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r6
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x20]
	mov r1, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211C4E4 ; =0x02099F38
	ldr r2, [sp, #0x3c]
	ldr r0, [r0]
	mov r3, #8
	bl  FUN_ov16_02113b78
	ldr r0, _0211C4E4 ; =0x02099F38
	ldr r2, [sp, #0x3c]
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	mov r1, r7
	bl  FUN_ov16_021139bc
	ldr r0, [sp, #0x2c]
	add r1, r8, #0x23
	add r0, r0, r9, lsl #3
	str r0, [sp]
	mov r0, #0x28
	stmib sp, {r0, r1}
	ldr r0, [sp, #0x24]
	mla r1, r9, r4, r5
	str r0, [sp, #0xc]
	mov r2, r7
	mov r0, r10
	add r3, sp, #0x3c
	bl FUN_ov59_0211b278
	b _0211C44C
_0211C410:
	mov r0, #2
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r8, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	mov r1, r7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	add r2, sp, #0x3c
	mov r3, #8
	bl FUN_ov59_0211b1b8
_0211C44C:
	add r0, r8, #0x20
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	mov r1, #9
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	mov r3, #8
	sub r0, r9, r0
	add r0, r0, #0x13
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldr r0, _0211C500 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210fba4
	add r9, r9, #1
_0211C498:
	ldr r0, [sp, #0x38]
	cmp r9, r0
	blt _0211C148
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xa8
	str r0, [sp, #8]
	mov r4, #0x258
	ldr r0, _0211C500 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldr r0, [r0]
	mov r1, #0x12
	mov r2, #0x1b
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C4E0: .word 0x0000018E
_0211C4E4: .word 0x02099F38
_0211C4E8: .word 0x0211F05C
_0211C4EC: .word 0x0211F060
_0211C4F0: .word 0x0211F084
_0211C4F4: .word 0x0211F088
_0211C4F8: .word 0x0211F0AC
_0211C4FC: .word 0x0211F0D4
_0211C500: .word 0x02099EB4
	arm_func_end FUN_ov59_0211c0c0

	arm_func_start FUN_ov59_0211c504
FUN_ov59_0211c504: ; 0x0211C504
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, #0
	mov r6, r0
	mov r4, r5
	mov r8, r5
	ldr r7, _0211C58C ; =0x02099F38
	b _0211C564
_0211C520:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xd34]
	cmp r1, #0
	beq _0211C540
	ldr r0, [r7]
	bl  FUN_ov16_021128c4
	add r0, r6, r5, lsl #3
	str r4, [r0, #0xd34]
_0211C540:
	add r0, r6, r5, lsl #3
	ldr r1, [r0, #0xd38]
	cmp r1, #0
	beq _0211C560
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #3
	str r8, [r0, #0xd38]
_0211C560:
	add r5, r5, #1
_0211C564:
	cmp r5, #0x10
	blt _0211C520
	ldr r4, _0211C590 ; =0x02099EB4
	mov r1, #9
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x12
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C58C: .word 0x02099F38
_0211C590: .word 0x02099EB4
	arm_func_end FUN_ov59_0211c504

	arm_func_start FUN_ov59_0211c594
FUN_ov59_0211c594: ; 0x0211C594
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r0
	ldr r0, [r9, #0xc2c]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C888 ; =0x02099F38
	mov r10, #1
	ldr r0, [r0]
	mov r2, r10
	mov r1, #0xd
	bl  FUN_ov16_02112724
	mov r7, #0
	ldr r1, _0211C88C ; =0x02099EB4
	mov r8, r0
	ldr r0, [r1]
	mov r1, r7
	str r7, [sp, #0x14]
	mov r4, #0x12c
	bl  FUN_ov16_0210eb3c
	str r8, [r9, #0xc2c]
	add r11, sp, #0x14
	str r7, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x58
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r9
	str r10, [sp, #0x10]
	mov r1, r8
	mov r2, r11
	mov r3, #0xf
	bl FUN_ov59_0211b1b8
	mov r6, #0x60
	str r7, [sp]
	mov r5, #0x88
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r6, #0xc7
	str r0, [sp, #0xc]
	str r10, [sp, #0x10]
	mov r0, r9
	mov r1, r8
	mov r2, r11
	mov r3, #9
	bl FUN_ov59_0211b1b8
	str r10, [sp]
	mov r4, #0x70
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r0, r4, #0xba
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r8
	mov r2, r11
	mov r3, #9
	str r7, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	mov r0, r9
	mov r1, #3
	add r4, r4, #0xb9
	bl FUN_ov59_0211d608
	cmp r0, #0
	bne _0211C6C0
	mov r0, #2
	stmia sp, {r0, r5, r6}
	str r4, [sp, #0xc]
	mov r0, r9
	mov r1, r8
	mov r2, r11
	mov r3, #9
	str r10, [sp, #0x10]
	bl FUN_ov59_0211b1b8
_0211C6C0:
	ldr r7, _0211C890 ; =0x0000012B
	mov r10, #0
	add r4, r9, #0x1000
	mov r11, #1
	b _0211C710
_0211C6D4:
	cmp r10, #1
	ldreq r0, [r4, #0x214]
	mov r1, #3
	cmpeq r0, #0
	add r6, r6, #0x10
	moveq r1, #2
	stmia sp, {r1, r5, r6}
	str r7, [sp, #0xc]
	mov r0, r9
	mov r1, r8
	add r2, sp, #0x14
	mov r3, #9
	str r11, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	add r10, r10, #1
_0211C710:
	cmp r10, #3
	blt _0211C6D4
	add r0, r9, #0x1b8
	add r0, r0, #0xc00
	str r0, [sp]
	mov r7, #0x8a
	add r4, sp, #0x14
	str r7, [sp, #4]
	mov r6, #0x63
	ldr r1, _0211C894 ; =0x0211F0FC
	mov r0, r9
	mov r2, r8
	mov r3, r4
	str r6, [sp, #8]
	mov r5, #0x128
	str r5, [sp, #0xc]
	bl FUN_ov59_0211b278
	add r0, r9, #0xdc0
	stmia sp, {r0, r7}
	add r6, r6, #0x10
	str r6, [sp, #8]
	ldr r1, _0211C898 ; =0x0211F104
	mov r0, r9
	mov r2, r8
	mov r3, r4
	str r5, [sp, #0xc]
	bl FUN_ov59_0211b278
	add r0, r9, #0x1c8
	add r0, r0, #0xc00
	stmia sp, {r0, r7}
	add r6, r6, #0x10
	str r6, [sp, #8]
	ldr r1, _0211C89C ; =0x0211F110
	mov r0, r9
	mov r2, r8
	mov r3, r4
	str r5, [sp, #0xc]
	bl FUN_ov59_0211b278
	add r0, r9, #0xdd0
	stmia sp, {r0, r7}
	add r1, r6, #0x10
	str r1, [sp, #8]
	ldr r1, _0211C8A0 ; =0x0211F118
	mov r2, r8
	mov r3, r4
	mov r0, r9
	str r5, [sp, #0xc]
	bl FUN_ov59_0211b278
	mov r4, #2
	mov r0, r9
	mov r1, r4
	bl FUN_ov59_0211d000
	mov r5, #0x88
	mov r6, #0x60
	mov r0, #0x14
	add r7, r4, #0x260
	str r5, [r9, #0xca4]
	str r6, [r9, #0xca8]
	mov r11, #0x58
	mov r9, #0x10
	mov r8, #0x1c
	mov r10, #0
	mov r4, r0
	b _0211C844
_0211C810:
	stmia sp, {r6, r11}
	str r9, [sp, #8]
	ldr r0, _0211C88C ; =0x02099EB4
	str r7, [sp, #0xc]
	mov r2, r8, lsl #0x10
	ldr r0, [r0]
	mov r1, r4
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fba4
	add r6, r6, #0x10
	add r8, r8, #1
	add r10, r10, #1
_0211C844:
	cmp r10, #4
	blt _0211C810
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xa8
	str r0, [sp, #8]
	mov r4, #0x258
	ldr r0, _0211C88C ; =0x02099EB4
	str r4, [sp, #0xc]
	ldr r0, [r0]
	mov r1, #0x1a
	mov r2, #0x21
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C888: .word 0x02099F38
_0211C88C: .word 0x02099EB4
_0211C890: .word 0x0000012B
_0211C894: .word 0x0211F0FC
_0211C898: .word 0x0211F104
_0211C89C: .word 0x0211F110
_0211C8A0: .word 0x0211F118
	arm_func_end FUN_ov59_0211c594

	arm_func_start FUN_ov59_0211c8a4
FUN_ov59_0211c8a4: ; 0x0211C8A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0xc2c]
	mov r5, #0
	cmp r1, #0
	beq _0211C8CC
	ldr r0, _0211C928 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	str r5, [r4, #0xc2c]
_0211C8CC:
	mov r7, #0
	mov r6, r7
	ldr r5, _0211C928 ; =0x02099F38
	b _0211C900
_0211C8DC:
	add r0, r4, r7, lsl #3
	ldr r1, [r0, #0xdb8]
	cmp r1, #0
	beq _0211C8FC
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #3
	str r6, [r0, #0xdb8]
_0211C8FC:
	add r7, r7, #1
_0211C900:
	cmp r7, #4
	blt _0211C8DC
	ldr r4, _0211C92C ; =0x02099EB4
	mov r1, #0x14
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x1a
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C928: .word 0x02099F38
_0211C92C: .word 0x02099EB4
	arm_func_end FUN_ov59_0211c8a4

	arm_func_start FUN_ov59_0211c930
FUN_ov59_0211c930: ; 0x0211C930
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r0, [r10, #0xc48]
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CAE0 ; =0x02099F38
	mov r8, #1
	ldr r0, [r0]
	mov r2, r8
	mov r1, #4
	bl  FUN_ov16_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x14]
	str r7, [r10, #0xc48]
	add r11, sp, #0x14
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	mov r4, #0xc8
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0x10]
	mov r3, #0x10
	bl FUN_ov59_0211b1b8
	sub r9, r4, #1
	mov r4, #5
	str r6, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r5, #0x60
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	mov r0, #2
	mov r3, r4
	str r0, [sp]
	mov r4, #0x98
	stmib sp, {r4, r5}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0x10]
	bl FUN_ov59_0211b1b8
	add r0, r10, #0x1d8
	add r0, r0, #0xc00
	stmia sp, {r0, r6}
	mov r0, #0x4c
	str r0, [sp, #8]
	ldr r1, _0211CAE4 ; =0x0211F128
	mov r2, r7
	mov r3, r11
	mov r0, r10
	str r9, [sp, #0xc]
	bl FUN_ov59_0211b278
	mov r0, r10
	mov r1, #3
	bl FUN_ov59_0211d000
	mov r11, #0x1e
	str r4, [r10, #0xcc8]
	str r5, [r10, #0xccc]
	mov r2, #0x22
	str r5, [sp]
	mov r9, #0x30
	str r9, [sp, #4]
	mov r8, #0x18
	add r10, r2, #0x240
	str r8, [sp, #8]
	ldr r7, _0211CAE8 ; =0x02099EB4
	str r10, [sp, #0xc]
	ldr r0, [r7]
	mov r3, #0x38
	mov r1, r11
	bl  FUN_ov16_0210fba4
	stmia sp, {r5, r9}
	str r8, [sp, #8]
	str r10, [sp, #0xc]
	ldr r0, [r7]
	mov r1, r11
	mov r3, r4
	mov r2, #0x23
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	mov r4, #0x258
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r7]
	mov r3, r6
	mov r1, #0x21
	mov r2, #0x24
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CAE0: .word 0x02099F38
_0211CAE4: .word 0x0211F128
_0211CAE8: .word 0x02099EB4
	arm_func_end FUN_ov59_0211c930

	arm_func_start FUN_ov59_0211caec
FUN_ov59_0211caec: ; 0x0211CAEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc48]
	cmp r1, #0
	beq _0211CB14
	ldr r0, _0211CB54 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc48]
_0211CB14:
	ldr r1, [r4, #0xdd8]
	cmp r1, #0
	beq _0211CB34
	ldr r0, _0211CB54 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0xdd8]
_0211CB34:
	ldr r4, _0211CB58 ; =0x02099EB4
	mov r1, #0x1e
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x21
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211CB54: .word 0x02099F38
_0211CB58: .word 0x02099EB4
	arm_func_end FUN_ov59_0211caec

	arm_func_start FUN_ov59_0211cb5c
FUN_ov59_0211cb5c: ; 0x0211CB5C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0211CBA8 ; =0x0209BA20
	mov r5, r1
	mov r0, r4
	bl  FUN_ov16_020ee034
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020edec4
	cmp r0, #1
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0211CBA8: .word 0x0209BA20
	arm_func_end FUN_ov59_0211cb5c

	arm_func_start FUN_ov59_0211cbac
FUN_ov59_0211cbac: ; 0x0211CBAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r10, r0
	ldr r0, [r10, #0xc4c]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CE40 ; =0x02099F38
	mov r8, #6
	mov r7, #1
	ldr r0, [r0]
	mov r1, r8
	mov r2, r7
	bl  FUN_ov16_02112724
	mov r6, #0
	add r11, sp, #0x18
	mov r9, r0
	mov r0, r11
	mov r1, r6
	mov r2, #0x40
	str r6, [sp, #0x14]
	mov r5, #0x96
	bl MI_CpuFill8
	ldr r4, _0211CE44 ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #9
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x12
	bl  FUN_ov16_0210eb3c
	str r9, [r10, #0xc4c]
	add r4, sp, #0x14
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	mov r3, #0x11
	mov r2, r4
	bl FUN_ov59_0211b1b8
	mov r2, r4
	mov r4, #0x68
	str r6, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x95
	str r0, [sp, #0xc]
	mov r3, r8
	str r6, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	mov r5, r4
	bl FUN_ov59_0211b1b8
	ldr r0, [r10, #0x10]
	cmp r0, #4
	bne _0211CCD4
	ldr r2, [r10, #0xc74]
	ldr r1, [r10, #0xce0]
	add r0, r10, #0x1fc
	add r3, r0, #0xc00
	add r2, r2, r1
	ldr r1, _0211CE48 ; =0x0211F140
	mov r0, r11
	add r2, r3, r2, lsl #6
	mov r4, r6
	mov r5, r6
	b _0211CCEC
_0211CCD4:
	cmp r0, #6
	bne _0211CCF0
	ldr r1, _0211CE4C ; =0x0211F144
	mov r0, r11
	mov r4, r6
	mov r5, #8
_0211CCEC:
	bl FUN_02023c40
_0211CCF0:
	ldr r6, _0211CE40 ; =0x02099F38
	mov r1, #5
	ldr r0, [r6]
	mov r2, r1
	bl FUN_02059630
	mov r8, #0
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	add r0, r10, #0x1000
	str r1, [r0, #0x1fc]
	ldr r0, [r6]
	mov r2, r8
	mov r3, r8
	bl FUN_02059038
	add r3, r10, #0x1000
	ldr r3, [r3, #0x1fc]
	mov r11, #3
	ldr r0, [r6]
	mov r1, r9
	mov r2, r11
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0x28
	str r0, [sp]
	mov r7, #0x100
	ldr r0, [r6]
	mov r1, r9
	mov r2, r11
	mov r3, r7
	bl  FUN_ov16_02113d08
	str r8, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r11
	mov r3, r8
	bl  FUN_ov16_02113d88
	mov r0, #0x3c
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r9
	mov r2, r11
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r0, [r6]
	mov r1, r9
	mov r2, r11
	mov r3, #0x94
	bl  FUN_ov16_021139bc
	mov r2, #1
	str r2, [sp]
	stmib sp, {r2, r4}
	str r5, [sp, #0xc]
	add r0, r10, #0x1000
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x1fc]
	add r0, sp, #0x18
	mov r3, #9
	bl  FUN_ov16_020f2304
	mov r3, #0x68
	str r3, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x18
	ldr r5, _0211CE50 ; =0x00000276
	str r0, [sp, #8]
	ldr r4, _0211CE44 ; =0x02099EB4
	str r5, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #0x24
	mov r2, #0x25
	bl  FUN_ov16_0210fba4
	str r8, [sp]
	str r7, [sp, #4]
	mov r2, #0xc0
	sub r0, r5, #5
	str r2, [sp, #8]
	mov r1, #0x26
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r8
	mov r2, r1
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CE40: .word 0x02099F38
_0211CE44: .word 0x02099EB4
_0211CE48: .word 0x0211F140
_0211CE4C: .word 0x0211F144
_0211CE50: .word 0x00000276
	arm_func_end FUN_ov59_0211cbac

	arm_func_start FUN_ov59_0211ce54
FUN_ov59_0211ce54: ; 0x0211CE54
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc4c]
	cmp r1, #0
	beq _0211CE7C
	ldr r0, _0211CED8 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc4c]
_0211CE7C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x1fc]
	cmp r1, #0
	beq _0211CEA4
	ldr r0, _0211CED8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	mov r1, #0
	str r1, [r0, #0x1fc]
_0211CEA4:
	add r0, r4, #0x1fc
	ldr r2, _0211CEDC ; =0x0000040C
	add r0, r0, #0xc00
	mov r1, #0
	bl MI_CpuFill8
	ldr r4, _0211CEE0 ; =0x02099EB4
	mov r1, #0x24
	ldr r0, [r4]
	bl  FUN_ov16_0210eb3c
	ldr r0, [r4]
	mov r1, #0x26
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211CED8: .word 0x02099F38
_0211CEDC: .word 0x0000040C
_0211CEE0: .word 0x02099EB4
	arm_func_end FUN_ov59_0211ce54

	arm_func_start FUN_ov59_0211cee4
FUN_ov59_0211cee4: ; 0x0211CEE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x204]
	ldr r2, _0211CF68 ; =0x55555556
	add r5, r1, #1
	smull r1, r3, r2, r5
	add r3, r3, r5, lsr #31
	cmp r3, #1
	moveq r3, #1
	str r5, [r0, #0x204]
	ldr r1, [r4, #0xc4c]
	movne r3, #0
	str r3, [sp]
	ldr r0, _0211CF6C ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	cmp r5, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	add r2, r4, #0x1000
	mov r1, #0
	str r1, [r2, #0x200]
	str r1, [r2, #0x204]
	bl FUN_ov59_0211af2c
	mov r0, r4
	bl FUN_ov59_0211a238
	add r0, r4, #0x1000
	mov r1, #1
	str r1, [r0, #0x20c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CF68: .word 0x55555556
_0211CF6C: .word 0x02099F38
	arm_func_end FUN_ov59_0211cee4

	arm_func_start FUN_ov59_0211cf70
FUN_ov59_0211cf70: ; 0x0211CF70
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r1, [r0, #0xc4c]
	movne r3, #1
	moveq r3, #0
	str r3, [sp]
	ldr r0, _0211CFA0 ; =0x02099F38
	mov r2, #2
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211CFA0: .word 0x02099F38
	arm_func_end FUN_ov59_0211cf70

	arm_func_start FUN_ov59_0211cfa4
FUN_ov59_0211cfa4: ; 0x0211CFA4
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r3, [r0, #0xc4c]
	mov r12, #2
	beq _0211CFD0
	add r0, r0, #0x1000
	ldrh r2, [r2, #8]
	ldr r0, [r0, #0x210]
	mov r1, #0
	cmp r0, r2
	moveq r1, #1
_0211CFD0:
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	str r1, [sp]
	ldr r0, _0211CFFC ; =0x02099F38
	mov r1, r3
	ldr r0, [r0]
	mov r2, r12
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_0211CFFC: .word 0x02099F38
	arm_func_end FUN_ov59_0211cfa4

	arm_func_start FUN_ov59_0211d000
FUN_ov59_0211d000: ; 0x0211D000
	add r0, r0, #0xc50
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211D018 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211D018: .word MI_CpuFill8
	arm_func_end FUN_ov59_0211d000

	arm_func_start FUN_ov59_0211d01c
FUN_ov59_0211d01c: ; 0x0211D01C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	mov r3, r1
	mov r1, #0x24
	mov r6, r2
	mov r5, r6, lsr #0x1f
	mul lr, r3, r1
	rsb r1, r5, r6, lsl #29
	mov r4, r0
	rsb r2, r5, r6, lsl #30
	add r7, r5, r1, ror #29
	add r1, r5, r2, ror #30
	mov r2, r7, lsl #4
	add r12, r2, #0x20
	mov r1, r1, lsl #4
	add r8, r1, #0x60
	ldr r0, _0211D11C ; =0x0211EC70
	add r5, sp, #0x18
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	add r1, r4, #0xc50
	ldr r2, [r1, lr]
	add r7, r4, #0x58
	str r6, [r1, lr]
	mov r6, r2, lsr #0x1f
	rsb r1, r6, r2, lsl #29
	rsb r2, r6, r2, lsl #30
	add r2, r6, r2, ror #30
	add r1, r6, r1, ror #29
	mov r2, r2, lsl #4
	add r6, r2, #0x60
	mov r1, r1, lsl #4
	add r1, r1, #0x20
	str r6, [sp, #0x14]
	add r2, r4, lr
	mov r6, #1
	str r6, [r2, #0xc6c]
	ldr r6, [r5, r3, lsl #2]
	add r5, sp, #0xc
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r8, [sp, #8]
	ldr r5, [r5, r3, lsl #2]
	add r1, sp, #0
	str r12, [sp]
	str r12, [sp, #4]
	ldr r3, [r1, r3, lsl #2]
	add r0, r7, #0xc00
	str r6, [r2, #0xc54]
	str r5, [r0, lr]
	add r1, r4, #0xc60
	str r3, [r1, lr]
	ldr r1, [r0, lr]
	ldr r0, _0211D120 ; =0x0209AC44
	sub r1, r3, r1
	add r1, r1, r1, lsr #31
	mov r3, r1, asr #1
	mov r1, #8
	str r3, [r2, #0xc68]
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov59_0211ebc8
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211D11C: .word 0x0211EC70
_0211D120: .word 0x0209AC44
	arm_func_end FUN_ov59_0211d01c

	arm_func_start FUN_ov59_0211d124
FUN_ov59_0211d124: ; 0x0211D124
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r1, #0x24
	mul lr, r4, r1
	add r1, r0, lr
	add r7, r0, #0xc70
	ldr r5, [r7, lr]
	ldr r12, [r0, #0xc10]
	ldr r3, [r0, #0xc30]
	ldr r2, [r0, #0xc2c]
	ldr r6, [r1, #0xc54]
	ldr r8, [r1, #0xc58]
	add r5, r5, #1
	str r5, [r7, lr]
	ldr lr, [r1, #0xc68]
	ldr r5, [r1, #0xc70]
	str r12, [sp, #4]
	mla r7, lr, r5, r8
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	cmp lr, #0
	mov r5, #2
	ldr r1, [r1, #0xc60]
	bge _0211D194
	cmp r7, r1
	movlt r7, r1
	b _0211D19C
_0211D194:
	cmp r7, r1
	movgt r7, r1
_0211D19C:
	mov r1, #0x24
	mla r2, r4, r1, r0
	ldr r1, [r2, #0xc60]
	cmp r7, r1
	moveq r1, #0
	streq r1, [r2, #0xc6c]
	streq r1, [r2, #0xc70]
	ldreq r1, [r0, #0x10]
	cmpeq r1, #0
	bne _0211D1C8
	bl FUN_ov59_0211b840
_0211D1C8:
	mov r0, r7, lsl #0x10
	mov r2, r0, asr #0x10
	add r1, sp, #4
	str r2, [sp]
	ldr r0, _0211D1FC ; =0x02099F38
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r1, r4, lsl #2]
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D1FC: .word 0x02099F38
	arm_func_end FUN_ov59_0211d124

	arm_func_start FUN_ov59_0211d200
FUN_ov59_0211d200: ; 0x0211D200
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	ldr r8, [r10, #0xc30]
	ldr r11, [r10, #0xc10]
	ldr r5, [r10, #0xc2c]
	ldr r4, [r10, #0xc48]
	ldr r7, [r10, #0xcbc]
	mov r9, r1
	ldr r0, _0211D5E8 ; =0x0211ECA4
	str r11, [sp, #0x30]
	mov r12, #0x24
	str r8, [sp, #0x34]
	mla r8, r9, r12, r10
	str r4, [sp, #0x3c]
	str r5, [sp, #0x38]
	add r6, sp, #0x20
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	rsb r0, r7, #3
	ldr r12, _0211D5EC ; =0x0211EC94
	str r0, [sp, #0x2c]
	add r11, sp, #0x10
	ldmia r12, {r0, r1, r2, r3}
	stmia r11, {r0, r1, r2, r3}
	ldr r1, [r8, #0xc5c]
	ldr r0, [r8, #0xc60]
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	add r2, r10, #0xde0
	mov r3, r1, asr #0x10
	ldr r1, [r2, r9, lsl #3]
	mov r0, r0, asr #0x10
	add r8, r1, #1
	str r8, [r2, r9, lsl #3]
	str r0, [sp]
	ldr r4, _0211D5F0 ; =0x02099F38
	add r5, sp, #0x30
	ldr r0, [r4]
	ldr r2, [r6, r9, lsl #2]
	ldr r1, [r5, r9, lsl #2]
	bl  FUN_ov16_02113b78
	cmp r8, #3
	bge _0211D2FC
	ldr r0, [r10, #0x10]
	cmp r0, #3
	beq _0211D2D8
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D2D8:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	ldr r3, [r11, r7, lsl #3]
	bl  FUN_ov16_0211401c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D2FC:
	cmp r8, #6
	bge _0211D35C
	ldr r0, [r10, #0x10]
	cmp r0, #3
	beq _0211D334
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D334:
	mov r0, #0
	str r0, [sp]
	add r3, r11, r7, lsl #3
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	ldr r3, [r3, #4]
	bl  FUN_ov16_0211401c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D35C:
	cmp r8, #9
	bge _0211D3B0
	ldr r0, [r10, #0x10]
	cmp r0, #3
	beq _0211D38C
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	mov r3, #2
	bl  FUN_ov16_02113f7c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D38C:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r6, r9, lsl #2]
	ldr r3, [r11, r7, lsl #3]
	bl  FUN_ov16_0211401c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D3B0:
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, r9, lsl #3
	mov r4, #0
	str r4, [r0, #0xddc]
	str r4, [r0, #0xde0]
	ldr r0, [r10, #0x10]
	cmp r0, #0
	bne _0211D468
	mov r0, r10
	mov r1, #1
	bl FUN_ov59_0211d608
	cmp r0, #9
	mov r0, r10
	bne _0211D458
	mov r1, #5
	ldr r8, _0211D5F4 ; =0x021DAFE0
	bl FUN_ov59_0211d608
	mov r5, #0xc
	ldr r6, _0211D5F8 ; =0x020AF81C
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_02044754
	add r3, r8, r7
	mov r1, r5
	mov r2, #1
	str r4, [sp]
	mov r0, r6
	bl FUN_02044690
	mov r1, #0xa
	str r1, [r10, #0xc]
	ldr r2, [r10, #4]
	mov r0, r6
	str r2, [sp]
	mov r1, #0x19
	mov r2, r4
	mov r3, r4
	bl FUN_02044798
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D458:
	mov r1, #1
	bl FUN_ov59_0211af2c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D468:
	cmp r0, #1
	bne _0211D52C
	mov r0, r10
	mov r1, r4
	bl FUN_ov59_0211d700
	mov r5, r0
	mov r0, r10
	mov r1, r4
	bl FUN_ov59_0211d608
	mov r0, r0, lsl #0x10
	ldr r6, _0211D5FC ; =0x0209BA20
	mov r2, r0, lsr #0x10
	mov r1, r5
	mov r0, r6
	mov r3, r4
	bl  FUN_ov16_020eeec0
	mov r0, r6
	bl FUN_02073f08
	cmp r0, #0
	beq _0211D510
	mov r0, r6
	bl FUN_020731a4
	cmp r0, #0
	bne _0211D510
	ldrb r0, [r6, #0x849]
	ldr r5, _0211D600 ; =0x020A0640
	add r0, r0, #1
	strb r0, [r6, #0x849]
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _0211D510
	mov r0, r10
	mov r1, r4
	bl FUN_ov59_0211d700
	mov r1, r4
	bl  FUN_ov16_020efa9c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	ldrne r2, [r5, #0x78]
	movne r0, #1
	orrne r0, r2, r0, lsl r1
	strne r0, [r5, #0x78]
_0211D510:
	mov r2, #1
	mov r0, r10
	mov r1, #4
	strb r2, [r10, #0x23]
	bl FUN_ov59_0211af2c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D52C:
	cmp r0, #2
	bne _0211D580
	ldr r0, _0211D604 ; =0x0211EC58
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r10, #0xc98]
	cmp r0, #0
	sub r0, r0, #1
	bne _0211D568
	mov r0, r10
	mov r1, #3
	bl FUN_ov59_0211af2c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D568:
	ldr r1, [r3, r0, lsl #2]
	mov r0, r10
	mov r2, r1
	bl FUN_ov59_0211ae78
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D580:
	cmp r0, #3
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xcbc]
	mov r1, r4
	cmp r0, #0
	mov r0, r10
	bne _0211D5AC
	bl FUN_ov59_0211af2c
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5AC:
	bl FUN_ov59_0211af2c
	mov r0, r10
	mov r1, r4
	bl FUN_ov59_0211d608
	mov r1, r0, lsl #0x10
	ldr r0, _0211D5FC ; =0x0209BA20
	mov r2, #1
	mov r1, r1, lsr #0x10
	mov r3, r4
	bl  FUN_ov16_020ee16c
	add r1, r10, #0x1000
	mov r0, #1
	str r0, [r1, #0x20c]
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5E8: .word 0x0211ECA4
_0211D5EC: .word 0x0211EC94
_0211D5F0: .word 0x02099F38
_0211D5F4: .word 0x021DAFE0
_0211D5F8: .word 0x020AF81C
_0211D5FC: .word 0x0209BA20
_0211D600: .word 0x020A0640
_0211D604: .word 0x0211EC58
	arm_func_end FUN_ov59_0211d200

	arm_func_start FUN_ov59_0211d608
FUN_ov59_0211d608: ; 0x0211D608
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r2, [r6, #0xc50]
	ldr r0, [r6, #0xb8c]
	ldr r7, _0211D6F8 ; =0x0209BA20
	add r0, r2, r0, lsl #3
	add r0, r6, r0, lsl #1
	add r0, r0, #0x300
	ldrh r8, [r0, #0x80]
	mov r9, r1
	mov r0, r7
	mov r1, r8
	mov r4, #0
	bl  FUN_ov16_020ee034
	mov r5, r0
	cmp r9, #5
	addls pc, pc, r9, lsl #2
	b _0211D6AC
_0211D650: ; jump table
	b _0211D668 ; case 0
	b _0211D670 ; case 1
	b _0211D678 ; case 2
	b _0211D684 ; case 3
	b _0211D694 ; case 4
	b _0211D6A8 ; case 5
_0211D668:
	mov r4, r8
	b _0211D6AC
_0211D670:
	ldrb r4, [r5, #0x1d]
	b _0211D6AC
_0211D678:
	bl  FUN_ov16_020eef40
_0211D67C:
	mov r4, r0
	b _0211D6AC
_0211D684:
	mov r0, r6
	mov r1, r8
	bl FUN_ov59_0211cb5c
	b _0211D67C
_0211D694:
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl  FUN_ov16_020ee58c
	b _0211D67C
_0211D6A8:
	ldrh r4, [r5, #0x26]
_0211D6AC:
	cmp r9, #4
	bne _0211D6F0
	ldr r0, _0211D6F8 ; =0x0209BA20
	bl FUN_02073f08
	cmp r0, #0
	beq _0211D6D0
	ldrb r0, [r5, #0x1d]
	cmp r0, #9
	beq _0211D6EC
_0211D6D0:
	ldr r0, _0211D6FC ; =0x0209A454
	ldrb r0, [r0, #0x39]
	cmp r0, #0
	beq _0211D6F0
	ldrb r0, [r5, #0x1d]
	cmp r0, #9
	bne _0211D6F0
_0211D6EC:
	mov r4, #0
_0211D6F0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D6F8: .word 0x0209BA20
_0211D6FC: .word 0x0209A454
	arm_func_end FUN_ov59_0211d608

	arm_func_start FUN_ov59_0211d700
FUN_ov59_0211d700: ; 0x0211D700
	ldr r3, [r0, #0xc74]
	ldr r2, [r0, #0xce0]
	cmp r1, #0
	add r2, r3, r2
	mov r3, #0
	beq _0211D72C
	cmp r1, #1
	moveq r1, #0x30
	mlaeq r0, r2, r1, r0
	ldreqh r3, [r0, #0xa4]
	b _0211D738
_0211D72C:
	mov r1, #0x30
	mla r0, r2, r1, r0
	ldrh r3, [r0, #0xa0]
_0211D738:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov59_0211d700

	arm_func_start FUN_ov59_0211d740
FUN_ov59_0211d740: ; 0x0211D740
	ldr r12, _0211D754 ; =MI_CpuFill8
	add r0, r0, #0xce0
	mov r1, #0
	mov r2, #0x14
	bx r12
_0211D754: .word MI_CpuFill8
	arm_func_end FUN_ov59_0211d740

	arm_func_start FUN_ov59_0211d758
FUN_ov59_0211d758: ; 0x0211D758
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r1, #0x20
	mov r4, r0
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	ldr r1, [r4, #0xce0]
	mov r0, r0, asr #3
	mul r1, r0, r1
	add r6, r1, #0x40
	mov r0, r6, lsl #0x10
	mov r5, #0x68
	ldr r1, [r4, #0xc3c]
	str r6, [r4, #0xce4]
	mov r2, r0, asr #0x10
	ldr r0, _0211D7D4 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r5
	mov r2, #1
	bl  FUN_ov16_02113b78
	ldr r0, _0211D7D8 ; =0x02099EB4
	mov r2, r5
	ldr r0, [r0]
	mov r3, r6
	mov r1, #8
	bl  FUN_ov16_0210fd0c
	mov r0, r4
	bl FUN_ov59_0211ebc8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211D7D4: .word 0x02099F38
_0211D7D8: .word 0x02099EB4
	arm_func_end FUN_ov59_0211d758

	arm_func_start FUN_ov59_0211d7dc
FUN_ov59_0211d7dc: ; 0x0211D7DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r1, _0211D8CC ; =0x02099EB4
	mov r10, r0
	ldr r0, [r1]
	add r1, sp, #4
	ldr r5, [r10, #0xc3c]
	mov r6, #1
	mov r7, #0x68
	mov r4, #0x40
	mov r9, #0x60
	bl  FUN_ov16_0210f48c
	ldrsh r0, [sp, #4]
	cmp r0, #0x68
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r0, #0x78
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsh r2, [sp, #6]
	ldr r1, [r10, #0xce8]
	ldr r0, [r10, #0xce4]
	sub r1, r2, r1
	add r8, r0, r1
	cmp r8, r4
	movlt r8, r4
	cmp r8, r9
	movgt r8, r9
	ldrsh r2, [sp, #6]
	sub r1, r8, #0x40
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r1, r0, asr #2
	mov r0, r10
	str r2, [r10, #0xce8]
	str r8, [r10, #0xce4]
	str r1, [r10, #0xce0]
	bl FUN_ov59_0211c504
	mov r0, r10
	bl FUN_ov59_0211c0c0
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211D8D0 ; =0x02099F38
	mov r3, r7, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r0, _0211D8CC ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r8
	mov r1, #8
	bl  FUN_ov16_0210fd0c
	mov r0, r10
	bl FUN_ov59_0211ebc8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8CC: .word 0x02099EB4
_0211D8D0: .word 0x02099F38
	arm_func_end FUN_ov59_0211d7dc

	arm_func_start FUN_ov59_0211d8d4
FUN_ov59_0211d8d4: ; 0x0211D8D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #6
	ldreq r0, [r4, #0xce0]
	ldr r2, [r4, #0xce0]
	cmpeq r0, #0
	sub r0, r1, #6
	rsb r0, r0, r0, lsl #3
	mov r3, #1
	rsb r0, r0, #8
	moveq r3, #0
	subs r0, r2, r0
	str r0, [r4, #0xce0]
	bpl _0211D91C
	mov r0, #0
	cmp r1, #7
	str r0, [r4, #0xce0]
	moveq r3, r0
_0211D91C:
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov59_0211c504
	mov r0, r4
	bl FUN_ov59_0211c0c0
	mov r0, r4
	bl FUN_ov59_0211d758
	ldr r0, _0211D94C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211D94C: .word 0x0209AC44
	arm_func_end FUN_ov59_0211d8d4

	arm_func_start FUN_ov59_0211d950
FUN_ov59_0211d950: ; 0x0211D950
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0xa
	ldreq r0, [r4, #0xce0]
	ldr r2, [r4, #0xce0]
	cmpeq r0, #8
	sub r0, r1, #9
	rsb r0, r0, r0, lsl #3
	add r0, r0, #1
	mov r3, #1
	add r0, r2, r0
	moveq r3, #0
	str r0, [r4, #0xce0]
	cmp r0, #8
	ble _0211D99C
	mov r0, #8
	cmp r1, #9
	str r0, [r4, #0xce0]
	moveq r3, #0
_0211D99C:
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov59_0211c504
	mov r0, r4
	bl FUN_ov59_0211c0c0
	mov r0, r4
	bl FUN_ov59_0211d758
	ldr r0, _0211D9CC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211D9CC: .word 0x0209AC44
	arm_func_end FUN_ov59_0211d950

	arm_func_start FUN_ov59_0211d9d0
FUN_ov59_0211d9d0: ; 0x0211D9D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xcec]
	cmp r2, #0xf
	addlt r0, r2, #1
	strlt r0, [r4, #0xcec]
	ldmltfd sp!, {r4, pc}
	ldr r2, [r4, #0xcf0]
	cmp r2, #0
	bne _0211DA18
	cmp r1, #7
	beq _0211DA0C
	cmp r1, #9
	beq _0211DA14
	b _0211DA18
_0211DA0C:
	bl FUN_ov59_0211d8d4
	b _0211DA18
_0211DA14:
	bl FUN_ov59_0211d950
_0211DA18:
	ldr r0, [r4, #0xcf0]
	ldr r2, _0211DA44 ; =0x66666667
	add r3, r0, #1
	mov r0, r3, lsr #0x1f
	smull r1, r12, r2, r3
	add r12, r0, r12, asr #1
	mov r2, #5
	smull r0, r1, r2, r12
	sub r12, r3, r0
	str r12, [r4, #0xcf0]
	ldmfd sp!, {r4, pc}
_0211DA44: .word 0x66666667
	arm_func_end FUN_ov59_0211d9d0

	arm_func_start FUN_ov59_0211da48
FUN_ov59_0211da48: ; 0x0211DA48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211DBA0 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #7
	addeq r0, r6, #0x1000
	ldreq r0, [r0, #0x200]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211DAAC
_0211DA8C:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xc6c]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0xddc]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211DAAC:
	cmp r4, #4
	blt _0211DA8C
	ldr r0, _0211DBA4 ; =0x0209A0F4
	ldr r4, _0211DBA8 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #1
	bne _0211DAFC
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211DAFC:
	tst r5, #1
	beq _0211DB10
	mov r0, r6
	bl FUN_ov59_0211dbac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB10:
	tst r5, #2
	beq _0211DB24
	mov r0, r6
	bl FUN_ov59_0211dd30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB24:
	tst r5, #0x800
	beq _0211DB38
	mov r0, r6
	bl FUN_ov59_0211de5c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB38:
	tst r5, #0x200
	beq _0211DB4C
	mov r0, r6
	bl FUN_ov59_0211deb4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB4C:
	tst r5, #0x100
	beq _0211DB60
	mov r0, r6
	bl FUN_ov59_0211df20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB60:
	tst r5, #0x20
	beq _0211DB74
	mov r0, r6
	bl FUN_ov59_0211df88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB74:
	tst r5, #0x10
	beq _0211DB88
	mov r0, r6
	bl FUN_ov59_0211e020
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DB88:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov59_0211e0b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DBA0: .word 0x02099ED4
_0211DBA4: .word 0x0209A0F4
_0211DBA8: .word 0x02099EB4
	arm_func_end FUN_ov59_0211da48

	arm_func_start FUN_ov59_0211dbac
FUN_ov59_0211dbac: ; 0x0211DBAC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	mov r5, #1
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0211DD04
_0211DBC8: ; jump table
	b _0211DBE4 ; case 0
	b _0211DC44 ; case 1
	b _0211DC84 ; case 2
	b _0211DCD8 ; case 3
	b _0211DCEC ; case 4
	b _0211DD04 ; case 5
	b _0211DCEC ; case 6
_0211DBE4:
	mov r1, #4
	bl FUN_ov59_0211d608
	cmp r0, #0
	beq _0211DC00
	ldr r0, [r4, #0xb88]
	cmp r0, #0
	beq _0211DC10
_0211DC00:
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC10:
	mov r0, r4
	bl FUN_ov59_0211b8ac
	cmp r0, #0
	bne _0211DC3C
	mov r0, r4
	mov r1, #6
	bl FUN_ov59_0211af2c
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC3C:
	str r5, [r4, #0xddc]
	b _0211DD04
_0211DC44:
	mov r1, r5
	bl FUN_ov59_0211d700
	cmp r0, #0
	bne _0211DC64
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC64:
	mov r0, r4
	mov r1, #3
	str r5, [r4, #0xde4]
	bl FUN_ov59_0211e444
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #0x15
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC84:
	ldr r6, [r4, #0xc98]
	mov r1, #3
	bl FUN_ov59_0211d608
	cmp r0, #0
	cmpeq r6, #0
	bne _0211DCAC
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DCAC:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x214]
	cmp r0, #0
	cmpeq r6, #2
	bne _0211DCD0
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DCD0:
	str r5, [r4, #0xdec]
	b _0211DD04
_0211DCD8:
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, r5
	str r1, [r4, #0xdf4]
	bl FUN_0202cf6c
	b _0211DD04
_0211DCEC:
	ldr r0, _0211DD2C ; =0x0209AC44
	add r2, r4, #0x1000
	mov r1, r5
	str r1, [r2, #0x200]
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DD04:
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #3
	bl FUN_ov59_0211e444
	ldr r0, _0211DD2C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211DD2C: .word 0x0209AC44
	arm_func_end FUN_ov59_0211dbac

	arm_func_start FUN_ov59_0211dd30
FUN_ov59_0211dd30: ; 0x0211DD30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r1, [r6, #0x10]
	cmp r1, #4
	cmpne r1, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211DE28
_0211DD54: ; jump table
	b _0211DD64 ; case 0
	b _0211DD98 ; case 1
	b _0211DDB0 ; case 2
	b _0211DDBC ; case 3
_0211DD64:
	ldr r0, _0211DE50 ; =0x0209A454
	mov r1, #0
	ldrb r2, [r0, #0x33]
	cmp r2, #0
	movne r1, #0x5a
	bne _0211DD88
	ldrb r0, [r0, #0x34]
	cmp r0, #0
	movne r1, #0x71
_0211DD88:
	mov r0, r6
	mov r2, r1
	bl FUN_ov59_0211ae78
	b _0211DE28
_0211DD98:
	mov r1, #0
	bl FUN_ov59_0211af2c
	add r0, r6, #0x1000
	mov r1, #1
	str r1, [r0, #0x208]
	b _0211DE28
_0211DDB0:
	mov r1, #0
	bl FUN_ov59_0211af2c
	b _0211DE28
_0211DDBC:
	mov r2, #0
	mov r1, #0x98
	mov r0, #0x60
	mov r8, #2
	ldr r5, [r6, #0xc48]
	str r1, [r6, #0xcc8]
	str r2, [r6, #0xcbc]
	mov r4, #3
	str r0, [r6, #0xccc]
	mov r9, #1
	ldr r7, _0211DE54 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl  FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r8
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211DE58 ; =0x0209AC44
	mov r1, #4
	str r9, [r6, #0xdf4]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DE28:
	ldr r0, [r6, #0x10]
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	mov r1, #1
	bl FUN_ov59_0211e444
	ldr r0, _0211DE58 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211DE50: .word 0x0209A454
_0211DE54: .word 0x02099F38
_0211DE58: .word 0x0209AC44
	arm_func_end FUN_ov59_0211dd30

	arm_func_start FUN_ov59_0211de5c
FUN_ov59_0211de5c: ; 0x0211DE5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bne _0211DE98
	mov r4, #2
	mov r1, r4
	bl FUN_ov59_0211af2c
	mov r0, r5
	mov r1, r4
	bl FUN_ov59_0211e444
	ldr r0, _0211DEB0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211DE98:
	cmp r1, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _0211DEB0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211DEB0: .word 0x0209AC44
	arm_func_end FUN_ov59_0211de5c

	arm_func_start FUN_ov59_0211deb4
FUN_ov59_0211deb4: ; 0x0211DEB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0xb90]
	ldr r2, [r4, #0xb8c]
	sub r0, r1, #1
	add r0, r2, r0
	bl FUN_0201f9bc
	mov r0, r4
	str r1, [r4, #0xb8c]
	bl FUN_ov59_0211ba58
	mov r0, r4
	bl FUN_ov59_0211b8f4
	mov r0, r4
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211bb20
	mov r0, r4
	mov r1, #4
	bl FUN_ov59_0211e444
	ldr r0, _0211DF1C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211DF1C: .word 0x0209AC44
	arm_func_end FUN_ov59_0211deb4

	arm_func_start FUN_ov59_0211df20
FUN_ov59_0211df20: ; 0x0211DF20
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xb8c]
	ldr r1, [r4, #0xb90]
	add r0, r0, #1
	bl FUN_0201f9bc
	mov r0, r4
	str r1, [r4, #0xb8c]
	bl FUN_ov59_0211ba58
	mov r0, r4
	bl FUN_ov59_0211b8f4
	mov r0, r4
	bl FUN_ov59_0211bdc0
	mov r0, r4
	bl FUN_ov59_0211bb20
	mov r0, r4
	mov r1, #5
	bl FUN_ov59_0211e444
	ldr r0, _0211DF84 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211DF84: .word 0x0209AC44
	arm_func_end FUN_ov59_0211df20

	arm_func_start FUN_ov59_0211df88
FUN_ov59_0211df88: ; 0x0211DF88
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0211DFA8
	bl FUN_ov59_0211deb4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211DFA8:
	cmp r1, #3
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r6, [r0, #0xc48]
	mov r3, #1
	mov r2, #0x38
	mov r5, #2
	mov r1, #0x60
	str r3, [r0, #0xcbc]
	str r2, [r0, #0xcc8]
	str r1, [r0, #0xccc]
	ldr r4, _0211E018 ; =0x02099F38
	str r3, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r5
	add r2, r5, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211E01C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211E018: .word 0x02099F38
_0211E01C: .word 0x0209AC44
	arm_func_end FUN_ov59_0211df88

	arm_func_start FUN_ov59_0211e020
FUN_ov59_0211e020: ; 0x0211E020
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0211E038
	bl FUN_ov59_0211df20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E038:
	cmp r1, #3
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, [r0, #0xc48]
	mov r3, #0
	mov r2, #0x98
	mov r1, #0x60
	mov r4, #3
	mov r7, #2
	str r3, [r0, #0xcbc]
	str r2, [r0, #0xcc8]
	str r1, [r0, #0xccc]
	mov r0, #1
	ldr r6, _0211E0A8 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl  FUN_ov16_02113ec0
	ldr r0, [r6]
	mov r1, r5
	mov r3, r7
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211E0AC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E0A8: .word 0x02099F38
_0211E0AC: .word 0x0209AC44
	arm_func_end FUN_ov59_0211e020

	arm_func_start FUN_ov59_0211e0b0
FUN_ov59_0211e0b0: ; 0x0211E0B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r8, r0
	ldr r6, [r8, #0x10]
	cmp r6, #3
	cmpne r6, #4
	cmpne r6, #6
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mvn r4, #0
	tst r1, #0x40
	movne r4, #0
	bne _0211E0EC
	tst r1, #0x80
	movne r4, #1
_0211E0EC:
	cmp r4, #0
	addlt sp, sp, #0x24
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr lr, _0211E29C ; =0x0211ECDC
	add r12, sp, #0xc
	mov r5, #0x24
	mov r7, r12
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	add r3, r7, r6, lsl #3
	ldmia lr, {r0, r1}
	mla r5, r6, r5, r8
	ldr r2, _0211E2A0 ; =0x0211EC88
	stmia r12, {r0, r1}
	add r7, sp, #0
	ldmia r2, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r5, [r5, #0xc50]
	ldr r0, [r3, r4, lsl #2]
	ldr r1, [r7, r6, lsl #2]
	add r9, r5, r0
	mov r0, r9
	bl FUN_0201f9bc
	mov r7, r1
	cmp r6, #0
	bne _0211E184
	cmp r4, #0
	cmpeq r5, #0
	bne _0211E16C
	mov r0, r8
	bl FUN_ov59_0211deb4
	b _0211E284
_0211E16C:
	cmp r4, #1
	cmpeq r5, #7
	bne _0211E284
	mov r0, r8
	bl FUN_ov59_0211df20
	b _0211E284
_0211E184:
	cmp r6, #1
	bne _0211E284
	mov r7, r9
	cmp r4, #0
	bne _0211E210
	cmp r9, #0
	bge _0211E284
	ldr r0, [r8, #0xce0]
	mov r7, #0
	cmp r0, #0
	ble _0211E1DC
	sub r1, r0, #1
	mov r0, r8
	str r1, [r8, #0xce0]
	bl FUN_ov59_0211c504
	mov r0, r8
	bl FUN_ov59_0211c0c0
	mov r0, r8
	bl FUN_ov59_0211d758
	mov r0, r8
	mov r1, #7
	b _0211E280
_0211E1DC:
	bgt _0211E284
	mov r1, #8
	mov r0, r8
	str r1, [r8, #0xce0]
	mov r7, #7
	bl FUN_ov59_0211c504
	mov r0, r8
	bl FUN_ov59_0211c0c0
	mov r0, r8
	bl FUN_ov59_0211d758
	mov r0, r8
	mov r1, #0xa
	b _0211E280
_0211E210:
	cmp r9, #7
	ble _0211E284
	ldr r0, [r8, #0xce0]
	mov r7, #7
	cmp r0, #8
	bge _0211E254
	add r1, r0, #1
	mov r0, r8
	str r1, [r8, #0xce0]
	bl FUN_ov59_0211c504
	mov r0, r8
	bl FUN_ov59_0211c0c0
	mov r0, r8
	bl FUN_ov59_0211d758
	mov r0, r8
	mov r1, #9
	b _0211E280
_0211E254:
	blt _0211E284
	mov r7, #0
	mov r0, r8
	str r7, [r8, #0xce0]
	bl FUN_ov59_0211c504
	mov r0, r8
	bl FUN_ov59_0211c0c0
	mov r0, r8
	bl FUN_ov59_0211d758
	mov r0, r8
	mov r1, #6
_0211E280:
	bl FUN_ov59_0211e444
_0211E284:
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FUN_ov59_0211d01c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211E29C: .word 0x0211ECDC
_0211E2A0: .word 0x0211EC88
	arm_func_end FUN_ov59_0211e0b0

	arm_func_start FUN_ov59_0211e2a4
FUN_ov59_0211e2a4: ; 0x0211E2A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211E43C ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r8, r2
	mov r11, #2
	mov r9, r1
	mov r1, r11
	mov r2, #1
	mov r7, r3
	mov r5, #0
	mov r6, #0x64
	bl  FUN_ov16_02112724
	add r1, r10, r9, lsl #2
	str r0, [r1, #0xc10]
	add r1, r10, r8, lsl #2
	ldr r1, [r1, #0xbc8]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, #1
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, #1
	mov r3, r7
	bl  FUN_ov16_0211401c
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r8
	mov r2, #1
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, #1
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r2, #1
	mov r1, r8
	mov r3, r11
	bl  FUN_ov16_02113ec0
	ldr r0, [r10, #0x10]
	ldr r1, [sp, #0x38]
	cmp r0, #1
	mov r2, r1, lsl #0x10
	mov r4, #1
	addeq r6, r11, #0x260
	ldr r0, _0211E440 ; =0x02099EB4
	stmia sp, {r4, r6}
	ldr r0, [r0]
	mov r1, r4
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	movs r6, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	ldrb r0, [sp, #0x40]
	strb r5, [r6, #0x10]
	strb r5, [r6, #0xf]
	strh r5, [r6, #0xc]
	cmp r0, #1
	addne sp, sp, #8
	strb r5, [r6, #0x11]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	add r2, r7, #1
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E43C: .word 0x02099F38
_0211E440: .word 0x02099EB4
	arm_func_end FUN_ov59_0211e2a4

	arm_func_start FUN_ov59_0211e444
FUN_ov59_0211e444: ; 0x0211E444
	ldr r0, _0211E454 ; =0x02099EB4
	ldr r12, _0211E458 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211E454: .word 0x02099EB4
_0211E458: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov59_0211e444

	arm_func_start FUN_ov59_0211e45c
FUN_ov59_0211e45c: ; 0x0211E45C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211E50C ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211E510 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0xc10]
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl  FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E50C: .word 0x02099EB4
_0211E510: .word 0x02099F38
	arm_func_end FUN_ov59_0211e45c

	arm_func_start FUN_ov59_0211e514
FUN_ov59_0211e514: ; 0x0211E514
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211E688 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #7
	addeq r0, r6, #0x1000
	ldreq r0, [r0, #0x200]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211E578
_0211E558:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xc6c]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0xddc]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211E578:
	cmp r4, #4
	blt _0211E558
	ldr r4, _0211E68C ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211E63C
_0211E5A4: ; jump table
	b _0211E63C ; case 0
	b _0211E5BC ; case 1
	b _0211E5EC ; case 2
	b _0211E604 ; case 3
	b _0211E620 ; case 4
	b _0211E5D4 ; case 5
_0211E5BC:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov59_0211e690
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E5D4:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov59_0211e838
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E5EC:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov59_0211e868
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E604:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov59_0211e940
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E620:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov59_0211e940
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E63C:
	ldr r1, [r6, #0x10]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E64C: ; jump table
	b _0211E668 ; case 0
	b _0211E668 ; case 1
	b _0211E668 ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	b _0211E678 ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 5
	b _0211E678 ; case 6
_0211E668:
	mov r0, r6
	mov r2, #0
	bl FUN_ov59_0211ea38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E678:
	mov r0, r6
	mov r1, #0
	bl FUN_ov59_0211cf70
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E688: .word 0x02099ED4
_0211E68C: .word 0x02099EB4
	arm_func_end FUN_ov59_0211e514

	arm_func_start FUN_ov59_0211e690
FUN_ov59_0211e690: ; 0x0211E690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, r0
	mov r8, r1
	add r2, r9, #0x1000
	str r8, [r2, #0x210]
	cmp r8, #0x22
	sub r4, r8, #0xb
	sub r5, r8, #0x13
	sub r10, r8, #0x1c
	ldr r6, [r9, #0xc50]
	ldr r7, [r9, #0xc74]
	bgt _0211E704
	cmp r8, #0x22
	bge _0211E74C
	cmp r8, #0xa
	addls pc, pc, r8, lsl #2
	b _0211E75C
_0211E6D8: ; jump table
	b _0211E75C ; case 0
	b _0211E75C ; case 1
	b _0211E75C ; case 2
	b _0211E75C ; case 3
	b _0211E75C ; case 4
	b _0211E75C ; case 5
	b _0211E72C ; case 6
	b _0211E72C ; case 7
	b _0211E710 ; case 8
	b _0211E73C ; case 9
	b _0211E73C ; case 10
_0211E704:
	cmp r8, #0x23
	beq _0211E754
	b _0211E75C
_0211E710:
	ldr r0, _0211E834 ; =0x02099EB4
	add r1, sp, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210f48c
	ldrsh r0, [sp, #2]
	str r0, [r9, #0xce8]
	b _0211E75C
_0211E72C:
	mov r2, #0
	str r2, [r9, #0xcec]
	bl FUN_ov59_0211d8d4
	b _0211E75C
_0211E73C:
	mov r2, #0
	str r2, [r9, #0xcec]
	bl FUN_ov59_0211d950
	b _0211E75C
_0211E74C:
	bl FUN_ov59_0211df88
	b _0211E75C
_0211E754:
	mov r0, r9
	bl FUN_ov59_0211e020
_0211E75C:
	cmp r8, #0xb
	blt _0211E7A0
	cmp r8, #0x12
	bgt _0211E7A0
	cmp r4, r6
	bne _0211E780
_0211E774:
	mov r0, r9
	bl FUN_ov59_0211dbac
	b _0211E814
_0211E780:
	mov r5, #0
	mov r0, r9
	mov r1, r5
	mov r2, r4
	bl FUN_ov59_0211d01c
	mov r0, r9
	mov r1, r5
	b _0211E80C
_0211E7A0:
	cmp r8, #0x13
	blt _0211E7E0
	cmp r8, #0x1a
	bgt _0211E7E0
	cmp r5, r7
	bne _0211E7BC
	b _0211E774
_0211E7BC:
	mov r4, #1
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl FUN_ov59_0211d01c
	mov r0, r9
	mov r1, r4
	mov r2, r4
	b _0211E810
_0211E7E0:
	cmp r8, #0x1c
	blt _0211E814
	cmp r8, #0x20
	bgt _0211E814
	mov r4, #2
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl FUN_ov59_0211d01c
	mov r0, r9
	mov r1, r4
_0211E80C:
	mov r2, #1
_0211E810:
	bl FUN_ov59_0211ea38
_0211E814:
	cmp r8, #0x25
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, #1
	bl FUN_ov59_0211cf70
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E834: .word 0x02099EB4
	arm_func_end FUN_ov59_0211e690

	arm_func_start FUN_ov59_0211e838
FUN_ov59_0211e838: ; 0x0211E838
	stmfd sp!, {r3, lr}
	cmp r1, #7
	beq _0211E860
	cmp r1, #8
	beq _0211E858
	cmp r1, #9
	beq _0211E860
	ldmfd sp!, {r3, pc}
_0211E858:
	bl FUN_ov59_0211d7dc
	ldmfd sp!, {r3, pc}
_0211E860:
	bl FUN_ov59_0211d9d0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov59_0211e838

	arm_func_start FUN_ov59_0211e868
FUN_ov59_0211e868: ; 0x0211E868
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x21
	bgt _0211E8B8
	bge _0211E91C
	cmp r4, #5
	bgt _0211E8AC
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _0211E924
_0211E894: ; jump table
	b _0211E924 ; case 0
	b _0211E91C ; case 1
	b _0211E8F8 ; case 2
	b _0211E910 ; case 3
	b _0211E900 ; case 4
	b _0211E908 ; case 5
_0211E8AC:
	cmp r4, #0x1b
	beq _0211E91C
	b _0211E924
_0211E8B8:
	cmp r4, #0x23
	bgt _0211E8D0
	bge _0211E910
	cmp r4, #0x22
	beq _0211E910
	b _0211E924
_0211E8D0:
	cmp r4, #0x26
	bgt _0211E924
	cmp r4, #0x24
	blt _0211E924
	beq _0211E91C
	cmp r4, #0x25
	beq _0211E910
	cmp r4, #0x26
	beq _0211E91C
	b _0211E924
_0211E8F8:
	bl FUN_ov59_0211de5c
	b _0211E924
_0211E900:
	bl FUN_ov59_0211deb4
	b _0211E924
_0211E908:
	bl FUN_ov59_0211df20
	b _0211E924
_0211E910:
	mov r0, r5
	bl FUN_ov59_0211dbac
	b _0211E924
_0211E91C:
	mov r0, r5
	bl FUN_ov59_0211dd30
_0211E924:
	cmp r4, #0x1c
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r4, #0x20
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov59_0211dbac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov59_0211e868

	arm_func_start FUN_ov59_0211e940
FUN_ov59_0211e940: ; 0x0211E940
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _0211EA34 ; =0x02099EB4
	mov r8, r0
	mov r5, #0
	mov r7, r1
	ldr r0, [r4]
	add r1, sp, #4
	str r5, [sp, #8]
	mov r6, r2
	bl  FUN_ov16_0210f48c
	str r5, [sp]
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	ldr r0, [r4]
	add r3, sp, #8
	bl  FUN_ov16_0210ecb8
	cmp r6, #0
	bne _0211EA24
	cmp r7, #0x1b
	bgt _0211E9A0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	b _0211E9C0
_0211E9A0:
	cmp r7, #0x26
	bgt _0211E9C0
	cmp r7, #0x21
	blt _0211E9C0
	cmpne r7, #0x24
	cmpne r7, #0x26
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E9C0:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [r8, #0x10]
	movne r5, #1
	cmp r0, #1
	cmpeq r7, #8
	bne _0211E9E4
	mov r0, r8
	bl FUN_ov59_0211d7dc
_0211E9E4:
	ldr r1, [r8, #0x10]
	cmp r1, #4
	cmpne r1, #6
	beq _0211EA0C
	ldr r3, [sp, #8]
	mov r0, r8
	mov r2, r5
	bl FUN_ov59_0211eaf0
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EA0C:
	ldr r2, [sp, #8]
	mov r0, r8
	mov r1, r5
	bl FUN_ov59_0211cfa4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EA24:
	add r0, r8, #0x1000
	str r5, [r0, #0x210]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EA34: .word 0x02099EB4
	arm_func_end FUN_ov59_0211e940

	arm_func_start FUN_ov59_0211ea38
FUN_ov59_0211ea38: ; 0x0211EA38
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r1, #0x24
	mla r3, r6, r1, r0
	ldr r1, [r0, #0xc98]
	ldr lr, [r0, #0xc10]
	ldr r12, [r0, #0xc30]
	ldr r4, [r0, #0xc2c]
	cmp r1, #2
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0x214]
	str r12, [sp, #8]
	str r4, [sp, #0xc]
	ldr r1, [r3, #0xc60]
	ldr r12, [r3, #0xc5c]
	cmpeq r0, #0
	mov r0, r1, lsl #0x10
	mov r5, r2
	mov r2, r0, asr #0x10
	mov r3, r12, lsl #0x10
	ldr r0, _0211EAEC ; =0x02099F38
	str r2, [sp]
	mov r4, #3
	str lr, [sp, #4]
	add r1, sp, #4
	ldr r0, [r0]
	ldr r1, [r1, r6, lsl #2]
	mov r2, r4
	mov r3, r3, asr #0x10
	moveq r5, #0
	bl  FUN_ov16_02113b78
	add r1, sp, #4
	mov r2, #1
	cmp r5, #0
	moveq r2, #0
	str r2, [sp]
	ldr r0, _0211EAEC ; =0x02099F38
	ldr r1, [r1, r6, lsl #2]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0211EAEC: .word 0x02099F38
	arm_func_end FUN_ov59_0211ea38

	arm_func_start FUN_ov59_0211eaf0
FUN_ov59_0211eaf0: ; 0x0211EAF0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r6, [r4, #0xc10]
	ldr r5, [r4, #0xc30]
	ldr r8, [r4, #0xc2c]
	str r6, [sp, #0x1c]
	str r5, [sp, #0x20]
	ldr r0, _0211EBBC ; =0x0211EC7C
	ldr r6, _0211EBC0 ; =0x0211EC64
	add r7, sp, #0x10
	add r5, sp, #4
	movs r12, r2
	mov lr, r1
	ldmia r0, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldmia r6, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	str r8, [sp, #0x24]
	mov r2, #3
	beq _0211EB74
	add r0, r4, #0x1000
	ldrh r1, [r3, #8]
	ldr r3, [r0, #0x210]
	mov r12, #0
	cmp r3, r1
	bne _0211EB74
	ldr r0, [r7, lr, lsl #2]
	cmp r3, r0
	blt _0211EB74
	ldr r0, [r5, lr, lsl #2]
	cmp r3, r0
	movle r12, #1
_0211EB74:
	ldr r0, [r4, #0xc98]
	add r1, sp, #0x1c
	cmp r0, #2
	addeq r0, r4, #0x1000
	ldreq r0, [r0, #0x214]
	mov r3, #1
	cmpeq r0, #0
	moveq r12, #0
	cmp r12, #0
	moveq r3, #0
	str r3, [sp]
	ldr r0, _0211EBC4 ; =0x02099F38
	ldr r1, [r1, lr, lsl #2]
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211EBBC: .word 0x0211EC7C
_0211EBC0: .word 0x0211EC64
_0211EBC4: .word 0x02099F38
	arm_func_end FUN_ov59_0211eaf0

	arm_func_start FUN_ov59_0211ebc8
FUN_ov59_0211ebc8: ; 0x0211EBC8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r1, #1
	bl FUN_ov59_0211d700
	cmp r0, #0
	mov r1, #3
	bne _0211EC14
	mov r2, #5
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov59_0211e45c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211EC14:
	mov r0, r4
	mov r2, r1
	mov r3, #4
	str r1, [sp]
	bl FUN_ov59_0211e45c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov59_0211ebc8

	arm_func_start FUN_ov59_0211ec30
FUN_ov59_0211ec30: ; 0x0211EC30
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov59_0211ec30

	arm_func_start FUN_ov59_0211ec44
FUN_ov59_0211ec44: ; 0x0211EC44
	bx lr
	arm_func_end FUN_ov59_0211ec44
_0211EC48:
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xF8, 0xEE, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x18, 0xEF, 0x11, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0xEF, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x28, 0xEE, 0x11, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x38, 0xEE, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0xD8, 0xEE, 0x11, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x48, 0xEE, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x58, 0xEE, 0x11, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x68, 0xEE, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0x78, 0xEE, 0x11, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x88, 0xEE, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x98, 0xEE, 0x11, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0xA8, 0xEE, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xB8, 0xEE, 0x11, 0x02
	.byte 0x0D, 0x00, 0x00, 0x00, 0xC8, 0xEE, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xE8, 0xEE, 0x11, 0x02
	.byte 0x0F, 0x00, 0x00, 0x00, 0x28, 0xEF, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00, 0x18, 0xEE, 0x11, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov59_0211ed8c
FUN_ov59_0211ed8c: ; 0x0211ED8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211EDD4 ; =0x0211EE00
	str r0, [r4, #8]
	ldr r0, _0211EDD8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0211EDDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211EDD4: .word 0x0211EE00
_0211EDD8: .word 0x00009CCD
_0211EDDC: .word 0x0000EA3C
	arm_func_end FUN_ov59_0211ed8c
	; 0x0211EDE0


	.rodata
	.incbin "/incbin/overlay59_rodata.bin"

	.bss
	.space 0x0
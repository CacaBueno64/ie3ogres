
	.include "/macros/function.inc"
	.include "/include/overlay60.inc"

	.text
	arm_func_start FUN_ov60_02119f00
FUN_ov60_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0211A08C ; =0x020A0640
	mov r6, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	ldreqb r0, [r1, #0x86]
	cmpeq r0, #0
	beq _02119F28
	mov r0, #6
	bl  FUN_ov16_020f3f60
_02119F28:
	ldr r0, [r6, #4]
	bl FUN_0204204c
	cmp r0, #0x4f
	bne _02119F54
	ldr r4, _0211A090 ; =0x0209A11C
	ldr r0, [r4]
	bl FUN_0206c9a0
	ldr r0, [r4]
	bl FUN_0206c8dc
	ldr r0, _0211A094 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
_02119F54:
	mov r4, #1
	mov r1, r4
	add r0, r6, #0x33c0
	mov r5, #0
	bl FUN_0206c158
	mov r0, #0x4000000
	ldr r1, [r0]
	ldr r0, _0211A098 ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r6, #8]
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211A09C ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r6, #0x14
	mov r1, r5
	mov r2, #0x60
	bl MI_CpuFill8
	add r0, r6, #0x3000
	strb r5, [r0, #0x3bc]
	mov r0, r6
	str r4, [r6, #0x14]
	str r5, [r6, #0x74]
	str r5, [r6, #0x78]
	str r5, [r6, #0x7c]
	bl FUN_ov60_0211af6c
	mov r0, r6
	bl FUN_ov60_0211b0a8
	mov r0, r6
	bl FUN_ov60_0211b120
	mov r0, r6
	bl FUN_ov60_0211bd70
	b _0211A000
_02119FF0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov60_0211ddc4
	add r5, r5, #1
_0211A000:
	cmp r5, #5
	blt _02119FF0
	mov r0, r6
	add r1, r6, #0x3000
	mov r4, #0
	str r4, [r1, #0x364]
	bl FUN_ov60_0211a3d8
	add r5, r6, #0x3000
	ldr r2, [r5, #0x140]
	mov r0, r6
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov lr, r1, asr #3
	mov r12, r2, lsr #0x1f
	rsb r2, r12, r2, lsl #29
	mov r1, r4
	mov r3, r4
	add r2, r12, r2, ror #29
	str lr, [r5, #0x1b4]
	bl FUN_ov60_0211dde4
	mov r0, r6
	bl FUN_ov60_0211bea0
	mov r0, r6
	bl FUN_ov60_0211c54c
	mov r0, r6
	bl FUN_ov60_0211bad0
	mov r0, r5
	ldr r1, _0211A08C ; =0x020A0640
	str r4, [r6, #0xc]
	str r4, [r0, #0x3b8]
	ldrb r0, [r1, #0x87]
	cmp r0, #0
	moveq r4, #5
	str r4, [r6, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A08C: .word 0x020A0640
_0211A090: .word 0x0209A11C
_0211A094: .word 0x0209A0AC
_0211A098: .word 0x02099EB4
_0211A09C: .word 0x02099ED4
	arm_func_end FUN_ov60_02119f00

	arm_func_start FUN_ov60_0211a0a0
FUN_ov60_0211a0a0: ; 0x0211A0A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, _0211A1FC ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	add r0, r4, #0x33c0
	bl FUN_0206c270
	mov r1, #0x4000000
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r0, r0, r2, lsl #8
	str r0, [r1]
	add r0, r4, #0x3000
	ldrb r1, [r0, #0x14c]
	cmp r1, #0
	bne _0211A10C
	ldr r0, [r0, #0x144]
	cmp r0, #0x114
	bgt _0211A0F8
	ldr r0, _0211A200 ; =0x020AF81C
	mov r1, #0x16
	b _0211A100
_0211A0F8:
	ldr r0, _0211A200 ; =0x020AF81C
	mov r1, #0x11
_0211A100:
	bl FUN_02044658
	mov r1, #0
	str r1, [r0]
_0211A10C:
	ldr r0, _0211A204 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A208 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov60_0211dd18
	mov r0, r4
	bl FUN_ov60_0211d5b0
	mov r0, r4
	bl FUN_ov60_0211d840
	mov r0, r4
	bl FUN_ov60_0211daec
	mov r0, r4
	bl FUN_ov60_0211d340
	mov r0, r4
	bl FUN_ov60_0211c36c
	mov r0, r4
	bl FUN_ov60_0211b168
	mov r0, r4
	bl FUN_ov60_0211b0dc
	mov r0, r4
	bl FUN_ov60_0211c818
	mov r0, r4
	mov r6, #2
	mov r1, r6
	bl FUN_ov60_0211afcc
	ldr r0, _0211A20C ; =0x020A9C40
	mov r5, #1
	mov r1, r5
	bl FUN_02045dec
	ldr r0, _0211A210 ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	beq _0211A1A0
	b _0211A1BC
_0211A1A0:
	ldrb r0, [r0, #0x86]
	cmp r0, #0
	beq _0211A1D4
	ldr r0, [r4, #4]
	bl FUN_0204201c
	cmp r0, #0
	bne _0211A1C4
_0211A1BC:
	mov r0, r5
	b _0211A1C8
_0211A1C4:
	mov r0, r6
_0211A1C8:
	bl  FUN_ov16_020f3f60
	mov r0, r5
	bl  FUN_ov16_020f4894
_0211A1D4:
	ldr r4, _0211A214 ; =0x0209BA20
	mov r1, #0
	mov r0, r4
	bl FUN_0204d0b4
	mov r0, r4
	mov r1, #2
	bl FUN_0204d0b4
	mov r0, r4
	bl FUN_0204ce50
	ldmfd sp!, {r4, r5, r6, pc}
_0211A1FC: .word 0x0209A0AC
_0211A200: .word 0x020AF81C
_0211A204: .word 0x02099EB4
_0211A208: .word 0x02099ED4
_0211A20C: .word 0x020A9C40
_0211A210: .word 0x020A0640
_0211A214: .word 0x0209BA20
	arm_func_end FUN_ov60_0211a0a0

	arm_func_start FUN_ov60_0211a218
FUN_ov60_0211a218: ; 0x0211A218
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xc]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211A290
_0211A230: ; jump table
	b _0211A254 ; case 0
	b _0211A25C ; case 1
	b _0211A264 ; case 2
	b _0211A26C ; case 3
	b _0211A274 ; case 4
	b _0211A27C ; case 5
	b _0211A290 ; case 6
	b _0211A284 ; case 7
	b _0211A28C ; case 8
_0211A254:
	bl FUN_ov60_0211a8c4
	b _0211A290
_0211A25C:
	bl FUN_ov60_0211a948
	b _0211A290
_0211A264:
	bl FUN_ov60_0211aa10
	b _0211A290
_0211A26C:
	bl FUN_ov60_0211ac04
	b _0211A290
_0211A274:
	bl FUN_ov60_0211acc4
	b _0211A290
_0211A27C:
	bl FUN_ov60_0211ad20
	b _0211A290
_0211A284:
	bl FUN_ov60_0211adec
	b _0211A290
_0211A28C:
	bl FUN_ov60_0211ae20
_0211A290:
	ldr r0, _0211A3C0 ; =0x02099ED4
	ldr r4, _0211A3C4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl  FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A2C8
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _0211A2D4
_0211A2C8:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_0211A2D4:
	bl FUN_0201fdac
	ldr r2, _0211A3C8 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl  FUN_ov16_02116654
	ldr r0, [r5, #0xc]
	cmp r0, #6
	bne _0211A300
	ldr r0, _0211A3CC ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
_0211A300:
	add r0, r5, #0x3000
	ldr r0, [r0, #0x1ac]
	cmp r0, #0
	beq _0211A330
	ldr r0, _0211A3D0 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	mov r0, r5
	bne _0211A32C
	bl FUN_ov60_0211bb2c
	b _0211A330
_0211A32C:
	bl FUN_ov60_0211bcb0
_0211A330:
	add r0, r5, #0x3000
	ldr r0, [r0, #0x368]
	cmp r0, #0
	beq _0211A348
	mov r0, r5
	bl FUN_ov60_0211c400
_0211A348:
	mov r4, #0
	mov r6, #0x24
	b _0211A398
_0211A354:
	mla r0, r4, r6, r5
	add r0, r0, #0x3000
	ldr r0, [r0, #0x2a4]
	cmp r0, #0
	beq _0211A374
	mov r0, r5
	mov r1, r4
	bl FUN_ov60_0211dee0
_0211A374:
	add r0, r5, r4, lsl #3
	add r0, r0, #0x3000
	ldr r0, [r0, #0x33c]
	cmp r0, #0
	beq _0211A394
	mov r0, r5
	mov r1, r4
	bl FUN_ov60_0211e014
_0211A394:
	add r4, r4, #1
_0211A398:
	cmp r4, #5
	blt _0211A354
	mov r0, r5
	bl FUN_ov60_0211aec4
	add r0, r5, #0x3000
	ldr r1, [r0, #0x3b8]
	cmp r1, #0
	subgt r1, r1, #1
	strgt r1, [r0, #0x3b8]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A3C0: .word 0x02099ED4
_0211A3C4: .word 0x0209A110
_0211A3C8: .word 0x02099F58
_0211A3CC: .word 0x02099EC0
_0211A3D0: .word 0x020A0640
	arm_func_end FUN_ov60_0211a218

	arm_func_start FUN_ov60_0211a3d4
FUN_ov60_0211a3d4: ; 0x0211A3D4
	bx lr
	arm_func_end FUN_ov60_0211a3d4

	arm_func_start FUN_ov60_0211a3d8
FUN_ov60_0211a3d8: ; 0x0211A3D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xdc
	ldr r4, _0211A79C ; =0x0209BA20
	mov r5, #0
	mov r10, r0
	mov r0, r4
	mov r1, r5
	mov r11, r5
	bl FUN_0205107c
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl FUN_0205106c
	add r9, sp, #0xc
	mov r1, r5
	mov r0, r9
	mov r2, #0xd0
	bl MI_CpuFill8
	ldr r4, _0211A7A0 ; =0x00001860
	add r0, r10, #0x80
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	add r0, r10, #0x8e0
	mov r2, r4
	add r0, r0, #0x1000
	mov r1, r5
	bl MI_CpuFill8
	add r0, r10, #0x3000
	mov r1, #1
	str r5, [r0, #0x140]
	str r5, [r0, #0x1a4]
	str r5, [r0, #0x1a8]
	str r1, [r0, #0x19c]
	add r0, r10, #0x1a8
	mov r8, r5
	add r4, r0, #0x3000
_0211A46C:
	mov r0, r8
	bl  FUN_ov16_020efa80
	movs r7, r0
	beq _0211A4B4
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r6
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211A4B4
	mov r0, r7
	bl FUN_0206cc00
	mov r1, r5, lsl #1
	strh r0, [r9, r1]
	ldr r0, [r4]
	add r5, r5, #1
	add r0, r0, #1
	str r0, [r4]
_0211A4B4:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	cmp r8, #0x64
	blt _0211A46C
	mov r7, #0
	add r4, sp, #0xc
_0211A4D0:
	mov r0, r7
	bl  FUN_ov16_020efa80
	movs r8, r0
	beq _0211A534
	mov r9, r11
	cmp r5, #0
	ble _0211A518
_0211A4EC:
	mov r0, r8
	bl FUN_0206cbf8
	mov r1, r9, lsl #1
	ldrh r1, [r4, r1]
	cmp r1, r0
	beq _0211A518
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	cmp r5, r0, asr #16
	mov r9, r0, asr #0x10
	bgt _0211A4EC
_0211A518:
	cmp r9, r5
	bne _0211A534
	mov r0, r8
	bl FUN_0206cbf8
	mov r1, r5, lsl #1
	strh r0, [r4, r1]
	add r5, r5, #1
_0211A534:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x64
	blt _0211A4D0
	mov r0, r10
	add r1, sp, #0xc
	bl FUN_ov60_0211a7a4
	cmp r5, #0
	mov r7, #0
	ble _0211A6FC
	add r9, r10, #0x80
_0211A564:
	mov r1, r7, lsl #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	mov r1, r11
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _0211A6F0
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A6F0
	mov r0, #0x3c
	mul r8, r7, r0
	add r0, r4, #0x1c
	add r1, r9, r8
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, _0211A79C ; =0x0209BA20
	add r8, r10, r8
	mov r1, r4
	mov r2, #0x25
	mov r3, r11
	bl FUN_0204f02c
	str r0, [r8, #0xa0]
	mov r1, r7, lsl #1
	add r0, sp, #0xc
	ldrh r1, [r0, r1]
	mov r0, r4
	strh r1, [r8, #0xa4]
	bl FUN_0206cc00
	strh r0, [r8, #0xa6]
	ldr r0, _0211A79C ; =0x0209BA20
	mov r1, r4
	bl FUN_0204b754
	strh r0, [r8, #0xa8]
	mov r0, r4
	bl FUN_0204fb60
	strh r0, [r8, #0xaa]
	mov r0, r4
	bl FUN_0206d8b8
	str r0, [r8, #0xac]
	mov r0, r4
	bl FUN_0206d8a8
	str r0, [r8, #0xb0]
	mov r0, r4
	bl FUN_0206d714
	strb r0, [r8, #0xba]
	mov r0, #1
	strb r0, [r8, #0xbb]
	mov r0, r4
	str r11, [r8, #0xb4]
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r6
	bl FUN_0204fca0
	cmp r0, #0
	movne r0, #1
	strneb r0, [r8, #0xb9]
	mov r0, r4
	bl FUN_0206d454
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x20
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d474
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x40
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d484
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x100
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d494
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x200
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d4a4
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x400
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d4b4
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x800
	strne r0, [r8, #0xb4]
	mov r0, r4
	bl FUN_0206d4c4
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	orrne r0, r0, #0x1000
	strne r0, [r8, #0xb4]
_0211A6F0:
	add r7, r7, #1
	cmp r7, r5
	blt _0211A564
_0211A6FC:
	mov r7, #0
	add r6, sp, #4
	ldr r0, _0211A79C ; =0x0209BA20
	mov r1, r7
	mov r2, r6
	mov r3, #4
	str r7, [sp]
	mov r4, r7
	bl FUN_0204b2f4
	mov r2, #1
	mov r1, #0x3c
_0211A728:
	mov r8, r4
	cmp r0, #0
	ble _0211A75C
	mla r11, r7, r1, r10
	ldrh r9, [r11, #0xa4]
_0211A73C:
	mov r3, r8, lsl #1
	ldrh r3, [r6, r3]
	cmp r9, r3
	streqb r2, [r11, #0xb8]
	beq _0211A75C
	add r8, r8, #1
	cmp r8, r0
	blt _0211A73C
_0211A75C:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211A728
	add r1, r10, #0x3000
	cmp r5, #0x64
	str r5, [r1, #0x140]
	strge r4, [r1, #0x19c]
	add r1, r10, #0x3000
	str r0, [r1, #0x1a4]
	add r3, r10, #0x8e0
	ldr r2, _0211A7A0 ; =0x00001860
	add r0, r10, #0x80
	add r1, r3, #0x1000
	bl MI_CpuCopy8
	add sp, sp, #0xdc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A79C: .word 0x0209BA20
_0211A7A0: .word 0x00001860
	arm_func_end FUN_ov60_0211a3d8

	arm_func_start FUN_ov60_0211a7a4
FUN_ov60_0211a7a4: ; 0x0211A7A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xf8
	add r5, sp, #0x30
	mov r9, #0xc8
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
	mov r2, #0x20
	bl MI_CpuFill8
	mov r2, r9
	mov r0, r8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r9, _0211A8C0 ; =0x0209BA20
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
_0211A84C:
	mov r3, r0
	mov r9, r0
	cmp r6, #0
	ble _0211A884
	mov r2, r7, lsl #1
	ldrh lr, [r5, r2]
_0211A864:
	mov r2, r9, lsl #1
	ldrh r2, [r4, r2]
	cmp lr, r2
	moveq r3, r12
	beq _0211A884
	add r9, r9, #1
	cmp r9, r6
	blt _0211A864
_0211A884:
	cmp r3, #0
	moveq r2, r7, lsl #1
	ldreqh r3, [r5, r2]
	moveq r2, r1, lsl #1
	add r7, r7, #1
	addeq r1, r1, #1
	streqh r3, [r8, r2]
	cmp r7, #0x10
	blt _0211A84C
	add r0, sp, #8
	mov r1, r8
	mov r2, r6, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0xf8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A8C0: .word 0x0209BA20
	arm_func_end FUN_ov60_0211a7a4

	arm_func_start FUN_ov60_0211a8c4
FUN_ov60_0211a8c4: ; 0x0211A8C4
	stmfd sp!, {r4, lr}
	ldr r1, _0211A934 ; =0x02099EC0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_02057c2c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r1, r4, #0x1b8
	ldr r0, _0211A938 ; =0x0212017C
	add r1, r1, #0x3000
	bl  FUN_ov16_020f316c
	ldr r0, _0211A93C ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	bne _0211A918
	ldr r1, _0211A940 ; =0x02120194
	mov r0, #0
	bl FUN_02085f50
	add r1, r4, #0x3000
	str r0, [r1, #0x1d0]
	b _0211A928
_0211A918:
	add r1, r4, #0x1c4
	ldr r0, _0211A944 ; =0x021201A8
	add r1, r1, #0x3000
	bl  FUN_ov16_020f316c
_0211A928:
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211A934: .word 0x02099EC0
_0211A938: .word 0x0212017C
_0211A93C: .word 0x020A0640
_0211A940: .word 0x02120194
_0211A944: .word 0x021201A8
	arm_func_end FUN_ov60_0211a8c4

	arm_func_start FUN_ov60_0211a948
FUN_ov60_0211a948: ; 0x0211A948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _0211AA08 ; =0x020A0640
	mov r10, r0
	ldrb r0, [r1, #0x87]
	cmp r0, #0
	bne _0211A97C
	add r0, r10, #0x3000
	ldr r0, [r0, #0x1d0]
	bl FUN_02086080
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A97C:
	add r0, r10, #0x1b8
	add r0, r0, #0x3000
	mov r1, #2
	bl  FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r10, #0x3000
	ldr r0, [r5, #0x1b4]
	add r4, r10, #0x1d4
	mov r9, r0, lsl #3
	add r8, r9, #8
	mov r7, #0
	mov r6, #1
	mov r11, #0x3c
	b _0211A9E8
_0211A9BC:
	mla r0, r9, r11, r10
	str r7, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r2, [r0, #0xa6]
	ldr r0, [r5, #0x1b8]
	ldr r1, _0211AA0C ; =0x021201CC
	add r3, r4, #0x3000
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
_0211A9E8:
	cmp r9, r8
	blt _0211A9BC
	mov r0, r10
	bl FUN_ov60_0211c850
	mov r0, #2
	str r0, [r10, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA08: .word 0x020A0640
_0211AA0C: .word 0x021201CC
	arm_func_end FUN_ov60_0211a948

	arm_func_start FUN_ov60_0211aa10
FUN_ov60_0211aa10: ; 0x0211AA10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x2dc
	mov r9, r0
	add r0, r9, #0x1d4
	add r0, r0, #0x3000
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x2dc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r6, _0211ABE4 ; =0x0211FA08
	add r5, sp, #0x204
	mov r4, #0xd
_0211AA40:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211AA40
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r6, _0211ABE8 ; =0x0211FAE0
	add r5, sp, #0x124
	mov r4, #0xe
_0211AA64:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211AA64
	add r7, sp, #0x2c
	mov r6, #0
	mov r4, #0x20
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill
	add r5, sp, #0xc
	mov r1, r6
	mov r0, r5
	mov r2, r4
	bl MI_CpuFill
	ldr r4, _0211ABEC ; =0x020A0640
	ldr r1, _0211ABF0 ; =0x021201E4
	ldrb r2, [r4, #0x89]
	mov r0, r7
	bl FUN_02015184
	ldrb r2, [r4, #0x89]
	ldr r1, _0211ABF4 ; =0x021201F8
	mov r0, r5
	bl FUN_02015184
	ldr r6, _0211ABF8 ; =0x0211F930
	add r5, sp, #0x4c
	mov r4, #0xd
_0211AAD4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211AAD4
	ldr r2, _0211ABEC ; =0x020A0640
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldrb r3, [r2, #0x87]
	add r1, sp, #0x2c
	add r0, sp, #0xc
	str r1, [sp, #0x74]
	str r0, [sp, #0xe4]
	cmp r3, #0
	beq _0211AB40
	mov r0, #0
	str r0, [sp]
	add r0, r9, #0x3000
	add r3, r9, #0x1dc
	ldr r1, [r0, #0x1c4]
	ldr r0, _0211ABFC ; =0x02120208
	add r2, sp, #0x4c
	add r3, r3, #0x3000
	bl  FUN_ov16_020f5450
	mov r0, r9
	mov r1, #1
	bl FUN_ov60_0211afcc
	b _0211ABD4
_0211AB40:
	ldrb r0, [r2, #0x84]
	add r10, r9, #0x3000
	mov r7, #1
	cmp r0, #0
	ldreqb r0, [r2, #0x86]
	mov r6, #0
	mov r5, #5
	cmpeq r0, #0
	addne r8, sp, #0x124
	addeq r8, sp, #0x204
	ldr r4, _0211AC00 ; =0x02099F38
	b _0211ABBC
_0211AB70:
	ldr r0, [r8, #4]
	add r0, r9, r0, lsl #2
	add r0, r0, #0x3000
	ldr r0, [r0, #0x1dc]
	cmp r0, #0
	bne _0211ABB8
	ldr r3, [r8]
	ldr r2, [r10, #0x1d0]
	ldr r0, [r4]
	mov r1, r5
	str r7, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02058684
	ldr r1, [r8, #4]
	add r1, r9, r1, lsl #2
	add r1, r1, #0x3000
	str r0, [r1, #0x1dc]
_0211ABB8:
	add r8, r8, #8
_0211ABBC:
	ldr r0, [r8]
	cmp r0, #0
	bne _0211AB70
	add r0, r9, #0x3000
	ldr r0, [r0, #0x1d0]
	bl FUN_02086040
_0211ABD4:
	mov r0, #3
	str r0, [r9, #0xc]
	add sp, sp, #0x2dc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211ABE4: .word 0x0211FA08
_0211ABE8: .word 0x0211FAE0
_0211ABEC: .word 0x020A0640
_0211ABF0: .word 0x021201E4
_0211ABF4: .word 0x021201F8
_0211ABF8: .word 0x0211F930
_0211ABFC: .word 0x02120208
_0211AC00: .word 0x02099F38
	arm_func_end FUN_ov60_0211aa10

	arm_func_start FUN_ov60_0211ac04
FUN_ov60_0211ac04: ; 0x0211AC04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211ACBC ; =0x02099F38
	b _0211AC7C
_0211AC1C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1dc]
	cmp r1, #0
	beq _0211AC78
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1dc]
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AC78
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1dc]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211AC78:
	add r4, r4, #1
_0211AC7C:
	cmp r4, #0x1b
	blt _0211AC1C
	ldr r4, _0211ACC0 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_020571ac
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	bl FUN_020576a0
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov60_0211c8ec
	mov r0, #4
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ACBC: .word 0x02099F38
_0211ACC0: .word 0x02099EC0
	arm_func_end FUN_ov60_0211ac04

	arm_func_start FUN_ov60_0211acc4
FUN_ov60_0211acc4: ; 0x0211ACC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov60_0211b754
	mov r0, r4
	bl FUN_ov60_0211b998
	ldr r0, _0211AD1C ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	mov r0, r4
	bne _0211ACF4
	bl FUN_ov60_0211baec
	b _0211ACF8
_0211ACF4:
	bl FUN_ov60_0211bba4
_0211ACF8:
	mov r0, r4
	bl FUN_ov60_0211bd80
	mov r0, r4
	bl FUN_ov60_0211bef4
	mov r0, r4
	bl FUN_ov60_0211c978
	mov r0, #5
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AD1C: .word 0x020A0640
	arm_func_end FUN_ov60_0211acc4

	arm_func_start FUN_ov60_0211ad20
FUN_ov60_0211ad20: ; 0x0211AD20
	stmfd sp!, {r4, lr}
	ldr r1, _0211ADE8 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov60_0211d340
	mov r0, r4
	bl FUN_ov60_0211d5b0
	mov r0, r4
	bl FUN_ov60_0211dd18
	mov r0, r4
	bl FUN_ov60_0211d840
	mov r0, r4
	bl FUN_ov60_0211daec
	ldr r0, [r4, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211ADC4
_0211AD74: ; jump table
	b _0211ADC4 ; case 0
	b _0211AD8C ; case 1
	b _0211AD98 ; case 2
	b _0211ADA4 ; case 3
	b _0211ADB0 ; case 4
	b _0211ADBC ; case 5
_0211AD8C:
	mov r0, r4
	bl FUN_ov60_0211d140
	b _0211ADC4
_0211AD98:
	mov r0, r4
	bl FUN_ov60_0211d3b4
	b _0211ADC4
_0211ADA4:
	mov r0, r4
	bl FUN_ov60_0211d624
	b _0211ADC4
_0211ADB0:
	mov r0, r4
	bl FUN_ov60_0211d8d4
	b _0211ADC4
_0211ADBC:
	mov r0, r4
	bl FUN_ov60_0211db80
_0211ADC4:
	mov r0, r4
	bl FUN_ov60_0211b5dc
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211ADE8: .word 0x02099ED4
	arm_func_end FUN_ov60_0211ad20

	arm_func_start FUN_ov60_0211adec
FUN_ov60_0211adec: ; 0x0211ADEC
	stmfd sp!, {r4, lr}
	ldr r1, _0211AE1C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl  FUN_ov16_020f153c
	mov r0, #8
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_0211AE1C: .word 0x02099ED4
	arm_func_end FUN_ov60_0211adec

	arm_func_start FUN_ov60_0211ae20
FUN_ov60_0211ae20: ; 0x0211AE20
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
	bne _0211AE70
	ldr r4, [r5, #4]
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
	ldmfd sp!, {r3, r4, r5, pc}
_0211AE70:
	ldr r5, [r5, #4]
	mov r0, r5
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov60_0211ae20

	arm_func_start FUN_ov60_0211ae90
FUN_ov60_0211ae90: ; 0x0211AE90
	ldr r3, _0211AEC0 ; =0x0209A454
	ldrb r3, [r3, #0x29]
	cmp r3, #0
	beq _0211AEAC
	cmp r1, #0
	cmpeq r2, #0
	bxne lr
_0211AEAC:
	mov r3, #7
	str r1, [r0, #0x78]
	str r2, [r0, #0x7c]
	str r3, [r0, #0xc]
	bx lr
_0211AEC0: .word 0x0209A454
	arm_func_end FUN_ov60_0211ae90

	arm_func_start FUN_ov60_0211aec4
FUN_ov60_0211aec4: ; 0x0211AEC4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0211AF54 ; =0x0211F8C8
	mov r4, r0
	ldr r12, [r1]
	ldr r3, [r1, #4]
	ldr r1, [r4, #0x74]
	add r2, sp, #0
	str r12, [sp]
	str r3, [sp, #4]
	ldr r1, [r2, r1, lsl #2]
	str r1, [r4, #0x14]
	bl FUN_ov60_0211e5d0
	strh r0, [r4, #0x18]
	add r0, r4, #0x3100
	ldrh r1, [r4, #0x18]
	ldrh r0, [r0, #0x7c]
	cmp r1, r0
	bne _0211AF18
	add r0, r4, #0x33c0
	b _0211AF1C
_0211AF18:
	ldr r0, _0211AF58 ; =0x0209A0AC
_0211AF1C:
	bl  FUN_ov16_020efa04
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
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211AF54: .word 0x0211F8C8
_0211AF58: .word 0x0209A0AC
	arm_func_end FUN_ov60_0211aec4

	arm_func_start FUN_ov60_0211af5c
FUN_ov60_0211af5c: ; 0x0211AF5C
	mov r2, #5
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov60_0211af5c

	arm_func_start FUN_ov60_0211af6c
FUN_ov60_0211af6c: ; 0x0211AF6C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r0, r0, #0x1b8
	add r0, r0, #0x3000
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r4, _0211AFC8 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_02056828
	mov r2, #2
	mov r0, #0x4000
	stmia sp, {r0, r2}
	mov r0, #0x6400
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, r2
	mov r1, #0x94000
	bl FUN_020568c4
	ldr r0, [r4]
	bl FUN_02057be4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, pc}
_0211AFC8: .word 0x02099EC0
	arm_func_end FUN_ov60_0211af6c

	arm_func_start FUN_ov60_0211afcc
FUN_ov60_0211afcc: ; 0x0211AFCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r1
	mov r10, r0
	cmp r4, #2
	blo _0211B058
	ldr r4, _0211B0A4 ; =0x02099EC0
	mov r9, #0
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c60
	mov r4, #0xc
	add r0, r10, #0x1b8
	add r8, r0, #0x3000
	mov r11, #1
	mov r7, r9
	mov r5, r4
	mov r6, r4
	b _0211B04C
_0211B018:
	mla r0, r9, r4, r8
	mov r1, r11
	bl  FUN_ov16_020f338c
	mla r0, r9, r5, r8
	bl  FUN_ov16_020f33fc
	mla r0, r9, r6, r10
	add r0, r0, #0x3000
	str r7, [r0, #0x1b8]
	str r7, [r0, #0x1bc]
	strb r7, [r0, #0x1c0]
	strb r7, [r0, #0x1c1]
	strb r7, [r0, #0x1c2]
	add r9, r9, #1
_0211B04C:
	cmp r9, #2
	blt _0211B018
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B058:
	add r0, r10, #0x1b8
	add r0, r0, #0x3000
	mov r5, #0xc
	mla r0, r4, r5, r0
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r10, #0x1b8
	add r0, r0, #0x3000
	mla r0, r4, r5, r0
	bl  FUN_ov16_020f33fc
	mla r0, r4, r5, r10
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x1b8]
	str r1, [r0, #0x1bc]
	strb r1, [r0, #0x1c0]
	strb r1, [r0, #0x1c1]
	strb r1, [r0, #0x1c2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B0A4: .word 0x02099EC0
	arm_func_end FUN_ov60_0211afcc

	arm_func_start FUN_ov60_0211b0a8
FUN_ov60_0211b0a8: ; 0x0211B0A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1d4
	mov r4, #8
	mov r2, r4
	add r0, r0, #0x3000
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0x1d4
	mov r1, r4
	add r0, r0, #0x3000
	bl  FUN_ov16_020f5278
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov60_0211b0a8

	arm_func_start FUN_ov60_0211b0dc
FUN_ov60_0211b0dc: ; 0x0211B0DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1d4
	add r0, r0, #0x3000
	mvn r1, #0
	bl  FUN_ov16_020f57b0
	add r0, r4, #0x1d4
	add r0, r0, #0x3000
	bl  FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov60_0211b0dc

	arm_func_start FUN_ov60_0211b104
FUN_ov60_0211b104: ; 0x0211B104
	stmfd sp!, {r3, lr}
	add r2, r0, #0x1d4
	mov r0, r1
	add r1, r2, #0x3000
	bl  FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov60_0211b104

	arm_func_start FUN_ov60_0211b120
FUN_ov60_0211b120: ; 0x0211B120
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1dc
	mov r4, #0
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x6c
	bl MI_CpuFill8
	add r0, r5, #0x248
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r0, _0211B164 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211B164: .word 0x02099F38
	arm_func_end FUN_ov60_0211b120

	arm_func_start FUN_ov60_0211b168
FUN_ov60_0211b168: ; 0x0211B168
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B208 ; =0x02099F38
	b _0211B1AC
_0211B180:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x248]
	cmp r1, #0
	beq _0211B1A8
	ldr r0, [r6]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	str r7, [r0, #0x248]
_0211B1A8:
	add r4, r4, #1
_0211B1AC:
	cmp r4, #0x10
	blt _0211B180
	mov r4, #0
	mov r7, r4
	ldr r6, _0211B208 ; =0x02099F38
	b _0211B1F0
_0211B1C4:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x1dc]
	cmp r1, #0
	beq _0211B1EC
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x3000
	str r7, [r0, #0x1dc]
_0211B1EC:
	add r4, r4, #1
_0211B1F0:
	cmp r4, #0x1b
	blt _0211B1C4
	ldr r0, _0211B208 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B208: .word 0x02099F38
	arm_func_end FUN_ov60_0211b168

	arm_func_start FUN_ov60_0211b20c
FUN_ov60_0211b20c: ; 0x0211B20C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	add r0, r0, #0x3000
	ldr r3, [r0, #0x1dc]
	ldr r6, _0211B2CC ; =0x02099F38
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
_0211B2CC: .word 0x02099F38
	arm_func_end FUN_ov60_0211b20c

	arm_func_start FUN_ov60_0211b2d0
FUN_ov60_0211b2d0: ; 0x0211B2D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r6, #0
	mov r11, r0
	str r1, [sp, #0x20]
	mov r10, r2
	add r0, sp, #0x34
	mov r1, r6
	mov r2, #4
	ldr r8, [sp, #0x60]
	mov r9, r3
	str r6, [sp, #0x2c]
	ldr r7, [sp, #0x70]
	mov r4, #0x80
	mov r5, #0x20
	bl MI_CpuFill8
	mov r2, #4
	add r0, sp, #0x30
	mov r1, r6
	bl MI_CpuFill8
	str r6, [r8]
	cmp r7, #1
	ldr r0, [r11, #0x10]
	moveq r4, #0x100
	cmp r0, #3
	moveq r5, #0x40
	add r2, sp, #0x34
	add r3, sp, #0x30
	mov r0, r4
	mov r1, r5
	bl FUN_02054070
	ldr r4, _0211B5D4 ; =0x02099F38
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
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
	str r2, [sp, #0x28]
	ldr r0, [r4]
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl FUN_0205935c
	ldr r0, [sp, #0x28]
	ldr r1, [r8]
	str r0, [sp, #0x24]
	ldr r0, [r4]
	bl  FUN_ov16_02111438
	mov r6, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl  FUN_ov16_02111458
	mov r5, r0
	ldr r0, [r11, #0x10]
	cmp r0, #3
	bne _0211B4A4
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, #0
	bl  FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x68]
	ldr r3, [sp, #0x64]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x6c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r2, #1
	str r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [r8]
	mov r3, r2
	bl  FUN_ov16_020f2304
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4A4:
	ldr r11, _0211B5D8 ; =0x02099F50
	mov r1, #1
	ldr r0, [r11]
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
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r11]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl FUN_020425fc
	ldr r0, [r11]
	bl FUN_0204331c
	ldr r3, [sp, #0x2c]
	ldr r1, [r8]
	ldr r0, [r4]
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	ldr r2, [sp, #0x24]
	str r7, [sp, #8]
	bl FUN_02059288
	ldr r0, [r9]
	mov r1, r10
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl  FUN_ov16_021137dc
	mov r0, r7
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r7
	mov r1, r10
	bl  FUN_ov16_02113d88
	mov r0, r5, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl  FUN_ov16_02113d08
	ldr r0, [sp, #0x68]
	ldr r3, [sp, #0x64]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x6c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	ldr r2, [r9]
	mov r1, r10
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5D4: .word 0x02099F38
_0211B5D8: .word 0x02099F50
	arm_func_end FUN_ov60_0211b2d0

	arm_func_start FUN_ov60_0211b5dc
FUN_ov60_0211b5dc: ; 0x0211B5DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
_0211B5E8:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x248]
	mov r0, r4
	bl FUN_ov60_0211b734
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B5E8
	mov r5, #0
_0211B60C:
	add r0, r4, r5, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x36c]
	mov r0, r4
	bl FUN_ov60_0211b734
	add r5, r5, #1
	cmp r5, #8
	blt _0211B60C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211B63C: ; jump table
	b _0211B654 ; case 0
	b _0211B6A0 ; case 1
	b _0211B6B4 ; case 2
	b _0211B6C8 ; case 3
	b _0211B6DC ; case 4
	b _0211B6F0 ; case 5
_0211B654:
	mov r5, #0
_0211B658:
	add r0, r4, r5, lsl #2
	add r0, r0, #0x3000
	ldr r1, [r0, #0x248]
	mov r0, r4
	bl FUN_ov60_0211b714
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211B658
	mov r5, #0
_0211B67C:
	add r0, r4, r5, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x36c]
	mov r0, r4
	bl FUN_ov60_0211b714
	add r5, r5, #1
	cmp r5, #8
	blt _0211B67C
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6A0:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x268]
	mov r0, r4
	bl FUN_ov60_0211b714
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6B4:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x26c]
	mov r0, r4
	bl FUN_ov60_0211b714
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6C8:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x270]
	mov r0, r4
	bl FUN_ov60_0211b714
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6DC:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x274]
	mov r0, r4
	bl FUN_ov60_0211b714
	ldmfd sp!, {r3, r4, r5, pc}
_0211B6F0:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x280]
	mov r0, r4
	bl FUN_ov60_0211b714
	add r0, r4, #0x3000
	ldr r1, [r0, #0x284]
	mov r0, r4
	bl FUN_ov60_0211b714
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov60_0211b5dc

	arm_func_start FUN_ov60_0211b714
FUN_ov60_0211b714: ; 0x0211B714
	ldr r0, _0211B728 ; =0x02099F38
	ldr r2, _0211B72C ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B730 ; = FUN_ov16_02114204
	bx r12
_0211B728: .word 0x02099F38
_0211B72C: .word 0x00007FFF
_0211B730: .word  FUN_ov16_02114204
	arm_func_end FUN_ov60_0211b714

	arm_func_start FUN_ov60_0211b734
FUN_ov60_0211b734: ; 0x0211B734
	ldr r0, _0211B748 ; =0x02099F38
	ldr r2, _0211B74C ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B750 ; = FUN_ov16_02114204
	bx r12
_0211B748: .word 0x02099F38
_0211B74C: .word 0x00004210
_0211B750: .word  FUN_ov16_02114204
	arm_func_end FUN_ov60_0211b734

	arm_func_start FUN_ov60_0211b754
FUN_ov60_0211b754: ; 0x0211B754
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B990 ; =0x02099F38
	mov r10, r0
	mov r7, #1
	ldr r0, [r1]
	mov r2, r7
	mov r1, #0xa
	bl  FUN_ov16_02112724
	mov r6, r0
	mov r5, #0
	str r5, [sp, #0x14]
	add r0, r10, #0x3000
	ldr r8, [r0, #0x140]
	str r6, [r0, #0x248]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r4, #0x1f4
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	str r7, [sp, #0x10]
	add r2, sp, #0x14
	mov r3, #5
	bl FUN_ov60_0211b20c
	str r5, [sp]
	str r5, [sp, #4]
	sub r9, r4, #1
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0x13
	bl FUN_ov60_0211b20c
	str r5, [sp]
	mov r4, #0x80
	str r4, [sp, #4]
	mov r11, #0x10
	str r11, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0x15
	str r7, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, #0xc0
	mov r0, #3
	stmia sp, {r0, r1, r11}
	sub r9, r9, #1
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0xc
	bl FUN_ov60_0211b20c
	str r7, [sp]
	mov r0, #0xb8
	stmib sp, {r0, r11}
	str r9, [sp, #0xc]
	mov r3, #0xc
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	str r7, [sp, #0x10]
	bl FUN_ov60_0211b20c
	str r5, [sp]
	mov r0, #0xb8
	str r4, [sp, #4]
	mov r11, #0x20
	str r11, [sp, #8]
	add r0, r0, #0xd3
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #7
	str r7, [sp, #0x10]
	bl FUN_ov60_0211b20c
	str r5, [sp]
	mov r0, #7
	stmib sp, {r4, r11}
	add r0, r0, #0x188
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0x16
	str r5, [sp, #0x10]
	bl FUN_ov60_0211b20c
	ldr r4, _0211B994 ; =0x66666667
	mov r7, #0xe0
	mov r11, #0xa0
	mov r5, #1
_0211B8DC:
	smull r1, r2, r4, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r8, r1
	stmia sp, {r2, r7, r11}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x14
	mov r3, #0xd
	str r5, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, r8
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	sub r7, r7, #8
	adds r8, r0, r8, asr #2
	bne _0211B8DC
	add r0, r10, #0x3000
	ldrb r1, [r0, #0x3bc]
	cmp r1, #0
	mov r1, #0
	beq _0211B964
	mov r0, r10
	bl FUN_ov60_0211ddc4
	add r0, r10, #0x3000
	mov r2, #0x80
	mov r1, #0x20
	str r2, [r0, #0x294]
	str r1, [r0, #0x298]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B964:
	ldr r0, [r0, #0x140]
	mov r3, r1
	mov r4, r0, lsr #0x1f
	rsb r2, r4, r0, lsl #29
	mov r0, r10
	add r2, r4, r2, ror #29
	bl FUN_ov60_0211dde4
	add r0, r10, #0x3000
	strb r5, [r0, #0x3bc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B990: .word 0x02099F38
_0211B994: .word 0x66666667
	arm_func_end FUN_ov60_0211b754

	arm_func_start FUN_ov60_0211b998
FUN_ov60_0211b998: ; 0x0211B998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r9, r0
	add r1, r9, #0x3000
	ldr r3, [r1, #0x24c]
	ldr r2, [r1, #0x250]
	ldr r4, [r1, #0x254]
	add r2, r3, r2
	ldr r3, [r1, #0x258]
	add r1, r4, r2
	adds r1, r3, r1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0x80
	str r1, [sp]
	mov r8, #0x10
	mov r1, #3
	str r8, [sp, #4]
	mov r6, #1
	mov r5, #0
	str r1, [sp, #8]
	add r7, r1, #0x1f0
	str r7, [sp, #0xc]
	mov r2, r6
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov60_0211f308
	mov r0, #0xe0
	stmia sp, {r0, r8}
	mov r1, #4
	mov r4, #2
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r9
	mov r2, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov60_0211f308
	add r0, r9, #0x3000
	ldrb r0, [r0, #0x14c]
	cmp r0, #0
	beq _0211BA74
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xa8
	stmib sp, {r0, r6}
	str r7, [sp, #0xc]
	mov r0, r9
	mov r1, r6
	mov r2, r5
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov60_0211f308
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211BA74:
	str r8, [sp]
	mov r8, #0xa8
	str r8, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r9
	mov r1, r6
	mov r2, r5
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov60_0211f308
	mov r0, #0x90
	stmia sp, {r0, r8}
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	mov r2, r5
	mov r3, #6
	str r6, [sp, #0x10]
	bl FUN_ov60_0211f308
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov60_0211b998

	arm_func_start FUN_ov60_0211bad0
FUN_ov60_0211bad0: ; 0x0211BAD0
	add r0, r0, #0x1ac
	ldr r12, _0211BAE8 ; =MI_CpuFill8
	add r0, r0, #0x3000
	mov r1, #0
	mov r2, #8
	bx r12
_0211BAE8: .word MI_CpuFill8
	arm_func_end FUN_ov60_0211bad0

	arm_func_start FUN_ov60_0211baec
FUN_ov60_0211baec: ; 0x0211BAEC
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov r1, #0xd8
	str r1, [sp]
	mov r3, #0
	mov r1, #9
	str r3, [sp, #4]
	str r1, [sp, #8]
	rsb r1, r1, #0x198
	str r1, [sp, #0xc]
	mov r1, #0xc
	mov r2, #2
	str r3, [sp, #0x10]
	bl FUN_ov60_0211f308
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov60_0211baec

	arm_func_start FUN_ov60_0211bb2c
FUN_ov60_0211bb2c: ; 0x0211BB2C
	stmfd sp!, {r3, lr}
	add r12, r0, #0x3000
	ldr r2, [r12, #0x1b0]
	ldr r1, [r12, #0x278]
	add r3, r2, #1
	str r3, [r12, #0x1b0]
	cmp r3, #0xa
	mov r2, #1
	mov lr, #0
	bge _0211BB6C
	ldr r0, _0211BBA0 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BB6C:
	cmp r3, #0xa
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x74]
	str lr, [r12, #0x1ac]
	eor r3, r3, #1
	str lr, [r12, #0x1b0]
	str r3, [r0, #0x74]
	strb lr, [r0, #0x21]
	ldr r0, _0211BBA0 ; =0x02099F38
	str lr, [sp]
	ldr r0, [r0]
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BBA0: .word 0x02099F38
	arm_func_end FUN_ov60_0211bb2c

	arm_func_start FUN_ov60_0211bba4
FUN_ov60_0211bba4: ; 0x0211BBA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r7, _0211BCA8 ; =0x02099F38
	mov r6, #1
	mov r4, r0
	ldr r0, [r7]
	mov r1, r6
	mov r2, r6
	bl  FUN_ov16_02112724
	mov r5, r0
	add r0, r4, #0x3000
	ldr r2, [r0, #0x1e4]
	str r5, [r0, #0x278]
	ldr r0, [r7]
	mov r1, r5
	and r2, r2, #0xff
	bl  FUN_ov16_02112950
	mov r4, #0
	str r4, [sp]
	mov r8, #0xd8
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r8
	bl  FUN_ov16_02113b78
	ldr r0, [r7]
	add r3, r8, #0xb7
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_021139bc
	str r6, [sp]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	mov r2, r6
	mov r3, r8
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r7]
	mov r3, r8
	mov r1, r5
	mov r2, r6
	bl  FUN_ov16_0211401c
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211BCAC ; =0x02099EB4
	mov r1, r6
	ldr r0, [r0]
	mov r3, r5
	mov r2, #9
	bl  FUN_ov16_0210fbe8
	movs r6, r0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0x10
	mov r2, r4
	mov r1, #0xa0
	mov r3, #0x58
	str r5, [sp]
	bl  FUN_ov16_0210e674
	strb r4, [r6, #0x11]
	mov r0, #0x400
	strh r0, [r6, #0xc]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BCA8: .word 0x02099F38
_0211BCAC: .word 0x02099EB4
	arm_func_end FUN_ov60_0211bba4

	arm_func_start FUN_ov60_0211bcb0
FUN_ov60_0211bcb0: ; 0x0211BCB0
	stmfd sp!, {r3, lr}
	add r2, r0, #0x3000
	ldr r3, [r2, #0x1b0]
	ldr r1, [r2, #0x278]
	add r3, r3, #1
	str r3, [r2, #0x1b0]
	cmp r3, #0xa
	bge _0211BCF0
	mov r2, #0
	str r2, [sp]
	ldr r0, _0211BD28 ; =0x02099F38
	mov r2, #1
	ldr r0, [r0]
	mov r3, #2
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BCF0:
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0x74]
	mov r12, #0
	eor r3, r3, #1
	str r12, [r2, #0x1ac]
	str r12, [r2, #0x1b0]
	str r3, [r0, #0x74]
	strb r12, [r0, #0x21]
	ldr r0, _0211BD28 ; =0x02099F38
	str r12, [sp]
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, pc}
_0211BD28: .word 0x02099F38
	arm_func_end FUN_ov60_0211bcb0

	arm_func_start FUN_ov60_0211bd2c
FUN_ov60_0211bd2c: ; 0x0211BD2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r1, r5, #0x3000
	ldr r4, [r1, #0x278]
	bl FUN_ov60_0211e5d0
	cmp r0, #0
	ldrne r3, [r5, #0x74]
	mov r1, #0
	str r1, [sp]
	ldr r0, _0211BD6C ; =0x02099F38
	moveq r3, #2
	ldr r0, [r0]
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BD6C: .word 0x02099F38
	arm_func_end FUN_ov60_0211bd2c

	arm_func_start FUN_ov60_0211bd70
FUN_ov60_0211bd70: ; 0x0211BD70
	add r0, r0, #0x3000
	mov r1, #0
	str r1, [r0, #0x1b4]
	bx lr
	arm_func_end FUN_ov60_0211bd70

	arm_func_start FUN_ov60_0211bd80
FUN_ov60_0211bd80: ; 0x0211BD80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211BE60 ; =0x02099F38
	mov r10, r0
	mov r8, #1
	mov r5, #2
	ldr r0, [r1]
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	add r1, r10, #0x3000
	ldr r2, [r1, #0x1b4]
	mov r7, r0
	add r9, r2, #1
	ldr r4, _0211BE64 ; =0x66666667
	mov r2, r9, lsr #0x1f
	smull r0, r3, r4, r9
	add r3, r2, r3, asr #2
	add r6, r5, #0x1f0
	mov r2, #0xa
	str r7, [r1, #0x25c]
	smull r0, r1, r2, r3
	sub r3, r9, r0
	str r3, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r5, #0x10
	add r11, sp, #0x14
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, #0xc
	str r8, [sp, #0x10]
	bl FUN_ov60_0211b20c
	cmp r9, #0xa
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0xa0
	stmib sp, {r0, r5}
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, #0xc
	str r8, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE60: .word 0x02099F38
_0211BE64: .word 0x66666667
	arm_func_end FUN_ov60_0211bd80

	arm_func_start FUN_ov60_0211be68
FUN_ov60_0211be68: ; 0x0211BE68
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x25c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BE9C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x25c]
	ldmfd sp!, {r4, pc}
_0211BE9C: .word 0x02099F38
	arm_func_end FUN_ov60_0211be68

	arm_func_start FUN_ov60_0211bea0
FUN_ov60_0211bea0: ; 0x0211BEA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x36c
	mov r4, #0
	add r3, r5, #0x3000
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x40
	str r4, [r3, #0x368]
	bl MI_CpuFill8
	add r0, r5, #0x3ac
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0x33c
	mov r1, r4
	add r0, r0, #0x3000
	mov r2, #0x28
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov60_0211bea0

	arm_func_start FUN_ov60_0211bef4
FUN_ov60_0211bef4: ; 0x0211BEF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r5, #0
	mov r9, r0
	add r0, r9, #0x3000
	str r5, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x1b4]
	mov r8, r5
	mov r7, r0, lsl #3
	add r0, r7, #8
	str r0, [sp, #0x14]
	add r0, r9, #0x370
	add r0, r0, #0x3000
	str r0, [sp, #0x18]
	add r0, r9, #0x80
	mov r10, #1
	str r0, [sp, #0x1c]
	b _0211C348
_0211BF40:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x3c
	mla r0, r7, r0, r9
	ldrb r0, [r0, #0xbb]
	cmp r0, #1
	bne _0211C264
	ldr r0, _0211C35C ; =0x02099F38
	mov r1, #7
	ldr r0, [r0]
	mov r2, r10
	bl  FUN_ov16_02112724
	add r1, r9, r8, lsl #3
	add r1, r1, #0x3000
	str r0, [r1, #0x36c]
	mov r4, r0
	mov r0, r8, lsl #4
	add r1, r0, #0x20
	mov r0, #0x3c
	mla r0, r7, r0, r9
	ldrb r0, [r0, #0xb9]
	cmp r0, #0
	bne _0211BFCC
	mov r0, #0
	str r0, [sp]
	mov r0, #0x80
	stmib sp, {r0, r1}
	mov r0, #0x190
	str r0, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x24
	mov r3, #0x17
	str r10, [sp, #0x10]
	bl FUN_ov60_0211b20c
_0211BFCC:
	mov r0, #0x3c
	mla r0, r7, r0, r9
	ldrh r0, [r0, #0xaa]
	ldr r6, _0211C360 ; =0x0000018E
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211C018
_0211BFE8: ; jump table
	b _0211C018 ; case 0
	b _0211BFFC ; case 1
	b _0211C004 ; case 2
	b _0211C00C ; case 3
	b _0211C014 ; case 4
_0211BFFC:
	mov r5, #3
	b _0211C018
_0211C004:
	mov r5, #2
	b _0211C018
_0211C00C:
	mov r5, r10
	b _0211C018
_0211C014:
	mov r5, #0
_0211C018:
	mov r0, #0x3c
	mla r0, r7, r0, r9
	ldrb r0, [r0, #0xb9]
	mov r3, #0xf
	mov r1, r4
	cmp r0, #0
	str r5, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	moveq r3, #0x10
	str r10, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x24
	bl FUN_ov60_0211b20c
	ldr r1, [sp, #0x24]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0x24]
	mov r1, #0x3c
	mla r1, r7, r1, r9
	ldrh r1, [r1, #0xa6]
	bl FUN_ov60_0211b104
	mov r3, r0
	mov r0, r8, lsl #4
	add r11, r0, #0x18
	ldr r0, _0211C35C ; =0x02099F38
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, r4
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0211C35C ; =0x02099F38
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #0
	bl  FUN_ov16_0211401c
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, _0211C35C ; =0x02099F38
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #0x8c
	bl  FUN_ov16_02113b78
	ldr r0, _0211C35C ; =0x02099F38
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	mov r1, r4
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	mov r0, r8, lsl #4
	add r1, r0, #0x23
	ldr r0, [sp, #0x18]
	mov r2, #0x3c
	add r0, r0, r8, lsl #3
	str r0, [sp]
	mov r0, #0xa9
	stmib sp, {r0, r1}
	ldr r1, [sp, #0x1c]
	str r6, [sp, #0xc]
	mla r1, r7, r2, r1
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, r9
	mov r2, r4
	add r3, sp, #0x24
	bl FUN_ov60_0211b2d0
	mov r1, #0x3c
	mla r1, r7, r1, r9
	ldr r1, [r1, #0xb4]
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	tst r1, #0x400
	beq _0211C168
	mov r1, #0
	b _0211C194
_0211C168:
	tst r1, #0x80
	beq _0211C178
	str r10, [sp]
	b _0211C198
_0211C178:
	tst r1, #0x20
	beq _0211C188
	mov r1, #2
	b _0211C194
_0211C188:
	tst r1, #0x1000
	beq _0211C1C0
	mov r1, #3
_0211C194:
	str r1, [sp]
_0211C198:
	mov r1, #0xe8
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x24
	mov r3, #0x12
	str r10, [sp, #0x10]
	bl FUN_ov60_0211b20c
_0211C1C0:
	mov r0, #0x3c
	mla r0, r7, r0, r9
	mov r1, r8, lsl #4
	add r11, r1, #0x28
	ldr r0, [r0, #0xa0]
	ldr r1, _0211C364 ; =0x66666667
	smull r2, r5, r1, r0
	mov r1, r0, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r5
	sub r5, r0, r2
	str r5, [sp]
	mov r0, #0xf0
	stmib sp, {r0, r11}
	str r6, [sp, #0xc]
	mov r0, r9
	mov r1, r4
	add r2, sp, #0x24
	mov r3, #0xe
	str r10, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, #0x3c
	mla r0, r7, r0, r9
	ldr r3, [r0, #0xa0]
	cmp r3, #0xa
	blt _0211C2FC
	ldr r0, _0211C364 ; =0x66666667
	mov r1, r4
	smull r2, r5, r0, r3
	mov r0, r3, lsr #0x1f
	add r5, r0, r5, asr #2
	str r5, [sp]
	mov r0, #0xe8
	stmib sp, {r0, r11}
	str r6, [sp, #0xc]
	str r10, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x24
	mov r3, #0xe
	b _0211C2F8
_0211C264:
	ldr r0, _0211C35C ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	mov r2, r10
	bl  FUN_ov16_02112724
	add r1, r9, r8, lsl #3
	add r1, r1, #0x3000
	str r0, [r1, #0x36c]
	mov r4, r0
	mov r0, r8, lsl #4
	add r11, r0, #0x20
	ldr r0, [sp, #0x20]
	mov r6, #0x190
	ldr r0, [r0, #0x140]
	mov r1, r4
	cmp r0, #0x64
	cmpge r7, #0x64
	mov r0, #0
	blt _0211C2D8
	str r0, [sp]
	mov r0, #0x80
	stmib sp, {r0, r11}
	mov r0, r6
	str r0, [sp, #0xc]
	str r10, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x24
	mov r3, #0x18
	b _0211C2F8
_0211C2D8:
	str r0, [sp]
	mov r0, #0x80
	stmib sp, {r0, r11}
	str r6, [sp, #0xc]
	str r10, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x24
	mov r3, #0x17
_0211C2F8:
	bl FUN_ov60_0211b20c
_0211C2FC:
	add r0, r8, #0xc
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _0211C368 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	mov r3, #0x80
	bl  FUN_ov16_0210fba4
	add r7, r7, #1
	add r8, r8, #1
_0211C348:
	ldr r0, [sp, #0x14]
	cmp r7, r0
	blt _0211BF40
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C35C: .word 0x02099F38
_0211C360: .word 0x0000018E
_0211C364: .word 0x66666667
_0211C368: .word 0x02099EB4
	arm_func_end FUN_ov60_0211bef4

	arm_func_start FUN_ov60_0211c36c
FUN_ov60_0211c36c: ; 0x0211C36C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r8, r0
	mov r6, r7
	mov r5, r7
	ldr r4, _0211C3F8 ; =0x02099F38
	b _0211C3DC
_0211C388:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x36c]
	cmp r1, #0
	beq _0211C3B0
	ldr r0, [r4]
	bl  FUN_ov16_021128c4
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r6, [r0, #0x36c]
_0211C3B0:
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _0211C3D8
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r8, r7, lsl #3
	add r0, r0, #0x3000
	str r5, [r0, #0x370]
_0211C3D8:
	add r7, r7, #1
_0211C3DC:
	cmp r7, #8
	blt _0211C388
	ldr r0, _0211C3FC ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C3F8: .word 0x02099F38
_0211C3FC: .word 0x02099EB4
	arm_func_end FUN_ov60_0211c36c

	arm_func_start FUN_ov60_0211c400
FUN_ov60_0211c400: ; 0x0211C400
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	add r1, r10, #0x3000
	ldr r2, [r1, #0x368]
	cmp r2, #1
	beq _0211C42C
	cmp r2, #2
	beq _0211C49C
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C42C:
	ldr r1, [r1, #0x1b4]
	mov r9, r1, lsl #3
	add r8, r9, #8
	bl FUN_ov60_0211b0dc
	mov r0, r10
	bl FUN_ov60_0211b0a8
	add r5, r10, #0x1d4
	add r4, r10, #0x3000
	mov r7, #0
	mov r6, #1
	mov r11, #0x3c
	b _0211C488
_0211C45C:
	mla r0, r9, r11, r10
	str r7, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r2, [r0, #0xa6]
	ldr r0, [r4, #0x1b8]
	ldr r1, _0211C544 ; =0x0212022C
	add r3, r5, #0x3000
	bl  FUN_ov16_020f55b4
	add r9, r9, #1
_0211C488:
	cmp r9, r8
	blt _0211C45C
	add r0, r10, #0x3000
	mov r1, #2
	str r1, [r0, #0x368]
_0211C49C:
	add r0, r10, #0x1d4
	add r0, r0, #0x3000
	bl  FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov60_0211c36c
	mov r0, r10
	bl FUN_ov60_0211be68
	mov r0, r10
	bl FUN_ov60_0211bd80
	mov r0, r10
	bl FUN_ov60_0211bef4
	mov r0, r10
	bl FUN_ov60_0211f5b4
	ldr r0, _0211C548 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _0211C4FC
	mov r0, r10
	bl FUN_ov60_0211bd2c
	mov r0, r10
	bl FUN_ov60_0211b5dc
_0211C4FC:
	ldr r0, _0211C548 ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	ldreqb r0, [r0, #0x86]
	cmpeq r0, #0
	beq _0211C51C
	mov r0, r10
	bl FUN_ov60_0211b5dc
_0211C51C:
	ldr r0, [r10, #0x10]
	cmp r0, #1
	bne _0211C530
	mov r0, r10
	bl FUN_ov60_0211b5dc
_0211C530:
	add r0, r10, #0x3000
	mov r1, #0
	str r1, [r0, #0x368]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C544: .word 0x0212022C
_0211C548: .word 0x020A0640
	arm_func_end FUN_ov60_0211c400

	arm_func_start FUN_ov60_0211c54c
FUN_ov60_0211c54c: ; 0x0211C54C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r6, #0
	add r0, r4, #0x144
	mov r1, r6
	add r0, r0, #0x3000
	mov r2, #0x58
	str r6, [sp, #0x10]
	str r6, [sp, #0xc]
	bl MI_CpuFill8
	ldr r5, _0211C800 ; =0x0209BA20
	mov r1, r6
	mov r0, r5
	bl FUN_0207249c
	mov r6, r0
	mov r0, r5
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r6, #0x28]
	add r2, sp, #0xc
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	strh r1, [r0, #0x28]
	ldrb r3, [r6, #0x2c]
	add r1, sp, #0x10
	strb r3, [r0, #0x2c]
	ldr r0, _0211C804 ; =0x020A9C40
	bl FUN_02045b50
	ldr r0, [sp, #0x10]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x10]
	add r0, r4, #0x33c0
	bl  FUN_ov16_020efa04
	mov r8, #0
	str r8, [sp]
	ldr r0, [sp, #0xc]
	mov r7, #1
	stmib sp, {r0, r7}
	ldr r1, [sp, #0x10]
	rsb r0, r7, #0x1000
	and r0, r1, r0
	mov r2, r0, lsl #0x10
	ldr r6, _0211C800 ; =0x0209BA20
	mov r1, r8
	mov r0, r6
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl FUN_0204c778
	ldr r1, _0211C808 ; =0x020A0640
	sub r0, r7, #2
	ldrsb r9, [r1, #0xac]
	cmp r9, r0
	beq _0211C698
	cmp r9, #0
	blt _0211C698
	cmp r9, #2
	bgt _0211C698
	ldr r2, [sp, #0x10]
	rsb r0, r7, #0x1000
	mov r1, r8
	and r0, r2, r0
	bl  FUN_ov16_020efa9c
	movs r5, r0
	beq _0211C698
	bl FUN_0206dcd4
	ldr r2, _0211C80C ; =0x020A1664
	mov r1, #0x6c
	mla r1, r9, r1, r2
	bl FUN_0206ed40
	mov r0, #4
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r8
	str r8, [sp, #4]
	bl FUN_0204e79c
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x4a]
	str r0, [sp, #0xc]
_0211C698:
	mvn r3, #0
	ldr r1, _0211C808 ; =0x020A0640
	ldr r2, [sp, #0x10]
	add r0, r3, #0x1000
	strb r3, [r1, #0xac]
	and r0, r2, r0
	add r1, r4, #0x3000
	str r0, [r1, #0x144]
	ldr r2, [sp, #0xc]
	ldr r0, _0211C810 ; =0x020AF81C
	str r2, [r1, #0x148]
	mov r1, #0x28
	bl FUN_02044658
	ldr r2, [r0]
	add r1, r4, #0x3000
	strb r2, [r1, #0x14c]
	mov r6, #0
	str r6, [r0]
	ldr r1, [r1, #0x144]
	add r0, r4, #0x33c0
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_0206c718
	movs r5, r0
	beq _0211C7F0
	add r1, r4, #0x158
	add r0, r5, #0x1c
	add r1, r1, #0x3000
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r7, _0211C800 ; =0x0209BA20
	mov r1, r5
	mov r0, r7
	mov r3, r6
	mov r2, #0x25
	bl FUN_0204f02c
	add r1, r4, #0x3000
	str r0, [r1, #0x178]
	mov r0, r5
	bl FUN_0206cbf8
	add r1, r4, #0x3100
	strh r0, [r1, #0x7c]
	mov r0, r5
	bl FUN_0206cc00
	add r1, r4, #0x3100
	strh r0, [r1, #0x7e]
	mov r0, r7
	mov r1, r5
	bl FUN_0204b754
	add r1, r4, #0x3100
	strh r0, [r1, #0x80]
	mov r0, r5
	bl FUN_0204fb60
	add r1, r4, #0x3100
	strh r0, [r1, #0x82]
	mov r0, r5
	bl FUN_0206d8b8
	add r1, r4, #0x3000
	str r0, [r1, #0x184]
	mov r0, r5
	bl FUN_0206d8a8
	add r1, r4, #0x3000
	str r0, [r1, #0x188]
	mov r0, r5
	bl FUN_0206d714
	add r1, r4, #0x3000
	str r6, [r1, #0x18c]
	strb r0, [r1, #0x192]
	mov r0, #1
	strb r0, [r1, #0x193]
	mov r0, r5
	bl FUN_0206ccdc
	add r1, r4, #0x3100
	strh r0, [r1, #0x4e]
	mov r0, r5
	bl FUN_0206ccec
	add r1, r4, #0x3100
	strh r0, [r1, #0x50]
	mov r0, r5
	bl FUN_0206cc84
	add r1, r4, #0x3100
	strh r0, [r1, #0x52]
	mov r0, r5
	bl FUN_0206cc94
	add r1, r4, #0x3100
	strh r0, [r1, #0x54]
_0211C7F0:
	ldr r0, _0211C814 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C800: .word 0x0209BA20
_0211C804: .word 0x020A9C40
_0211C808: .word 0x020A0640
_0211C80C: .word 0x020A1664
_0211C810: .word 0x020AF81C
_0211C814: .word 0x0209A0AC
	arm_func_end FUN_ov60_0211c54c

	arm_func_start FUN_ov60_0211c818
FUN_ov60_0211c818: ; 0x0211C818
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x194]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C84C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x194]
	ldmfd sp!, {r4, pc}
_0211C84C: .word 0x02099F38
	arm_func_end FUN_ov60_0211c818

	arm_func_start FUN_ov60_0211c850
FUN_ov60_0211c850: ; 0x0211C850
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x74
	mov r6, r0
	add r0, r6, #0x3000
	ldr r1, [r0, #0x144]
	ldr r0, _0211C8E4 ; =0x0209BA20
	mov r1, r1, lsl #0x10
	add r2, sp, #0xc
	mov r1, r1, lsr #0x10
	bl FUN_0204bd64
	cmp r0, #1
	addne sp, sp, #0x74
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldrh r2, [sp, #0x64]
	mov r5, #0x32
	mov r4, #0
	str r5, [sp]
	add r0, r6, #0x3000
	ldr r0, [r0, #0x144]
	ldr r7, _0211C8E8 ; =0x02099EC0
	mov r1, r0, lsl #0x10
	ldr r0, [r7]
	mov r3, r4
	mov r1, r1, lsr #0x10
	bl FUN_02056ed4
	ldrh r1, [sp, #0x64]
	add r0, r6, #0x3000
	mov r3, r4
	stmia sp, {r1, r4, r5}
	ldr r1, [r0, #0x144]
	ldr r0, [r7]
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, #1
	bl FUN_02056b24
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C8E4: .word 0x0209BA20
_0211C8E8: .word 0x02099EC0
	arm_func_end FUN_ov60_0211c850

	arm_func_start FUN_ov60_0211c8ec
FUN_ov60_0211c8ec: ; 0x0211C8EC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, _0211C96C ; =0x02099EC0
	mov r6, #1
	ldr r0, [r0]
	mov r1, r6
	bl FUN_020571e0
	mov r5, r0
	ldr r4, _0211C970 ; =0x02099F58
	ldr r2, _0211C974 ; =0x00000172
	ldr r0, [r4]
	mov r1, r5
	bl  FUN_ov16_021174ac
	mov r0, #0
	stmia sp, {r0, r6}
	ldr r0, [r4]
	mov r1, r5
	mov r2, #4
	mov r3, #3
	bl  FUN_ov16_0211702c
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0x3b
	mov r3, #0x5d
	bl  FUN_ov16_02117514
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	mov r2, #2
	bl  FUN_ov16_02117598
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_0211C96C: .word 0x02099EC0
_0211C970: .word 0x02099F58
_0211C974: .word 0x00000172
	arm_func_end FUN_ov60_0211c8ec

	arm_func_start FUN_ov60_0211c978
FUN_ov60_0211c978: ; 0x0211C978
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r6, #0
	str r6, [sp, #0x14]
	mov r10, #8
	str r10, [sp]
	mov r9, #0x28
	str r9, [sp, #4]
	mov r1, #5
	mov r4, #6
	str r1, [sp, #8]
	mov r2, #0x190
	str r2, [sp, #0xc]
	mov r8, #1
	mov r1, r4
	mov r3, r6
	mov r2, #0x14
	mov r5, r0
	str r8, [sp, #0x10]
	bl FUN_ov60_0211f308
	ldr r0, _0211CCB0 ; =0x02099F38
	mov r11, #0xf
	ldr r0, [r0]
	mov r1, r11
	mov r2, r8
	bl  FUN_ov16_02112724
	mov r7, r0
	add r0, r5, #0x3000
	str r7, [r0, #0x264]
	stmia sp, {r6, r10}
	str r9, [sp, #8]
	add r0, r4, #0x180
	str r0, [sp, #0xc]
	mov r3, r4
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r5, #0x194
	sub r1, r11, #0x51
	add r0, r0, #0x3000
	stmia sp, {r0, r1}
	mov r0, #0x62
	str r0, [sp, #8]
	add r4, r11, #0x180
	str r4, [sp, #0xc]
	add r1, r5, #0x158
	str r8, [sp, #0x10]
	mov r0, r5
	add r1, r1, #0x3000
	mov r2, r7
	add r3, sp, #0x14
	bl FUN_ov60_0211b2d0
	mov r3, r10
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r10, #0x70
	str r10, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	str r8, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r5, #0x3000
	ldr r0, [r0, #0x178]
	ldr r11, _0211CCB4 ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r6, r11, r0
	add r6, r1, r6, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r6
	sub r6, r0, r1
	str r6, [sp]
	mov r0, #0x30
	stmib sp, {r0, r10}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #9
	str r8, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r5, #0x3000
	ldr r1, [r0, #0x178]
	cmp r1, #0xa
	blt _0211CB08
	mov r0, r1, lsr #0x1f
	smull r1, r6, r11, r1
	add r6, r0, r6, asr #2
	stmia sp, {r6, r9, r10}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #9
	str r8, [sp, #0x10]
	bl FUN_ov60_0211b20c
_0211CB08:
	add r0, r5, #0x3100
	ldrh r0, [r0, #0x82]
	mov r11, #1
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211CB50
_0211CB20: ; jump table
	b _0211CB50 ; case 0
	b _0211CB34 ; case 1
	b _0211CB3C ; case 2
	b _0211CB44 ; case 3
	b _0211CB4C ; case 4
_0211CB34:
	mov r6, r11
	b _0211CB50
_0211CB3C:
	mov r6, #2
	b _0211CB50
_0211CB44:
	mov r6, #3
	b _0211CB50
_0211CB4C:
	mov r6, #0
_0211CB50:
	str r6, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	str r11, [sp, #0x10]
	mov r3, #0x11
	bl FUN_ov60_0211b20c
	str r11, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r9, #0x80
	str r9, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #8
	str r11, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r5, #0x3100
	ldrsh r10, [r0, #0x4e]
	ldr r6, _0211CCB4 ; =0x66666667
	mov r8, #0x30
_0211CBC0:
	smull r1, r2, r6, r10
	mov r0, r10, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r10, r1
	stmia sp, {r2, r8, r9}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #0xa
	str r11, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, r10
	smull r0, r10, r6, r1
	mov r0, r1, lsr #0x1f
	sub r8, r8, #8
	adds r10, r0, r10, asr #2
	bne _0211CBC0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r9, #0x80
	str r9, [sp, #8]
	str r4, [sp, #0xc]
	str r11, [sp, #0x10]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #8
	mov r11, #1
	bl FUN_ov60_0211b20c
	add r0, r5, #0x3100
	ldrsh r10, [r0, #0x52]
	ldr r6, _0211CCB4 ; =0x66666667
	mov r8, #0x60
_0211CC58:
	smull r1, r2, r6, r10
	mov r0, r10, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r2
	sub r2, r10, r1
	stmia sp, {r2, r8, r9}
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, r7
	add r2, sp, #0x14
	mov r3, #0xb
	str r11, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, r10
	smull r0, r10, r6, r1
	mov r0, r1, lsr #0x1f
	sub r8, r8, #8
	adds r10, r0, r10, asr #2
	bne _0211CC58
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CCB0: .word 0x02099F38
_0211CCB4: .word 0x66666667
	arm_func_end FUN_ov60_0211c978

	arm_func_start FUN_ov60_0211ccb8
FUN_ov60_0211ccb8: ; 0x0211CCB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x68
	ldr r3, _0211D124 ; =0x0209A454
	mov r10, r1
	ldrb r1, [r3, #0x28]
	ldr r5, _0211D128 ; =0x0209BA20
	str r0, [sp, #4]
	mov r0, r5
	mov r7, #0
	mov r9, r2
	bl FUN_0207249c
	str r0, [sp, #0x1c]
	add r3, sp, #0x2c
	mov r0, r7
	mov r1, r7
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3]
	ldr r0, _0211D12C ; =0x0209A0AC
	str r7, [sp, #0x18]
	strh r7, [r2]
	strh r7, [r2, #2]
	strh r7, [r2, #4]
	strh r7, [r2, #6]
	strh r7, [r2, #8]
	str r7, [sp, #0x10]
	str r7, [sp, #0xc]
	str r7, [sp, #8]
	bl  FUN_ov16_020efa04
	cmp r9, #0
	beq _0211CEF0
	mov r0, r9
	mov r1, r7
	bl  FUN_ov16_020efa9c
	movs r4, r0
	beq _0211CD8C
	mov r6, r7
	b _0211CD84
_0211CD68:
	mov r0, r4
	mov r1, r6
	bl FUN_0206cdf8
	mov r1, r0
	mov r0, r5
	bl FUN_02074a2c
	add r6, r6, #1
_0211CD84:
	cmp r6, #6
	blt _0211CD68
_0211CD8C:
	ldr r6, _0211D128 ; =0x0209BA20
	mov r8, #0
	mov r0, r6
	mov r1, r8
	bl FUN_0205107c
	mov r1, r9
	bl FUN_0204fd68
	str r0, [sp, #0xc]
	mov r0, r6
	mov r1, r8
	bl FUN_0205106c
	mov r1, r9
	bl FUN_0205019c
	mov r5, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, r5
	bl FUN_0206d9b0
	mov r0, r6
	mov r1, r8
	mov r2, r9
	bl FUN_0204c760
	cmp r0, #0
	beq _0211CEE0
	ldr r4, _0211D130 ; =0x02099ED8
	mov r1, r9
	ldr r0, [r4]
	mov r2, r8
	bl FUN_020554b0
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl FUN_02055c20
	ldr r1, [sp, #0x14]
	mov r7, r0
	bl FUN_02054854
	str r5, [sp, #0x18]
	str r0, [sp, #0x10]
	add r5, sp, #0x2c
	add r11, sp, #0x20
	b _0211CE7C
_0211CE2C:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_020552dc
	cmp r7, #0
	mov r6, r0
	beq _0211CE78
	bl FUN_0205430c
	mov r1, #0xc
	mul r1, r8, r1
	ldr r2, [r0]
	str r2, [r5, r1]
	add r2, r5, r1
	ldr r3, [r0, #4]
	mov r1, r8, lsl #1
	str r3, [r2, #4]
	ldr r0, [r0, #8]
	str r0, [r2, #8]
	ldrh r0, [r6, #0x6a]
	strh r0, [r11, r1]
_0211CE78:
	add r8, r8, #1
_0211CE7C:
	ldr r0, [r7, #0x10]
	cmp r8, r0
	blt _0211CE2C
	ldr r0, _0211D130 ; =0x02099ED8
	ldr r0, [r0]
	bl FUN_02055310
	movs r4, r0
	beq _0211CEC0
	bl FUN_0205430c
	ldr r1, [r0]
	str r1, [sp, #0x5c]
	ldr r1, [r0, #4]
	str r1, [sp, #0x60]
	ldr r0, [r0, #8]
	str r0, [sp, #0x64]
	ldrh r0, [r4, #0x6a]
	strh r0, [sp, #0x28]
_0211CEC0:
	ldr r4, _0211D130 ; =0x02099ED8
	ldr r1, [sp, #0x14]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_02055938
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	bl FUN_02055274
_0211CEE0:
	ldr r0, _0211D128 ; =0x0209BA20
	mov r2, r9
	mov r1, #0
	bl FUN_0204d3c0
_0211CEF0:
	cmp r10, #0
	beq _0211D10C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0211CF2C
	ldr r0, [sp, #4]
	add r0, r0, #0x3000
	ldr r0, [r0, #0x1a8]
	cmp r0, #0x10
	bge _0211CF2C
	ldr r0, _0211D128 ; =0x0209BA20
	mov r1, #0
	bl FUN_0205107c
	bl FUN_0204fda4
	str r0, [sp, #0xc]
_0211CF2C:
	ldr r0, [sp, #4]
	mov r1, r10
	add r0, r0, #0x33c0
	bl FUN_0206c718
	ldr r5, _0211D12C ; =0x0209A0AC
	mov r4, r0
	mov r0, r5
	bl FUN_0206c788
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0206c56c
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0211CF84
	ldr r0, _0211D128 ; =0x0209BA20
	mov r5, #1
	ldr r3, [sp, #0xc]
	mov r2, r10
	mov r1, #0
	str r5, [sp]
	bl FUN_0204c92c
_0211CF84:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0211D074
	mov r8, #0
	ldr r0, _0211D128 ; =0x0209BA20
	mov r1, r8
	bl FUN_0205106c
	mov r5, r0
	bl FUN_02050038
	mov r1, r0
	sub r0, r8, #1
	cmp r1, r0
	beq _0211D074
	ldr r3, [sp, #8]
	mov r0, r5
	mov r2, r10
	bl FUN_020501bc
	ldrh r3, [r4, #0x58]
	mov r0, #0x32
	ldr r5, _0211D130 ; =0x02099ED8
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r10
	mov r2, r8
	bl FUN_02055004
	mov r1, r0
	ldr r2, [sp, #0x10]
	ldr r0, [r5]
	bl FUN_02055890
	add r6, sp, #0x2c
	add r11, sp, #0x20
	b _0211D03C
_0211D004:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_020552dc
	movs r9, r0
	beq _0211D038
	mov r1, #0xc
	mla r1, r8, r1, r6
	ldmia r1, {r1, r2, r3}
	bl FUN_020542c8
	mov r1, r8, lsl #1
	ldrh r1, [r11, r1]
	mov r0, r9
	bl FUN_02054398
_0211D038:
	add r8, r8, #1
_0211D03C:
	ldr r0, [r7, #0x10]
	cmp r8, r0
	blt _0211D004
	ldr r0, _0211D130 ; =0x02099ED8
	ldr r0, [r0]
	bl FUN_02055310
	movs r5, r0
	beq _0211D074
	add r1, sp, #0x5c
	ldmia r1, {r1, r2, r3}
	bl FUN_020542c8
	ldrh r1, [sp, #0x28]
	mov r0, r5
	bl FUN_02054398
_0211D074:
	mov r0, r4
	bl FUN_0206dcd4
	ldr r1, [sp, #0x1c]
	mov r6, #0
	ldrh r2, [r1, #0x30]
	mov r1, r6
	bl FUN_0206def8
	mov r0, r4
	bl FUN_0206dcd4
	mov r5, #1
	mov r1, r5
	mov r2, r6
	bl FUN_0206def8
	mov r0, r4
	bl FUN_0206dcd4
	mov r1, #2
	mov r2, r6
	bl FUN_0206def8
	rsb r1, r5, #0x1000
	ldr r0, _0211D134 ; =0x020A108A
	and r1, r10, r1
	bl FUN_02050930
	rsb r0, r5, #0x1000
	and r1, r10, r0
	ldr r0, _0211D138 ; =0x020A0DB0
	bl FUN_02050854
	cmp r4, #0
	beq _0211D10C
	b _0211D104
_0211D0E8:
	mov r0, r4
	mov r1, r6
	bl FUN_0206cdf8
	mov r1, r0
	ldr r0, _0211D128 ; =0x0209BA20
	bl FUN_02074a2c
	add r6, r6, #1
_0211D104:
	cmp r6, #6
	blt _0211D0E8
_0211D10C:
	cmp r10, #0
	ldrne r0, _0211D13C ; =0x02099EA4
	mov r1, #0
	strneh r1, [r0]
	add sp, sp, #0x68
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D124: .word 0x0209A454
_0211D128: .word 0x0209BA20
_0211D12C: .word 0x0209A0AC
_0211D130: .word 0x02099ED8
_0211D134: .word 0x020A108A
_0211D138: .word 0x020A0DB0
_0211D13C: .word 0x02099EA4
	arm_func_end FUN_ov60_0211ccb8

	arm_func_start FUN_ov60_0211d140
FUN_ov60_0211d140: ; 0x0211D140
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r9, r0
	add r0, r9, #0x3000
	ldr r0, [r0, #0x268]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D334 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r8, #0xc8
	mov r0, #0x10
_0211D18C:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211D18C
	add r0, r9, #0x3000
	str r7, [r0, #0x268]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x38
	add r11, sp, #0x14
	str r5, [sp, #8]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0xc]
	mov r4, #1
	mov r3, #0x19
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, r9
	sub r8, r8, #1
	mov r10, #0x44
	bl FUN_ov60_0211e634
	mov r2, r0
	ldr r1, _0211D338 ; =0x02120244
	add r0, sp, #0x18
	bl FUN_02023c40
	add r0, r9, #0x198
	add r0, r0, #0x3000
	stmia sp, {r0, r6, r10}
	str r8, [sp, #0xc]
	add r1, sp, #0x18
	str r4, [sp, #0x10]
	mov r0, r9
	mov r2, r7
	mov r3, r11
	bl FUN_ov60_0211b2d0
	str r6, [sp]
	str r5, [sp, #4]
	mov r10, #0x68
	str r10, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, #2
	mov r1, r7
	str r0, [sp]
	mov r7, #0x98
	stmib sp, {r7, r10}
	str r8, [sp, #0xc]
	mov r2, r11
	mov r3, #3
	mov r0, r9
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, r4
	mov r0, r9
	bl FUN_ov60_0211ddc4
	add r0, r9, #0x3000
	mov r3, r5
	mov r2, #6
	str r7, [r0, #0x2b8]
	str r10, [r0, #0x2bc]
	str r10, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r5, #0x18
	add r9, r2, #0x25c
	str r5, [sp, #8]
	ldr r4, _0211D33C ; =0x02099EB4
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r10, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r7
	mov r2, #7
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #8
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D334: .word 0x02099F38
_0211D338: .word 0x02120244
_0211D33C: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d140

	arm_func_start FUN_ov60_0211d340
FUN_ov60_0211d340: ; 0x0211D340
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x268]
	cmp r1, #0
	beq _0211D370
	ldr r0, _0211D3AC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x268]
_0211D370:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x198]
	cmp r1, #0
	beq _0211D398
	ldr r0, _0211D3AC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x198]
_0211D398:
	ldr r0, _0211D3B0 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211D3AC: .word 0x02099F38
_0211D3B0: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d340

	arm_func_start FUN_ov60_0211d3b4
FUN_ov60_0211d3b4: ; 0x0211D3B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r9, r0
	add r0, r9, #0x3000
	ldr r0, [r0, #0x26c]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D5A4 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r8, #0xc8
	mov r0, #0x10
_0211D400:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211D400
	add r0, r9, #0x3000
	str r7, [r0, #0x26c]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x38
	add r11, sp, #0x14
	str r5, [sp, #8]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0xc]
	mov r4, #1
	mov r3, #0x19
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r9, #0x158
	add r2, r0, #0x3000
	ldr r1, _0211D5A8 ; =0x02120270
	add r0, sp, #0x18
	sub r8, r8, #1
	mov r10, #0x44
	bl FUN_02023c40
	add r0, r9, #0x198
	add r0, r0, #0x3000
	stmia sp, {r0, r6, r10}
	str r8, [sp, #0xc]
	add r1, sp, #0x18
	str r4, [sp, #0x10]
	mov r0, r9
	mov r2, r7
	mov r3, r11
	bl FUN_ov60_0211b2d0
	str r6, [sp]
	str r5, [sp, #4]
	mov r10, #0x68
	str r10, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r2, r11
	mov r11, #2
	mov r1, r7
	str r11, [sp]
	mov r7, #0x98
	stmib sp, {r7, r10}
	str r8, [sp, #0xc]
	mov r3, #3
	mov r0, r9
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, r11
	mov r0, r9
	bl FUN_ov60_0211ddc4
	add r0, r9, #0x3000
	mov r3, r5
	mov r2, #6
	str r7, [r0, #0x2dc]
	str r10, [r0, #0x2e0]
	str r10, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r5, #0x18
	add r9, r2, #0x25c
	str r5, [sp, #8]
	ldr r4, _0211D5AC ; =0x02099EB4
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r10, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r7
	mov r2, #7
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #8
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D5A4: .word 0x02099F38
_0211D5A8: .word 0x02120270
_0211D5AC: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d3b4

	arm_func_start FUN_ov60_0211d5b0
FUN_ov60_0211d5b0: ; 0x0211D5B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x26c]
	cmp r1, #0
	beq _0211D5E0
	ldr r0, _0211D61C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x26c]
_0211D5E0:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x198]
	cmp r1, #0
	beq _0211D608
	ldr r0, _0211D61C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x198]
_0211D608:
	ldr r0, _0211D620 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211D61C: .word 0x02099F38
_0211D620: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d5b0

	arm_func_start FUN_ov60_0211d624
FUN_ov60_0211d624: ; 0x0211D624
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	ldr r1, _0211D830 ; =0x020A0640
	mov r9, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	bne _0211D650
	ldrb r0, [r1, #0x86]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D650:
	add r0, r9, #0x3000
	ldr r0, [r0, #0x270]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D834 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r8, #0xc8
	mov r0, #0x10
_0211D690:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211D690
	add r0, r9, #0x3000
	str r7, [r0, #0x270]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x38
	add r11, sp, #0x14
	str r5, [sp, #8]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0xc]
	mov r4, #1
	mov r3, #0x1a
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	ldr r1, _0211D838 ; =0x02120298
	add r0, sp, #0x18
	sub r8, r8, #1
	mov r10, #0x3e
	bl FUN_02023c40
	add r0, r9, #0x198
	add r0, r0, #0x3000
	stmia sp, {r0, r6, r10}
	str r8, [sp, #0xc]
	add r1, sp, #0x18
	str r4, [sp, #0x10]
	mov r0, r9
	mov r2, r7
	mov r3, r11
	bl FUN_ov60_0211b2d0
	str r6, [sp]
	str r5, [sp, #4]
	mov r10, #0x68
	str r10, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #3
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, #2
	mov r1, r7
	str r0, [sp]
	mov r7, #0x98
	stmib sp, {r7, r10}
	str r8, [sp, #0xc]
	mov r2, r11
	mov r0, r9
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r1, #3
	mov r0, r9
	bl FUN_ov60_0211ddc4
	add r0, r9, #0x3000
	str r4, [r0, #0x2f4]
	mov r2, #6
	str r5, [r0, #0x300]
	str r10, [r0, #0x304]
	mov r3, r5
	str r10, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r5, #0x18
	add r9, r2, #0x25c
	str r5, [sp, #8]
	ldr r4, _0211D83C ; =0x02099EB4
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r10, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r7
	mov r2, #7
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #8
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D830: .word 0x020A0640
_0211D834: .word 0x02099F38
_0211D838: .word 0x02120298
_0211D83C: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d624

	arm_func_start FUN_ov60_0211d840
FUN_ov60_0211d840: ; 0x0211D840
	stmfd sp!, {r4, lr}
	ldr r1, _0211D8C8 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	bne _0211D864
	ldrb r0, [r1, #0x86]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_0211D864:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x270]
	cmp r1, #0
	beq _0211D88C
	ldr r0, _0211D8CC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x270]
_0211D88C:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x198]
	cmp r1, #0
	beq _0211D8B4
	ldr r0, _0211D8CC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x198]
_0211D8B4:
	ldr r0, _0211D8D0 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211D8C8: .word 0x020A0640
_0211D8CC: .word 0x02099F38
_0211D8D0: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d840

	arm_func_start FUN_ov60_0211d8d4
FUN_ov60_0211d8d4: ; 0x0211D8D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	ldr r1, _0211DADC ; =0x020A0640
	mov r9, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	bne _0211D900
	ldrb r0, [r1, #0x86]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D900:
	add r0, r9, #0x3000
	ldr r0, [r0, #0x274]
	cmp r0, #0
	addne sp, sp, #0x58
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211DAE0 ; =0x02099F38
	mov r1, #5
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r2, #0
	mov r7, r0
	add r1, sp, #0x18
	str r2, [sp, #0x14]
	mov r8, #0xc8
	mov r0, #0x10
_0211D940:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211D940
	add r0, r9, #0x3000
	str r7, [r0, #0x274]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x38
	add r11, sp, #0x14
	str r5, [sp, #8]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	str r8, [sp, #0xc]
	mov r4, #1
	mov r3, #0x19
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	ldr r1, _0211DAE4 ; =0x021202D0
	add r0, sp, #0x18
	sub r8, r8, #1
	mov r10, #0x4c
	bl FUN_02023c40
	add r0, r9, #0x198
	add r0, r0, #0x3000
	stmia sp, {r0, r6, r10}
	str r8, [sp, #0xc]
	add r1, sp, #0x18
	str r4, [sp, #0x10]
	mov r0, r9
	mov r2, r7
	mov r3, r11
	bl FUN_ov60_0211b2d0
	str r6, [sp]
	str r5, [sp, #4]
	mov r10, #0x68
	str r10, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r11
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, #2
	mov r1, r7
	str r0, [sp]
	mov r7, #0x98
	stmib sp, {r7, r10}
	str r8, [sp, #0xc]
	mov r2, r11
	mov r3, #3
	mov r0, r9
	str r4, [sp, #0x10]
	bl FUN_ov60_0211b20c
	mov r0, r9
	mov r1, #4
	bl FUN_ov60_0211ddc4
	add r0, r9, #0x3000
	mov r3, r5
	mov r2, #6
	str r7, [r0, #0x324]
	str r10, [r0, #0x328]
	str r10, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r5, #0x18
	add r9, r2, #0x25c
	str r5, [sp, #8]
	ldr r4, _0211DAE8 ; =0x02099EB4
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r10, [sp]
	str r8, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	ldr r0, [r4]
	mov r3, r7
	mov r2, #7
	mov r1, r6
	bl  FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #8
	mov r1, r6
	mov r3, r6
	bl  FUN_ov16_0210fba4
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DADC: .word 0x020A0640
_0211DAE0: .word 0x02099F38
_0211DAE4: .word 0x021202D0
_0211DAE8: .word 0x02099EB4
	arm_func_end FUN_ov60_0211d8d4

	arm_func_start FUN_ov60_0211daec
FUN_ov60_0211daec: ; 0x0211DAEC
	stmfd sp!, {r4, lr}
	ldr r1, _0211DB74 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x84]
	cmp r0, #0
	bne _0211DB10
	ldrb r0, [r1, #0x86]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_0211DB10:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x274]
	cmp r1, #0
	beq _0211DB38
	ldr r0, _0211DB78 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x274]
_0211DB38:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x198]
	cmp r1, #0
	beq _0211DB60
	ldr r0, _0211DB78 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x198]
_0211DB60:
	ldr r0, _0211DB7C ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211DB74: .word 0x020A0640
_0211DB78: .word 0x02099F38
_0211DB7C: .word 0x02099EB4
	arm_func_end FUN_ov60_0211daec

	arm_func_start FUN_ov60_0211db80
FUN_ov60_0211db80: ; 0x0211DB80
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xcc
	mov r9, r0
	add r0, r9, #0x3000
	ldr r0, [r0, #0x280]
	cmp r0, #0
	addne sp, sp, #0xcc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211DD04 ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	mov r1, #0
	ldr r4, _0211DD08 ; =0x0211F8FC
	add r3, sp, #0x18
	mov r7, r0
	str r1, [sp, #0x14]
	mov r8, #0xc8
	mov r2, #0x19
_0211DBD0:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211DBD0
	ldr r0, _0211DD0C ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	add r0, sp, #0x4a
	bne _0211DC08
	add r1, sp, #0x18
	bl STD_CopyString
	b _0211DC18
_0211DC08:
	add r2, r9, #0x158
	ldr r1, _0211DD10 ; =0x021202F0
	add r2, r2, #0x3000
	bl FUN_02023c40
_0211DC18:
	add r0, r9, #0x3000
	str r7, [r0, #0x280]
	mov r6, #1
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	add r5, sp, #0x14
	str r8, [sp, #0xc]
	mov r0, r9
	mov r1, r7
	mov r2, r5
	mov r3, #0x19
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b20c
	add r0, r9, #0x3b0
	add r0, r0, #0x3000
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #0x43
	str r0, [sp, #8]
	sub r8, r8, #1
	str r8, [sp, #0xc]
	add r1, sp, #0x4a
	mov r0, r9
	mov r2, r7
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov60_0211b2d0
	mov r1, #0x68
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0xb
	str r1, [sp, #8]
	sub r2, r8, #1
	str r2, [sp, #0xc]
	mov r0, r9
	mov r3, r4
	str r6, [sp, #0x10]
	mov r1, #0xf
	mov r2, #4
	bl FUN_ov60_0211f308
	str r4, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r2, #0x258
	str r2, [sp, #0xc]
	ldr r0, _0211DD14 ; =0x02099EB4
	mov r3, r4
	ldr r0, [r0]
	mov r1, #5
	mov r2, #8
	bl  FUN_ov16_0210fba4
	add sp, sp, #0xcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211DD04: .word 0x02099F38
_0211DD08: .word 0x0211F8FC
_0211DD0C: .word 0x020A0640
_0211DD10: .word 0x021202F0
_0211DD14: .word 0x02099EB4
	arm_func_end FUN_ov60_0211db80

	arm_func_start FUN_ov60_0211dd18
FUN_ov60_0211dd18: ; 0x0211DD18
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3000
	ldr r1, [r0, #0x280]
	cmp r1, #0
	beq _0211DD48
	ldr r0, _0211DDBC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x280]
_0211DD48:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x3b0]
	cmp r1, #0
	beq _0211DD70
	ldr r0, _0211DDBC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r4, #0x3000
	mov r1, #0
	str r1, [r0, #0x3b0]
_0211DD70:
	add r0, r4, #0x3000
	ldr r1, [r0, #0x284]
	cmp r1, #0
	beq _0211DDA8
	ldr r0, _0211DDBC ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r4, #0x3000
	mov r2, #0
	ldr r1, _0211DDC0 ; =0x02099EB4
	str r2, [r0, #0x284]
	ldr r0, [r1]
	mov r1, #0xb
	bl  FUN_ov16_0210eab4
_0211DDA8:
	ldr r0, _0211DDC0 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl  FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211DDBC: .word 0x02099F38
_0211DDC0: .word 0x02099EB4
	arm_func_end FUN_ov60_0211dd18

	arm_func_start FUN_ov60_0211ddc4
FUN_ov60_0211ddc4: ; 0x0211DDC4
	add r0, r0, #0x288
	add r0, r0, #0x3000
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211DDE0 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211DDE0: .word MI_CpuFill8
	arm_func_end FUN_ov60_0211ddc4

	arm_func_start FUN_ov60_0211dde4
FUN_ov60_0211dde4: ; 0x0211DDE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r4, #0x24
	mul r7, r1, r4
	add r1, r0, #0x288
	add r6, r1, #0x3000
	ldr r1, [r6, r7]
	ldr r12, _0211DED0 ; =0x0211F8B8
	mov r4, r1, lsr #0x1f
	rsb r1, r4, r1, lsl #29
	add r4, r4, r1, ror #29
	str r2, [r6, r7]
	add lr, r0, r7
	mov r10, r2, lsr #0x1f
	mov r5, r4, lsl #4
	rsb r4, r10, r2, lsl #29
	add r4, r10, r4, ror #29
	mov r4, r4, lsl #4
	add r8, r0, #0x28c
	ldr r1, _0211DED4 ; =0x0211F8BC
	add r2, lr, #0x3000
	mov r6, #1
	str r6, [r2, #0x2a4]
	add r6, r8, #0x3000
	ldr r12, [r12]
	add r9, r0, #0x290
	add r10, r0, #0x294
	str r12, [r6, r7]
	add r12, r5, #0x20
	add r5, r9, #0x3000
	ldr r8, [r1]
	cmp r3, #0
	add r0, r0, #0x298
	str r12, [r5, r7]
	add r1, r10, #0x3000
	str r8, [r1, r7]
	add r4, r4, #0x20
	add r8, r0, #0x3000
	str r4, [r8, r7]
	ldr r4, [r1, r7]
	ldr r0, [r6, r7]
	ldr r1, _0211DED8 ; =0x55555556
	sub r4, r4, r0
	smull r0, r6, r1, r4
	add r6, r6, r4, lsr #31
	str r6, [r2, #0x29c]
	ldr r4, [r8, r7]
	ldr r0, [r5, r7]
	addeq sp, sp, #0x10
	sub r3, r4, r0
	smull r0, r4, r1, r3
	add r4, r4, r3, lsr #31
	str r4, [r2, #0x2a0]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DEDC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DED0: .word 0x0211F8B8
_0211DED4: .word 0x0211F8BC
_0211DED8: .word 0x55555556
_0211DEDC: .word 0x0209AC44
	arm_func_end FUN_ov60_0211dde4

	arm_func_start FUN_ov60_0211dee0
FUN_ov60_0211dee0: ; 0x0211DEE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r2, #0x24
	mul r3, r1, r2
	mov r4, r0
	add r0, r4, #0x2a8
	add r8, r0, #0x3000
	add r2, r4, r3
	add r12, r2, #0x3000
	add r0, r4, #0x3000
	ldr r7, [r8, r3]
	ldr r6, [r0, #0x248]
	ldr r5, _0211E008 ; =0x0211F8C0
	ldr r2, [r12, #0x28c]
	ldr r0, [r12, #0x290]
	add r7, r7, #1
	str r7, [r8, r3]
	ldr lr, [r12, #0x29c]
	ldr r8, [r12, #0x2a8]
	ldr r3, [r12, #0x2a0]
	mla r7, lr, r8, r2
	mla r8, r3, r8, r0
	cmp lr, #0
	ldr r5, [r5]
	ldr r0, [r12, #0x294]
	bge _0211DF54
	cmp r7, r0
	movlt r7, r0
	b _0211DF5C
_0211DF54:
	cmp r7, r0
	movgt r7, r0
_0211DF5C:
	mov r0, #0x24
	mla r0, r1, r0, r4
	add r0, r0, #0x3000
	ldr r2, [r0, #0x2a0]
	ldr r0, [r0, #0x298]
	cmp r2, #0
	bge _0211DF84
	cmp r8, r0
	movlt r8, r0
	b _0211DF8C
_0211DF84:
	cmp r8, r0
	movgt r8, r0
_0211DF8C:
	mov r0, #0x24
	mla r0, r1, r0, r4
	add r1, r0, #0x3000
	ldr r0, [r1, #0x294]
	cmp r7, r0
	ldreq r0, [r1, #0x298]
	cmpeq r8, r0
	bne _0211DFD8
	mov r2, #0
	str r2, [r1, #0x2a4]
	mov r0, r4
	str r2, [r1, #0x2a8]
	bl FUN_ov60_0211f5b4
	ldr r0, _0211E00C ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _0211DFD8
	mov r0, r4
	bl FUN_ov60_0211bd2c
_0211DFD8:
	mov r0, r8, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _0211E010 ; =0x02099F38
	str r1, [sp]
	mov r3, r7, lsl #0x10
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211E008: .word 0x0211F8C0
_0211E00C: .word 0x020A0640
_0211E010: .word 0x02099F38
	arm_func_end FUN_ov60_0211dee0

	arm_func_start FUN_ov60_0211e014
FUN_ov60_0211e014: ; 0x0211E014
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r10, r0
	mov r9, r1
	mov r0, #0x24
	mla r1, r9, r0, r10
	add r0, r10, #0x3000
	add lr, r1, #0x3000
	ldr r8, [r0, #0x26c]
	ldr r12, [r0, #0x248]
	ldr r11, [r0, #0x268]
	ldr r5, [r0, #0x270]
	ldr r7, [r0, #0x274]
	ldr r4, _0211E598 ; =0x0211F8E8
	str r8, [sp, #0x38]
	ldr r6, [lr, #0x288]
	ldmia r4!, {r0, r1, r2, r3}
	str r11, [sp, #0x34]
	add r8, sp, #0x1c
	str r5, [sp, #0x3c]
	mov r5, r8
	stmia r8!, {r0, r1, r2, r3}
	ldr r2, [r4]
	ldr r0, _0211E59C ; =0x0211F8D8
	rsb r1, r6, #4
	str r2, [r8]
	add r4, sp, #0xc
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r1, [lr, #0x294]
	ldr r0, [lr, #0x298]
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	add r2, r10, #0x3340
	mov r3, r1, asr #0x10
	ldr r1, [r2, r9, lsl #3]
	str r7, [sp, #0x40]
	add r7, r1, #1
	mov r0, r0, asr #0x10
	str r7, [r2, r9, lsl #3]
	str r0, [sp]
	ldr r4, _0211E5A0 ; =0x02099F38
	str r12, [sp, #0x30]
	add r11, sp, #0x30
	ldr r0, [r4]
	ldr r2, [r5, r9, lsl #2]
	ldr r1, [r11, r9, lsl #2]
	bl  FUN_ov16_02113b78
	cmp r7, #1
	mov r8, #0
	bne _0211E1B0
	mov r0, r10
	mov r5, r8
	mov r6, r8
	mov r4, #1
	bl FUN_ov60_0211e5d0
	ldr r1, [r10, #0x10]
	cmp r1, #0
	cmpeq r0, #0
	moveq r5, r4
	beq _0211E134
	ldr r0, [r10, #0x10]
	cmp r0, #1
	bne _0211E134
	add r0, r10, #0x3000
	ldr r0, [r0, #0x2ac]
	cmp r0, #0
	movne r5, #1
_0211E134:
	cmp r5, #0
	beq _0211E578
	ldr r0, _0211E5A4 ; =0x020A9C40
	add r1, sp, #8
	add r2, sp, #4
	str r6, [sp, #8]
	str r6, [sp, #4]
	bl FUN_02045b50
	ldr r2, [sp, #8]
	ldr r1, _0211E5A8 ; =0x00000FFF
	ldr r0, _0211E5AC ; =0x020A0DB0
	and r1, r2, r1
	bl FUN_02050854
	add r0, r10, #0x3000
	ldr r3, [r0, #0x288]
	ldr r0, [r0, #0x1b4]
	mov r2, #0x3c
	add r0, r3, r0, lsl #3
	mul r5, r0, r2
	add r0, r10, r5
	ldrh r3, [r0, #0xa4]
	add r1, r10, #0x158
	add r0, r1, #0x3000
	add r1, r10, #0x3100
	strh r3, [r1, #0xa0]
	add r1, r10, #0x80
	add r1, r1, r5
	bl MI_CpuCopy8
	add r0, r10, #0x3000
	str r4, [r0, #0x368]
	b _0211E578
_0211E1B0:
	cmp r7, #3
	mov r0, #1
	bge _0211E200
	ldr r0, [r10, #0x10]
	cmp r0, #0
	bne _0211E1E0
_0211E1C8:
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl  FUN_ov16_02113f7c
	b _0211E578
_0211E1E0:
	str r8, [sp]
	add r3, sp, #0xc
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, r6, lsl #3]
_0211E1F8:
	bl  FUN_ov16_0211401c
	b _0211E578
_0211E200:
	cmp r7, #6
	bge _0211E250
	ldr r1, [r10, #0x10]
	cmp r1, #0
	bne _0211E230
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl  FUN_ov16_02113ec0
	b _0211E578
_0211E230:
	add r0, sp, #0xc
	str r8, [sp]
	add r3, r0, r6, lsl #3
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, #4]
	b _0211E1F8
_0211E250:
	cmp r7, #9
	bge _0211E26C
	ldr r0, [r10, #0x10]
	cmp r0, #0
	bne _0211E268
	b _0211E1C8
_0211E268:
	b _0211E1E0
_0211E26C:
	bne _0211E488
	ldr r0, [r10, #0x10]
	cmp r0, #0
	bne _0211E2EC
	mov r0, r10
	bl FUN_ov60_0211e5d0
	cmp r0, #0
	beq _0211E29C
	add r1, r10, #0x3000
	ldr r1, [r1, #0x144]
	cmp r0, r1
	bne _0211E2D8
_0211E29C:
	add r0, r10, #0x3000
	ldr r1, [r0, #0x144]
	mov r0, r10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, #0
	bl FUN_ov60_0211ccb8
	ldr r0, _0211E5B0 ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	bne _0211E2D4
	ldrb r0, [r0, #0x86]
	cmp r0, #0
	beq _0211E578
_0211E2D4:
	b _0211E348
_0211E2D8:
	mov r8, #1
	mov r0, r10
	mov r1, r8
	bl FUN_ov60_0211af5c
	b _0211E578
_0211E2EC:
	cmp r0, #1
	bne _0211E358
	add r1, r10, #0x3000
	ldr r0, [r1, #0x2ac]
	cmp r0, #0
	bne _0211E310
	mov r0, r10
	mov r1, r8
	b _0211E350
_0211E310:
	add r0, r10, #0x3100
	ldr r1, [r1, #0x144]
	ldrh r2, [r0, #0xa0]
	mov r1, r1, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_ov60_0211ccb8
	ldr r0, _0211E5B0 ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	bne _0211E348
	ldrb r0, [r0, #0x86]
	cmp r0, #0
	beq _0211E578
_0211E348:
	mov r0, r10
	mov r1, #3
_0211E350:
	bl FUN_ov60_0211af5c
	b _0211E574
_0211E358:
	cmp r0, #2
	bne _0211E408
	add r0, r10, #0x3000
	ldr r0, [r0, #0x2d0]
	cmp r0, #0
	bne _0211E380
	mov r0, r10
	mov r1, r8
	bl FUN_ov60_0211af5c
	b _0211E404
_0211E380:
	ldr r0, _0211E5B0 ; =0x020A0640
	ldrb r1, [r0, #0x84]
	cmp r1, #0
	beq _0211E394
	b _0211E3A0
_0211E394:
	ldrb r1, [r0, #0x86]
	cmp r1, #0
	beq _0211E3B0
_0211E3A0:
	mov r0, r10
	mov r1, #0x22
	mov r2, #0xa
	b _0211E3F4
_0211E3B0:
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	bne _0211E3E8
	ldr r0, [r10, #4]
	bl FUN_0204204c
	cmp r0, #0x4f
	mov r0, r10
	bne _0211E3DC
	mov r2, r8
	mov r1, #0x3d
	b _0211E3F4
_0211E3DC:
	mov r1, r8
	mov r2, r8
	b _0211E3F4
_0211E3E8:
	mov r1, #0x4d
	mov r0, r10
	mov r2, r1
_0211E3F4:
	bl FUN_ov60_0211ae90
	ldr r1, _0211E5B4 ; =0x02099EA4
	mov r0, #0
	strh r0, [r1]
_0211E404:
	b _0211E574
_0211E408:
	cmp r0, #3
	bne _0211E450
	add r0, r10, #0x3000
	ldr r0, [r0, #0x2f4]
	cmp r0, #0
	bne _0211E430
	mov r0, r10
	mov r1, #4
	bl FUN_ov60_0211af5c
	b _0211E44C
_0211E430:
	ldr r3, _0211E5B8 ; =0x0209A454
	mov r4, #4
	mov r0, r10
	mov r2, r8
	mov r1, #0xc
	str r4, [r3, #0x24]
	bl FUN_ov60_0211ae90
_0211E44C:
	b _0211E574
_0211E450:
	cmp r0, #4
	bne _0211E578
	add r0, r10, #0x3000
	ldr r0, [r0, #0x318]
	cmp r0, #0
	mov r0, r10
	bne _0211E478
	mov r1, #3
	bl FUN_ov60_0211af5c
	b _0211E484
_0211E478:
	mov r1, #0x22
	mov r2, #0xa
	bl FUN_ov60_0211ae90
_0211E484:
	b _0211E574
_0211E488:
	cmp r7, #0x1e
	bne _0211E578
	ldr r0, _0211E5B0 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	bne _0211E55C
	ldr r0, [r10, #4]
	bl FUN_0204204c
	cmp r0, #0x4f
	bne _0211E4C4
	mov r0, r10
	mov r2, r8
	mov r1, #0x3d
_0211E4BC:
	bl FUN_ov60_0211ae90
	b _0211E574
_0211E4C4:
	ldr r0, [r10, #4]
	bl FUN_0204204c
	cmp r0, #0x8a
	bne _0211E54C
	ldr r0, _0211E5BC ; =0x02099E8E
	ldr r1, _0211E5C0 ; =0x02099ED8
	ldrb r2, [r0]
	ldr r3, _0211E5C4 ; =0x020A12C0
	mov r0, #0x54
	mla r4, r2, r0, r3
	ldr r0, [r1]
	bl  FUN_ov0_020cd0f8 ; may be ov15
	ldr r1, _0211E5C8 ; =0x0000EFFF
	mov r0, r0, lsl #1
	ldrh r5, [r4, r0]
	add r2, r1, #0x800
	sub r3, r1, #0xd000
	and r1, r5, r1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	orr r1, r1, #0x1000
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	and r1, r1, r2
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	orr r1, r1, #0x800
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	and r1, r1, r3
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	orr r1, r1, #0x6000
	strh r1, [r4, r0]
_0211E54C:
	mov r1, #0
	mov r0, r10
	mov r2, r1
	b _0211E4BC
_0211E55C:
	ldr r0, _0211E5CC ; =0x0209AC44
	mov r1, #0x10
	bl FUN_0202cf6c
	mov r0, r10
	mov r1, #5
	bl FUN_ov60_0211af5c
_0211E574:
	mov r8, #1
_0211E578:
	cmp r8, #0
	addne r0, r10, r9, lsl #3
	mov r1, #0
	addne r0, r0, #0x3000
	strne r1, [r0, #0x33c]
	strne r1, [r0, #0x340]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E598: .word 0x0211F8E8
_0211E59C: .word 0x0211F8D8
_0211E5A0: .word 0x02099F38
_0211E5A4: .word 0x020A9C40
_0211E5A8: .word 0x00000FFF
_0211E5AC: .word 0x020A0DB0
_0211E5B0: .word 0x020A0640
_0211E5B4: .word 0x02099EA4
_0211E5B8: .word 0x0209A454
_0211E5BC: .word 0x02099E8E
_0211E5C0: .word 0x02099ED8
_0211E5C4: .word 0x020A12C0
_0211E5C8: .word 0x0000EFFF
_0211E5CC: .word 0x0209AC44
	arm_func_end FUN_ov60_0211e014

	arm_func_start FUN_ov60_0211e5d0
FUN_ov60_0211e5d0: ; 0x0211E5D0
	add r1, r0, #0x3000
	ldr r2, [r1, #0x364]
	cmp r2, #0
	addne r0, r0, #0x3100
	ldrneh r0, [r0, #0x7c]
	bxne lr
	ldr r3, [r1, #0x288]
	ldr r2, [r1, #0x1b4]
	mov r1, #0x3c
	add r2, r3, r2, lsl #3
	mla r0, r2, r1, r0
	ldrh r0, [r0, #0xa4]
	bx lr
	arm_func_end FUN_ov60_0211e5d0

	arm_func_start FUN_ov60_0211e604
FUN_ov60_0211e604: ; 0x0211E604
	add r1, r0, #0x3000
	ldr r2, [r1, #0x364]
	cmp r2, #0
	ldrne r0, [r1, #0x18c]
	bxne lr
	ldr r3, [r1, #0x288]
	ldr r2, [r1, #0x1b4]
	mov r1, #0x3c
	add r2, r3, r2, lsl #3
	mla r0, r2, r1, r0
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end FUN_ov60_0211e604

	arm_func_start FUN_ov60_0211e634
FUN_ov60_0211e634: ; 0x0211E634
	add r1, r0, #0x3000
	ldr r2, [r1, #0x364]
	cmp r2, #0
	addne r0, r0, #0x158
	addne r0, r0, #0x3000
	bxne lr
	ldr r2, [r1, #0x288]
	ldr r1, [r1, #0x1b4]
	add r3, r0, #0x80
	add r1, r2, r1, lsl #3
	mov r0, #0x3c
	mla r0, r1, r0, r3
	bx lr
	arm_func_end FUN_ov60_0211e634

	arm_func_start FUN_ov60_0211e668
FUN_ov60_0211e668: ; 0x0211E668
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211E7D8 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	addeq r0, r6, #0x3000
	ldreq r1, [r0, #0x368]
	cmpeq r1, #0
	ldreq r1, [r0, #0x1ac]
	cmpeq r1, #0
	ldreq r0, [r0, #0x3b8]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x24
	b _0211E6E4
_0211E6BC:
	mla r0, r4, r1, r6
	add r0, r0, #0x3000
	ldr r0, [r0, #0x2a4]
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x3000
	ldreq r0, [r0, #0x33c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211E6E4:
	cmp r4, #5
	blt _0211E6BC
	ldr r0, _0211E7DC ; =0x0209A0F4
	ldr r4, _0211E7E0 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl  FUN_ov16_0210f468
	cmp r0, #1
	bne _0211E734
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211E734:
	tst r5, #1
	beq _0211E748
	mov r0, r6
	bl FUN_ov60_0211e7e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E748:
	tst r5, #2
	beq _0211E75C
	mov r0, r6
	bl FUN_ov60_0211e9f0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E75C:
	tst r5, #0x400
	beq _0211E770
	mov r0, r6
	bl FUN_ov60_0211ec1c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E770:
	tst r5, #0x200
	beq _0211E784
	mov r0, r6
	bl FUN_ov60_0211ec90
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E784:
	tst r5, #0x100
	beq _0211E798
	mov r0, r6
	bl FUN_ov60_0211ecf4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E798:
	tst r5, #0x20
	beq _0211E7AC
	mov r0, r6
	bl FUN_ov60_0211ed58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7AC:
	tst r5, #0x10
	beq _0211E7C0
	mov r0, r6
	bl FUN_ov60_0211efb8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7C0:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov60_0211f214
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E7D8: .word 0x02099ED4
_0211E7DC: .word 0x0209A0F4
_0211E7E0: .word 0x02099EB4
	arm_func_end FUN_ov60_0211e668

	arm_func_start FUN_ov60_0211e7e4
FUN_ov60_0211e7e4: ; 0x0211E7E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	mov r5, #1
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211E800: ; jump table
	b _0211E818 ; case 0
	b _0211E8CC ; case 1
	b _0211E900 ; case 2
	b _0211E934 ; case 3
	b _0211E968 ; case 4
	b _0211E99C ; case 5
_0211E818:
	add r1, r4, #0x3000
	ldr r1, [r1, #0x364]
	cmp r1, #0
	bne _0211E8BC
	bl FUN_ov60_0211e604
	ldr r1, _0211E9E4 ; =0x000014A0
	tst r0, r1
	beq _0211E848
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E848:
	add r2, r4, #0x3000
	ldr r0, [r2, #0x19c]
	cmp r0, #0
	beq _0211E878
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, r5
	str r5, [r2, #0x33c]
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, r5
	bl FUN_ov60_0211f4e0
	ldmfd sp!, {r3, r4, r5, pc}
_0211E878:
	mov r0, r4
	bl FUN_ov60_0211e5d0
	cmp r0, #0
	beq _0211E8AC
	ldr r0, _0211E9E8 ; =0x0209AC44
	add r2, r4, #0x3000
	mov r1, r5
	str r5, [r2, #0x33c]
	bl FUN_0202cf6c
	mov r0, r4
	mov r1, r5
	bl FUN_ov60_0211f4e0
	ldmfd sp!, {r3, r4, r5, pc}
_0211E8AC:
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E8BC:
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E8CC:
	add r0, r4, #0x3000
	ldr r2, [r0, #0x2ac]
	mov r1, r5
	str r1, [r0, #0x344]
	cmp r2, #0
	bne _0211E8F4
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E8F4:
	ldr r0, _0211E9E8 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E900:
	add r0, r4, #0x3000
	ldr r2, [r0, #0x2d0]
	mov r1, r5
	str r1, [r0, #0x34c]
	cmp r2, #0
	bne _0211E928
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E928:
	ldr r0, _0211E9E8 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E934:
	add r0, r4, #0x3000
	ldr r2, [r0, #0x2f4]
	mov r1, r5
	str r1, [r0, #0x354]
	cmp r2, #0
	bne _0211E95C
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E95C:
	ldr r0, _0211E9E8 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E968:
	add r0, r4, #0x3000
	ldr r2, [r0, #0x318]
	mov r1, r5
	str r1, [r0, #0x35c]
	cmp r2, #0
	bne _0211E990
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E990:
	ldr r0, _0211E9E8 ; =0x0209AC44
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E99C:
	mov r1, #0xb
	bl FUN_ov60_0211f4e0
	ldr r0, _0211E9E8 ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	ldr r0, _0211E9EC ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	bne _0211E9D0
	mov r0, r4
	mov r1, #0
	bl FUN_ov60_0211af5c
	ldmfd sp!, {r3, r4, r5, pc}
_0211E9D0:
	mov r1, #0x4d
	mov r0, r4
	mov r2, r1
	bl FUN_ov60_0211ae90
	ldmfd sp!, {r3, r4, r5, pc}
_0211E9E4: .word 0x000014A0
_0211E9E8: .word 0x0209AC44
_0211E9EC: .word 0x020A0640
	arm_func_end FUN_ov60_0211e7e4

	arm_func_start FUN_ov60_0211e9f0
FUN_ov60_0211e9f0: ; 0x0211E9F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	add r2, r7, #0x3000
	ldrb r1, [r2, #0x14c]
	mov r4, #4
	mov r5, #2
	cmp r1, #0
	mov r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r3, [r7, #0x10]
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EA24: ; jump table
	b _0211EA38 ; case 0
	b _0211EA80 ; case 1
	b _0211EAE4 ; case 2
	b _0211EB48 ; case 3
	b _0211EBAC ; case 4
_0211EA38:
	mov r1, r5
	bl FUN_ov60_0211f4e0
	ldr r0, _0211EC10 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _0211EC14 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	bne _0211EA6C
	mov r0, r7
	mov r1, r5
	bl FUN_ov60_0211af5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EA6C:
	mov r1, #0x4d
	mov r0, r7
	mov r2, r1
	bl FUN_ov60_0211ae90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EA80:
	mov r3, #0x98
	mov r0, #0x68
	str r3, [r2, #0x2b8]
	ldr r6, [r2, #0x268]
	str r1, [r2, #0x2ac]
	str r0, [r2, #0x2bc]
	mov r9, #1
	ldr r8, _0211EC18 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r6
	mov r3, r5
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	add r2, r7, #0x3000
	ldr r0, _0211EC10 ; =0x0209AC44
	mov r1, r4
	str r9, [r2, #0x344]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EAE4:
	mov r3, #0x98
	mov r0, #0x68
	str r3, [r2, #0x2dc]
	ldr r6, [r2, #0x26c]
	str r1, [r2, #0x2d0]
	str r0, [r2, #0x2e0]
	mov r9, #1
	ldr r8, _0211EC18 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r6
	mov r3, r5
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	add r2, r7, #0x3000
	ldr r0, _0211EC10 ; =0x0209AC44
	mov r1, r4
	str r9, [r2, #0x34c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EB48:
	mov r3, #0x98
	mov r0, #0x68
	str r3, [r2, #0x300]
	ldr r6, [r2, #0x270]
	str r1, [r2, #0x2f4]
	str r0, [r2, #0x304]
	mov r9, #1
	ldr r8, _0211EC18 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r6
	mov r3, r5
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	add r2, r7, #0x3000
	ldr r0, _0211EC10 ; =0x0209AC44
	mov r1, r4
	str r9, [r2, #0x354]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EBAC:
	mov r3, #0x98
	mov r0, #0x68
	str r3, [r2, #0x324]
	ldr r6, [r2, #0x274]
	str r1, [r2, #0x318]
	str r0, [r2, #0x328]
	mov r9, #1
	ldr r8, _0211EC18 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r6
	mov r3, r5
	sub r2, r4, #1
	bl  FUN_ov16_02113f7c
	add r2, r7, #0x3000
	ldr r0, _0211EC10 ; =0x0209AC44
	mov r1, r4
	str r9, [r2, #0x35c]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EC10: .word 0x0209AC44
_0211EC14: .word 0x020A0640
_0211EC18: .word 0x02099F38
	arm_func_end FUN_ov60_0211e9f0

	arm_func_start FUN_ov60_0211ec1c
FUN_ov60_0211ec1c: ; 0x0211EC1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #0x3000
	ldr r2, [r1, #0x1ac]
	cmp r2, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r1, #0x3b8]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	bl FUN_ov60_0211e5d0
	cmp r0, #0
	bne _0211EC5C
	ldr r0, _0211EC8C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211EC5C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0211EC8C ; =0x0209AC44
	add r2, r4, #0x3000
	mov r1, #1
	str r1, [r2, #0x1ac]
	bl FUN_0202cf6c
	add r0, r4, #0x3000
	mov r1, #0x19
	str r1, [r0, #0x3b8]
	ldmfd sp!, {r4, pc}
_0211EC8C: .word 0x0209AC44
	arm_func_end FUN_ov60_0211ec1c

	arm_func_start FUN_ov60_0211ec90
FUN_ov60_0211ec90: ; 0x0211EC90
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x1b4]
	mov r4, #1
	add lr, r1, #0xc
	ldr r3, _0211ECEC ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #3
	str r5, [r12, #0x1b4]
	str r4, [r12, #0x368]
	bl FUN_ov60_0211f4e0
	ldr r0, _0211ECF0 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ECEC: .word 0x4EC4EC4F
_0211ECF0: .word 0x0209AC44
	arm_func_end FUN_ov60_0211ec90

	arm_func_start FUN_ov60_0211ecf4
FUN_ov60_0211ecf4: ; 0x0211ECF4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r12, r0, #0x3000
	ldr r1, [r12, #0x1b4]
	mov r4, #1
	add lr, r1, #1
	ldr r3, _0211ED50 ; =0x4EC4EC4F
	mov r1, lr, lsr #0x1f
	smull r2, r5, r3, lr
	add r5, r1, r5, asr #2
	mov r3, #0xd
	smull r1, r2, r3, r5
	sub r5, lr, r1
	mov r1, #4
	str r5, [r12, #0x1b4]
	str r4, [r12, #0x368]
	bl FUN_ov60_0211f4e0
	ldr r0, _0211ED54 ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211ED50: .word 0x4EC4EC4F
_0211ED54: .word 0x0209AC44
	arm_func_end FUN_ov60_0211ecf4

	arm_func_start FUN_ov60_0211ed58
FUN_ov60_0211ed58: ; 0x0211ED58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0x10]
	ldr r7, _0211EFAC ; =0x02099F38
	mov r5, #2
	cmp r0, #4
	mov r4, #1
	addls pc, pc, r0, lsl #2
	b _0211EFA4
_0211ED80: ; jump table
	b _0211ED94 ; case 0
	b _0211EE2C ; case 1
	b _0211EE8C ; case 2
	b _0211EEEC ; case 3
	b _0211EF4C ; case 4
_0211ED94:
	add r0, r6, #0x3000
	ldr r1, [r0, #0x364]
	cmp r1, #1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r0, #0x248]
	ldr r0, [r7]
	mov r3, r5
	mov r2, #6
	bl  FUN_ov16_02113f7c
	add r0, r6, #0x3000
	ldr r1, [r0, #0x264]
	str r4, [r0, #0x364]
	str r4, [sp]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r5
	bl  FUN_ov16_02113ec0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r5
	str r4, [sp]
	bl FUN_ov60_0211f4f8
	ldr r0, _0211EFB0 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _0211EE0C
	mov r0, r6
	bl FUN_ov60_0211bd2c
_0211EE0C:
	ldr r0, _0211EFB4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r6, #0x3000
	mov r1, #0xa
	str r1, [r0, #0x3b8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EE2C:
	add r0, r6, #0x3000
	mov r2, #0x38
	mov r1, #0x68
	ldr r6, [r0, #0x268]
	str r1, [r0, #0x2bc]
	str r4, [r0, #0x2ac]
	str r2, [r0, #0x2b8]
	str r4, [sp]
	mov r8, #3
	ldr r0, [r7]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r6
	mov r3, r5
	add r2, r8, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211EFB4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EE8C:
	add r0, r6, #0x3000
	mov r2, #0x38
	mov r1, #0x68
	ldr r6, [r0, #0x26c]
	str r1, [r0, #0x2e0]
	str r4, [r0, #0x2d0]
	str r2, [r0, #0x2dc]
	str r4, [sp]
	mov r8, #3
	ldr r0, [r7]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r6
	mov r3, r5
	add r2, r8, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211EFB4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EEEC:
	add r0, r6, #0x3000
	mov r2, #0x38
	mov r1, #0x68
	ldr r6, [r0, #0x270]
	str r1, [r0, #0x304]
	str r4, [r0, #0x2f4]
	str r2, [r0, #0x300]
	str r4, [sp]
	mov r8, #3
	ldr r0, [r7]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r6
	mov r3, r5
	add r2, r8, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211EFB4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EF4C:
	add r0, r6, #0x3000
	mov r2, #0x38
	mov r1, #0x68
	ldr r6, [r0, #0x274]
	str r1, [r0, #0x328]
	str r4, [r0, #0x318]
	str r2, [r0, #0x324]
	str r4, [sp]
	mov r8, #3
	ldr r0, [r7]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl  FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r6
	mov r3, r5
	add r2, r8, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211EFB4 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211EFA4:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211EFAC: .word 0x02099F38
_0211EFB0: .word 0x020A0640
_0211EFB4: .word 0x0209AC44
	arm_func_end FUN_ov60_0211ed58

	arm_func_start FUN_ov60_0211efb8
FUN_ov60_0211efb8: ; 0x0211EFB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldr r0, [r7, #0x10]
	ldr r8, _0211F204 ; =0x02099F38
	mov r4, #2
	cmp r0, #4
	mov r5, #1
	mov r6, #0
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211EFE0: ; jump table
	b _0211EFF4 ; case 0
	b _0211F094 ; case 1
	b _0211F0F0 ; case 2
	b _0211F14C ; case 3
	b _0211F1A8 ; case 4
_0211EFF4:
	add r0, r7, #0x3000
	ldr r1, [r0, #0x364]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #0x264]
	ldr r0, [r8]
	mov r2, r5
	mov r3, r4
	bl  FUN_ov16_02113f7c
	add r0, r7, #0x3000
	ldr r1, [r0, #0x248]
	str r6, [r0, #0x364]
	str r5, [sp]
	ldr r0, [r8]
	mov r3, r4
	mov r2, #6
	bl  FUN_ov16_02113ec0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r5
	str r5, [sp]
	bl FUN_ov60_0211f4f8
	mov r0, r7
	bl FUN_ov60_0211f5b4
	ldr r0, _0211F208 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _0211F070
	mov r0, r7
	bl FUN_ov60_0211bd2c
_0211F070:
	ldr r0, _0211F20C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, _0211F210 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	add r0, r7, #0x3000
	mov r1, #0xa
	str r1, [r0, #0x3b8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F094:
	add r0, r7, #0x3000
	mov r2, #0x98
	mov r1, #0x68
	ldr r7, [r0, #0x268]
	str r1, [r0, #0x2bc]
	str r6, [r0, #0x2ac]
	str r2, [r0, #0x2b8]
	str r5, [sp]
	mov r9, #4
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r7
	mov r3, r4
	sub r2, r9, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211F20C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F0F0:
	add r0, r7, #0x3000
	mov r2, #0x98
	mov r1, #0x68
	ldr r7, [r0, #0x26c]
	str r1, [r0, #0x2e0]
	str r6, [r0, #0x2d0]
	str r2, [r0, #0x2dc]
	str r5, [sp]
	mov r9, #4
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r7
	mov r3, r4
	sub r2, r9, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211F20C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F14C:
	add r0, r7, #0x3000
	mov r2, #0x98
	mov r1, #0x68
	ldr r7, [r0, #0x270]
	str r1, [r0, #0x304]
	str r6, [r0, #0x2f4]
	str r2, [r0, #0x300]
	str r5, [sp]
	mov r9, #4
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r7
	mov r3, r4
	sub r2, r9, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211F20C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F1A8:
	add r0, r7, #0x3000
	mov r2, #0x98
	mov r1, #0x68
	ldr r7, [r0, #0x274]
	str r1, [r0, #0x328]
	str r6, [r0, #0x318]
	str r2, [r0, #0x324]
	str r5, [sp]
	mov r9, #4
	ldr r0, [r8]
	mov r1, r7
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_02113ec0
	ldr r0, [r8]
	mov r1, r7
	mov r3, r4
	sub r2, r9, #1
	bl  FUN_ov16_02113f7c
	ldr r0, _0211F20C ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F204: .word 0x02099F38
_0211F208: .word 0x020A0640
_0211F20C: .word 0x0209AC44
_0211F210: .word 0x0209A0AC
	arm_func_end FUN_ov60_0211efb8

	arm_func_start FUN_ov60_0211f214
FUN_ov60_0211f214: ; 0x0211F214
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r5, [r6, #0x10]
	cmp r5, #0
	addeq r0, r6, #0x3000
	ldreq r0, [r0, #0x364]
	cmpeq r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mvn r4, #0
	tst r1, #0x40
	movne r4, #0
	bne _0211F254
	tst r1, #0x80
	movne r4, #1
_0211F254:
	cmp r4, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0x24
	mla r1, r5, r0, r6
	ldr r0, _0211F300 ; =0x0211F8D0
	add r2, sp, #4
	ldr r12, [r0]
	ldr r3, [r0, #4]
	add r0, r1, #0x3000
	ldr r1, _0211F304 ; =0x0211F8C4
	str r12, [sp, #4]
	str r3, [sp, #8]
	add r2, r2, r5, lsl #3
	ldr r7, [r0, #0x288]
	ldr r0, [r2, r4, lsl #2]
	ldr r1, [r1]
	add r0, r7, r0
	bl FUN_0201f9bc
	mov r8, r1
	cmp r5, #0
	bne _0211F2D8
	cmp r4, #0
	cmpeq r7, #0
	bne _0211F2C4
	mov r0, r6
	bl FUN_ov60_0211ec90
	b _0211F2D8
_0211F2C4:
	cmp r4, #1
	cmpeq r7, #7
	bne _0211F2D8
	mov r0, r6
	bl FUN_ov60_0211ecf4
_0211F2D8:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, #1
	bl FUN_ov60_0211dde4
	add r0, r6, #0x3000
	mov r1, #0xa
	str r1, [r0, #0x3b8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211F300: .word 0x0211F8D0
_0211F304: .word 0x0211F8C4
	arm_func_end FUN_ov60_0211f214

	arm_func_start FUN_ov60_0211f308
FUN_ov60_0211f308: ; 0x0211F308
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211F4D4 ; =0x02099F38
	mov r10, r0
	ldr r0, [r4]
	mov r9, r1
	mov r11, #1
	mov r8, r2
	mov r1, #2
	mov r2, r11
	mov r7, r3
	mov r5, #0
	mov r6, #0x64
	bl  FUN_ov16_02112724
	add r1, r10, r9, lsl #2
	add r2, r10, r8, lsl #2
	add r1, r1, #0x3000
	str r0, [r1, #0x248]
	add r1, r2, #0x3000
	ldr r1, [r1, #0x1dc]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	bl  FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
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
	mov r2, r11
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r11
	mov r3, r3, lsr #0x10
	bl  FUN_ov16_021139bc
	str r11, [sp]
	ldr r0, [r4]
	mov r3, #2
	mov r2, r11
	mov r1, r8
	bl  FUN_ov16_02113ec0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x38]
	cmp r0, #6
	cmpne r0, #7
	cmpne r0, #0xb
	mov r2, r1, lsl #0x10
	mov r4, #1
	ldreq r6, _0211F4D8 ; =0x00000262
	ldr r0, _0211F4DC ; =0x02099EB4
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
	strb r5, [r6, #0x10]
	ldrb r0, [sp, #0x40]
	strb r5, [r6, #0xf]
	strh r5, [r6, #0xc]
	strb r5, [r6, #0x11]
	cmp r0, #1
	bne _0211F4A0
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
	add r2, r7, #1
	add r0, r6, #0x3e
	mov r1, r5
	mov r3, r5
	bl  FUN_ov16_0210e720
_0211F4A0:
	ldr r0, [sp, #0x38]
	cmp r0, #9
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #0x10
	mov r0, r6
	mov r1, #0xa0
	mov r2, #0
	mov r3, #0x60
	str r4, [sp]
	bl  FUN_ov16_0210e674
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F4D4: .word 0x02099F38
_0211F4D8: .word 0x00000262
_0211F4DC: .word 0x02099EB4
	arm_func_end FUN_ov60_0211f308

	arm_func_start FUN_ov60_0211f4e0
FUN_ov60_0211f4e0: ; 0x0211F4E0
	ldr r0, _0211F4F0 ; =0x02099EB4
	ldr r12, _0211F4F4 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211F4F0: .word 0x02099EB4
_0211F4F4: .word  FUN_ov16_0210efac
	arm_func_end FUN_ov60_0211f4e0

	arm_func_start FUN_ov60_0211f4f8
FUN_ov60_0211f4f8: ; 0x0211F4F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211F5AC ; =0x02099EB4
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
	add r1, r9, r8, lsl #2
	ldr r0, _0211F5B0 ; =0x02099F38
	str r5, [sp]
	add r1, r1, #0x3000
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x248]
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
_0211F5AC: .word 0x02099EB4
_0211F5B0: .word 0x02099F38
	arm_func_end FUN_ov60_0211f4f8

	arm_func_start FUN_ov60_0211f5b4
FUN_ov60_0211f5b4: ; 0x0211F5B4
	stmfd sp!, {r3, lr}
	add r1, r0, #0x3000
	ldr r2, [r1, #0x140]
	ldr r3, [r1, #0x288]
	ldr r1, [r1, #0x1b4]
	cmp r2, #0x64
	add r1, r3, r1, lsl #3
	ldmltfd sp!, {r3, pc}
	cmp r1, #0x64
	mov r1, #1
	blt _0211F5F4
	mov r2, #2
	mov r3, r2
	str r1, [sp]
	bl FUN_ov60_0211f4f8
	ldmfd sp!, {r3, pc}
_0211F5F4:
	mov r3, r1
	mov r2, #0
	str r1, [sp]
	bl FUN_ov60_0211f4f8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov60_0211f5b4

	arm_func_start FUN_ov60_0211f608
FUN_ov60_0211f608: ; 0x0211F608
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211F748 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl  FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #6
	addeq r0, r6, #0x3000
	ldreq r1, [r0, #0x368]
	cmpeq r1, #0
	ldreq r1, [r0, #0x1ac]
	cmpeq r1, #0
	ldreq r0, [r0, #0x3b8]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x24
	b _0211F684
_0211F65C:
	mla r0, r4, r1, r6
	add r0, r0, #0x3000
	ldr r0, [r0, #0x2a4]
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x3000
	ldreq r0, [r0, #0x33c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211F684:
	cmp r4, #5
	blt _0211F65C
	ldr r4, _0211F74C ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl  FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F6B0: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211F6C8 ; case 1
	b _0211F6F8 ; case 2
	b _0211F710 ; case 3
	b _0211F72C ; case 4
	b _0211F6E0 ; case 5
_0211F6C8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov60_0211f750
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F6E0:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov60_0211f810
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F6F8:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov60_0211f814
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F710:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov60_0211f87c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F72C:
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov60_0211f87c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F748: .word 0x02099ED4
_0211F74C: .word 0x02099EB4
	arm_func_end FUN_ov60_0211f608

	arm_func_start FUN_ov60_0211f750
FUN_ov60_0211f750: ; 0x0211F750
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x3000
	cmp r6, #5
	str r6, [r1, #0x3b4]
	sub r4, r6, #0xc
	ldr r5, [r1, #0x288]
	cmpne r6, #6
	beq _0211F784
	cmp r6, #7
	beq _0211F790
	b _0211F794
_0211F784:
	mov r0, r7
	bl FUN_ov60_0211ed58
	b _0211F794
_0211F790:
	bl FUN_ov60_0211efb8
_0211F794:
	cmp r6, #0xc
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0x13
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r7, #0x3000
	ldr r0, [r0, #0x364]
	cmp r0, #0
	bne _0211F7DC
	cmp r5, r4
	mov r0, r7
	bne _0211F7C8
	bl FUN_ov60_0211e7e4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F7C8:
	mov r2, r4
	mov r1, #0
	mov r3, #1
	bl FUN_ov60_0211dde4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211F7DC:
	mov r0, r7
	bl FUN_ov60_0211efb8
	mov r0, r7
	mov r2, r4
	mov r1, #0
	mov r3, #1
	bl FUN_ov60_0211dde4
	add r0, r7, #0x3000
	ldr r2, [r0, #0x294]
	ldr r1, [r0, #0x298]
	str r2, [r0, #0x28c]
	str r1, [r0, #0x290]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov60_0211f750

	arm_func_start FUN_ov60_0211f810
FUN_ov60_0211f810: ; 0x0211F810
	bx lr
	arm_func_end FUN_ov60_0211f810

	arm_func_start FUN_ov60_0211f814
FUN_ov60_0211f814: ; 0x0211F814
	stmfd sp!, {r3, lr}
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211F824: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _0211F854 ; case 1
	b _0211F85C ; case 2
	b _0211F86C ; case 3
	b _0211F874 ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _0211F854 ; case 6
	b _0211F854 ; case 7
	ldmfd sp!, {r3, pc} ; case 8
	b _0211F864 ; case 9
	b _0211F864 ; case 10
	b _0211F854 ; case 11
_0211F854:
	bl FUN_ov60_0211e7e4
	ldmfd sp!, {r3, pc}
_0211F85C:
	bl FUN_ov60_0211e9f0
	ldmfd sp!, {r3, pc}
_0211F864:
	bl FUN_ov60_0211ec1c
	ldmfd sp!, {r3, pc}
_0211F86C:
	bl FUN_ov60_0211ec90
	ldmfd sp!, {r3, pc}
_0211F874:
	bl FUN_ov60_0211ecf4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov60_0211f814

	arm_func_start FUN_ov60_0211f87c
FUN_ov60_0211f87c: ; 0x0211F87C
	bx lr
	arm_func_end FUN_ov60_0211f87c

	arm_func_start FUN_ov60_0211f880
FUN_ov60_0211f880: ; 0x0211F880
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x33c0
	bl FUN_0206c110
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov60_0211f880

	arm_func_start FUN_ov60_0211f8a0
FUN_ov60_0211f8a0: ; 0x0211F8A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x33c0
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov60_0211f8a0
_0211F8B8:
	.byte 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x82, 0xA0, 0x82, 0xBD
	.byte 0x82, 0xE7, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA9, 0x82, 0xDC, 0x82, 0xF0, 0x0A, 0x83
	.byte 0x81, 0x83, 0x93, 0x83, 0x6F, 0x81, 0x5B, 0x82, 0xC9, 0x82, 0xC2, 0x82, 0xA2, 0x82, 0xA9, 0x82
	.byte 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.byte 0x98, 0xFD, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x28, 0xFE, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x68, 0xFE, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0xB8, 0xFE, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x08, 0xFF, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x28, 0xFF, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x68, 0xFF, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x38, 0x00, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00, 0x18, 0xFD, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0x38, 0xFC, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0xF8, 0xFC, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x58, 0xFC, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xD8, 0xFC, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x68, 0xFC, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xB8, 0xFC, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00
	.byte 0x88, 0xFC, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00, 0x28, 0xFD, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00
	.byte 0x48, 0xFD, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x58, 0xFD, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00, 0x78, 0xFD, 0x11, 0x02, 0x15, 0x00, 0x00, 0x00
	.byte 0x38, 0xFE, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00, 0xE8, 0xFE, 0x11, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0x38, 0xFF, 0x11, 0x02, 0x18, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x12, 0x02, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88, 0xFD, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xB8, 0x00, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0x98, 0xFC, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xD8, 0x00, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0xF8, 0x00, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00, 0x38, 0xFD, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x88, 0x00, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x78, 0x00, 0x12, 0x02, 0x09, 0x00, 0x00, 0x00, 0x68, 0x00, 0x12, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x12, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x48, 0x00, 0x12, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0xA8, 0xFD, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0x68, 0xFD, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x12, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x08, 0x00, 0x12, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFF, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0xE8, 0xFF, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0xD8, 0xFF, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0xC8, 0xFF, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0xB8, 0xFF, 0x11, 0x02, 0x15, 0x00, 0x00, 0x00, 0xA8, 0xFE, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00
	.byte 0x98, 0xFF, 0x11, 0x02, 0x17, 0x00, 0x00, 0x00, 0x88, 0xFF, 0x11, 0x02, 0x18, 0x00, 0x00, 0x00
	.byte 0x78, 0xFF, 0x11, 0x02, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0xFF, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x58, 0xFF, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xA8, 0xFF, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00, 0x28, 0x00, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x18, 0xFF, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFE, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00, 0x08, 0xFD, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0xD8, 0xFE, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00, 0xC8, 0xFE, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0xE8, 0xFC, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x48, 0xFC, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00
	.byte 0x98, 0xFE, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00, 0x88, 0xFE, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00
	.byte 0x78, 0xFE, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xC8, 0xFC, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00
	.byte 0x58, 0xFE, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00, 0x48, 0xFE, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00
	.byte 0xA8, 0xFC, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00, 0x78, 0xFC, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00
	.byte 0x18, 0xFE, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00, 0x08, 0xFE, 0x11, 0x02, 0x15, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFD, 0x11, 0x02, 0x16, 0x00, 0x00, 0x00, 0xE8, 0xFD, 0x11, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0xD8, 0xFD, 0x11, 0x02, 0x18, 0x00, 0x00, 0x00, 0xC8, 0xFD, 0x11, 0x02, 0x19, 0x00, 0x00, 0x00
	.byte 0xB8, 0xFD, 0x11, 0x02, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov60_0211fbc0
FUN_ov60_0211fbc0: ; 0x0211FBC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211FC08 ; =0x0211FC20
	str r0, [r4]
	ldr r0, _0211FC0C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211FC10 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FC08: .word 0x0211FC20
_0211FC0C: .word 0x00009CCD
_0211FC10: .word 0x0000EA3C
	arm_func_end FUN_ov60_0211fbc0

_0211FC14:
	.byte 0xc0, 0xfb, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211FC14
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 0211FC24
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FC34
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FC44
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FC54
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FC64
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x74, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FC74
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FC84
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FC94
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FCA4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FCB4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FCC4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FCD4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FCE4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FCF4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x63, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD04
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FD14
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FD24
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD34
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FD44
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD54
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FD64
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD74
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD84
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FD94
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FDA4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x32, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FDB4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x32, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FDC4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FDD4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FDE4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FDF4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FE04
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FE14
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FE24
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FE34
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FE44
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FE54
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FE64
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FE74
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FE84
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FE94
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FEA4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FEB4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FEC4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FED4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FEE4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FEF4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63 ; 0211FF04
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63 ; 0211FF14
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FF24
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FF34
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FF44
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 0211FF54
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x63, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FF64
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x32, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FF74
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FF84
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FF94
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FFA4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FFB4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x77, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FFC4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x74, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 0211FFD4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 0211FFE4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 0211FFF4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 02120004
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 02120014
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 02120024
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 02120034
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 02120044
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 02120054
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63 ; 02120064
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 02120074
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x66, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 02120084
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x63, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 02120094
	.byte 0x5f, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x77, 0x32, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 021200A4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63 ; 021200B4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63 ; 021200C4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63 ; 021200D4
	.byte 0x5f, 0x00, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61 ; 021200E4
	.byte 0x63, 0x5f, 0x00, 0x00, 0x63, 0x63, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61 ; 021200F4
	.byte 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa0, 0xf8, 0x11, 0x02 ; 02120104
	.byte 0x80, 0xf8, 0x11, 0x02, 0x68, 0xe6, 0x11, 0x02, 0x08, 0xf6, 0x11, 0x02, 0x00, 0x9f, 0x11, 0x02 ; 02120114
	.byte 0x08, 0xb2, 0x02, 0x02, 0x18, 0xa2, 0x11, 0x02, 0xd4, 0xa3, 0x11, 0x02, 0xa0, 0xa0, 0x11, 0x02 ; 02120124
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 02120134
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02 ; 02120144
	.byte 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02 ; 02120154
	.byte 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 02120164
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 02120174
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00 ; 02120184
	.byte 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x72, 0x65, 0x70, 0x6c, 0x61, 0x63, 0x65, 0x75, 0x6e, 0x69 ; 02120194
	.byte 0x74, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 021201A4
	.byte 0x33, 0x64, 0x2f, 0x70, 0x73, 0x5f, 0x72, 0x65, 0x70, 0x6c, 0x61, 0x63, 0x65, 0x5f, 0x75, 0x6e ; 021201B4
	.byte 0x69, 0x74, 0x2e, 0x53, 0x50, 0x4c, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 021201C4
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00 ; 021201D4
	.byte 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2e, 0x70, 0x61, 0x63, 0x5f ; 021201E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x73, 0x64, 0x6e, 0x5f, 0x74, 0x25, 0x30, 0x32, 0x64, 0x2e, 0x70 ; 021201F4
	.byte 0x61, 0x63, 0x5f, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 02120204
	.byte 0x33, 0x64, 0x2f, 0x70, 0x73, 0x5f, 0x72, 0x65, 0x70, 0x6c, 0x61, 0x63, 0x65, 0x5f, 0x75, 0x6e ; 02120214
	.byte 0x69, 0x74, 0x2e, 0x53, 0x50, 0x44, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 02120224
	.byte 0x2f, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x69, 0x68, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00 ; 02120234
	.byte 0x25, 0x73, 0x82, 0xc6, 0x82, 0xcd, 0x82, 0xed, 0x82, 0xa9, 0x82, 0xea, 0x82, 0xc4, 0x82, 0xb5 ; 02120244
	.byte 0x82, 0xdc, 0x82, 0xa2, 0x82, 0xdc, 0x82, 0xb7, 0x82, 0xaa, 0x0a, 0x82, 0xe6, 0x82, 0xeb, 0x82 ; 02120254
	.byte 0xb5, 0x82, 0xa2, 0x82, 0xc5, 0x82, 0xb7, 0x82, 0xa9, 0x81, 0x48, 0x00, 0x25, 0x73, 0x82, 0xf0 ; 02120264
	.byte 0x82, 0xc8, 0x82, 0xa9, 0x82, 0xdc, 0x82, 0xc9, 0x82, 0xb7, 0x82, 0xe9, 0x82, 0xcc, 0x82, 0xf0 ; 02120274
	.byte 0x0a, 0x82, 0xa0, 0x82, 0xab, 0x82, 0xe7, 0x82, 0xdf, 0x82, 0xdc, 0x82, 0xb7, 0x82, 0xa9, 0x81 ; 02120284
	.byte 0x48, 0x00, 0x00, 0x00, 0x83, 0x5a, 0x81, 0x5b, 0x83, 0x75, 0x82, 0xb5, 0x82, 0xc4, 0x5b, 0x8f ; 02120294
	.byte 0x49, 0x97, 0xb9, 0x2f, 0x82, 0xb5, 0x82, 0xe3, 0x82, 0xa4, 0x82, 0xe8, 0x82, 0xe5, 0x82, 0xa4 ; 021202A4
	.byte 0x5d, 0x82, 0xb5, 0x82, 0xdc, 0x82, 0xb7, 0x81, 0x42, 0x0a, 0x82, 0xe6, 0x82, 0xeb, 0x82, 0xb5 ; 021202B4
	.byte 0x82, 0xa2, 0x82, 0xc5, 0x82, 0xb7, 0x82, 0xa9, 0x81, 0x48, 0x00, 0x00, 0x82, 0xc8, 0x82, 0xa9 ; 021202C4
	.byte 0x82, 0xdc, 0x82, 0xc9, 0x82, 0xb7, 0x82, 0xe9, 0x82, 0xcc, 0x82, 0xf0, 0x81, 0x40, 0x82, 0xe2 ; 021202D4
	.byte 0x82, 0xdf, 0x82, 0xdc, 0x82, 0xb7, 0x82, 0xa9, 0x81, 0x48, 0x00, 0x00, 0x25, 0x73, 0x81, 0x40 ; 021202E4
	.byte 0x82, 0xaa, 0x0a, 0x82, 0xc8, 0x82, 0xa9, 0x82, 0xdc, 0x82, 0xc9, 0x82, 0xc8, 0x82, 0xc1, 0x82 ; 021202F4
	.byte 0xbd, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 02120304
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

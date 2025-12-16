
	.include "/macros/function.inc"
	.include "/include/overlay90.inc"

	.text
	arm_func_start FUN_ov90_02119f00
FUN_ov90_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211A018 ; =0x02099EB4
	str r1, [r4, #0xc]
	ldr r0, [r0]
	mov r6, #0
	bl FUN_ov16_0210e980
	ldr r0, _0211A01C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A020 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	bl FUN_ov16_020f47fc
	mov r0, #0xc
	bl FUN_ov16_020f3f60
	add r0, r4, #0x18
	mov r1, r6
	mov r2, #0x10
	str r6, [r4, #0x1d0]
	str r6, [r4, #0x1d4]
	str r6, [r4, #0x1d8]
	bl MI_CpuFill8
	mov r5, #0x780
	ldr r0, _0211A024 ; =gL5Allocator
	mov r1, r5
	str r6, [r4, #0x28]
	bl FUN_0202de44
	mov r2, r5
	mov r1, r6
	str r0, [r4, #0x34]
	bl MI_CpuFill8
	add r0, r4, #0x3c
	mov r1, r6
	mov r2, #8
	str r6, [r4, #0x2c]
	str r6, [r4, #0x30]
	bl MI_CpuFill8
	mov r0, r4
	bl FUN_ov90_0211ac10
	mov r0, r4
	bl FUN_ov90_0211accc
	mov r0, r4
	bl FUN_ov90_0211ad30
	mov r0, r4
	bl FUN_ov90_0211b47c
	b _02119FE8
_02119FD8:
	mov r0, r4
	mov r1, r6
	bl FUN_ov90_0211c250
	add r6, r6, #1
_02119FE8:
	cmp r6, #3
	blt _02119FD8
	mov r5, #0
	mov r0, r4
	str r5, [r4, #0x158]
	bl FUN_ov90_0211b6c0
	ldr r0, _0211A028 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, _0211A02C ; =0x020A0640
	strb r5, [r0, #0x1a]
	str r5, [r4, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A018: .word unk_02099EB4
_0211A01C: .word unk_02099ED4
_0211A020: .word unk_0209A0AC
_0211A024: .word gL5Allocator
_0211A028: .word gWirelessUtil
_0211A02C: .word unk_020A0640
	arm_func_end FUN_ov90_02119f00

	arm_func_start FUN_ov90_0211a030
FUN_ov90_0211a030: ; 0x0211A030
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0xc]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A0F0 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A0F4 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov90_0211bd1c
	mov r0, r4
	bl FUN_ov90_0211bf80
	mov r0, r4
	bl FUN_ov90_0211ba44
	mov r0, r4
	bl FUN_ov90_0211ad70
	mov r0, r4
	bl FUN_ov90_0211acf4
	ldr r1, [r4, #0x1d0]
	cmp r1, #0
	beq _0211A0AC
	ldr r0, _0211A0F8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x1d0]
_0211A0AC:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _0211A0C8
	ldr r0, _0211A0F8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x34]
_0211A0C8:
	mov r0, r4
	mov r1, #2
	bl FUN_ov90_0211ac28
	bl FUN_ov16_020f47fc
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, pc}
_0211A0F0: .word unk_02099EB4
_0211A0F4: .word unk_02099ED4
_0211A0F8: .word gL5Allocator
	arm_func_end FUN_ov90_0211a030

	arm_func_start FUN_ov90_0211a0fc
FUN_ov90_0211a0fc: ; 0x0211A0FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211A174
_0211A114: ; jump table
	b _0211A138 ; case 0
	b _0211A140 ; case 1
	b _0211A148 ; case 2
	b _0211A150 ; case 3
	b _0211A158 ; case 4
	b _0211A160 ; case 5
	b _0211A174 ; case 6
	b _0211A168 ; case 7
	b _0211A170 ; case 8
_0211A138:
	bl FUN_ov90_0211a704
	b _0211A174
_0211A140:
	bl FUN_ov90_0211a804
	b _0211A174
_0211A148:
	bl FUN_ov90_0211a8a4
	b _0211A174
_0211A150:
	bl FUN_ov90_0211a958
	b _0211A174
_0211A158:
	bl FUN_ov90_0211a9dc
	b _0211A174
_0211A160:
	bl FUN_ov90_0211aa14
	b _0211A174
_0211A168:
	bl FUN_ov90_0211aabc
	b _0211A174
_0211A170:
	bl FUN_ov90_0211aaf0
_0211A174:
	mov r0, r4
	bl FUN_ov90_0211ab4c
	ldr r0, _0211A23C ; =0x02099ED4
	ldr r5, _0211A240 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A1B4
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A1C0
_0211A1B4:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211A1C0:
	bl _ffix
	ldr r2, _0211A244 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x15c]
	cmp r0, #0
	beq _0211A1E8
	mov r0, r4
	bl FUN_ov90_0211bb04
_0211A1E8:
	mov r6, #0
	mov r5, #0x24
	b _0211A230
_0211A1F4:
	mla r0, r6, r5, r4
	ldr r0, [r0, #0xf0]
	cmp r0, #0
	beq _0211A210
	mov r0, r4
	mov r1, r6
	bl FUN_ov90_0211c358
_0211A210:
	add r0, r4, r6, lsl #3
	ldr r0, [r0, #0x140]
	cmp r0, #0
	beq _0211A22C
	mov r0, r4
	mov r1, r6
	bl FUN_ov90_0211c454
_0211A22C:
	add r6, r6, #1
_0211A230:
	cmp r6, #3
	blt _0211A1F4
	ldmfd sp!, {r4, r5, r6, pc}
_0211A23C: .word unk_02099ED4
_0211A240: .word unk_0209A110
_0211A244: .word unk_02099F58
	arm_func_end FUN_ov90_0211a0fc

	arm_func_start FUN_ov90_0211a248
FUN_ov90_0211a248: ; 0x0211A248
	bx lr
	arm_func_end FUN_ov90_0211a248

	arm_func_start FUN_ov90_0211a24c
FUN_ov90_0211a24c: ; 0x0211A24C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa0
	ldr r4, _0211A418 ; =0x0209BA20
	mov r10, r0
	mov r0, r4
	mov r1, #0
	bl FUN_0207249c
	mov r5, r0
	mov r0, r4
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r5, #0x28]
	add r6, sp, #0x60
	mov r7, #0
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	add r2, sp, #0x40
	strh r1, [r0, #0x28]
	ldrb r1, [r5, #0x2c]
	add r5, sp, #0
	mov r3, r5
	strb r1, [r0, #0x2c]
	mov r0, r10
	mov r1, r6
	str r7, [r10, #0x38]
	str r7, [r10, #0x1dc]
	bl FUN_ov90_0211a41c
	mov r8, r0
	cmp r8, #0
	ble _0211A3A0
	ldr r11, _0211A418 ; =0x0209BA20
_0211A2C8:
	mov r0, r7, lsl #1
	ldrh r1, [r6, r0]
	mov r0, r11
	bl FUN_ov16_020ee034
	movs r4, r0
	beq _0211A394
	mov r1, #0x3c
	mul r9, r7, r1
	ldr r1, [r10, #0x34]
	mov r2, #0x20
	add r1, r1, r9
	bl MI_CpuCopy8
	add r0, sp, #0x40
	ldr r1, [r10, #0x34]
	ldrb r2, [r0, r7]
	add r1, r1, r9
	mov r0, r11
	str r2, [r1, #0x24]
	mov r1, r7, lsl #1
	ldrh r1, [r6, r1]
	bl FUN_ov16_020edeb4
	ldr r2, [r10, #0x34]
	mov r1, r7, lsl #1
	add r2, r2, r9
	str r0, [r2, #0x20]
	ldr r2, [r10, #0x34]
	ldrh r3, [r6, r1]
	add r2, r2, r9
	mov r0, r10
	strh r3, [r2, #0x34]
	ldr r2, [r10, #0x34]
	ldrh r3, [r5, r1]
	add r2, r2, r9
	strh r3, [r2, #0x38]
	ldr r2, [r10, #0x34]
	ldrh r3, [r4, #0x22]
	add r2, r2, r9
	strh r3, [r2, #0x36]
	ldrh r1, [r5, r1]
	bl FUN_ov90_0211a670
	ldr r2, [r10, #0x34]
	mov r1, r7, lsl #1
	add r2, r2, r9
	strb r0, [r2, #0x3a]
	ldrh r1, [r5, r1]
	mov r0, r10
	bl FUN_ov90_0211a670
	cmp r0, #0
	ldreq r0, [r10, #0x1dc]
	addeq r0, r0, #1
	streq r0, [r10, #0x1dc]
_0211A394:
	add r7, r7, #1
	cmp r7, r8
	blt _0211A2C8
_0211A3A0:
	mov r1, #0
	mov r0, #1
	str r8, [r10, #0x38]
	str r1, [r10, #0x44]
	str r0, [r10, #0x48]
	cmp r8, #0
	beq _0211A3D4
	sub r1, r8, #1
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	add r0, r0, #1
	str r0, [r10, #0x48]
_0211A3D4:
	mov r4, #0
	mov r0, r10
	mov r1, r4
	mov r2, r4
	mov r3, r4
	bl FUN_ov90_0211c26c
	ldr r0, [r10, #0x38]
	str r4, [r10, #0x14]
	cmp r0, #0
	moveq r0, #3
	streq r0, [r10, #0x14]
	ldr r0, [r10, #0x38]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r10, #0x27]
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A418: .word gLogicThink
	arm_func_end FUN_ov90_0211a24c

	arm_func_start FUN_ov90_0211a41c
FUN_ov90_0211a41c: ; 0x0211A41C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r11, [r0, #0x1d0]
	mov r4, #0
	cmp r11, #0
	str r4, [sp, #8]
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211A66C ; =0x020E948C
	ldr r4, [r4]
	cmp r4, #0
	ldreq r0, [sp, #8]
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, [r0, #0x1d4]
	ldr r4, [sp, #8]
	cmp r5, #0
	str r4, [sp, #0x10]
	ble _0211A660
_0211A46C:
	ldrh r4, [r11]
	cmp r4, #0
	beq _0211A644
	ldr r4, [sp, #8]
	mov r5, #0x3c
	mul r5, r4, r5
	ldr r4, _0211A66C ; =0x020E948C
	str r5, [sp, #4]
	mov r12, #0
	mov lr, #1
_0211A494:
	add r5, r11, r12, lsl #2
	ldrh r9, [r5, #4]
	ldrh r10, [r5, #6]
	cmp r9, #0
	moveq r6, #1
	beq _0211A518
	mov r6, #0
	ldr r8, [r4]
	mov r7, r6
_0211A4B8:
	ldrh r5, [r8]
	cmp r5, #0
	beq _0211A504
	cmp r9, r5
	bne _0211A4F4
	ldrb r5, [r8, #2]
	cmp r5, r10
	blt _0211A504
	ldr r8, [r0, #0x34]
	ldr r7, [sp, #4]
	mov r6, lr
	add r7, r7, r8
	add r7, r12, r7
	strb r5, [r7, #0x30]
	b _0211A504
_0211A4F4:
	add r7, r7, #1
	cmp r7, #0x10
	add r8, r8, #0x1c
	blt _0211A4B8
_0211A504:
	cmp r6, #0
	beq _0211A518
	add r12, r12, #1
	cmp r12, #4
	blt _0211A494
_0211A518:
	cmp r6, #0
	beq _0211A644
	ldr r4, _0211A66C ; =0x020E948C
	mov r9, #1
	ldr r4, [r4]
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp]
	mov r12, r4
_0211A53C:
	ldr r4, [sp]
	add r5, r11, r4, lsl #2
	ldrh r4, [r5, #0x14]
	ldrh r5, [r5, #0x16]
	cmp r4, #0
	moveq r6, #1
	beq _0211A5D8
	mov r6, #0
	ldr r7, [sp, #0xc]
	mov r8, r6
_0211A564:
	ldrh r10, [r7]
	cmp r10, #0
	beq _0211A5BC
	mov lr, r12
_0211A574:
	add r10, r7, lr, lsl #1
	ldrh r10, [r10, #0xa]
	cmp r4, r10
	bne _0211A598
	add r10, r7, lr
	ldrb r10, [r10, #0x16]
	cmp r10, r5
	movge r6, r9
	b _0211A5A4
_0211A598:
	add lr, lr, #1
	cmp lr, #6
	blt _0211A574
_0211A5A4:
	cmp r6, #0
	bne _0211A5BC
	add r8, r8, #1
	cmp r8, #0x10
	add r7, r7, #0x1c
	blt _0211A564
_0211A5BC:
	cmp r6, #0
	beq _0211A5D8
	ldr r4, [sp]
	add r4, r4, #1
	str r4, [sp]
	cmp r4, #4
	blt _0211A53C
_0211A5D8:
	cmp r6, #0
	beq _0211A644
	ldr r4, [sp, #8]
	ldrh r5, [r11]
	mov r7, r4, lsl #1
	mov r4, #0
	strh r5, [r1, r7]
	ldrh r6, [r11, #2]
	ldr r5, [sp, #8]
	strb r6, [r2, r5]
	ldr r5, [sp, #0x10]
	strh r5, [r3, r7]
_0211A608:
	add r5, r11, r4, lsl #2
	ldrh r7, [r5, #4]
	ldr r6, [r0, #0x34]
	ldr r5, [sp, #4]
	add r5, r5, r6
	add r5, r5, r4, lsl #1
	add r4, r4, #1
	strh r7, [r5, #0x28]
	cmp r4, #4
	blt _0211A608
	ldr r4, [sp, #8]
	add r4, r4, #1
	str r4, [sp, #8]
	cmp r4, #0x20
	bge _0211A660
_0211A644:
	ldr r4, [sp, #0x10]
	ldr r5, [r0, #0x1d4]
	add r4, r4, #1
	str r4, [sp, #0x10]
	cmp r4, r5
	add r11, r11, #0x24
	blt _0211A46C
_0211A660:
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A66C: .word ov1_020E948C
	arm_func_end FUN_ov90_0211a41c

	arm_func_start FUN_ov90_0211a670
FUN_ov90_0211a670: ; 0x0211A670
	ldr r0, _0211A6B8 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211A69C
	ldr r0, _0211A6BC ; =0x020A160C
	and r2, r1, #7
	ldrb r1, [r0, r1, asr #3]
	mov r0, #1
	tst r1, r0, lsl r2
	moveq r0, #0
	bx lr
_0211A69C:
	ldr r0, _0211A6C0 ; =0x020A1608
	and r2, r1, #7
	ldrb r1, [r0, r1, asr #3]
	mov r0, #1
	tst r1, r0, lsl r2
	moveq r0, #0
	bx lr
_0211A6B8: .word unk_020A0640
_0211A6BC: .word unk_020A160C
_0211A6C0: .word unk_020A1608
	arm_func_end FUN_ov90_0211a670

	arm_func_start FUN_ov90_0211a6c4
FUN_ov90_0211a6c4: ; 0x0211A6C4
	ldr r0, _0211A6F8 ; =0x020A0640
	ldr r3, _0211A6FC ; =0x020A160C
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	ldreq r3, _0211A700 ; =0x020A1608
	and r0, r1, #7
	mov r2, #1
	mov r0, r2, lsl r0
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_0211A6F8: .word unk_020A0640
_0211A6FC: .word unk_020A160C
_0211A700: .word unk_020A1608
	arm_func_end FUN_ov90_0211a6c4

	arm_func_start FUN_ov90_0211a704
FUN_ov90_0211a704: ; 0x0211A704
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, _0211A7E8 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x89]
	cmp r0, #0
	beq _0211A75C
	ldr r3, _0211A7EC ; =gL5Allocator
	ldr r1, _0211A7F0 ; =0x0211D6FC
	ldr r0, [r3]
	cmp r0, #0
	mov r0, #0
	beq _0211A794
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, r4, #0x1d0
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	b _0211A794
_0211A75C:
	ldr r3, _0211A7EC ; =gL5Allocator
	ldr r1, _0211A7F4 ; =0x0211D724
	ldr r0, [r3]
	cmp r0, #0
	mov r0, #0
	beq _0211A794
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, r4, #0x1d0
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0211A794:
	ldr r12, _0211A7F8 ; =0x38E38E39
	mov r3, #0x24
	umull r1, r2, r0, r12
	mov r2, r2, lsr #3
	umull r2, r1, r3, r2
	umull r1, r3, r0, r12
	mov r3, r3, lsr #3
	subs r2, r0, r2
	mov r0, r4
	str r3, [r4, #0x1d4]
	bl FUN_ov90_0211a24c
	ldr r0, _0211A7FC ; =0x0211D744
	add r1, r4, #0x4c
	bl FUN_ov16_020f316c
	ldr r0, _0211A800 ; =0x0211D75C
	add r1, r4, #0x58
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211A7E8: .word unk_020A0640
_0211A7EC: .word gL5Allocator
_0211A7F0: .word ov90_0211D6FC
_0211A7F4: .word ov90_0211D724
_0211A7F8: .word 0x38E38E39
_0211A7FC: .word ov90_0211D744
_0211A800: .word ov90_0211D75C
	arm_func_end FUN_ov90_0211a704

	arm_func_start FUN_ov90_0211a804
FUN_ov90_0211a804: ; 0x0211A804
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r8, r0
	add r0, r8, #0x4c
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x38]
	mov r7, #0
	cmp r0, #0
	ble _0211A884
	ldr r4, _0211A8A0 ; =0x0211D778
	mov r6, r7
	mov r5, #1
	mov r9, #0x3c
_0211A848:
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r8, #0x34]
	ldr r0, [r8, #0x4c]
	mla r1, r7, r9, r1
	ldrh r2, [r1, #0x36]
	mov r1, r4
	add r3, r8, #0x64
	bl FUN_ov16_020f55b4
	ldr r0, [r8, #0x38]
	add r7, r7, #1
	cmp r7, r0
	blt _0211A848
_0211A884:
	mov r0, r8
	mov r1, #0
	bl FUN_ov90_0211ac28
	mov r0, #2
	str r0, [r8, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A8A0: .word ov90_0211D778
	arm_func_end FUN_ov90_0211a804

	arm_func_start FUN_ov90_0211a8a4
FUN_ov90_0211a8a4: ; 0x0211A8A4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xa4
	mov r4, r0
	add r0, r4, #0x64
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0xa4
	ldmnefd sp!, {r4, r5, pc}
	add r5, sp, #4
	mov r1, #0
	mov r0, r5
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r0, _0211A948 ; =0x020A0640
	ldr r1, _0211A94C ; =0x0211D790
	ldrb r2, [r0, #0x89]
	mov r0, r5
	bl STD_TSPrintf
	ldr r5, _0211A950 ; =0x0211D4A0
	add lr, sp, #0x24
	mov r12, #8
_0211A8F8:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211A8F8
	add r1, sp, #4
	mov r0, #0
	str r1, [sp, #0x4c]
	str r0, [sp]
	ldr r1, [r4, #0x58]
	ldr r0, _0211A954 ; =0x0211D7A4
	add r2, sp, #0x24
	add r3, r4, #0x6c
	bl FUN_ov16_020f5450
	mov r0, r4
	mov r1, #1
	bl FUN_ov90_0211ac28
	mov r0, #3
	str r0, [r4, #0x10]
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, pc}
_0211A948: .word unk_020A0640
_0211A94C: .word ov90_0211D790
_0211A950: .word ov90_0211D4A0
_0211A954: .word ov90_0211D7A4
	arm_func_end FUN_ov90_0211a8a4

	arm_func_start FUN_ov90_0211a958
FUN_ov90_0211a958: ; 0x0211A958
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211A9D8 ; =0x02099F38
	b _0211A9C4
_0211A970:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _0211A9C0
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x6c]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A9C0
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x6c]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211A9C0:
	add r7, r7, #1
_0211A9C4:
	cmp r7, #0xf
	blt _0211A970
	mov r0, #4
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A9D8: .word unk_02099F38
	arm_func_end FUN_ov90_0211a958

	arm_func_start FUN_ov90_0211a9dc
FUN_ov90_0211a9dc: ; 0x0211A9DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov90_0211b274
	mov r0, r4
	bl FUN_ov90_0211b384
	mov r0, r4
	bl FUN_ov90_0211b488
	mov r0, r4
	bl FUN_ov90_0211b704
	mov r0, r4
	bl FUN_ov90_0211d1a8
	mov r0, #5
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov90_0211a9dc

	arm_func_start FUN_ov90_0211aa14
FUN_ov90_0211aa14: ; 0x0211AA14
	stmfd sp!, {r4, lr}
	ldr r1, _0211AAB8 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov90_0211bd1c
	mov r0, r4
	bl FUN_ov90_0211bf80
	mov r0, r4
	bl FUN_ov90_0211c1bc
	ldr r0, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211AA94
_0211AA58: ; jump table
	b _0211AA68 ; case 0
	b _0211AA80 ; case 1
	b _0211AA74 ; case 2
	b _0211AA8C ; case 3
_0211AA68:
	mov r0, r4
	bl FUN_ov90_0211d1a8
	b _0211AA94
_0211AA74:
	mov r0, r4
	bl FUN_ov90_0211bb68
	b _0211AA94
_0211AA80:
	mov r0, r4
	bl FUN_ov90_0211bd80
	b _0211AA94
_0211AA8C:
	mov r0, r4
	bl FUN_ov90_0211c000
_0211AA94:
	mov r0, r4
	bl FUN_ov90_0211b124
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_0211AAB8: .word unk_02099ED4
	arm_func_end FUN_ov90_0211aa14

	arm_func_start FUN_ov90_0211aabc
FUN_ov90_0211aabc: ; 0x0211AABC
	stmfd sp!, {r4, lr}
	ldr r1, _0211AAEC ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #8
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_0211AAEC: .word unk_02099ED4
	arm_func_end FUN_ov90_0211aabc

	arm_func_start FUN_ov90_0211aaf0
FUN_ov90_0211aaf0: ; 0x0211AAF0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r6, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x30]
	ldr r2, [r6, #0x2c]
	mov r0, r5
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov90_0211aaf0

	arm_func_start FUN_ov90_0211ab38
FUN_ov90_0211ab38: ; 0x0211AB38
	mov r3, #7
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov90_0211ab38

	arm_func_start FUN_ov90_0211ab4c
FUN_ov90_0211ab4c: ; 0x0211AB4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl FUN_ov90_0211c76c
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	beq _0211ABC4
	mov r6, #0x3c
	mov r4, #0
	mov r7, r6
_0211AB74:
	mov r0, r5
	bl FUN_ov90_0211c78c
	ldr r2, [r5, #0x34]
	add r1, r5, r4, lsl #1
	mla r2, r0, r6, r2
	add r0, r2, r4, lsl #1
	ldrh r2, [r0, #0x28]
	mov r0, r5
	strh r2, [r1, #0x1a]
	bl FUN_ov90_0211c78c
	ldr r2, [r5, #0x34]
	add r1, r5, r4
	mla r2, r0, r7, r2
	add r0, r4, r2
	ldrb r0, [r0, #0x30]
	add r4, r4, #1
	cmp r4, #4
	strb r0, [r1, #0x22]
	blt _0211AB74
	b _0211ABE8
_0211ABC4:
	mov r3, #0
	mov r2, r3
_0211ABCC:
	add r1, r5, r3, lsl #1
	add r0, r5, r3
	strh r2, [r1, #0x1a]
	add r3, r3, #1
	strb r2, [r0, #0x22]
	cmp r3, #4
	blt _0211ABCC
_0211ABE8:
	ldr r0, [r5, #8]
	add r1, r5, #0x18
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov90_0211ab4c

	arm_func_start FUN_ov90_0211ac00
FUN_ov90_0211ac00: ; 0x0211AC00
	mov r2, #5
	str r1, [r0, #0x14]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov90_0211ac00

	arm_func_start FUN_ov90_0211ac10
FUN_ov90_0211ac10: ; 0x0211AC10
	ldr r12, _0211AC24 ; =MI_CpuFill8
	add r0, r0, #0x4c
	mov r1, #0
	mov r2, #0x18
	bx r12
_0211AC24: .word MI_CpuFill8
	arm_func_end FUN_ov90_0211ac10

	arm_func_start FUN_ov90_0211ac28
FUN_ov90_0211ac28: ; 0x0211AC28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	cmp r1, #2
	blo _0211AC8C
	mov r9, #0
	add r8, r4, #0x4c
	mov r7, #1
	mov r6, r9
	mov r5, #0xc
_0211AC4C:
	mul r10, r9, r5
	mov r1, r7
	add r0, r8, r10
	bl FUN_ov16_020f338c
	add r0, r8, r10
	bl FUN_ov16_020f33fc
	add r0, r4, r10
	str r6, [r0, #0x4c]
	str r6, [r0, #0x50]
	strb r6, [r0, #0x54]
	strb r6, [r0, #0x55]
	add r9, r9, #1
	strb r6, [r0, #0x56]
	cmp r9, #2
	blt _0211AC4C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211AC8C:
	mov r0, #0xc
	mul r6, r1, r0
	add r5, r4, #0x4c
	add r0, r5, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r5, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r5, r6]
	add r0, r4, r6
	str r1, [r0, #0x50]
	strb r1, [r0, #0x54]
	strb r1, [r0, #0x55]
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov90_0211ac28

	arm_func_start FUN_ov90_0211accc
FUN_ov90_0211accc: ; 0x0211ACCC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x64
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x64
	mov r1, #0x20
	bl FUN_ov16_020f5278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov90_0211accc

	arm_func_start FUN_ov90_0211acf4
FUN_ov90_0211acf4: ; 0x0211ACF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x64
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r4, #0x64
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov90_0211acf4

	arm_func_start FUN_ov90_0211ad14
FUN_ov90_0211ad14: ; 0x0211AD14
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0x64
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov90_0211ad14

	arm_func_start FUN_ov90_0211ad30
FUN_ov90_0211ad30: ; 0x0211AD30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x6c
	mov r2, #0x3c
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xa8
	mov r2, #0x2c
	bl MI_CpuFill8
	ldr r0, _0211AD6C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AD6C: .word unk_02099F38
	arm_func_end FUN_ov90_0211ad30

	arm_func_start FUN_ov90_0211ad70
FUN_ov90_0211ad70: ; 0x0211AD70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211AE00 ; =0x02099F38
	b _0211ADAC
_0211AD88:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211ADA8
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0xa8]
_0211ADA8:
	add r4, r4, #1
_0211ADAC:
	cmp r4, #0xb
	blt _0211AD88
	mov r4, #0
	mov r7, r4
	ldr r6, _0211AE00 ; =0x02099F38
	b _0211ADE8
_0211ADC4:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _0211ADE4
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x6c]
_0211ADE4:
	add r4, r4, #1
_0211ADE8:
	cmp r4, #0xf
	blt _0211ADC4
	ldr r0, _0211AE00 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AE00: .word unk_02099F38
	arm_func_end FUN_ov90_0211ad70

	arm_func_start FUN_ov90_0211ae04
FUN_ov90_0211ae04: ; 0x0211AE04
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x6c]
	ldr r6, _0211AEC0 ; =0x02099F38
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
_0211AEC0: .word unk_02099F38
	arm_func_end FUN_ov90_0211ae04

	arm_func_start FUN_ov90_0211aec4
FUN_ov90_0211aec4: ; 0x0211AEC4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r5, #0
	str r1, [sp, #0x20]
	mov r4, #4
	mov r10, r2
	add r0, sp, #0x30
	mov r1, r5
	mov r2, r4
	ldr r8, [sp, #0x58]
	ldr r7, [sp, #0x68]
	mov r9, r3
	str r5, [sp, #0x28]
	bl MI_CpuFill8
	add r0, sp, #0x2c
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	cmp r7, #1
	str r5, [r8]
	moveq r5, #0x100
	moveq r6, #0x40
	movne r5, #0x80
	movne r6, #0x20
	add r2, sp, #0x30
	add r3, sp, #0x2c
	mov r0, r5
	mov r1, r6
	bl FUN_02054070
	ldr r4, _0211B11C ; =0x02099F38
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
	ldr r11, [sp, #0x24]
	bl FUN_ov16_02111438
	mov r5, r0
	ldr r0, [r4]
	ldr r1, [r8]
	bl FUN_ov16_02111458
	mov r6, r0
	ldrb r0, [sp, #0x6c]
	cmp r0, #0
	beq _0211AFE4
	mov r2, #1
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x10]
	ldr r1, [r8]
	mov r3, #9
	bl FUN_ov16_020f2304
	b _0211B06C
_0211AFE4:
	ldr r0, _0211B120 ; =gFont12
	mov r1, #1
	ldr r0, [r0]
	mov r2, #5
	bl FUN_02043310
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211B120 ; =gFont12
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r5
	bl FUN_020425fc
	ldr r0, _0211B120 ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, [r4]
	ldr r3, [sp, #0x28]
	ldr r1, [r8]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r11
	str r4, [sp, #8]
	bl FUN_02059288
_0211B06C:
	ldr r0, [r9]
	ldr r4, _0211B11C ; =0x02099F38
	add r2, r0, #1
	str r2, [r9]
	ldr r3, [r8]
	ldr r0, [r4]
	mov r1, r10
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	mov r1, r10
	bl FUN_ov16_02113d88
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	ldr r2, [r9]
	mov r3, r1, asr #0x10
	mov r1, r10
	bl FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	mov r1, r10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r2, [r9]
	ldr r3, [sp, #0x5c]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r10
	ldr r2, [r9]
	ldr r3, [sp, #0x64]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B11C: .word unk_02099F38
_0211B120: .word gFont12
	arm_func_end FUN_ov90_0211aec4

	arm_func_start FUN_ov90_0211b124
FUN_ov90_0211b124: ; 0x0211B124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
_0211B130:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa8]
	mov r0, r5
	bl FUN_ov90_0211b254
	add r4, r4, #1
	cmp r4, #0xb
	blt _0211B130
	mov r6, #0
	mov r4, #0xc
_0211B154:
	mla r0, r6, r4, r5
	ldr r1, [r0, #0x160]
	mov r0, r5
	bl FUN_ov90_0211b254
	add r6, r6, #1
	cmp r6, #8
	blt _0211B154
	ldr r0, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B180: ; jump table
	b _0211B190 ; case 0
	b _0211B208 ; case 1
	b _0211B1F8 ; case 2
	b _0211B218 ; case 3
_0211B190:
	mov r4, #0
_0211B194:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa8]
	mov r0, r5
	bl FUN_ov90_0211b234
	add r4, r4, #1
	cmp r4, #0xb
	blt _0211B194
	mov r4, #0
	mov r6, #0xc
	mov r7, #0x3c
_0211B1BC:
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x34]
	add r1, r4, r0, lsl #3
	mla r0, r1, r7, r2
	ldrb r0, [r0, #0x3a]
	tst r0, #1
	bne _0211B1E8
	mla r0, r4, r6, r5
	ldr r1, [r0, #0x160]
	mov r0, r5
	bl FUN_ov90_0211b234
_0211B1E8:
	add r4, r4, #1
	cmp r4, #8
	blt _0211B1BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B1F8:
	ldr r1, [r5, #0xc8]
	mov r0, r5
	bl FUN_ov90_0211b234
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B208:
	ldr r1, [r5, #0xc4]
	mov r0, r5
	bl FUN_ov90_0211b234
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B218:
	ldr r1, [r5, #0xcc]
	mov r0, r5
	bl FUN_ov90_0211b234
	ldr r1, [r5, #0xd0]
	mov r0, r5
	bl FUN_ov90_0211b234
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov90_0211b124

	arm_func_start FUN_ov90_0211b234
FUN_ov90_0211b234: ; 0x0211B234
	ldr r0, _0211B248 ; =0x02099F38
	ldr r2, _0211B24C ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B250 ; = FUN_ov16_02114204
	bx r12
_0211B248: .word unk_02099F38
_0211B24C: .word 0x00007FFF
_0211B250: .word FUN_ov16_02114204
	arm_func_end FUN_ov90_0211b234

	arm_func_start FUN_ov90_0211b254
FUN_ov90_0211b254: ; 0x0211B254
	ldr r0, _0211B268 ; =0x02099F38
	ldr r2, _0211B26C ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B270 ; = FUN_ov16_02114204
	bx r12
_0211B268: .word unk_02099F38
_0211B26C: .word 0x00004210
_0211B270: .word FUN_ov16_02114204
	arm_func_end FUN_ov90_0211b254

	arm_func_start FUN_ov90_0211b274
FUN_ov90_0211b274: ; 0x0211B274
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B380 ; =0x02099F38
	mov r8, r0
	mov r7, #1
	ldr r0, [r1]
	mov r2, r7
	mov r1, #4
	bl FUN_ov16_02112724
	mov r6, r0
	mov r5, #0
	str r5, [sp, #0x14]
	str r6, [r8, #0xa8]
	str r5, [sp]
	str r5, [sp, #4]
	add r4, sp, #0x14
	mov r9, #5
	str r5, [sp, #8]
	mov r0, #0x1f4
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	str r7, [sp, #0x10]
	mov r3, r9
	bl FUN_ov90_0211ae04
	mov r11, #6
	str r5, [sp]
	mov r10, #0x20
	str r10, [sp, #4]
	str r10, [sp, #8]
	rsb r0, r9, #0x190
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, r11
	bl FUN_ov90_0211ae04
	stmia sp, {r7, r10}
	rsb r9, r9, #0x194
	str r10, [sp, #8]
	str r9, [sp, #0xc]
	mov r3, r11
	str r5, [sp, #0x10]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_ov90_0211ae04
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #0xa8
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	mov r1, r6
	mov r2, r4
	mov r0, r8
	mov r3, #0xb
	str r7, [sp, #0x10]
	bl FUN_ov90_0211ae04
	mov r1, r5
	mov r0, r8
	bl FUN_ov90_0211c250
	str r10, [r8, #0xe0]
	str r10, [r8, #0xe4]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B380: .word unk_02099F38
	arm_func_end FUN_ov90_0211b274

	arm_func_start FUN_ov90_0211b384
FUN_ov90_0211b384: ; 0x0211B384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	mov r7, r0
	ldr r2, [r7, #0xac]
	ldr r1, [r7, #0xb0]
	ldr r3, [r7, #0xb4]
	add r1, r2, r1
	ldr r2, [r7, #0xb8]
	add r1, r3, r1
	adds r1, r2, r1
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0x20
	str r1, [sp]
	mov r6, #3
	mov r9, #0x10
	str r9, [sp, #4]
	mov r8, #4
	mov r10, #0
	str r6, [sp, #8]
	add r5, r6, #0x1f0
	mov r1, r6
	mov r2, r8
	mov r3, r10
	str r5, [sp, #0xc]
	mov r4, #1
	str r4, [sp, #0x10]
	bl FUN_ov90_0211cf30
	mov r0, #0xc0
	stmia sp, {r0, r9}
	str r8, [sp, #8]
	mov r9, #2
	str r5, [sp, #0xc]
	mov r0, r7
	mov r1, r8
	mov r2, r8
	mov r3, r9
	str r4, [sp, #0x10]
	bl FUN_ov90_0211cf30
	mov r0, #0x98
	str r0, [sp]
	mov r8, #0xa8
	str r8, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r7
	mov r1, r4
	mov r2, r10
	mov r3, r10
	str r4, [sp, #0x10]
	bl FUN_ov90_0211cf30
	mov r1, #0xd0
	stmia sp, {r1, r8, r9}
	str r5, [sp, #0xc]
	mov r0, r7
	mov r2, r10
	mov r3, r6
	mov r1, r9
	str r4, [sp, #0x10]
	bl FUN_ov90_0211cf30
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov90_0211b384

	arm_func_start FUN_ov90_0211b47c
FUN_ov90_0211b47c: ; 0x0211B47C
	mov r1, #0
	str r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov90_0211b47c

	arm_func_start FUN_ov90_0211b488
FUN_ov90_0211b488: ; 0x0211B488
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B688 ; =0x02099F38
	mov r10, r0
	mov r8, #1
	ldr r0, [r1]
	mov r2, r8
	mov r1, #6
	bl FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [r10, #0x48]
	ldr r4, _0211B68C ; =0x66666667
	mov r9, r0
	mov r2, r1, lsr #0x1f
	smull r3, r12, r4, r1
	mov r7, #9
	add r12, r2, r12, asr #2
	mov r11, #0xa
	smull r0, r2, r11, r12
	sub r12, r1, r0
	str r9, [r10, #0xbc]
	mov r6, #0x10
	str r12, [sp]
	mov r0, #0x80
	stmib sp, {r0, r6}
	rsb r5, r7, #0x1fc
	str r5, [sp, #0xc]
	str r8, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r7
	bl FUN_ov90_0211ae04
	ldr r1, [r10, #0x44]
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
	str r8, [sp, #0x10]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r7
	bl FUN_ov90_0211ae04
	ldr r0, [r10, #0x44]
	cmp r0, #0xa
	blt _0211B5D4
	ldr r1, [r10, #0x48]
	mov r2, #0x78
	mov r0, r1, lsr #0x1f
	smull r1, r3, r4, r1
	add r3, r0, r3, asr #2
	str r3, [sp]
	stmib sp, {r2, r6}
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r7
	str r8, [sp, #0x10]
	bl FUN_ov90_0211ae04
	ldr r0, [r10, #0x44]
	add r2, sp, #0x14
	add r1, r0, #1
	smull r0, r3, r4, r1
	mov r0, r1, lsr #0x1f
	add r3, r0, r3, asr #2
	str r3, [sp]
	mov r0, #0x60
	stmib sp, {r0, r6}
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	mov r3, r7
	str r8, [sp, #0x10]
	bl FUN_ov90_0211ae04
_0211B5D4:
	ldr r2, [r10, #0xd4]
	ldr r0, [r10, #0x44]
	ldr r1, [r10, #0x34]
	add r2, r2, r0, lsl #3
	mov r0, #0x3c
	mla r0, r2, r0, r1
	ldr r8, [r0, #0x20]
	ldr r11, _0211B68C ; =0x66666667
	mov r4, #0xa
	smull r1, r2, r11, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r4, r2
	sub r2, r8, r0
	mov r7, #0xac
	str r2, [sp]
	mov r0, #0x58
	stmib sp, {r0, r7}
	add r6, r7, #0xda
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r4
	str r6, [sp, #0xc]
	mov r5, #1
	str r5, [sp, #0x10]
	bl FUN_ov90_0211ae04
	cmp r8, #0xa
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	smull r1, r2, r11, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0x50
	stmib sp, {r0, r7}
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x14
	mov r3, r4
	str r5, [sp, #0x10]
	bl FUN_ov90_0211ae04
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B688: .word unk_02099F38
_0211B68C: .word 0x66666667
	arm_func_end FUN_ov90_0211b488

	arm_func_start FUN_ov90_0211b690
FUN_ov90_0211b690: ; 0x0211B690
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xbc]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211B6BC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xbc]
	ldmfd sp!, {r4, pc}
_0211B6BC: .word unk_02099F38
	arm_func_end FUN_ov90_0211b690

	arm_func_start FUN_ov90_0211b6c0
FUN_ov90_0211b6c0: ; 0x0211B6C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x160
	mov r2, #0x60
	str r4, [r5, #0x15c]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x1c0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x140
	mov r2, #0x18
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov90_0211b6c0

	arm_func_start FUN_ov90_0211b704
FUN_ov90_0211b704: ; 0x0211B704
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r9, #0
	mov r10, r0
	str r9, [sp, #0x2c]
	ldr r0, [r10, #0x44]
	ldr r5, _0211BA34 ; =0x02099F38
	mov r8, r0, lsl #3
	add r3, r8, #8
	ldr r0, [r5]
	mov r1, #8
	mov r2, #1
	str r9, [sp, #0x28]
	str r3, [sp, #0x18]
	mov r4, #0x3c
	bl FUN_ov16_02112724
	ldr r11, _0211BA38 ; =0x0000018E
	str r0, [r10, #0xc0]
	mov r0, r11, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x1c]
	add r0, r10, #0x164
	str r0, [sp, #0x20]
	add r0, r11, #1
	str r0, [sp, #0x24]
	b _0211BA20
_0211B76C:
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [r10, #0x34]
	mla r0, r8, r4, r0
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	ldr r0, [r5]
	beq _0211B9BC
	mov r1, #6
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, #0xc
	mla r1, r9, r1, r10
	str r0, [r1, #0x160]
	ldr r1, [sp, #0x2c]
	mov r6, r0
	add r1, r1, #1
	str r1, [sp, #0x2c]
	ldr r1, [r10, #0x34]
	mov r0, r10
	mla r1, r8, r4, r1
	ldrh r1, [r1, #0x36]
	bl FUN_ov90_0211ad14
	mov r3, r0
	mov r0, r9, lsl #4
	add r7, r0, #0x20
	ldr r0, [r5]
	ldr r2, [sp, #0x2c]
	mov r1, r6
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0x2c]
	mov r1, r6
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r5]
	ldr r2, [sp, #0x2c]
	mov r1, r6
	mov r3, #0x28
	bl FUN_ov16_02113b78
	ldr r0, [r5]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x1c]
	mov r1, r6
	bl FUN_ov16_021139bc
	mov r0, r9, lsl #4
	add r2, r0, #0x23
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	mla r0, r9, r1, r0
	str r0, [sp]
	mov r0, #0x46
	stmib sp, {r0, r2}
	str r11, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r10, #0x34]
	mov r0, r10
	mla r1, r8, r4, r1
	mov r2, r6
	add r3, sp, #0x2c
	bl FUN_ov90_0211aec4
	ldr r0, [r10, #0x34]
	mov r1, r9, lsl #4
	mla r0, r8, r4, r0
	ldr r0, [r0, #0x24]
	ldr r2, _0211BA3C ; =0x66666667
	add r7, r1, #0x20
	smull r3, r1, r2, r0
	mov r2, r0, lsr #0x1f
	add r1, r2, r1, asr #2
	mov r2, #0xa
	smull r1, r3, r2, r1
	sub r1, r0, r1
	str r1, [sp]
	mov r0, #0xd0
	stmib sp, {r0, r7}
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x2c
	mov r3, #7
	bl FUN_ov90_0211ae04
	ldr r0, [r10, #0x34]
	mla r0, r8, r4, r0
	ldr r3, [r0, #0x24]
	cmp r3, #0xa
	blt _0211B928
	ldr r0, _0211BA3C ; =0x66666667
	smull r1, r2, r0, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0xc8
	stmib sp, {r0, r7}
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x2c
	mov r3, #7
	bl FUN_ov90_0211ae04
_0211B928:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xd8
	str r0, [sp, #4]
	mov r0, r9, lsl #4
	add r0, r0, #0x28
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r1, r6
	mov r0, r10
	add r2, sp, #0x2c
	mov r3, #8
	bl FUN_ov90_0211ae04
	ldr r0, [r10, #0x34]
	mla r0, r8, r4, r0
	ldrb r0, [r0, #0x3a]
	tst r0, #1
	beq _0211B9D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, r9, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x28
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r1, [r10, #0xc0]
	mov r0, r10
	mov r3, #1
	bl FUN_ov90_0211ae04
	b _0211B9D4
_0211B9BC:
	mov r1, #1
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, #0xc
	mla r1, r9, r1, r10
	str r0, [r1, #0x160]
_0211B9D4:
	add r0, r9, #9
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r9, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _0211BA40 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	mov r3, #0x20
	bl FUN_ov16_0210fba4
	add r8, r8, #1
	add r9, r9, #1
_0211BA20:
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _0211B76C
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA34: .word unk_02099F38
_0211BA38: .word 0x0000018E
_0211BA3C: .word 0x66666667
_0211BA40: .word unk_02099EB4
	arm_func_end FUN_ov90_0211b704

	arm_func_start FUN_ov90_0211ba44
FUN_ov90_0211ba44: ; 0x0211BA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0
	mov r10, r0
	mov r7, r5
	mov r11, r5
	mov r8, r5
	ldr r4, _0211BAFC ; =0x02099F38
	b _0211BACC
_0211BA64:
	mov r0, #0xc
	mla r0, r8, r0, r10
	ldr r1, [r0, #0x160]
	cmp r1, #0
	beq _0211BA8C
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r0, #0xc
	mla r0, r8, r0, r10
	str r7, [r0, #0x160]
_0211BA8C:
	mov r0, #0xc
	mla r6, r8, r0, r10
	mov r9, r11
	b _0211BAC0
_0211BA9C:
	add r0, r6, r9, lsl #2
	ldr r1, [r0, #0x164]
	cmp r1, #0
	beq _0211BABC
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #2
	str r5, [r0, #0x164]
_0211BABC:
	add r9, r9, #1
_0211BAC0:
	cmp r9, #1
	blt _0211BA9C
	add r8, r8, #1
_0211BACC:
	cmp r8, #8
	blt _0211BA64
	ldr r0, _0211BAFC ; =0x02099F38
	ldr r1, [r10, #0xc0]
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	ldr r0, _0211BB00 ; =0x02099EB4
	str r11, [r10, #0xc0]
	ldr r0, [r0]
	mov r1, #0xa
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BAFC: .word unk_02099F38
_0211BB00: .word unk_02099EB4
	arm_func_end FUN_ov90_0211ba44

	arm_func_start FUN_ov90_0211bb04
FUN_ov90_0211bb04: ; 0x0211BB04
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x15c]
	cmp r0, #1
	beq _0211BB24
	cmp r0, #2
	beq _0211BB2C
	ldmfd sp!, {r4, pc}
_0211BB24:
	mov r0, #2
	str r0, [r4, #0x15c]
_0211BB2C:
	mov r0, r4
	bl FUN_ov90_0211ba44
	mov r0, r4
	bl FUN_ov90_0211b690
	mov r0, r4
	bl FUN_ov90_0211b488
	mov r0, r4
	bl FUN_ov90_0211b704
	mov r0, r4
	bl FUN_ov90_0211d1a8
	mov r0, r4
	bl FUN_ov90_0211b124
	mov r0, #0
	str r0, [r4, #0x15c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov90_0211bb04

	arm_func_start FUN_ov90_0211bb68
FUN_ov90_0211bb68: ; 0x0211BB68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r0, [r10, #0xc8]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BD10 ; =0x02099F38
	mov r8, #1
	ldr r0, [r0]
	mov r1, #5
	mov r2, r8
	bl FUN_ov16_02112724
	mov r7, r0
	mov r6, #0
	str r6, [sp, #0x18]
	str r7, [r10, #0xc8]
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r5, #0x38
	str r5, [sp, #8]
	mov r4, #0xc8
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x18
	mov r3, #0xc
	str r8, [sp, #0x10]
	bl FUN_ov90_0211ae04
	add r0, r10, #0x3c
	stmia sp, {r0, r6}
	mov r1, #0x3c
	str r1, [sp, #8]
	sub r9, r4, #1
	str r9, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r1, _0211BD14 ; =0x0211D7C0
	str r8, [sp, #0x14]
	mov r0, r10
	mov r2, r7
	add r3, sp, #0x18
	bl FUN_ov90_0211aec4
	str r6, [sp]
	mov r11, #2
	str r5, [sp, #4]
	mov r4, #0x68
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x18
	mov r3, r11
	bl FUN_ov90_0211ae04
	mov r1, r7
	str r11, [sp]
	mov r7, #0x98
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r10
	mov r3, r11
	str r8, [sp, #0x10]
	bl FUN_ov90_0211ae04
	mov r0, r10
	mov r1, r11
	bl FUN_ov90_0211c250
	mov r3, r5
	str r7, [r10, #0x128]
	str r4, [r10, #0x12c]
	str r4, [sp]
	mov r10, #0x30
	str r10, [sp, #4]
	mov r9, #0x18
	add r8, r11, #0x260
	str r9, [sp, #8]
	ldr r5, _0211BD18 ; =0x02099EB4
	str r8, [sp, #0xc]
	ldr r0, [r5]
	mov r2, #5
	mov r1, r6
	bl FUN_ov16_0210fba4
	stmia sp, {r4, r10}
	str r9, [sp, #8]
	str r8, [sp, #0xc]
	ldr r0, [r5]
	mov r3, r7
	mov r2, #6
	mov r1, r6
	bl FUN_ov16_0210fba4
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r2, #7
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210fba4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BD10: .word unk_02099F38
_0211BD14: .word ov90_0211D7C0
_0211BD18: .word unk_02099EB4
	arm_func_end FUN_ov90_0211bb68

	arm_func_start FUN_ov90_0211bd1c
FUN_ov90_0211bd1c: ; 0x0211BD1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _0211BD44
	ldr r0, _0211BD78 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc8]
_0211BD44:
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _0211BD64
	ldr r0, _0211BD78 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x3c]
_0211BD64:
	ldr r0, _0211BD7C ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211BD78: .word unk_02099F38
_0211BD7C: .word unk_02099EB4
	arm_func_end FUN_ov90_0211bd1c

	arm_func_start FUN_ov90_0211bd80
FUN_ov90_0211bd80: ; 0x0211BD80
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r0, [r10, #0xc4]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BF70 ; =0x02099F38
	mov r8, #5
	mov r7, #1
	ldr r0, [r0]
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_02112724
	mov r6, r0
	mov r5, #0
	str r5, [sp, #0x18]
	str r6, [r10, #0xc4]
	str r5, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r4, #0xc8
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x18
	mov r3, #0xe
	str r7, [sp, #0x10]
	bl FUN_ov90_0211ae04
	add r0, r10, #0x3c
	stmia sp, {r0, r5}
	mov r1, #0x26
	str r1, [sp, #8]
	sub r9, r4, #1
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _0211BF74 ; =0x0211D7F4
	mov r0, r10
	mov r2, r6
	add r3, sp, #0x18
	str r7, [sp, #0x14]
	bl FUN_ov90_0211aec4
	add r0, r10, #0x40
	stmia sp, {r0, r5}
	mov r1, #0x54
	str r1, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _0211BF78 ; =0x0211D828
	str r7, [sp, #0x14]
	mov r0, r10
	mov r2, r6
	add r3, sp, #0x18
	bl FUN_ov90_0211aec4
	mov r11, #2
	str r5, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r4, #0x80
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	str r5, [sp, #0x10]
	mov r0, r10
	mov r1, r6
	add r2, sp, #0x18
	mov r3, r11
	bl FUN_ov90_0211ae04
	mov r1, r6
	str r11, [sp]
	mov r6, #0x98
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r9, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r10
	mov r3, r11
	str r7, [sp, #0x10]
	bl FUN_ov90_0211ae04
	mov r0, r10
	mov r1, r7
	bl FUN_ov90_0211c250
	mov r2, r8, lsl #0x10
	mov r0, r5, lsl #0x10
	str r6, [r10, #0x104]
	str r4, [r10, #0x108]
	str r4, [sp]
	mov r9, #0x30
	str r9, [sp, #4]
	mov r8, #0x18
	str r8, [sp, #8]
	add r10, r11, #0x260
	ldr r7, _0211BF7C ; =0x02099EB4
	str r10, [sp, #0xc]
	mov r1, r0, lsr #0x10
	ldr r0, [r7]
	mov r2, r2, lsr #0x10
	mov r3, #0x38
	bl FUN_ov16_0210fba4
	stmia sp, {r4, r9}
	str r8, [sp, #8]
	str r10, [sp, #0xc]
	mov r1, r5, lsl #0x10
	ldr r0, [r7]
	mov r2, #6
	mov r1, r1, lsr #0x10
	mov r3, r6
	bl FUN_ov16_0210fba4
	mov r1, r5, lsl #0x10
	str r5, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r7]
	mov r2, #7
	mov r1, r1, lsr #0x10
	mov r3, r5
	bl FUN_ov16_0210fba4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF70: .word unk_02099F38
_0211BF74: .word ov90_0211D7F4
_0211BF78: .word ov90_0211D828
_0211BF7C: .word unk_02099EB4
	arm_func_end FUN_ov90_0211bd80

	arm_func_start FUN_ov90_0211bf80
FUN_ov90_0211bf80: ; 0x0211BF80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _0211BFA8
	ldr r0, _0211BFF8 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc4]
_0211BFA8:
	mov r7, #0
	mov r6, r7
	ldr r5, _0211BFF8 ; =0x02099F38
	b _0211BFDC
_0211BFB8:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211BFD8
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x3c]
_0211BFD8:
	add r7, r7, #1
_0211BFDC:
	cmp r7, #2
	blt _0211BFB8
	ldr r0, _0211BFFC ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BFF8: .word unk_02099F38
_0211BFFC: .word unk_02099EB4
	arm_func_end FUN_ov90_0211bf80

	arm_func_start FUN_ov90_0211c000
FUN_ov90_0211c000: ; 0x0211C000
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x9c
	mov r7, r0
	ldr r0, [r7, #0xcc]
	cmp r0, #0
	addne sp, sp, #0x9c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _0211C1AC ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r2, r4
	mov r1, #2
	bl FUN_ov16_02112724
	mov r2, #0
	str r2, [sp, #0x18]
	mov r5, r0
	ldr r1, [r7, #0x1dc]
	str r5, [r7, #0xcc]
	cmp r1, #0
	mov r6, #0xc8
	mov r0, #0x10
	bne _0211C090
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r7
	mov r1, r5
	mov r3, #0xd
	str r4, [sp, #0x10]
	bl FUN_ov90_0211ae04
	add r0, sp, #0x1c
	ldr r1, _0211C1B0 ; =0x0211D86C
	b _0211C0D8
_0211C090:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r2, sp, #0x18
	mov r0, r7
	mov r1, r5
	mov r3, #0xc
	str r4, [sp, #0x10]
	bl FUN_ov90_0211ae04
	mov r0, r7
	bl FUN_ov90_0211c78c
	ldr r2, [r7, #0x34]
	mov r1, #0x3c
	mla r2, r0, r1, r2
	ldr r1, _0211C1B4 ; =0x0211D8CC
	add r0, sp, #0x1c
_0211C0D8:
	bl sprintf
	ldr r0, [r7, #0x1dc]
	mov r1, #0x38
	cmp r0, #0
	add r0, r7, #0x1c4
	str r0, [sp]
	movne r1, #0x3c
	mov r0, #0
	stmib sp, {r0, r1}
	sub r6, r6, #1
	str r6, [sp, #0xc]
	mov r4, #1
	str r4, [sp, #0x10]
	add r1, sp, #0x1c
	add r3, sp, #0x18
	mov r0, r7
	mov r2, r5
	str r4, [sp, #0x14]
	bl FUN_ov90_0211aec4
	ldr r0, [r7, #0x1dc]
	mov r4, #0
	cmp r0, #0
	moveq r1, #0x78
	movne r1, #0x68
	mov r0, #0x68
	stmia sp, {r0, r1}
	mov r0, #8
	str r0, [sp, #8]
	sub r6, r6, #1
	mov r5, #0xa
	str r6, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	mov r0, r7
	mov r1, r5
	mov r3, r4
	mov r2, #3
	bl FUN_ov90_0211cf30
	str r4, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r2, #0x258
	str r2, [sp, #0xc]
	ldr r0, _0211C1B8 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	mov r3, r4
	mov r2, #7
	bl FUN_ov16_0210fba4
	add sp, sp, #0x9c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C1AC: .word unk_02099F38
_0211C1B0: .word ov90_0211D86C
_0211C1B4: .word ov90_0211D8CC
_0211C1B8: .word unk_02099EB4
	arm_func_end FUN_ov90_0211c000

	arm_func_start FUN_ov90_0211c1bc
FUN_ov90_0211c1bc: ; 0x0211C1BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xcc]
	cmp r1, #0
	beq _0211C1E4
	ldr r0, _0211C248 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xcc]
_0211C1E4:
	ldr r1, [r4, #0x1c4]
	cmp r1, #0
	beq _0211C204
	ldr r0, _0211C248 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x1c4]
_0211C204:
	ldr r1, [r4, #0xd0]
	cmp r1, #0
	beq _0211C234
	ldr r0, _0211C248 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r1, #0
	ldr r0, _0211C24C ; =0x02099EB4
	str r1, [r4, #0xd0]
	ldr r0, [r0]
	mov r1, #8
	bl FUN_ov16_0210eab4
_0211C234:
	ldr r0, _0211C24C ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211C248: .word unk_02099F38
_0211C24C: .word unk_02099EB4
	arm_func_end FUN_ov90_0211c1bc

	arm_func_start FUN_ov90_0211c250
FUN_ov90_0211c250: ; 0x0211C250
	add r0, r0, #0xd4
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211C268 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211C268: .word MI_CpuFill8
	arm_func_end FUN_ov90_0211c250

	arm_func_start FUN_ov90_0211c26c
FUN_ov90_0211c26c: ; 0x0211C26C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, #0x24
	mul r5, r1, r4
	mov r4, r0
	add r1, r4, #0xd4
	ldr r6, [r1, r5]
	ldr r0, _0211C348 ; =0x0211D478
	mov lr, r6, lsr #0x1f
	rsb r12, lr, r6, lsl #29
	add r12, lr, r12, ror #29
	mov r6, r2, lsr #0x1f
	ldr r7, _0211C34C ; =0x0211D474
	mov lr, r12, lsl #4
	rsb r12, r6, r2, lsl #29
	add r6, r6, r12, ror #29
	mov r12, r6, lsl #4
	str r2, [r1, r5]
	add r1, r4, r5
	mov r2, #1
	ldr r0, [r0]
	str r2, [r1, #0xf0]
	add r6, r4, #0xd8
	str r0, [r6, r5]
	add r2, lr, #0x20
	add r0, r4, #0xdc
	ldr r7, [r7]
	str r2, [r0, r5]
	add r2, r4, #0xe0
	str r7, [r2, r5]
	add r7, r12, #0x20
	add lr, r4, #0xe4
	str r7, [lr, r5]
	ldr r7, [r2, r5]
	ldr r2, [r6, r5]
	ldr r6, _0211C350 ; =0x55555556
	sub r7, r7, r2
	smull r2, r12, r6, r7
	add r12, r12, r7, lsr #31
	str r12, [r1, #0xe8]
	ldr r2, [lr, r5]
	ldr r0, [r0, r5]
	cmp r3, #0
	sub r2, r2, r0
	smull r0, r3, r6, r2
	add r3, r3, r2, lsr #31
	str r3, [r1, #0xec]
	beq _0211C338
	ldr r0, _0211C354 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211C338:
	mov r0, #1
	strb r0, [r4, #0x27]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C348: .word ov90_0211D478
_0211C34C: .word ov90_0211D474
_0211C350: .word 0x55555556
_0211C354: .word gL5Sound
	arm_func_end FUN_ov90_0211c26c

	arm_func_start FUN_ov90_0211c358
FUN_ov90_0211c358: ; 0x0211C358
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r2, #0x24
	mul r7, r1, r2
	add r2, r0, r7
	add r4, r0, #0xf4
	ldr r3, [r4, r7]
	ldr r5, [r0, #0xa8]
	ldr r6, [r2, #0xd8]
	ldr lr, [r2, #0xdc]
	add r3, r3, #1
	str r3, [r4, r7]
	ldr r12, [r2, #0xe8]
	ldr r7, [r2, #0xf4]
	ldr r4, [r2, #0xec]
	mla r6, r12, r7, r6
	mla r7, r4, r7, lr
	ldr r3, _0211C44C ; =0x0211D46C
	cmp r12, #0
	ldr r4, [r3]
	ldr r2, [r2, #0xe0]
	bge _0211C3BC
	cmp r6, r2
	movlt r6, r2
	b _0211C3C4
_0211C3BC:
	cmp r6, r2
	movgt r6, r2
_0211C3C4:
	mov r2, #0x24
	mla r3, r1, r2, r0
	ldr r2, [r3, #0xec]
	cmp r2, #0
	ldr r2, [r3, #0xe4]
	bge _0211C3E8
	cmp r7, r2
	movlt r7, r2
	b _0211C3F0
_0211C3E8:
	cmp r7, r2
	movgt r7, r2
_0211C3F0:
	mov r2, #0x24
	mla r2, r1, r2, r0
	ldr r1, [r2, #0xe0]
	cmp r6, r1
	ldreq r1, [r2, #0xe4]
	cmpeq r7, r1
	bne _0211C41C
	mov r1, #0
	str r1, [r2, #0xf0]
	str r1, [r2, #0xf4]
	bl FUN_ov90_0211d1a8
_0211C41C:
	mov r0, r7, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _0211C450 ; =0x02099F38
	str r1, [sp]
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C44C: .word ov90_0211D46C
_0211C450: .word unk_02099F38
	arm_func_end FUN_ov90_0211c358

	arm_func_start FUN_ov90_0211c454
FUN_ov90_0211c454: ; 0x0211C454
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	mov r9, r1
	mov r0, #0x24
	mla r4, r9, r0, r10
	ldr r11, [r10, #0xa8]
	ldr r7, [r10, #0xc4]
	ldr r8, [r10, #0xc8]
	ldr r0, _0211C758 ; =0x0211D484
	ldr r6, [r4, #0xd4]
	str r7, [sp, #0x24]
	add r5, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	rsb r7, r6, #4
	rsb r0, r6, #5
	str r7, [sp, #0x1c]
	str r11, [sp, #0x20]
	ldr r3, _0211C75C ; =0x0211D490
	str r0, [sp, #0x18]
	add r7, sp, #4
	ldmia r3, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r1, [r4, #0xe0]
	ldr r0, [r4, #0xe4]
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	add r2, r10, #0x144
	mov r3, r1, asr #0x10
	ldr r1, [r2, r9, lsl #3]
	mov r0, r0, asr #0x10
	add r7, r1, #1
	str r7, [r2, r9, lsl #3]
	str r0, [sp]
	ldr r4, _0211C760 ; =0x02099F38
	str r8, [sp, #0x28]
	add r11, sp, #0x20
	ldr r0, [r4]
	ldr r2, [r5, r9, lsl #2]
	ldr r1, [r11, r9, lsl #2]
	bl FUN_ov16_02113b78
	cmp r7, #1
	mov r8, #0
	beq _0211C73C
	cmp r7, #3
	bge _0211C554
	ldr r0, [r10, #0x14]
	cmp r0, #0
	bne _0211C534
_0211C51C:
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113f7c
	b _0211C73C
_0211C534:
	str r8, [sp]
	add r3, sp, #4
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, r6, lsl #3]
_0211C54C:
	bl FUN_ov16_0211401c
	b _0211C73C
_0211C554:
	cmp r7, #6
	bge _0211C5A8
	ldr r1, [r10, #0x14]
	mov r0, #1
	cmp r1, #0
	bne _0211C588
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113ec0
	b _0211C73C
_0211C588:
	add r0, sp, #4
	str r8, [sp]
	add r3, r0, r6, lsl #3
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, #4]
	b _0211C54C
_0211C5A8:
	cmp r7, #9
	bge _0211C5C4
	ldr r0, [r10, #0x14]
	cmp r0, #0
	bne _0211C5C0
	b _0211C51C
_0211C5C0:
	b _0211C534
_0211C5C4:
	bne _0211C638
	ldr r0, [r10, #0x14]
	cmp r0, #2
	bne _0211C600
	ldr r0, [r10, #0x11c]
	cmp r0, #0
	mov r0, r10
	bne _0211C5F0
	mov r1, r8
	bl FUN_ov90_0211ac00
	b _0211C5FC
_0211C5F0:
	mov r2, r8
	mov r1, #0x3d
	bl FUN_ov90_0211ab38
_0211C5FC:
	b _0211C738
_0211C600:
	cmp r0, #1
	bne _0211C73C
	ldr r0, [r10, #0xf8]
	cmp r0, #0
	bne _0211C624
	mov r0, r10
	mov r1, #2
	bl FUN_ov90_0211ac00
	b _0211C738
_0211C624:
	mov r1, #0x4b
	mov r0, r10
	mov r2, r1
	bl FUN_ov90_0211ab38
	b _0211C73C
_0211C638:
	cmp r7, #0x10
	ldreq r0, [r10, #0x14]
	cmpeq r0, #0
	bne _0211C73C
	mov r0, r10
	bl FUN_ov90_0211c76c
	cmp r0, #0
	beq _0211C738
	mov r0, r10
	bl FUN_ov90_0211c76c
	ldr r1, [r10, #0x14]
	mov r5, r0
	cmp r1, #0
	bne _0211C720
	cmp r5, #0
	beq _0211C720
	ldr r2, [r10, #0xd4]
	ldr r1, [r10, #0x44]
	ldr r0, [r10, #0x34]
	add r4, r2, r1, lsl #3
	mov r6, #0x3c
	mla r0, r4, r6, r0
	ldrh r1, [r0, #0x38]
	mov r0, r10
	bl FUN_ov90_0211a6c4
	mul r2, r4, r6
	ldr r0, [r10, #0x34]
	ldr r4, _0211C764 ; =0x0209BA20
	add r1, r0, r2
	mov r0, #1
	strb r0, [r1, #0x3a]
	ldr r1, [r10, #0x34]
	mov r0, r4
	add r1, r1, r2
	ldr r2, [r1, #0x24]
	mov r1, r5
	bl FUN_ov16_020ede60 ; may be ov17 ; ov16(Mica)
	mov r7, r6
	b _0211C704
_0211C6D4:
	ldr r0, [r10, #0x34]
	mla r0, r8, r7, r0
	ldrh r0, [r0, #0x34]
	cmp r5, r0
	bne _0211C700
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020edeb4
	ldr r1, [r10, #0x34]
	mla r1, r8, r6, r1
	str r0, [r1, #0x20]
_0211C700:
	add r8, r8, #1
_0211C704:
	cmp r8, #0x20
	blt _0211C6D4
	ldr r0, [r10, #0x1d8]
	add r1, r0, #1
	mov r0, #1
	str r0, [r10, #0x15c]
	str r1, [r10, #0x1d8]
_0211C720:
	ldr r0, _0211C768 ; =gL5Sound
	mov r1, #0x10
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r10
	mov r1, #3
	bl FUN_ov90_0211ac00
_0211C738:
	mov r8, #1
_0211C73C:
	cmp r8, #0
	addne r0, r10, r9, lsl #3
	movne r1, #0
	strne r1, [r0, #0x140]
	strne r1, [r0, #0x144]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C758: .word ov90_0211D484
_0211C75C: .word ov90_0211D490
_0211C760: .word unk_02099F38
_0211C764: .word gLogicThink
_0211C768: .word gL5Sound
	arm_func_end FUN_ov90_0211c454

	arm_func_start FUN_ov90_0211c76c
FUN_ov90_0211c76c: ; 0x0211C76C
	ldr r2, [r0, #0xd4]
	ldr r1, [r0, #0x44]
	ldr r3, [r0, #0x34]
	add r1, r2, r1, lsl #3
	mov r0, #0x3c
	mla r0, r1, r0, r3
	ldrh r0, [r0, #0x34]
	bx lr
	arm_func_end FUN_ov90_0211c76c

	arm_func_start FUN_ov90_0211c78c
FUN_ov90_0211c78c: ; 0x0211C78C
	ldr r1, [r0, #0xd4]
	ldr r0, [r0, #0x44]
	add r0, r1, r0, lsl #3
	bx lr
	arm_func_end FUN_ov90_0211c78c

	arm_func_start FUN_ov90_0211c79c
FUN_ov90_0211c79c: ; 0x0211C79C
	ldr r3, [r0, #0xd4]
	ldr r2, [r0, #0x44]
	ldr r1, [r0, #0x34]
	add r3, r3, r2, lsl #3
	mov r0, #0x3c
	mla r2, r3, r0, r1
	ldrh r1, [r2, #0x34]
	mov r0, #0
	cmp r1, #0
	bxeq lr
	ldrb r1, [r2, #0x3a]
	tst r1, #1
	moveq r0, #1
	bx lr
	arm_func_end FUN_ov90_0211c79c

	arm_func_start FUN_ov90_0211c7d4
FUN_ov90_0211c7d4: ; 0x0211C7D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211C914 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #6
	ldreq r0, [r6, #0x15c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211C834
_0211C814:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xf0]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0x140]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211C834:
	cmp r4, #3
	blt _0211C814
	ldr r0, _0211C918 ; =0x0209A0F4
	ldr r4, _0211C91C ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211C884
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211C884:
	tst r5, #1
	beq _0211C898
	mov r0, r6
	bl FUN_ov90_0211c920
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C898:
	tst r5, #2
	beq _0211C8AC
	mov r0, r6
	bl FUN_ov90_0211ca44
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8AC:
	tst r5, #0x200
	beq _0211C8C0
	mov r0, r6
	bl FUN_ov90_0211cba4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8C0:
	tst r5, #0x100
	beq _0211C8D4
	mov r0, r6
	bl FUN_ov90_0211cc00
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8D4:
	tst r5, #0x20
	beq _0211C8E8
	mov r0, r6
	bl FUN_ov90_0211cc58
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8E8:
	tst r5, #0x10
	beq _0211C8FC
	mov r0, r6
	bl FUN_ov90_0211cd48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C8FC:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov90_0211ce3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C914: .word unk_02099ED4
_0211C918: .word unk_0209A0F4
_0211C91C: .word unk_02099EB4
	arm_func_end FUN_ov90_0211c7d4

	arm_func_start FUN_ov90_0211c920
FUN_ov90_0211c920: ; 0x0211C920
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211C938: ; jump table
	b _0211C948 ; case 0
	b _0211C9BC ; case 1
	b _0211C988 ; case 2
	b _0211C9F0 ; case 3
_0211C948:
	bl FUN_ov90_0211c79c
	cmp r0, #0
	beq _0211C978
	mov r5, #1
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, r5
	str r5, [r4, #0x140]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, r5
	bl FUN_ov90_0211d0d8
	ldmfd sp!, {r3, r4, r5, pc}
_0211C978:
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #9
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C988:
	ldr r0, [r4, #0x11c]
	mov r1, #1
	str r1, [r4, #0x150]
	cmp r0, #0
	bne _0211C9AC
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C9AC:
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C9BC:
	ldr r0, [r4, #0xf8]
	mov r1, #1
	str r1, [r4, #0x148]
	cmp r0, #0
	bne _0211C9E0
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C9E0:
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211C9F0:
	mov r1, #8
	bl FUN_ov90_0211d0d8
	ldr r0, [r4, #0x1dc]
	cmp r0, #0
	bne _0211CA24
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0x3d
	mov r2, #0
	bl FUN_ov90_0211ab38
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA24:
	ldr r0, _0211CA40 ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0
	bl FUN_ov90_0211ac00
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA40: .word gL5Sound
	arm_func_end FUN_ov90_0211c920

	arm_func_start FUN_ov90_0211ca44
FUN_ov90_0211ca44: ; 0x0211CA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r1, [r6, #0x14]
	mov r2, #0
	cmp r1, #0
	beq _0211CA70
	cmp r1, #1
	beq _0211CB34
	cmp r1, #2
	beq _0211CACC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CA70:
	mov r4, #2
	mov r1, r4
	bl FUN_ov90_0211d0d8
	ldr r0, _0211CB9C ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, [r6, #0x1d8]
	cmp r0, #0
	beq _0211CAA4
	mov r0, r6
	mov r1, #1
	bl FUN_ov90_0211ac00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAA4:
	ldr r0, [r6, #0x1dc]
	cmp r0, #0
	mov r0, r6
	beq _0211CAC0
	mov r1, r4
	bl FUN_ov90_0211ac00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAC0:
	mov r1, #3
	bl FUN_ov90_0211ac00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CACC:
	mov r1, #0x98
	mov r0, #0x68
	ldr r5, [r6, #0xc8]
	str r1, [r6, #0x128]
	mov r8, #2
	str r2, [r6, #0x11c]
	mov r4, #4
	str r0, [r6, #0x12c]
	mov r9, #1
	ldr r7, _0211CBA0 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r8
	sub r2, r4, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CB9C ; =gL5Sound
	mov r1, r4
	str r9, [r6, #0x150]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB34:
	ldr r5, [r6, #0xc4]
	mov r1, #0x98
	mov r0, #0x80
	mov r4, #5
	mov r8, #2
	str r2, [r6, #0xf8]
	str r1, [r6, #0x104]
	str r0, [r6, #0x108]
	mov r9, #1
	ldr r7, _0211CBA0 ; =0x02099F38
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r8
	sub r2, r4, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CB9C ; =gL5Sound
	mov r1, #4
	str r9, [r6, #0x148]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB9C: .word gL5Sound
_0211CBA0: .word unk_02099F38
	arm_func_end FUN_ov90_0211ca44

	arm_func_start FUN_ov90_0211cba4
FUN_ov90_0211cba4: ; 0x0211CBA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	sub r0, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	ldr r0, [r4, #0x48]
	str r1, [r4, #0x44]
	cmp r0, #1
	movgt r0, #1
	strgt r0, [r4, #0x15c]
	mov r0, r4
	mov r1, #3
	bl FUN_ov90_0211d0d8
	ldr r0, _0211CBFC ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211CBFC: .word gL5Sound
	arm_func_end FUN_ov90_0211cba4

	arm_func_start FUN_ov90_0211cc00
FUN_ov90_0211cc00: ; 0x0211CC00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [r4, #0x48]
	str r1, [r4, #0x44]
	cmp r0, #1
	movgt r0, #1
	strgt r0, [r4, #0x15c]
	mov r0, r4
	mov r1, #4
	bl FUN_ov90_0211d0d8
	ldr r0, _0211CC54 ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211CC54: .word gL5Sound
	arm_func_end FUN_ov90_0211cc00

	arm_func_start FUN_ov90_0211cc58
FUN_ov90_0211cc58: ; 0x0211CC58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	beq _0211CCDC
	cmp r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, #1
	mov r2, #0x38
	mov r1, #0x68
	ldr r4, [r0, #0xc8]
	str r1, [r0, #0x12c]
	str r3, [r0, #0x11c]
	str r2, [r0, #0x128]
	mov r7, #3
	ldr r5, _0211CD40 ; =0x02099F38
	str r3, [sp]
	mov r6, #2
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	mov r1, r4
	mov r3, r6
	add r2, r7, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CD44 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CCDC:
	ldr r4, [r0, #0xc4]
	mov r3, #1
	mov r2, #0x38
	mov r1, #0x80
	mov r7, #4
	mov r6, #2
	str r3, [r0, #0xf8]
	str r2, [r0, #0x104]
	str r1, [r0, #0x108]
	ldr r5, _0211CD40 ; =0x02099F38
	str r3, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	mov r1, r4
	mov r3, r6
	add r2, r7, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CD44 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD40: .word unk_02099F38
_0211CD44: .word gL5Sound
	arm_func_end FUN_ov90_0211cc58

	arm_func_start FUN_ov90_0211cd48
FUN_ov90_0211cd48: ; 0x0211CD48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x14]
	mov r3, #0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	beq _0211CDD0
	cmp r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0x98
	mov r1, #0x68
	ldr r4, [r0, #0xc8]
	str r1, [r0, #0x12c]
	ldr r5, _0211CE34 ; =0x02099F38
	str r3, [r0, #0x11c]
	str r2, [r0, #0x128]
	mov r0, #1
	mov r7, #4
	mov r6, #2
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	mov r1, r4
	mov r3, r6
	sub r2, r7, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CE38 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CDD0:
	ldr r4, [r0, #0xc4]
	mov r2, #0x98
	mov r1, #0x80
	mov r7, #5
	mov r6, #2
	str r3, [r0, #0xf8]
	str r2, [r0, #0x104]
	str r1, [r0, #0x108]
	mov r0, #1
	ldr r5, _0211CE34 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	mov r1, r4
	mov r3, r6
	sub r2, r7, #1
	bl FUN_ov16_02113f7c
	ldr r0, _0211CE38 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CE34: .word unk_02099F38
_0211CE38: .word gL5Sound
	arm_func_end FUN_ov90_0211cd48

	arm_func_start FUN_ov90_0211ce3c
FUN_ov90_0211ce3c: ; 0x0211CE3C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	ldr r7, [r9, #0x14]
	cmp r7, #0
	ldreq r0, [r9, #0x158]
	cmpeq r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mvn r6, #0
	tst r1, #0x40
	movne r6, #0
	bne _0211CE78
	tst r1, #0x80
	movne r6, #1
_0211CE78:
	cmp r6, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r0, #0x24
	mul r4, r7, r0
	ldr r0, _0211CF28 ; =0x0211D47C
	add r1, sp, #4
	ldr r3, [r0]
	ldr r2, [r0, #4]
	add r5, r9, #0xd4
	str r3, [sp, #4]
	ldr r0, _0211CF2C ; =0x0211D470
	add r1, r1, r7, lsl #3
	str r2, [sp, #8]
	ldr r2, [r1, r6, lsl #2]
	ldr r3, [r5, r4]
	ldr r1, [r0]
	add r0, r3, r2
	bl _s32_div_f
	mov r8, r1
	cmp r7, #0
	bne _0211CF0C
	mov r0, #1
	str r0, [r9, #0x15c]
	cmp r6, #0
	ldreq r0, [r5, r4]
	cmpeq r0, #0
	bne _0211CEF4
	mov r0, r9
	bl FUN_ov90_0211cba4
	b _0211CF0C
_0211CEF4:
	cmp r6, #1
	ldreq r0, [r5, r4]
	cmpeq r0, #7
	bne _0211CF0C
	mov r0, r9
	bl FUN_ov90_0211cc00
_0211CF0C:
	mov r0, r9
	mov r1, r7
	mov r2, r8
	mov r3, #1
	bl FUN_ov90_0211c26c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CF28: .word ov90_0211D47C
_0211CF2C: .word ov90_0211D470
	arm_func_end FUN_ov90_0211ce3c

	arm_func_start FUN_ov90_0211cf30
FUN_ov90_0211cf30: ; 0x0211CF30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211D0CC ; =0x02099F38
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
	bl FUN_ov16_02112724
	add r2, r10, r9, lsl #2
	add r1, r10, r8, lsl #2
	str r0, [r2, #0xa8]
	ldr r1, [r1, #0x6c]
	mov r8, r0
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r11
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
	mov r2, r11
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r8
	mov r2, r11
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	str r11, [sp]
	ldr r0, [r4]
	mov r3, #2
	mov r2, r11
	mov r1, r8
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x38]
	cmp r0, #5
	cmpne r0, #6
	cmpne r0, #8
	mov r2, r1, lsl #0x10
	mov r4, #1
	ldreq r6, _0211D0D0 ; =0x00000262
	ldr r0, _0211D0D4 ; =0x02099EB4
	stmia sp, {r4, r6}
	ldr r0, [r0]
	mov r1, r4
	mov r3, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
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
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	add r2, r7, #1
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D0CC: .word unk_02099F38
_0211D0D0: .word 0x00000262
_0211D0D4: .word unk_02099EB4
	arm_func_end FUN_ov90_0211cf30

	arm_func_start FUN_ov90_0211d0d8
FUN_ov90_0211d0d8: ; 0x0211D0D8
	ldr r0, _0211D0E8 ; =0x02099EB4
	ldr r12, _0211D0EC ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211D0E8: .word unk_02099EB4
_0211D0EC: .word FUN_ov16_0210efac
	arm_func_end FUN_ov90_0211d0d8

	arm_func_start FUN_ov90_0211d0f0
FUN_ov90_0211d0f0: ; 0x0211D0F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211D1A0 ; =0x02099EB4
	mov r9, r0
	ldr r0, [r5]
	mov r4, r4, lsl #0x10
	mov r8, r1
	mov r1, r4, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211D1A4 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0xa8]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	mov r1, r5
	mov r2, r8
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r7
	add r0, r4, #0x3a
	mov r3, r5
	bl FUN_ov16_0210e720
	mov r2, r8
	add r0, r4, #0x3e
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211D1A0: .word unk_02099EB4
_0211D1A4: .word unk_02099F38
	arm_func_end FUN_ov90_0211d0f0

	arm_func_start FUN_ov90_0211d1a8
FUN_ov90_0211d1a8: ; 0x0211D1A8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r3, [r4, #0xd4]
	ldr r2, [r4, #0x44]
	ldr r1, [r4, #0x38]
	add r2, r3, r2, lsl #3
	cmp r2, r1
	bge _0211D1D8
	bl FUN_ov90_0211c79c
	cmp r0, #0
	bne _0211D1F8
_0211D1D8:
	mov r2, #2
	mov r1, #1
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov90_0211d0f0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0211D1F8:
	mov r1, #1
	mov r0, r4
	mov r3, r1
	mov r2, #0
	str r1, [sp]
	bl FUN_ov90_0211d0f0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov90_0211d1a8

	arm_func_start FUN_ov90_0211d218
FUN_ov90_0211d218: ; 0x0211D218
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211D33C ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #6
	ldreq r0, [r6, #0x15c]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211D278
_0211D258:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xf0]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0x140]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211D278:
	cmp r4, #3
	blt _0211D258
	ldr r4, _0211D340 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2A4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211D2BC ; case 1
	b _0211D2EC ; case 2
	b _0211D304 ; case 3
	b _0211D320 ; case 4
	b _0211D2D4 ; case 5
_0211D2BC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov90_0211d344
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2D4:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov90_0211d3f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2EC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov90_0211d3fc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D304:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov90_0211d450
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D320:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov90_0211d450
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D33C: .word unk_02099ED4
_0211D340: .word unk_02099EB4
	arm_func_end FUN_ov90_0211d218

	arm_func_start FUN_ov90_0211d344
FUN_ov90_0211d344: ; 0x0211D344
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	str r6, [r7, #0x1cc]
	cmp r6, #5
	sub r4, r6, #9
	ldr r5, [r7, #0xd4]
	beq _0211D370
	cmp r6, #6
	beq _0211D378
	b _0211D37C
_0211D370:
	bl FUN_ov90_0211cc58
	b _0211D37C
_0211D378:
	bl FUN_ov90_0211cd48
_0211D37C:
	cmp r6, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0x10
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x158]
	cmp r0, #0
	bne _0211D3C8
	cmp r5, r4
	bne _0211D3AC
	mov r0, r7
	bl FUN_ov90_0211c920
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3AC:
	mov r3, #1
	mov r0, r7
	mov r2, r4
	mov r1, #0
	str r3, [r7, #0x15c]
	bl FUN_ov90_0211c26c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3C8:
	mov r0, r7
	bl FUN_ov90_0211cd48
	mov r0, r7
	mov r2, r4
	mov r1, #0
	mov r3, #1
	bl FUN_ov90_0211c26c
	ldr r1, [r7, #0xe0]
	ldr r0, [r7, #0xe4]
	str r1, [r7, #0xd8]
	str r0, [r7, #0xdc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov90_0211d344

	arm_func_start FUN_ov90_0211d3f8
FUN_ov90_0211d3f8: ; 0x0211D3F8
	bx lr
	arm_func_end FUN_ov90_0211d3f8

	arm_func_start FUN_ov90_0211d3fc
FUN_ov90_0211d3fc: ; 0x0211D3FC
	stmfd sp!, {r3, lr}
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211D40C: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _0211D430 ; case 1
	b _0211D438 ; case 2
	b _0211D440 ; case 3
	b _0211D448 ; case 4
	b _0211D430 ; case 5
	b _0211D430 ; case 6
	ldmfd sp!, {r3, pc} ; case 7
	b _0211D430 ; case 8
_0211D430:
	bl FUN_ov90_0211c920
	ldmfd sp!, {r3, pc}
_0211D438:
	bl FUN_ov90_0211ca44
	ldmfd sp!, {r3, pc}
_0211D440:
	bl FUN_ov90_0211cba4
	ldmfd sp!, {r3, pc}
_0211D448:
	bl FUN_ov90_0211cc00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov90_0211d3fc

	arm_func_start FUN_ov90_0211d450
FUN_ov90_0211d450: ; 0x0211D450
	bx lr
	arm_func_end FUN_ov90_0211d450

	arm_func_start FUN_ov90_0211d454
FUN_ov90_0211d454: ; 0x0211D454
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov90_0211d454

	arm_func_start FUN_ov90_0211d468
FUN_ov90_0211d468: ; 0x0211D468
	bx lr
	arm_func_end FUN_ov90_0211d468

	.rodata
	.global ov90_0211D46C
ov90_0211D46C:
	.byte 0x02, 0x00, 0x00, 0x00
	.global ov90_0211D470
ov90_0211D470:
	.byte 0x08, 0x00, 0x00, 0x00
	.global ov90_0211D474
ov90_0211D474:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov90_0211D478
ov90_0211D478:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov90_0211D47C
ov90_0211D47C:
	.byte 0x07, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00
	.global ov90_0211D484
ov90_0211D484:
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov90_0211D490
ov90_0211D490:
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov90_0211D4A0
ov90_0211D4A0:
	.word ov90_0211D628
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov90_0211D618
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov90_0211D5E8
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov90_0211D5F8
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov90_0211D638
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.word ov90_0211D648
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov90_0211D658
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov90_0211D668
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov90_0211D598
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov90_0211D5A8
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov90_0211D5B8
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov90_0211D5C8
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov90_0211D5D8
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov90_0211D608
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov90_0211d520
FUN_ov90_0211d520: ; 0x0211D520
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211D568 ; =0x0211D580
	str r0, [r4]
	ldr r0, _0211D56C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211D570 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D568: .word ov90_0211D580
_0211D56C: .word 0x00009CCD
_0211D570: .word 0x0000EA3C
	arm_func_end FUN_ov90_0211d520

	.section .sinit, 4
ov90_0211D574:
	.word FUN_ov90_0211d520

	.data
	.global ov90_0211D580
ov90_0211D580:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov90_0211D598
ov90_0211D598:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5A8
ov90_0211D5A8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5B8
ov90_0211D5B8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5C8
ov90_0211D5C8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5D8
ov90_0211D5D8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5E8
ov90_0211D5E8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D5F8
ov90_0211D5F8:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D608
ov90_0211D608:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D618
ov90_0211D618:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D628
ov90_0211D628:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D638
ov90_0211D638:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D648
ov90_0211D648:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D658
ov90_0211D658:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov90_0211D668
ov90_0211D668:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov90_0211D680
ov90_0211D680:
	.word FUN_ov90_0211d468
	.word FUN_ov90_0211d454
	.word FUN_ov90_0211c7d4
	.word FUN_ov90_0211d218
	.word FUN_ov90_02119f00
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov90_0211a0fc
	.word FUN_ov90_0211a248
	.word FUN_ov90_0211a030
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
	.word _ZN12CommonScreen7vFUN_60Ei
	.word _ZN12CommonScreen7vFUN_64Ei
	.word _ZN12CommonScreen7vFUN_68Ev
	.word FUN_ov1_020be600
	.word FUN_ov1_020be55c
	.word FUN_ov1_020be5bc
	.word FUN_ov1_020be5e0
	.global ov90_0211D6FC
ov90_0211D6FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x70, 0x72, 0x65, 0x6D, 0x69
	.byte 0x75, 0x6D, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x5F, 0x68, 0x75, 0x72, 0x72, 0x69, 0x2E, 0x64, 0x61
	.byte 0x74, 0x00, 0x00, 0x00
	.global ov90_0211D724
ov90_0211D724:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x70, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov90_0211D744
ov90_0211D744:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov90_0211D75C
ov90_0211D75C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x73, 0x5F, 0x69, 0x74
	.byte 0x65, 0x6D, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov90_0211D778
ov90_0211D778:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x6F, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov90_0211D790
ov90_0211D790:
	.byte 0x70, 0x69, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov90_0211D7A4
ov90_0211D7A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x73, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov90_0211D7C0
ov90_0211D7C0:
	.byte 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x82, 0xE0, 0x82, 0xE7, 0x82, 0xED
	.byte 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82
	.byte 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9
	.byte 0x81, 0x48, 0x00, 0x00
	.global ov90_0211D7F4
ov90_0211D7F4:
	.byte 0x82, 0xE0, 0x82, 0xE7, 0x82, 0xC1, 0x82, 0xBD, 0x83, 0x41, 0x83, 0x43
	.byte 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82
	.byte 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov90_0211D828
ov90_0211D828:
	.byte 0x81, 0xA6, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75
	.byte 0x5B, 0x8C, 0xE3, 0x2F, 0x82, 0xB2, 0x5D, 0x81, 0x40, 0x83, 0x76, 0x83, 0x8C, 0x83, 0x7E, 0x83
	.byte 0x41, 0x83, 0x80, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x0A, 0x5B, 0x8F
	.byte 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4
	.byte 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov90_0211D86C
ov90_0211D86C:
	.byte 0x82, 0xE0, 0x82, 0xE7
	.byte 0x82, 0xA6, 0x82, 0xE9, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xAA, 0x0A, 0x5B
	.byte 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x83, 0x76, 0x83, 0x8C, 0x83
	.byte 0x7E, 0x83, 0x41, 0x83, 0x80, 0x83, 0x41, 0x83, 0x43, 0x83, 0x65, 0x83, 0x80, 0x82, 0xF0, 0x5B
	.byte 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov90_0211D8CC
ov90_0211D8CC:
	.byte 0x25, 0x73, 0x0A, 0x82
	.byte 0xF0, 0x5B, 0x8E, 0xE8, 0x2F, 0x82, 0xC4, 0x5D, 0x82, 0xC9, 0x5B, 0x93, 0xFC, 0x2F, 0x82, 0xA2
	.byte 0x5D, 0x82, 0xEA, 0x82, 0xBD, 0x81, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

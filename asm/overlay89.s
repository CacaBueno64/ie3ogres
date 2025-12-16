
	.include "/macros/function.inc"
	.include "/include/overlay89.inc"

	.text
	arm_func_start FUN_ov89_02119f00
FUN_ov89_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211A028 ; =0x02099EB4
	str r1, [r4, #0xc]
	ldr r0, [r0]
	mov r7, #0
	bl FUN_ov16_0210e980
	ldr r0, _0211A02C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	bl FUN_ov16_020f47fc
	mov r0, #0xc
	bl FUN_ov16_020f3f60
	mov r6, #8
	add r0, r4, #0x18
	mov r1, r7
	mov r2, r6
	str r7, [r4, #0x1cc]
	str r7, [r4, #0x1d0]
	str r7, [r4, #0x1d8]
	bl MI_CpuFill8
	mov r5, #0x5800
	ldr r0, _0211A030 ; =gL5Allocator
	mov r1, r5
	str r7, [r4, #0x20]
	bl FUN_0202de44
	mov r2, r5
	mov r1, r7
	str r0, [r4, #0x2c]
	bl MI_CpuFill8
	add r0, r4, #0x1dc
	mov r1, #0x100
	bl FUN_0206c158
	mov r0, #1
	strb r0, [r4, #0x1c8]
	mov r2, r6
	add r0, r4, #0x34
	mov r1, r7
	str r7, [r4, #0x24]
	str r7, [r4, #0x28]
	bl MI_CpuFill8
	mov r0, r4
	bl FUN_ov89_0211ad18
	mov r0, r4
	bl FUN_ov89_0211ae3c
	mov r0, r4
	bl FUN_ov89_0211aea4
	mov r0, r4
	bl FUN_ov89_0211b6d4
	b _02119FF8
_02119FE8:
	mov r0, r4
	mov r1, r7
	bl FUN_ov89_0211c3a0
	add r7, r7, #1
_02119FF8:
	cmp r7, #3
	blt _02119FE8
	mov r5, #0
	mov r0, r4
	str r5, [r4, #0x150]
	bl FUN_ov89_0211b7f4
	ldr r0, _0211A034 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, _0211A038 ; =0x020A0640
	strb r5, [r0, #0x1a]
	str r5, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A028: .word unk_02099EB4
_0211A02C: .word unk_02099ED4
_0211A030: .word gL5Allocator
_0211A034: .word gWirelessUtil
_0211A038: .word unk_020A0640
	arm_func_end FUN_ov89_02119f00

	arm_func_start FUN_ov89_0211a03c
FUN_ov89_0211a03c: ; 0x0211A03C
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0xc]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A128 ; =0x0209A0AC
	str r2, [r1]
	bl FUN_ov16_020efa04
	add r0, r4, #0x1dc
	bl FUN_0206c270
	ldr r0, _0211A12C ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A130 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov89_0211bef4
	mov r0, r4
	bl FUN_ov89_0211c15c
	mov r0, r4
	bl FUN_ov89_0211bbac
	mov r0, r4
	bl FUN_ov89_0211aee4
	mov r0, r4
	bl FUN_ov89_0211ae68
	ldr r1, [r4, #0x1cc]
	cmp r1, #0
	beq _0211A0C8
	ldr r0, _0211A134 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x1cc]
_0211A0C8:
	ldr r1, [r4, #0x1d4]
	cmp r1, #0
	beq _0211A0E4
	ldr r0, _0211A134 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x1d4]
_0211A0E4:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _0211A100
	ldr r0, _0211A134 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x2c]
_0211A100:
	mov r0, r4
	mov r1, #2
	bl FUN_ov89_0211ad74
	bl FUN_ov16_020f47fc
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r4, pc}
_0211A128: .word unk_0209A0AC
_0211A12C: .word unk_02099EB4
_0211A130: .word unk_02099ED4
_0211A134: .word gL5Allocator
	arm_func_end FUN_ov89_0211a03c

	arm_func_start FUN_ov89_0211a138
FUN_ov89_0211a138: ; 0x0211A138
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	b _0211A1B0
_0211A150: ; jump table
	b _0211A174 ; case 0
	b _0211A17C ; case 1
	b _0211A184 ; case 2
	b _0211A18C ; case 3
	b _0211A194 ; case 4
	b _0211A19C ; case 5
	b _0211A1B0 ; case 6
	b _0211A1A4 ; case 7
	b _0211A1AC ; case 8
_0211A174:
	bl FUN_ov89_0211a760
	b _0211A1B0
_0211A17C:
	bl FUN_ov89_0211a934
	b _0211A1B0
_0211A184:
	bl FUN_ov89_0211a9c8
	b _0211A1B0
_0211A18C:
	bl FUN_ov89_0211aad4
	b _0211A1B0
_0211A194:
	bl FUN_ov89_0211ab7c
	b _0211A1B0
_0211A19C:
	bl FUN_ov89_0211abb4
	b _0211A1B0
_0211A1A4:
	bl FUN_ov89_0211ac50
	b _0211A1B0
_0211A1AC:
	bl FUN_ov89_0211ac84
_0211A1B0:
	mov r0, r4
	bl FUN_ov89_0211ace0
	ldr r0, _0211A290 ; =0x02099ED4
	ldr r5, _0211A294 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A1F0
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A1FC
_0211A1F0:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211A1FC:
	bl _ffix
	ldr r2, _0211A298 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldr r0, [r4, #0x10]
	cmp r0, #6
	bne _0211A228
	ldr r0, _0211A29C ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
_0211A228:
	ldr r0, [r4, #0x154]
	cmp r0, #0
	beq _0211A23C
	mov r0, r4
	bl FUN_ov89_0211bc54
_0211A23C:
	mov r6, #0
	mov r5, #0x24
	b _0211A284
_0211A248:
	mla r0, r6, r5, r4
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	beq _0211A264
	mov r0, r4
	mov r1, r6
	bl FUN_ov89_0211c4a0
_0211A264:
	add r0, r4, r6, lsl #3
	ldr r0, [r0, #0x138]
	cmp r0, #0
	beq _0211A280
	mov r0, r4
	mov r1, r6
	bl FUN_ov89_0211c59c
_0211A280:
	add r6, r6, #1
_0211A284:
	cmp r6, #3
	blt _0211A248
	ldmfd sp!, {r4, r5, r6, pc}
_0211A290: .word unk_02099ED4
_0211A294: .word unk_0209A110
_0211A298: .word unk_02099F58
_0211A29C: .word unk_02099EC0
	arm_func_end FUN_ov89_0211a138

	arm_func_start FUN_ov89_0211a2a0
FUN_ov89_0211a2a0: ; 0x0211A2A0
	bx lr
	arm_func_end FUN_ov89_0211a2a0

	arm_func_start FUN_ov89_0211a2a4
FUN_ov89_0211a2a4: ; 0x0211A2A4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30c
	ldr r4, _0211A4CC ; =0x0209BA20
	mov r10, r0
	mov r1, #0
	mov r0, r4
	mov r5, r1
	bl FUN_0207249c
	mov r6, r0
	mov r0, r4
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r6, #0x28]
	mov r7, #0
	mov r2, #0x200
	cmp r1, #0
	ldreqh r1, [r6, #0x26]
	strh r1, [r0, #0x28]
	ldrb r1, [r6, #0x2c]
	add r6, sp, #0x10c
	strb r1, [r0, #0x2c]
	mov r0, r6
	mov r1, r7
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r6
	add r2, sp, #0xc
	str r7, [r10, #0x30]
	bl FUN_ov89_0211a4d8
	mov r8, r0
	add r0, r10, #0x1dc
	bl FUN_ov16_020efa04
	cmp r8, #0
	ble _0211A460
	ldr r11, _0211A4CC ; =0x0209BA20
_0211A330:
	str r5, [sp]
	add r0, sp, #0xc
	ldrb r2, [r0, r7]
	mov r1, r7, lsl #1
	mov r0, r11
	stmib sp, {r2, r5}
	ldrh r4, [r6, r1]
	ldr r2, _0211A4D0 ; =0x00000FFF
	mov r1, r5
	and r2, r4, r2
	mov r2, r2, lsl #0x10
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_0204c778
	mov r0, r7, lsl #1
	ldrh r0, [r6, r0]
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _0211A454
	bl FUN_0206d64c
	cmp r0, #1
	bne _0211A454
	mov r0, #0x58
	mul r9, r7, r0
	ldr r1, [r10, #0x2c]
	add r0, r4, #0x1c
	mov r2, #0x20
	add r1, r1, r9
	bl MI_CpuCopy8
	mov r0, r11
	mov r1, r4
	mov r2, #0x25
	mov r3, r5
	bl FUN_0204f02c
	ldr r2, [r10, #0x2c]
	mov r1, r7, lsl #1
	add r2, r2, r9
	str r0, [r2, #0x40]
	ldrh r2, [r6, r1]
	ldr r1, [r10, #0x2c]
	mov r0, r4
	add r1, r1, r9
	strh r2, [r1, #0x44]
	bl FUN_0206cc00
	ldr r2, [r10, #0x2c]
	mov r1, r4
	add r2, r2, r9
	strh r0, [r2, #0x46]
	mov r0, r11
	bl FUN_0204b754
	ldr r1, [r10, #0x2c]
	add r1, r1, r9
	strh r0, [r1, #0x48]
	mov r0, r4
	bl FUN_0204fb60
	ldr r1, [r10, #0x2c]
	add r1, r1, r9
	strh r0, [r1, #0x4a]
	mov r0, r4
	bl FUN_0206d8b8
	ldr r1, [r10, #0x2c]
	add r1, r1, r9
	str r0, [r1, #0x4c]
	mov r0, r4
	bl FUN_0206d8a8
	ldr r1, [r10, #0x2c]
	add r1, r1, r9
	str r0, [r1, #0x50]
	ldr r0, [r10, #0x2c]
	add r1, r0, r9
	mov r0, #1
	strb r0, [r1, #0x54]
_0211A454:
	add r7, r7, #1
	cmp r7, r8
	blt _0211A330
_0211A460:
	mov r2, #0
	mov r0, #1
	str r8, [r10, #0x30]
	str r2, [r10, #0x3c]
	str r0, [r10, #0x40]
	cmp r8, #0
	beq _0211A494
	sub r1, r8, #1
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	add r0, r0, #1
	str r0, [r10, #0x40]
_0211A494:
	ldr r0, _0211A4D4 ; =0x020A9C40
	str r2, [r10, #0x14]
	bl FUN_02045de0
	cmp r0, #0
	ldreq r0, [r10, #0x30]
	cmpeq r0, #0
	moveq r0, #3
	streq r0, [r10, #0x14]
	ldr r0, [r10, #0x30]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r10, #0x1b]
	add sp, sp, #0x30c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A4CC: .word gLogicThink
_0211A4D0: .word 0x00000FFF
_0211A4D4: .word unk_020A9C40
	arm_func_end FUN_ov89_0211a2a4

	arm_func_start FUN_ov89_0211a4d8
FUN_ov89_0211a4d8: ; 0x0211A4D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r5, [r0, #0x1cc]
	str r0, [sp]
	ldr r0, [r0, #0x1d4]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r5, #0
	str r0, [sp, #0x10]
	mov r6, #0
	addeq sp, sp, #0x14
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211A754 ; =0x020E948C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211A758 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	str r6, [sp, #0xc]
	b _0211A734
_0211A534:
	ldrh r0, [r5]
	cmp r0, #0
	beq _0211A718
	ldr r0, [sp]
	ldr r0, [r0, #0x1d4]
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	ldrne r0, [r0]
	cmpne r0, #0
	beq _0211A56C
	ldr r0, _0211A75C ; =0x020A1640
	ldrb r0, [r0, #0x23]
	cmp r0, #0
	beq _0211A718
_0211A56C:
	ldrh r0, [r5]
	mov r4, #0
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	bne _0211A718
	ldr r0, _0211A754 ; =0x020E948C
	mov r2, r4
	ldr r7, [r0]
	mov r8, r4
	mov r0, #1
	b _0211A604
_0211A59C:
	add r1, r5, r2, lsl #2
	ldrh r9, [r1, #0x1c]
	ldrh r10, [r1, #0x1e]
	cmp r9, #0
	moveq r4, #1
	beq _0211A60C
	mov r4, r8
	mov lr, r7
	mov r3, r8
	b _0211A5F0
_0211A5C4:
	ldrh r1, [lr]
	cmp r1, #0
	beq _0211A5F8
	cmp r9, r1
	bne _0211A5E8
	ldrb r1, [lr, #2]
	cmp r1, r10
	movge r4, r0
	b _0211A5F8
_0211A5E8:
	add r3, r3, #1
	add lr, lr, #0x1c
_0211A5F0:
	cmp r3, #0x10
	blt _0211A5C4
_0211A5F8:
	cmp r4, #0
	beq _0211A60C
	add r2, r2, #1
_0211A604:
	cmp r2, #4
	blt _0211A59C
_0211A60C:
	cmp r4, #0
	mov r11, #0
	beq _0211A718
	ldr r0, _0211A754 ; =0x020E948C
	mov r4, r11
	ldr r1, [r0]
	mov r2, r4
	mov r0, r11
	mov r9, #1
	b _0211A6C4
_0211A634:
	add r3, r5, r2, lsl #2
	ldrh r7, [r3, #0x2c]
	ldrh r8, [r3, #0x2e]
	cmp r7, #0
	moveq r4, #1
	beq _0211A6CC
	mov r4, r11
	mov lr, r1
	mov r3, r11
	b _0211A6B0
_0211A65C:
	ldrh r10, [lr]
	cmp r10, #0
	beq _0211A6B8
	mov r12, r0
	b _0211A698
_0211A670:
	add r10, lr, r12, lsl #1
	ldrh r10, [r10, #0xa]
	cmp r7, r10
	bne _0211A694
	add r10, lr, r12
	ldrb r10, [r10, #0x16]
	cmp r10, r8
	movge r4, r9
	b _0211A6A0
_0211A694:
	add r12, r12, #1
_0211A698:
	cmp r12, #6
	blt _0211A670
_0211A6A0:
	cmp r4, #0
	bne _0211A6B8
	add r3, r3, #1
	add lr, lr, #0x1c
_0211A6B0:
	cmp r3, #0x10
	blt _0211A65C
_0211A6B8:
	cmp r4, #0
	beq _0211A6CC
	add r2, r2, #1
_0211A6C4:
	cmp r2, #4
	blt _0211A634
_0211A6CC:
	cmp r4, #0
	beq _0211A718
	ldrh r3, [r5]
	ldr r0, [sp, #4]
	mov r1, r6, lsl #1
	strh r3, [r0, r1]
	ldrh r3, [r5, #2]
	ldr r0, [sp, #8]
	mov r2, #0x58
	strb r3, [r0, r6]
	ldr r0, [sp]
	add r1, r5, #4
	ldr r0, [r0, #0x2c]
	mla r0, r6, r2, r0
	add r0, r0, #0x20
	bl STD_CopyString
	add r6, r6, #1
	cmp r6, #0x100
	bge _0211A748
_0211A718:
	ldr r0, [sp, #0xc]
	add r5, r5, #0x3c
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
_0211A734:
	ldr r0, [sp]
	ldr r1, [r0, #0x1d8]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0211A534
_0211A748:
	mov r0, r6
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A754: .word ov1_020E948C
_0211A758: .word unk_0209A0AC
_0211A75C: .word unk_020A1640
	arm_func_end FUN_ov89_0211a4d8

	arm_func_start FUN_ov89_0211a760
FUN_ov89_0211a760: ; 0x0211A760
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	ldr r1, _0211A914 ; =0x02099EC0
	mov r4, r0
	ldr r0, [r1]
	mov r5, #0
	bl FUN_02057c2c
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211A918 ; =0x020A0640
	ldrb r0, [r0, #0x89]
	cmp r0, #0
	beq _0211A884
	ldr r3, _0211A91C ; =gL5Allocator
	ldr r1, _0211A920 ; =0x0211D73C
	ldr r0, [r3]
	cmp r0, #0
	moveq r10, r5
	beq _0211A7D4
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, r4, #0x1d0
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	mov r10, r0
_0211A7D4:
	mov r2, r10, lsr #6
	mov r0, #0x3c
	mul r1, r2, r0
	ldr r5, _0211A91C ; =gL5Allocator
	str r2, [r4, #0x1d8]
	mov r0, r5
	bl FUN_0202de44
	ldr r1, [r4, #0x1d8]
	str r0, [r4, #0x1cc]
	mov r0, r5
	mov r1, r1, lsl #2
	bl FUN_0202de44
	ldr r6, [r4, #0x1d0]
	mov r8, r0
	cmp r6, #0
	ldrne r7, [r4, #0x1cc]
	str r8, [r4, #0x1d4]
	cmpne r7, #0
	cmpne r8, #0
	beq _0211A860
	mov r9, #0
	mov r5, #0x3c
	b _0211A854
_0211A830:
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	ldrb r0, [r6, #0x3c]
	add r9, r9, #1
	add r6, r6, #0x40
	str r0, [r8], #4
	add r7, r7, #0x3c
_0211A854:
	ldr r0, [r4, #0x1d8]
	cmp r9, r0
	blt _0211A830
_0211A860:
	ldr r1, [r4, #0x1d0]
	mov r5, #0
	cmp r1, #0
	beq _0211A87C
	ldr r0, _0211A91C ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	str r5, [r4, #0x1d0]
_0211A87C:
	tst r10, #0x3f
	b _0211A8E4
_0211A884:
	ldr r3, _0211A91C ; =gL5Allocator
	ldr r1, _0211A924 ; =0x0211D768
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r5
	beq _0211A8BC
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, r4, #0x1cc
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
_0211A8BC:
	ldr r2, _0211A928 ; =0x88888889
	mov r3, #0x3c
	umull r1, r6, r0, r2
	umull r1, r7, r0, r2
	mov r6, r6, lsr #5
	umull r1, r2, r3, r6
	mov r7, r7, lsr #5
	str r7, [r4, #0x1d8]
	str r5, [r4, #0x1d4]
	subs r6, r0, r1
_0211A8E4:
	mov r0, r4
	bl FUN_ov89_0211a2a4
	ldr r0, _0211A92C ; =0x0211D78C
	add r1, r4, #0x44
	bl FUN_ov16_020f316c
	ldr r0, _0211A930 ; =0x0211D7A4
	add r1, r4, #0x50
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A914: .word unk_02099EC0
_0211A918: .word unk_020A0640
_0211A91C: .word gL5Allocator
_0211A920: .word ov89_0211D73C
_0211A924: .word ov89_0211D768
_0211A928: .word 0x88888889
_0211A92C: .word ov89_0211D78C
_0211A930: .word ov89_0211D7A4
	arm_func_end FUN_ov89_0211a760

	arm_func_start FUN_ov89_0211a934
FUN_ov89_0211a934: ; 0x0211A934
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r9, r0
	add r0, r9, #0x44
	mov r1, #2
	bl FUN_ov16_020f330c
	cmp r0, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x3c]
	mov r8, r0, lsl #3
	add r7, r8, #8
	cmp r7, r0, lsl #3
	ble _0211A9B4
	ldr r4, _0211A9C4 ; =0x0211D7C0
	mov r6, #0
	mov r5, #1
	mov r10, #0x58
_0211A97C:
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [r9, #0x2c]
	ldr r0, [r9, #0x44]
	mla r1, r8, r10, r1
	ldrh r2, [r1, #0x46]
	mov r1, r4
	add r3, r9, #0x5c
	bl FUN_ov16_020f55b4
	add r8, r8, #1
	cmp r8, r7
	blt _0211A97C
_0211A9B4:
	mov r0, #2
	str r0, [r9, #0x10]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A9C4: .word ov89_0211D7C0
	arm_func_end FUN_ov89_0211a934

	arm_func_start FUN_ov89_0211a9c8
FUN_ov89_0211a9c8: ; 0x0211A9C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xcc
	mov r7, #0
	mov r5, #0x20
	add r8, sp, #0x24
	mov r4, r0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	add r6, sp, #4
	mov r1, r7
	mov r0, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r5, _0211AAC0 ; =0x020A0640
	ldr r1, _0211AAC4 ; =0x0211D7D8
	ldrb r2, [r5, #0x89]
	mov r0, r8
	add r2, r2, #1
	bl STD_TSPrintf
	ldrb r2, [r5, #0x89]
	ldr r1, _0211AAC8 ; =0x0211D7EC
	mov r0, r6
	add r2, r2, #1
	bl STD_TSPrintf
	add r0, r4, #0x5c
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0xcc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr lr, _0211AACC ; =0x0211D4DC
	add r12, sp, #0x44
	mov r5, #8
_0211AA50:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211AA50
	ldmia lr, {r0, r1}
	stmia r12, {r0, r1}
	add r1, sp, #0x24
	add r0, sp, #4
	str r0, [sp, #0xbc]
	str r1, [sp, #0xb4]
	mov r5, #0
	str r5, [sp]
	ldr r1, [r4, #0x50]
	ldr r0, _0211AAD0 ; =0x0211D7FC
	add r2, sp, #0x44
	add r3, r4, #0x64
	bl FUN_ov16_020f5450
	b _0211AA9C
_0211AA98:
	add r5, r5, #1
_0211AA9C:
	cmp r5, #0x11
	blo _0211AA98
	mov r0, r4
	mov r1, #1
	bl FUN_ov89_0211ad74
	mov r0, #3
	str r0, [r4, #0x10]
	add sp, sp, #0xcc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211AAC0: .word unk_020A0640
_0211AAC4: .word ov89_0211D7D8
_0211AAC8: .word ov89_0211D7EC
_0211AACC: .word ov89_0211D4DC
_0211AAD0: .word ov89_0211D7FC
	arm_func_end FUN_ov89_0211a9c8

	arm_func_start FUN_ov89_0211aad4
FUN_ov89_0211aad4: ; 0x0211AAD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211AB74 ; =0x02099F38
	b _0211AB40
_0211AAEC:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0211AB3C
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x64]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AB3C
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x64]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211AB3C:
	add r7, r7, #1
_0211AB40:
	cmp r7, #0x10
	blt _0211AAEC
	ldr r5, _0211AB78 ; =0x02099EC0
	ldr r0, [r5]
	bl FUN_020571ac
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	bl FUN_020576a0
	cmp r0, #0
	movle r0, #4
	strle r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB74: .word unk_02099F38
_0211AB78: .word unk_02099EC0
	arm_func_end FUN_ov89_0211aad4

	arm_func_start FUN_ov89_0211ab7c
FUN_ov89_0211ab7c: ; 0x0211AB7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov89_0211b3c8
	mov r0, r4
	bl FUN_ov89_0211b5e0
	mov r0, r4
	bl FUN_ov89_0211b6e0
	mov r0, r4
	bl FUN_ov89_0211b838
	mov r0, r4
	bl FUN_ov89_0211d1f4
	mov r0, #5
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov89_0211ab7c

	arm_func_start FUN_ov89_0211abb4
FUN_ov89_0211abb4: ; 0x0211ABB4
	stmfd sp!, {r4, lr}
	ldr r1, _0211AC4C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov89_0211bef4
	mov r0, r4
	bl FUN_ov89_0211c15c
	mov r0, r4
	bl FUN_ov89_0211c30c
	ldr r0, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211AC28
_0211ABF8: ; jump table
	b _0211AC28 ; case 0
	b _0211AC14 ; case 1
	b _0211AC08 ; case 2
	b _0211AC20 ; case 3
_0211AC08:
	mov r0, r4
	bl FUN_ov89_0211bd3c
	b _0211AC28
_0211AC14:
	mov r0, r4
	bl FUN_ov89_0211bf58
	b _0211AC28
_0211AC20:
	mov r0, r4
	bl FUN_ov89_0211c1dc
_0211AC28:
	mov r0, r4
	bl FUN_ov89_0211b298
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #6
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_0211AC4C: .word unk_02099ED4
	arm_func_end FUN_ov89_0211abb4

	arm_func_start FUN_ov89_0211ac50
FUN_ov89_0211ac50: ; 0x0211AC50
	stmfd sp!, {r4, lr}
	ldr r1, _0211AC80 ; =0x02099ED4
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
_0211AC80: .word unk_02099ED4
	arm_func_end FUN_ov89_0211ac50

	arm_func_start FUN_ov89_0211ac84
FUN_ov89_0211ac84: ; 0x0211AC84
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0]
	mov r6, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x28]
	ldr r2, [r6, #0x24]
	mov r0, r5
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov89_0211ac84

	arm_func_start FUN_ov89_0211accc
FUN_ov89_0211accc: ; 0x0211ACCC
	mov r3, #7
	str r1, [r0, #0x24]
	str r2, [r0, #0x28]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov89_0211accc

	arm_func_start FUN_ov89_0211ace0
FUN_ov89_0211ace0: ; 0x0211ACE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov89_0211c830
	strh r0, [r4, #0x18]
	ldr r0, [r4, #8]
	add r1, r4, #0x18
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov89_0211ace0

	arm_func_start FUN_ov89_0211ad08
FUN_ov89_0211ad08: ; 0x0211AD08
	mov r2, #5
	str r1, [r0, #0x14]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov89_0211ad08

	arm_func_start FUN_ov89_0211ad18
FUN_ov89_0211ad18: ; 0x0211AD18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	add r0, r0, #0x44
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r4, _0211AD70 ; =0x02099EC0
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
_0211AD70: .word unk_02099EC0
	arm_func_end FUN_ov89_0211ad18

	arm_func_start FUN_ov89_0211ad74
FUN_ov89_0211ad74: ; 0x0211AD74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r1
	mov r10, r0
	cmp r5, #2
	blo _0211ADF8
	ldr r4, _0211AE38 ; =0x02099EC0
	mov r9, #0
	ldr r0, [r4]
	bl FUN_020568a4
	ldr r0, [r4]
	bl FUN_02057c60
	mov r4, #0xc
	add r8, r10, #0x44
	mov r11, #1
	mov r7, r9
	mov r5, r4
	mov r6, r4
	b _0211ADEC
_0211ADBC:
	mla r0, r9, r4, r8
	mov r1, r11
	bl FUN_ov16_020f338c
	mla r0, r9, r5, r8
	bl FUN_ov16_020f33fc
	mla r0, r9, r6, r10
	str r7, [r0, #0x44]
	str r7, [r0, #0x48]
	strb r7, [r0, #0x4c]
	strb r7, [r0, #0x4d]
	strb r7, [r0, #0x4e]
	add r9, r9, #1
_0211ADEC:
	cmp r9, #2
	blt _0211ADBC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ADF8:
	add r0, r10, #0x44
	mov r4, #0xc
	mla r0, r5, r4, r0
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r10, #0x44
	mla r0, r5, r4, r0
	bl FUN_ov16_020f33fc
	mla r0, r5, r4, r10
	mov r1, #0
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	strb r1, [r0, #0x4c]
	strb r1, [r0, #0x4d]
	strb r1, [r0, #0x4e]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE38: .word unk_02099EC0
	arm_func_end FUN_ov89_0211ad74

	arm_func_start FUN_ov89_0211ae3c
FUN_ov89_0211ae3c: ; 0x0211AE3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #8
	mov r2, r4
	add r0, r5, #0x5c
	mov r1, #0
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x5c
	bl FUN_ov16_020f5278
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov89_0211ae3c

	arm_func_start FUN_ov89_0211ae68
FUN_ov89_0211ae68: ; 0x0211AE68
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x5c
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r4, #0x5c
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov89_0211ae68

	arm_func_start FUN_ov89_0211ae88
FUN_ov89_0211ae88: ; 0x0211AE88
	stmfd sp!, {r3, lr}
	mov r2, r0
	mov r0, r1
	add r1, r2, #0x5c
	bl FUN_ov16_020f5738
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov89_0211ae88

	arm_func_start FUN_ov89_0211aea4
FUN_ov89_0211aea4: ; 0x0211AEA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x64
	mov r2, #0x40
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0xa4
	mov r2, #0x28
	bl MI_CpuFill8
	ldr r0, _0211AEE0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211AEE0: .word unk_02099F38
	arm_func_end FUN_ov89_0211aea4

	arm_func_start FUN_ov89_0211aee4
FUN_ov89_0211aee4: ; 0x0211AEE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211AF74 ; =0x02099F38
	b _0211AF20
_0211AEFC:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	beq _0211AF1C
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0xa4]
_0211AF1C:
	add r4, r4, #1
_0211AF20:
	cmp r4, #0xa
	blt _0211AEFC
	mov r4, #0
	mov r7, r4
	ldr r6, _0211AF74 ; =0x02099F38
	b _0211AF5C
_0211AF38:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0211AF58
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x64]
_0211AF58:
	add r4, r4, #1
_0211AF5C:
	cmp r4, #0x10
	blt _0211AF38
	ldr r0, _0211AF74 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AF74: .word unk_02099F38
	arm_func_end FUN_ov89_0211aee4

	arm_func_start FUN_ov89_0211af78
FUN_ov89_0211af78: ; 0x0211AF78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	add r0, r0, r3, lsl #2
	add r2, r2, #1
	str r2, [r4]
	ldr r3, [r0, #0x64]
	ldr r6, _0211B034 ; =0x02099F38
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
_0211B034: .word unk_02099F38
	arm_func_end FUN_ov89_0211af78

	arm_func_start FUN_ov89_0211b038
FUN_ov89_0211b038: ; 0x0211B038
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
	ldr r4, _0211B290 ; =0x02099F38
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
	beq _0211B158
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
	b _0211B1E0
_0211B158:
	ldr r0, _0211B294 ; =gFont12
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
	ldr r0, _0211B294 ; =gFont12
	str r7, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	mov r2, r11
	mov r3, r5
	bl FUN_020425fc
	ldr r0, _0211B294 ; =gFont12
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
_0211B1E0:
	ldr r0, [r9]
	ldr r4, _0211B290 ; =0x02099F38
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
_0211B290: .word unk_02099F38
_0211B294: .word gFont12
	arm_func_end FUN_ov89_0211b038

	arm_func_start FUN_ov89_0211b298
FUN_ov89_0211b298: ; 0x0211B298
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r5, #0
_0211B2A4:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xa4]
	mov r0, r4
	bl FUN_ov89_0211b3a8
	add r5, r5, #1
	cmp r5, #0xa
	blt _0211B2A4
	mov r6, #0
	mov r5, #0xc
_0211B2C8:
	mla r0, r6, r5, r4
	ldr r1, [r0, #0x158]
	mov r0, r4
	bl FUN_ov89_0211b3a8
	add r6, r6, #1
	cmp r6, #8
	blt _0211B2C8
	ldr r0, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211B2F4: ; jump table
	b _0211B304 ; case 0
	b _0211B35C ; case 1
	b _0211B34C ; case 2
	b _0211B36C ; case 3
_0211B304:
	mov r5, #0
_0211B308:
	add r0, r4, r5, lsl #2
	ldr r1, [r0, #0xa4]
	mov r0, r4
	bl FUN_ov89_0211b388
	add r5, r5, #1
	cmp r5, #0xa
	blt _0211B308
	mov r6, #0
	mov r5, #0xc
_0211B32C:
	mla r0, r6, r5, r4
	ldr r1, [r0, #0x158]
	mov r0, r4
	bl FUN_ov89_0211b388
	add r6, r6, #1
	cmp r6, #8
	blt _0211B32C
	ldmfd sp!, {r4, r5, r6, pc}
_0211B34C:
	ldr r1, [r4, #0xc0]
	mov r0, r4
	bl FUN_ov89_0211b388
	ldmfd sp!, {r4, r5, r6, pc}
_0211B35C:
	ldr r1, [r4, #0xbc]
	mov r0, r4
	bl FUN_ov89_0211b388
	ldmfd sp!, {r4, r5, r6, pc}
_0211B36C:
	ldr r1, [r4, #0xc4]
	mov r0, r4
	bl FUN_ov89_0211b388
	ldr r1, [r4, #0xc8]
	mov r0, r4
	bl FUN_ov89_0211b388
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov89_0211b298

	arm_func_start FUN_ov89_0211b388
FUN_ov89_0211b388: ; 0x0211B388
	ldr r0, _0211B39C ; =0x02099F38
	ldr r2, _0211B3A0 ; =0x00007FFF
	ldr r0, [r0]
	ldr r12, _0211B3A4 ; = FUN_ov16_02114204
	bx r12
_0211B39C: .word unk_02099F38
_0211B3A0: .word 0x00007FFF
_0211B3A4: .word FUN_ov16_02114204
	arm_func_end FUN_ov89_0211b388

	arm_func_start FUN_ov89_0211b3a8
FUN_ov89_0211b3a8: ; 0x0211B3A8
	ldr r0, _0211B3BC ; =0x02099F38
	ldr r2, _0211B3C0 ; =0x00004210
	ldr r0, [r0]
	ldr r12, _0211B3C4 ; = FUN_ov16_02114204
	bx r12
_0211B3BC: .word unk_02099F38
_0211B3C0: .word 0x00004210
_0211B3C4: .word FUN_ov16_02114204
	arm_func_end FUN_ov89_0211b3a8

	arm_func_start FUN_ov89_0211b3c8
FUN_ov89_0211b3c8: ; 0x0211B3C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B5D8 ; =0x02099F38
	mov r10, r0
	mov r7, #1
	ldr r0, [r1]
	mov r2, r7
	mov r1, #7
	bl FUN_ov16_02112724
	mov r8, r0
	mov r6, #0
	str r6, [sp, #0x14]
	str r8, [r10, #0xa4]
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r4, #0x1f4
	str r4, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	str r7, [sp, #0x10]
	mov r3, #5
	bl FUN_ov89_0211af78
	str r6, [sp]
	str r6, [sp, #4]
	sub r9, r4, #1
	str r6, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, #0xa
	bl FUN_ov89_0211af78
	mov r11, #0xb
	str r6, [sp]
	mov r5, #8
	str r5, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, r11
	bl FUN_ov89_0211af78
	str r6, [sp]
	str r5, [sp, #4]
	mov r4, #0x20
	str r4, [sp, #8]
	add r0, r11, #0x180
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r2, sp, #0x14
	mov r3, #6
	bl FUN_ov89_0211af78
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r11, #0x184
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	add r2, sp, #0x14
	mov r0, r10
	mov r1, r8
	mov r3, #0xc
	str r6, [sp, #0x10]
	bl FUN_ov89_0211af78
	ldrb r0, [r10, #0x1c8]
	cmp r0, #0
	beq _0211B508
	mov r0, r10
	mov r1, r6
	bl FUN_ov89_0211c3a0
	str r5, [r10, #0xd8]
	str r4, [r10, #0xdc]
	b _0211B52C
_0211B508:
	ldr r1, [r10, #0x30]
	mov r0, r10
	mov r4, r1, lsr #0x1f
	rsb r2, r4, r1, lsl #29
	mov r1, r6
	mov r3, r6
	add r2, r4, r2, ror #29
	bl FUN_ov89_0211c3bc
	strb r7, [r10, #0x1c8]
_0211B52C:
	ldr r3, [r10, #0x40]
	ldr r4, _0211B5DC ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r6, r4, r3
	add r6, r0, r6, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r6
	sub r6, r3, r0
	str r6, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r7, #0x10
	add r5, sp, #0x14
	mov r11, #7
	str r7, [sp, #8]
	sub r9, r9, #1
	str r9, [sp, #0xc]
	mov r6, #1
	mov r0, r10
	mov r1, r8
	mov r2, r5
	str r6, [sp, #0x10]
	mov r3, r11
	bl FUN_ov89_0211af78
	ldr r1, [r10, #0x40]
	cmp r1, #0xa
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r1, lsr #0x1f
	smull r1, r2, r4, r1
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0x78
	stmib sp, {r0, r7}
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, r5
	mov r3, r11
	str r6, [sp, #0x10]
	bl FUN_ov89_0211af78
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5D8: .word unk_02099F38
_0211B5DC: .word 0x66666667
	arm_func_end FUN_ov89_0211b3c8

	arm_func_start FUN_ov89_0211b5e0
FUN_ov89_0211b5e0: ; 0x0211B5E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r8, r0
	ldr r2, [r8, #0xa8]
	ldr r1, [r8, #0xac]
	ldr r3, [r8, #0xb0]
	add r1, r2, r1
	ldr r2, [r8, #0xb4]
	add r1, r3, r1
	adds r1, r2, r1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, #0x20
	str r1, [sp]
	mov r9, #0x10
	mov r1, #3
	str r9, [sp, #4]
	mov r5, #2
	mov r4, #0
	str r1, [sp, #8]
	add r7, r1, #0x1f0
	mov r2, r5
	mov r3, r4
	str r7, [sp, #0xc]
	mov r6, #1
	str r6, [sp, #0x10]
	bl FUN_ov89_0211cf7c
	mov r0, #0xc0
	stmia sp, {r0, r9}
	mov r1, #4
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r8
	mov r2, r5
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov89_0211cf7c
	mov r0, #0x50
	str r0, [sp]
	mov r9, #0xa8
	str r9, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov89_0211cf7c
	mov r1, #0xd0
	stmia sp, {r1, r9}
	str r5, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, r8
	mov r3, r4
	mov r1, r5
	mov r2, r6
	str r6, [sp, #0x10]
	bl FUN_ov89_0211cf7c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov89_0211b5e0

	arm_func_start FUN_ov89_0211b6d4
FUN_ov89_0211b6d4: ; 0x0211B6D4
	mov r1, #0
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov89_0211b6d4

	arm_func_start FUN_ov89_0211b6e0
FUN_ov89_0211b6e0: ; 0x0211B6E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211B7BC ; =0x02099F38
	mov r10, r0
	mov r8, #1
	mov r5, #2
	ldr r0, [r1]
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_02112724
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [r10, #0x3c]
	ldr r4, _0211B7C0 ; =0x66666667
	add r9, r1, #1
	smull r2, r3, r4, r9
	mov r1, r9, lsr #0x1f
	mov r7, r0
	add r3, r1, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r9, r0
	str r7, [r10, #0xb8]
	str r3, [sp]
	mov r0, #0x68
	add r6, r5, #0x1f0
	str r0, [sp, #4]
	mov r5, #0x10
	add r11, sp, #0x14
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, #7
	str r8, [sp, #0x10]
	bl FUN_ov89_0211af78
	cmp r9, #0xa
	addlt sp, sp, #0x18
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	smull r1, r2, r4, r9
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [sp]
	mov r0, #0x60
	stmib sp, {r0, r5}
	str r6, [sp, #0xc]
	mov r0, r10
	mov r1, r7
	mov r2, r11
	mov r3, #7
	str r8, [sp, #0x10]
	bl FUN_ov89_0211af78
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B7BC: .word unk_02099F38
_0211B7C0: .word 0x66666667
	arm_func_end FUN_ov89_0211b6e0

	arm_func_start FUN_ov89_0211b7c4
FUN_ov89_0211b7c4: ; 0x0211B7C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xb8]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211B7F0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xb8]
	ldmfd sp!, {r4, pc}
_0211B7F0: .word unk_02099F38
	arm_func_end FUN_ov89_0211b7c4

	arm_func_start FUN_ov89_0211b7f4
FUN_ov89_0211b7f4: ; 0x0211B7F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x158
	mov r2, #0x60
	str r4, [r5, #0x154]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x1b8
	mov r2, #0xc
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x138
	mov r2, #0x18
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov89_0211b7f4

	arm_func_start FUN_ov89_0211b838
FUN_ov89_0211b838: ; 0x0211B838
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	mov r9, r0
	str r5, [sp, #0x28]
	ldr r0, [r9, #0x3c]
	mov r8, r5
	mov r7, r0, lsl #3
	add r0, r7, #8
	str r0, [sp, #0x18]
	ldr r0, _0211BB9C ; =0x0000018E
	mov r10, #0x58
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x1c]
	add r0, r9, #0x15c
	str r0, [sp, #0x20]
	add r0, r9, #0x160
	str r0, [sp, #0x24]
	ldr r11, _0211BBA0 ; =0x02099F38
	b _0211BB88
_0211B88C:
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [r9, #0x2c]
	mla r0, r7, r10, r0
	ldrb r0, [r0, #0x54]
	cmp r0, #1
	ldr r0, [r11]
	bne _0211BB24
	mov r1, #6
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, #0xc
	mla r1, r8, r1, r9
	str r0, [r1, #0x158]
	mov r4, r0
	ldr r0, [r9, #0x2c]
	mla r0, r7, r10, r0
	ldrh r0, [r0, #0x4a]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _0211B910
_0211B8E0: ; jump table
	b _0211B910 ; case 0
	b _0211B8F4 ; case 1
	b _0211B8FC ; case 2
	b _0211B904 ; case 3
	b _0211B90C ; case 4
_0211B8F4:
	mov r5, #3
	b _0211B910
_0211B8FC:
	mov r5, #2
	b _0211B910
_0211B904:
	mov r5, #1
	b _0211B910
_0211B90C:
	mov r5, #0
_0211B910:
	str r5, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp, #8]
	ldr r0, _0211BB9C ; =0x0000018E
	mov r1, r4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x28
	mov r3, #9
	bl FUN_ov89_0211af78
	ldr r1, [sp, #0x28]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0x28]
	ldr r1, [r9, #0x2c]
	mla r1, r7, r10, r1
	ldrh r1, [r1, #0x46]
	bl FUN_ov89_0211ae88
	mov r3, r0
	mov r0, r8, lsl #4
	add r6, r0, #0x18
	ldr r0, [r11]
	ldr r2, [sp, #0x28]
	mov r1, r4
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [sp, #0x28]
	mov r1, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r6, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r11]
	ldr r2, [sp, #0x28]
	mov r1, r4
	mov r3, #0x14
	bl FUN_ov16_02113b78
	ldr r0, [r11]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	mov r1, r4
	bl FUN_ov16_021139bc
	mov r0, r8, lsl #4
	add r6, r0, #0x23
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	mla r0, r8, r1, r0
	str r0, [sp]
	mov r0, #0x30
	stmib sp, {r0, r6}
	ldr r0, _0211BB9C ; =0x0000018E
	mov r2, r4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r9, #0x2c]
	mov r0, r9
	mla r1, r7, r10, r1
	add r3, sp, #0x28
	bl FUN_ov89_0211b038
	ldr r0, [sp, #0x24]
	mov r1, #0xc
	mla r0, r8, r1, r0
	str r0, [sp]
	mov r0, #0x84
	stmib sp, {r0, r6}
	ldr r0, _0211BB9C ; =0x0000018E
	mov r2, r4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r9, #0x2c]
	mov r0, r9
	mla r1, r7, r10, r1
	add r1, r1, #0x20
	add r3, sp, #0x28
	bl FUN_ov89_0211b038
	ldr r0, [r9, #0x2c]
	mov r1, r8, lsl #4
	mla r0, r7, r10, r0
	add r6, r1, #0x28
	ldr r0, [r0, #0x40]
	ldr r1, _0211BBA4 ; =0x66666667
	smull r2, r5, r1, r0
	mov r1, r0, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r5
	sub r5, r0, r2
	str r5, [sp]
	mov r0, #0x78
	stmib sp, {r0, r6}
	ldr r0, _0211BB9C ; =0x0000018E
	mov r1, r4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	add r2, sp, #0x28
	mov r3, #8
	bl FUN_ov89_0211af78
	ldr r0, [r9, #0x2c]
	mla r0, r7, r10, r0
	ldr r3, [r0, #0x40]
	cmp r3, #0xa
	blt _0211BB3C
	ldr r0, _0211BBA4 ; =0x66666667
	mov r1, r4
	smull r2, r5, r0, r3
	mov r0, r3, lsr #0x1f
	add r5, r0, r5, asr #2
	str r5, [sp]
	mov r0, #0x70
	stmib sp, {r0, r6}
	ldr r0, _0211BB9C ; =0x0000018E
	add r2, sp, #0x28
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, r9
	mov r3, #8
	bl FUN_ov89_0211af78
	b _0211BB3C
_0211BB24:
	mov r1, #1
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, #0xc
	mla r1, r8, r1, r9
	str r0, [r1, #0x158]
_0211BB3C:
	add r0, r8, #9
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r8, lsl #4
	add r0, r0, #0x20
	str r0, [sp]
	mov r0, #0xf0
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	ldr r0, _0211BBA8 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	mov r3, #8
	bl FUN_ov16_0210fba4
	add r7, r7, #1
	add r8, r8, #1
_0211BB88:
	ldr r0, [sp, #0x18]
	cmp r7, r0
	blt _0211B88C
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BB9C: .word 0x0000018E
_0211BBA0: .word unk_02099F38
_0211BBA4: .word 0x66666667
_0211BBA8: .word unk_02099EB4
	arm_func_end FUN_ov89_0211b838

	arm_func_start FUN_ov89_0211bbac
FUN_ov89_0211bbac: ; 0x0211BBAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	mov r10, r0
	mov r5, r8
	mov r7, r8
	ldr r4, _0211BC4C ; =0x02099F38
	mov r11, #0xc
	b _0211BC30
_0211BBCC:
	mla r0, r8, r11, r10
	ldr r1, [r0, #0x158]
	cmp r1, #0
	beq _0211BBF0
	ldr r0, [r4]
	bl FUN_ov16_021128c4
	mov r0, #0xc
	mla r0, r8, r0, r10
	str r7, [r0, #0x158]
_0211BBF0:
	mov r0, #0xc
	mla r6, r8, r0, r10
	mov r9, #0
	b _0211BC24
_0211BC00:
	add r0, r6, r9, lsl #2
	ldr r1, [r0, #0x15c]
	cmp r1, #0
	beq _0211BC20
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #2
	str r5, [r0, #0x15c]
_0211BC20:
	add r9, r9, #1
_0211BC24:
	cmp r9, #2
	blt _0211BC00
	add r8, r8, #1
_0211BC30:
	cmp r8, #8
	blt _0211BBCC
	ldr r0, _0211BC50 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC4C: .word unk_02099F38
_0211BC50: .word unk_02099EB4
	arm_func_end FUN_ov89_0211bbac

	arm_func_start FUN_ov89_0211bc54
FUN_ov89_0211bc54: ; 0x0211BC54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r9, r0
	ldr r1, [r9, #0x154]
	cmp r1, #1
	beq _0211BC7C
	cmp r1, #2
	beq _0211BCEC
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BC7C:
	ldr r4, [r9, #0x3c]
	mov r8, r4, lsl #3
	add r7, r8, #8
	bl FUN_ov89_0211ae68
	mov r0, r9
	bl FUN_ov89_0211ae3c
	cmp r7, r4, lsl #3
	ble _0211BCE4
	ldr r4, _0211BD38 ; =0x0211D818
	mov r6, #0
	mov r5, #1
	mov r10, #0x58
_0211BCAC:
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	ldr r1, [r9, #0x2c]
	ldr r0, [r9, #0x44]
	mla r1, r8, r10, r1
	ldrh r2, [r1, #0x46]
	mov r1, r4
	add r3, r9, #0x5c
	bl FUN_ov16_020f55b4
	add r8, r8, #1
	cmp r8, r7
	blt _0211BCAC
_0211BCE4:
	mov r0, #2
	str r0, [r9, #0x154]
_0211BCEC:
	add r0, r9, #0x5c
	bl FUN_ov16_020f5868
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	bl FUN_ov89_0211bbac
	mov r0, r9
	bl FUN_ov89_0211b7c4
	mov r0, r9
	bl FUN_ov89_0211b6e0
	mov r0, r9
	bl FUN_ov89_0211b838
	mov r0, r9
	bl FUN_ov89_0211d1f4
	mov r0, #0
	str r0, [r9, #0x154]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211BD38: .word ov89_0211D818
	arm_func_end FUN_ov89_0211bc54

	arm_func_start FUN_ov89_0211bd3c
FUN_ov89_0211bd3c: ; 0x0211BD3C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r0, [r10, #0xc0]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211BEE8 ; =0x02099F38
	mov r8, #1
	ldr r0, [r0]
	mov r1, #5
	mov r2, r8
	bl FUN_ov16_02112724
	mov r4, r0
	mov r7, #0
	str r7, [sp, #0x18]
	str r4, [r10, #0xc0]
	add r11, sp, #0x18
	str r7, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r6, #0x38
	str r6, [sp, #8]
	mov r5, #0xc8
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #0xd
	str r8, [sp, #0x10]
	bl FUN_ov89_0211af78
	add r0, r10, #0x34
	stmia sp, {r0, r7}
	mov r1, #0x44
	str r1, [sp, #8]
	sub r9, r5, #1
	str r9, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r1, _0211BEEC ; =0x0211D830
	str r8, [sp, #0x14]
	mov r0, r10
	mov r2, r4
	mov r3, r11
	bl FUN_ov89_0211b038
	str r7, [sp]
	str r6, [sp, #4]
	mov r5, #0x68
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #3
	str r7, [sp, #0x10]
	bl FUN_ov89_0211af78
	mov r1, r4
	mov r4, #2
	mov r2, r11
	str r4, [sp]
	mov r11, #0x98
	str r11, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r3, #3
	mov r0, r10
	str r8, [sp, #0x10]
	bl FUN_ov89_0211af78
	mov r0, r10
	mov r1, r4
	bl FUN_ov89_0211c3a0
	mov r3, r6
	str r11, [r10, #0x120]
	str r5, [r10, #0x124]
	str r5, [sp]
	mov r9, #0x30
	str r9, [sp, #4]
	mov r8, #0x18
	add r4, r4, #0x260
	str r8, [sp, #8]
	ldr r6, _0211BEF0 ; =0x02099EB4
	str r4, [sp, #0xc]
	ldr r0, [r6]
	mov r2, #5
	mov r1, r7
	bl FUN_ov16_0210fba4
	stmia sp, {r5, r9}
	str r8, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r6]
	mov r3, r11
	mov r2, #6
	mov r1, r7
	bl FUN_ov16_0210fba4
	str r7, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r6]
	mov r2, #7
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_0210fba4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEE8: .word unk_02099F38
_0211BEEC: .word ov89_0211D830
_0211BEF0: .word unk_02099EB4
	arm_func_end FUN_ov89_0211bd3c

	arm_func_start FUN_ov89_0211bef4
FUN_ov89_0211bef4: ; 0x0211BEF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc0]
	cmp r1, #0
	beq _0211BF1C
	ldr r0, _0211BF50 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc0]
_0211BF1C:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _0211BF3C
	ldr r0, _0211BF50 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x34]
_0211BF3C:
	ldr r0, _0211BF54 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211BF50: .word unk_02099F38
_0211BF54: .word unk_02099EB4
	arm_func_end FUN_ov89_0211bef4

	arm_func_start FUN_ov89_0211bf58
FUN_ov89_0211bf58: ; 0x0211BF58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r0, [r10, #0xbc]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211C14C ; =0x02099F38
	mov r8, #5
	mov r7, #1
	ldr r0, [r0]
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_02112724
	mov r4, r0
	mov r6, #0
	str r6, [sp, #0x18]
	str r4, [r10, #0xbc]
	add r11, sp, #0x18
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	mov r5, #0xc8
	str r5, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #0xf
	str r7, [sp, #0x10]
	bl FUN_ov89_0211af78
	add r0, r10, #0x34
	stmia sp, {r0, r6}
	mov r1, #0x26
	str r1, [sp, #8]
	sub r9, r5, #1
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _0211C150 ; =0x0211D848
	mov r0, r10
	mov r2, r4
	mov r3, r11
	str r7, [sp, #0x14]
	bl FUN_ov89_0211b038
	add r0, r10, #0x38
	stmia sp, {r0, r6}
	mov r1, #0x54
	str r1, [sp, #8]
	str r9, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _0211C154 ; =0x0211D880
	str r7, [sp, #0x14]
	mov r0, r10
	mov r2, r4
	mov r3, r11
	bl FUN_ov89_0211b038
	str r6, [sp]
	mov r0, #0x38
	str r0, [sp, #4]
	mov r5, #0x80
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r0, r10
	mov r1, r4
	mov r2, r11
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov89_0211af78
	mov r1, r4
	mov r4, #2
	mov r2, r11
	str r4, [sp]
	mov r11, #0x98
	str r11, [sp, #4]
	str r5, [sp, #8]
	str r9, [sp, #0xc]
	mov r3, #3
	mov r0, r10
	str r7, [sp, #0x10]
	bl FUN_ov89_0211af78
	mov r0, r10
	mov r1, r7
	bl FUN_ov89_0211c3a0
	mov r2, r8, lsl #0x10
	add r9, r4, #0x260
	mov r0, r6, lsl #0x10
	str r11, [r10, #0xfc]
	str r5, [r10, #0x100]
	str r5, [sp]
	mov r8, #0x30
	str r8, [sp, #4]
	mov r7, #0x18
	str r7, [sp, #8]
	ldr r4, _0211C158 ; =0x02099EB4
	str r9, [sp, #0xc]
	mov r1, r0, lsr #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	mov r3, #0x38
	bl FUN_ov16_0210fba4
	stmia sp, {r5, r8}
	str r7, [sp, #8]
	str r9, [sp, #0xc]
	mov r1, r6, lsl #0x10
	ldr r0, [r4]
	mov r2, #6
	mov r1, r1, lsr #0x10
	mov r3, r11
	bl FUN_ov16_0210fba4
	mov r1, r6, lsl #0x10
	str r6, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0x258
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r2, #7
	mov r1, r1, lsr #0x10
	mov r3, r6
	bl FUN_ov16_0210fba4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C14C: .word unk_02099F38
_0211C150: .word ov89_0211D848
_0211C154: .word ov89_0211D880
_0211C158: .word unk_02099EB4
	arm_func_end FUN_ov89_0211bf58

	arm_func_start FUN_ov89_0211c15c
FUN_ov89_0211c15c: ; 0x0211C15C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0xbc]
	cmp r1, #0
	beq _0211C184
	ldr r0, _0211C1D4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xbc]
_0211C184:
	mov r7, #0
	mov r6, r7
	ldr r5, _0211C1D4 ; =0x02099F38
	b _0211C1B8
_0211C194:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _0211C1B4
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, r7, lsl #2
	str r6, [r0, #0x34]
_0211C1B4:
	add r7, r7, #1
_0211C1B8:
	cmp r7, #2
	blt _0211C194
	ldr r0, _0211C1D8 ; =0x02099EB4
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C1D4: .word unk_02099F38
_0211C1D8: .word unk_02099EB4
	arm_func_end FUN_ov89_0211c15c

	arm_func_start FUN_ov89_0211c1dc
FUN_ov89_0211c1dc: ; 0x0211C1DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	ldr r0, [r8, #0xc4]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0211C300 ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r2, r6
	mov r1, #2
	bl FUN_ov16_02112724
	mov r5, r0
	mov r4, #0
	str r4, [sp, #0x18]
	str r5, [r8, #0xc4]
	add r9, sp, #0x18
	str r4, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	mov r7, #0xc8
	str r7, [sp, #0xc]
	mov r0, r8
	mov r1, r5
	mov r2, r9
	mov r3, #0xe
	str r6, [sp, #0x10]
	bl FUN_ov89_0211af78
	add r0, r8, #0x1bc
	stmia sp, {r0, r4}
	mov r0, #0x38
	str r0, [sp, #8]
	sub r7, r7, #1
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, _0211C304 ; =0x0211D8C4
	mov r2, r5
	mov r3, r9
	mov r0, r8
	str r6, [sp, #0x14]
	bl FUN_ov89_0211b038
	mov r2, #0x68
	str r2, [sp]
	mov r2, #0x78
	str r2, [sp, #4]
	mov r2, #8
	str r2, [sp, #8]
	sub r3, r7, #1
	str r3, [sp, #0xc]
	mov r0, r8
	mov r1, #9
	str r6, [sp, #0x10]
	mov r2, #4
	mov r3, r4
	bl FUN_ov89_0211cf7c
	str r4, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r2, #0x258
	str r2, [sp, #0xc]
	ldr r0, _0211C308 ; =0x02099EB4
	mov r3, r4
	ldr r0, [r0]
	mov r1, #5
	mov r2, #7
	bl FUN_ov16_0210fba4
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C300: .word unk_02099F38
_0211C304: .word ov89_0211D8C4
_0211C308: .word unk_02099EB4
	arm_func_end FUN_ov89_0211c1dc

	arm_func_start FUN_ov89_0211c30c
FUN_ov89_0211c30c: ; 0x0211C30C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _0211C334
	ldr r0, _0211C398 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, #0
	str r0, [r4, #0xc4]
_0211C334:
	ldr r1, [r4, #0x1bc]
	cmp r1, #0
	beq _0211C354
	ldr r0, _0211C398 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x1bc]
_0211C354:
	ldr r1, [r4, #0xc8]
	cmp r1, #0
	beq _0211C384
	ldr r0, _0211C398 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r1, #0
	ldr r0, _0211C39C ; =0x02099EB4
	str r1, [r4, #0xc8]
	ldr r0, [r0]
	mov r1, #8
	bl FUN_ov16_0210eab4
_0211C384:
	ldr r0, _0211C39C ; =0x02099EB4
	mov r1, #5
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	ldmfd sp!, {r4, pc}
_0211C398: .word unk_02099F38
_0211C39C: .word unk_02099EB4
	arm_func_end FUN_ov89_0211c30c

	arm_func_start FUN_ov89_0211c3a0
FUN_ov89_0211c3a0: ; 0x0211C3A0
	add r0, r0, #0xcc
	mov r2, #0x24
	mla r0, r1, r2, r0
	ldr r12, _0211C3B8 ; =MI_CpuFill8
	mov r1, #0
	bx r12
_0211C3B8: .word MI_CpuFill8
	arm_func_end FUN_ov89_0211c3a0

	arm_func_start FUN_ov89_0211c3bc
FUN_ov89_0211c3bc: ; 0x0211C3BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, #0x24
	mul r5, r1, r4
	add r4, r0, #0xcc
	ldr r6, [r4, r5]
	ldr r1, _0211C490 ; =0x0211D4A8
	mov lr, r6, lsr #0x1f
	rsb r12, lr, r6, lsl #29
	add r8, lr, r12, ror #29
	mov r6, r2, lsr #0x1f
	rsb r12, r6, r2, lsl #29
	str r2, [r4, r5]
	mov lr, r8, lsl #4
	add r6, r6, r12, ror #29
	ldr r7, _0211C494 ; =0x0211D4B0
	mov r12, r6, lsl #4
	add r2, r0, r5
	mov r4, #1
	str r4, [r2, #0xe8]
	ldr r1, [r1]
	add r8, r0, #0xd0
	str r1, [r8, r5]
	add r4, lr, #0x20
	add r1, r0, #0xd4
	str r4, [r1, r5]
	ldr r6, [r7]
	add r4, r0, #0xd8
	str r6, [r4, r5]
	add r6, r12, #0x20
	add r12, r0, #0xdc
	str r6, [r12, r5]
	ldr r6, [r4, r5]
	ldr r0, [r8, r5]
	cmp r3, #0
	ldr r4, _0211C498 ; =0x55555556
	sub r6, r6, r0
	smull r0, r7, r4, r6
	add r7, r7, r6, lsr #31
	str r7, [r2, #0xe0]
	ldr r6, [r12, r5]
	ldr r0, [r1, r5]
	addeq sp, sp, #0x10
	sub r1, r6, r0
	smull r0, r3, r4, r1
	add r3, r3, r1, lsr #31
	str r3, [r2, #0xe4]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211C49C ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211C490: .word ov89_0211D4A8
_0211C494: .word ov89_0211D4B0
_0211C498: .word 0x55555556
_0211C49C: .word gL5Sound
	arm_func_end FUN_ov89_0211c3bc

	arm_func_start FUN_ov89_0211c4a0
FUN_ov89_0211c4a0: ; 0x0211C4A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r2, #0x24
	mul r7, r1, r2
	add r2, r0, r7
	add r4, r0, #0xec
	ldr r3, [r4, r7]
	ldr r5, [r0, #0xa4]
	ldr r6, [r2, #0xd0]
	ldr lr, [r2, #0xd4]
	add r3, r3, #1
	str r3, [r4, r7]
	ldr r12, [r2, #0xe0]
	ldr r7, [r2, #0xec]
	ldr r4, [r2, #0xe4]
	mla r6, r12, r7, r6
	mla r7, r4, r7, lr
	ldr r3, _0211C594 ; =0x0211D4AC
	cmp r12, #0
	ldr r4, [r3]
	ldr r2, [r2, #0xd8]
	bge _0211C504
	cmp r6, r2
	movlt r6, r2
	b _0211C50C
_0211C504:
	cmp r6, r2
	movgt r6, r2
_0211C50C:
	mov r2, #0x24
	mla r3, r1, r2, r0
	ldr r2, [r3, #0xe4]
	cmp r2, #0
	ldr r2, [r3, #0xdc]
	bge _0211C530
	cmp r7, r2
	movlt r7, r2
	b _0211C538
_0211C530:
	cmp r7, r2
	movgt r7, r2
_0211C538:
	mov r2, #0x24
	mla r2, r1, r2, r0
	ldr r1, [r2, #0xd8]
	cmp r6, r1
	ldreq r1, [r2, #0xdc]
	cmpeq r7, r1
	bne _0211C564
	mov r1, #0
	str r1, [r2, #0xe8]
	str r1, [r2, #0xec]
	bl FUN_ov89_0211d1f4
_0211C564:
	mov r0, r7, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, _0211C598 ; =0x02099F38
	str r1, [sp]
	mov r3, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C594: .word ov89_0211D4AC
_0211C598: .word unk_02099F38
	arm_func_end FUN_ov89_0211c4a0

	arm_func_start FUN_ov89_0211c59c
FUN_ov89_0211c59c: ; 0x0211C59C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	mov r9, r1
	mov r0, #0x24
	mla r4, r9, r0, r10
	ldr r11, [r10, #0xa4]
	ldr r7, [r10, #0xbc]
	ldr r8, [r10, #0xc0]
	ldr r0, _0211C818 ; =0x0211D4C0
	ldr r6, [r4, #0xcc]
	str r7, [sp, #0x24]
	add r5, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r5, {r0, r1, r2}
	rsb r7, r6, #4
	rsb r0, r6, #5
	str r7, [sp, #0x1c]
	str r11, [sp, #0x20]
	ldr r3, _0211C81C ; =0x0211D4CC
	str r0, [sp, #0x18]
	add r7, sp, #4
	ldmia r3, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	ldr r1, [r4, #0xd8]
	ldr r0, [r4, #0xdc]
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	add r2, r10, #0x13c
	mov r3, r1, asr #0x10
	ldr r1, [r2, r9, lsl #3]
	mov r0, r0, asr #0x10
	add r7, r1, #1
	str r7, [r2, r9, lsl #3]
	str r0, [sp]
	ldr r4, _0211C820 ; =0x02099F38
	str r8, [sp, #0x28]
	add r11, sp, #0x20
	ldr r0, [r4]
	ldr r2, [r5, r9, lsl #2]
	ldr r1, [r11, r9, lsl #2]
	bl FUN_ov16_02113b78
	cmp r7, #1
	mov r8, #0
	bne _0211C674
	mov r0, r10
	mov r4, #1
	bl FUN_ov89_0211c830
	ldr r1, [r10, #0x14]
	cmp r1, #0
	bne _0211C7FC
	cmp r0, #0
	strne r4, [r10, #0x154]
	b _0211C7FC
_0211C674:
	cmp r7, #3
	mov r0, #1
	bge _0211C6C4
	ldr r0, [r10, #0x14]
	cmp r0, #0
	bne _0211C6A4
_0211C68C:
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113f7c
	b _0211C7FC
_0211C6A4:
	str r8, [sp]
	add r3, sp, #4
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, r6, lsl #3]
_0211C6BC:
	bl FUN_ov16_0211401c
	b _0211C7FC
_0211C6C4:
	cmp r7, #6
	bge _0211C714
	ldr r1, [r10, #0x14]
	cmp r1, #0
	bne _0211C6F4
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	mov r3, #2
	bl FUN_ov16_02113ec0
	b _0211C7FC
_0211C6F4:
	add r0, sp, #4
	str r8, [sp]
	add r3, r0, r6, lsl #3
	ldr r0, [r4]
	ldr r1, [r11, r9, lsl #2]
	ldr r2, [r5, r9, lsl #2]
	ldr r3, [r3, #4]
	b _0211C6BC
_0211C714:
	cmp r7, #9
	bge _0211C730
	ldr r0, [r10, #0x14]
	cmp r0, #0
	bne _0211C72C
	b _0211C68C
_0211C72C:
	b _0211C6A4
_0211C730:
	bne _0211C7AC
	ldr r0, [r10, #0x14]
	cmp r0, #2
	bne _0211C774
	ldr r0, [r10, #0x114]
	cmp r0, #0
	mov r0, r10
	bne _0211C75C
	mov r1, r8
	bl FUN_ov89_0211ad08
	b _0211C770
_0211C75C:
	mov r2, r8
	mov r1, #0x3d
	bl FUN_ov89_0211accc
	ldr r0, _0211C824 ; =0x02099EA4
	strh r8, [r0]
_0211C770:
	b _0211C7F8
_0211C774:
	cmp r0, #1
	bne _0211C7FC
	ldr r0, [r10, #0xf0]
	cmp r0, #0
	bne _0211C798
	mov r0, r10
	mov r1, #2
	bl FUN_ov89_0211ad08
	b _0211C7F8
_0211C798:
	mov r1, #0x4b
	mov r0, r10
	mov r2, r1
	bl FUN_ov89_0211accc
	b _0211C7FC
_0211C7AC:
	cmp r7, #0x1e
	bne _0211C7FC
	mov r0, r10
	bl FUN_ov89_0211c830
	movs r4, r0
	beq _0211C7F8
	mov r0, r10
	bl FUN_ov89_0211c850
	ldr r1, _0211C828 ; =0x00000FFF
	mov r2, r0
	and r0, r4, r1
	mov r1, r0, lsl #0x10
	ldr r0, _0211C82C ; =0x020A9C40
	mov r1, r1, lsr #0x10
	bl FUN_02045b40
	mov r1, #0x61
	mov r0, r10
	mov r2, r1
	bl FUN_ov89_0211accc
_0211C7F8:
	mov r8, #1
_0211C7FC:
	cmp r8, #0
	addne r0, r10, r9, lsl #3
	movne r1, #0
	strne r1, [r0, #0x138]
	strne r1, [r0, #0x13c]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C818: .word ov89_0211D4C0
_0211C81C: .word ov89_0211D4CC
_0211C820: .word unk_02099F38
_0211C824: .word unk_02099EA4
_0211C828: .word 0x00000FFF
_0211C82C: .word unk_020A9C40
	arm_func_end FUN_ov89_0211c59c

	arm_func_start FUN_ov89_0211c830
FUN_ov89_0211c830: ; 0x0211C830
	ldr r2, [r0, #0xcc]
	ldr r1, [r0, #0x3c]
	ldr r3, [r0, #0x2c]
	add r1, r2, r1, lsl #3
	mov r0, #0x58
	mla r0, r1, r0, r3
	ldrh r0, [r0, #0x44]
	bx lr
	arm_func_end FUN_ov89_0211c830

	arm_func_start FUN_ov89_0211c850
FUN_ov89_0211c850: ; 0x0211C850
	ldr r2, [r0, #0xcc]
	ldr r1, [r0, #0x3c]
	ldr r3, [r0, #0x2c]
	add r1, r2, r1, lsl #3
	mov r0, #0x58
	mla r0, r1, r0, r3
	ldr r0, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov89_0211c850

	arm_func_start FUN_ov89_0211c870
FUN_ov89_0211c870: ; 0x0211C870
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211C9B0 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #6
	ldreq r0, [r6, #0x154]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211C8D0
_0211C8B0:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xe8]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0x138]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211C8D0:
	cmp r4, #3
	blt _0211C8B0
	ldr r0, _0211C9B4 ; =0x0209A0F4
	ldr r4, _0211C9B8 ; =0x02099EB4
	ldrh r1, [r0]
	ldr r0, [r4]
	orr r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	bl FUN_ov16_0210f468
	cmp r0, #1
	bne _0211C920
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r5, [r0, #0x38]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r7, r5
	strh r1, [r0, #0x38]
_0211C920:
	tst r5, #1
	beq _0211C934
	mov r0, r6
	bl FUN_ov89_0211c9bc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C934:
	tst r5, #2
	beq _0211C948
	mov r0, r6
	bl FUN_ov89_0211cab8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C948:
	tst r5, #0x200
	beq _0211C95C
	mov r0, r6
	bl FUN_ov89_0211cc04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C95C:
	tst r5, #0x100
	beq _0211C970
	mov r0, r6
	bl FUN_ov89_0211cc60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C970:
	tst r5, #0x20
	beq _0211C984
	mov r0, r6
	bl FUN_ov89_0211ccb8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C984:
	tst r5, #0x10
	beq _0211C998
	mov r0, r6
	bl FUN_ov89_0211cda8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C998:
	tst r7, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	bl FUN_ov89_0211ce9c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C9B0: .word unk_02099ED4
_0211C9B4: .word unk_0209A0F4
_0211C9B8: .word unk_02099EB4
	arm_func_end FUN_ov89_0211c870

	arm_func_start FUN_ov89_0211c9bc
FUN_ov89_0211c9bc: ; 0x0211C9BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211C9D4: ; jump table
	b _0211C9E4 ; case 0
	b _0211CA58 ; case 1
	b _0211CA24 ; case 2
	b _0211CA8C ; case 3
_0211C9E4:
	bl FUN_ov89_0211c830
	cmp r0, #0
	beq _0211CA14
	mov r5, #1
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, r5
	str r5, [r4, #0x138]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, r5
	bl FUN_ov89_0211d124
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA14:
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #9
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA24:
	ldr r0, [r4, #0x114]
	mov r1, #1
	str r1, [r4, #0x148]
	cmp r0, #0
	bne _0211CA48
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA48:
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA58:
	ldr r0, [r4, #0xf0]
	mov r1, #1
	str r1, [r4, #0x140]
	cmp r0, #0
	bne _0211CA7C
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA7C:
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_0211CA8C:
	mov r1, #8
	bl FUN_ov89_0211d124
	ldr r0, _0211CAB4 ; =gL5Sound
	mov r1, #6
	bl _ZN7L5Sound12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0x3d
	mov r2, #0
	bl FUN_ov89_0211accc
	ldmfd sp!, {r3, r4, r5, pc}
_0211CAB4: .word gL5Sound
	arm_func_end FUN_ov89_0211c9bc

	arm_func_start FUN_ov89_0211cab8
FUN_ov89_0211cab8: ; 0x0211CAB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r1, [r6, #0x14]
	mov r2, #0
	cmp r1, #0
	beq _0211CAE4
	cmp r1, #1
	beq _0211CB90
	cmp r1, #2
	beq _0211CB28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CAE4:
	mov r4, #2
	mov r1, r4
	bl FUN_ov89_0211d124
	ldr r0, _0211CBF8 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, _0211CBFC ; =0x020A9C40
	bl FUN_02045de0
	cmp r0, #0
	mov r0, r6
	beq _0211CB1C
	mov r1, #1
	bl FUN_ov89_0211ad08
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB1C:
	mov r1, r4
	bl FUN_ov89_0211ad08
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB28:
	mov r1, #0x98
	mov r0, #0x68
	ldr r5, [r6, #0xc0]
	str r1, [r6, #0x120]
	mov r8, #2
	str r2, [r6, #0x114]
	mov r4, #4
	str r0, [r6, #0x124]
	mov r9, #1
	ldr r7, _0211CC00 ; =0x02099F38
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
	ldr r0, _0211CBF8 ; =gL5Sound
	mov r1, r4
	str r9, [r6, #0x148]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CB90:
	ldr r5, [r6, #0xbc]
	mov r1, #0x98
	mov r0, #0x80
	mov r4, #5
	mov r8, #2
	str r2, [r6, #0xf0]
	str r1, [r6, #0xfc]
	str r0, [r6, #0x100]
	mov r9, #1
	ldr r7, _0211CC00 ; =0x02099F38
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
	ldr r0, _0211CBF8 ; =gL5Sound
	mov r1, #4
	str r9, [r6, #0x140]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211CBF8: .word gL5Sound
_0211CBFC: .word unk_020A9C40
_0211CC00: .word unk_02099F38
	arm_func_end FUN_ov89_0211cab8

	arm_func_start FUN_ov89_0211cc04
FUN_ov89_0211cc04: ; 0x0211CC04
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x3c]
	sub r0, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	ldr r0, [r4, #0x40]
	str r1, [r4, #0x3c]
	cmp r0, #1
	movgt r0, #1
	strgt r0, [r4, #0x154]
	mov r0, r4
	mov r1, #3
	bl FUN_ov89_0211d124
	ldr r0, _0211CC5C ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211CC5C: .word gL5Sound
	arm_func_end FUN_ov89_0211cc04

	arm_func_start FUN_ov89_0211cc60
FUN_ov89_0211cc60: ; 0x0211CC60
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [r4, #0x40]
	str r1, [r4, #0x3c]
	cmp r0, #1
	movgt r0, #1
	strgt r0, [r4, #0x154]
	mov r0, r4
	mov r1, #4
	bl FUN_ov89_0211d124
	ldr r0, _0211CCB4 ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_0211CCB4: .word gL5Sound
	arm_func_end FUN_ov89_0211cc60

	arm_func_start FUN_ov89_0211ccb8
FUN_ov89_0211ccb8: ; 0x0211CCB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	beq _0211CD3C
	cmp r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, #1
	mov r2, #0x38
	mov r1, #0x68
	ldr r4, [r0, #0xc0]
	str r1, [r0, #0x124]
	str r3, [r0, #0x114]
	str r2, [r0, #0x120]
	mov r7, #3
	ldr r5, _0211CDA0 ; =0x02099F38
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
	ldr r0, _0211CDA4 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CD3C:
	ldr r4, [r0, #0xbc]
	mov r3, #1
	mov r2, #0x38
	mov r1, #0x80
	mov r7, #4
	mov r6, #2
	str r3, [r0, #0xf0]
	str r2, [r0, #0xfc]
	str r1, [r0, #0x100]
	ldr r5, _0211CDA0 ; =0x02099F38
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
	ldr r0, _0211CDA4 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CDA0: .word unk_02099F38
_0211CDA4: .word gL5Sound
	arm_func_end FUN_ov89_0211ccb8

	arm_func_start FUN_ov89_0211cda8
FUN_ov89_0211cda8: ; 0x0211CDA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x14]
	mov r3, #0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	beq _0211CE30
	cmp r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0x98
	mov r1, #0x68
	ldr r4, [r0, #0xc0]
	str r1, [r0, #0x124]
	ldr r5, _0211CE94 ; =0x02099F38
	str r3, [r0, #0x114]
	str r2, [r0, #0x120]
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
	ldr r0, _0211CE98 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CE30:
	ldr r4, [r0, #0xbc]
	mov r2, #0x98
	mov r1, #0x80
	mov r7, #5
	mov r6, #2
	str r3, [r0, #0xf0]
	str r2, [r0, #0xfc]
	str r1, [r0, #0x100]
	mov r0, #1
	ldr r5, _0211CE94 ; =0x02099F38
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
	ldr r0, _0211CE98 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211CE94: .word unk_02099F38
_0211CE98: .word gL5Sound
	arm_func_end FUN_ov89_0211cda8

	arm_func_start FUN_ov89_0211ce9c
FUN_ov89_0211ce9c: ; 0x0211CE9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r5, [r6, #0x14]
	cmp r5, #0
	ldreq r0, [r6, #0x150]
	cmpeq r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mvn r4, #0
	tst r1, #0x40
	movne r4, #0
	bne _0211CED8
	tst r1, #0x80
	movne r4, #1
_0211CED8:
	cmp r4, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0x24
	mla r2, r5, r0, r6
	ldr r0, _0211CF74 ; =0x0211D4B8
	add r1, sp, #4
	ldr r12, [r0]
	ldr r3, [r0, #4]
	ldr r0, _0211CF78 ; =0x0211D4B4
	str r12, [sp, #4]
	str r3, [sp, #8]
	add r1, r1, r5, lsl #3
	ldr r7, [r2, #0xcc]
	ldr r2, [r1, r4, lsl #2]
	ldr r1, [r0]
	add r0, r7, r2
	bl _s32_div_f
	mov r8, r1
	cmp r5, #0
	bne _0211CF58
	cmp r4, #0
	cmpeq r7, #0
	bne _0211CF44
	mov r0, r6
	bl FUN_ov89_0211cc04
	b _0211CF58
_0211CF44:
	cmp r4, #1
	cmpeq r7, #7
	bne _0211CF58
	mov r0, r6
	bl FUN_ov89_0211cc60
_0211CF58:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, #1
	bl FUN_ov89_0211c3bc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CF74: .word ov89_0211D4B8
_0211CF78: .word ov89_0211D4B4
	arm_func_end FUN_ov89_0211ce9c

	arm_func_start FUN_ov89_0211cf7c
FUN_ov89_0211cf7c: ; 0x0211CF7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _0211D118 ; =0x02099F38
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
	str r0, [r2, #0xa4]
	ldr r1, [r1, #0x64]
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
	ldreq r6, _0211D11C ; =0x00000262
	ldr r0, _0211D120 ; =0x02099EB4
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
_0211D118: .word unk_02099F38
_0211D11C: .word 0x00000262
_0211D120: .word unk_02099EB4
	arm_func_end FUN_ov89_0211cf7c

	arm_func_start FUN_ov89_0211d124
FUN_ov89_0211d124: ; 0x0211D124
	ldr r0, _0211D134 ; =0x02099EB4
	ldr r12, _0211D138 ; = FUN_ov16_0210efac
	ldr r0, [r0]
	bx r12
_0211D134: .word unk_02099EB4
_0211D138: .word FUN_ov16_0210efac
	arm_func_end FUN_ov89_0211d124

	arm_func_start FUN_ov89_0211d13c
FUN_ov89_0211d13c: ; 0x0211D13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _0211D1EC ; =0x02099EB4
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
	ldr r0, _0211D1F0 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0xa4]
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
_0211D1EC: .word unk_02099EB4
_0211D1F0: .word unk_02099F38
	arm_func_end FUN_ov89_0211d13c

	arm_func_start FUN_ov89_0211d1f4
FUN_ov89_0211d1f4: ; 0x0211D1F4
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0xcc]
	ldr r2, [r0, #0x3c]
	ldr r1, [r0, #0x30]
	add r2, r3, r2, lsl #3
	cmp r2, r1
	mov r1, #1
	blt _0211D228
	mov r2, #2
	mov r3, r2
	str r1, [sp]
	bl FUN_ov89_0211d13c
	ldmfd sp!, {r3, pc}
_0211D228:
	mov r3, r1
	mov r2, #0
	str r1, [sp]
	bl FUN_ov89_0211d13c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov89_0211d1f4

	arm_func_start FUN_ov89_0211d23c
FUN_ov89_0211d23c: ; 0x0211D23C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211D360 ; =0x02099ED4
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r4, #0
	bl FUN_ov16_0210e15c
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #6
	ldreq r0, [r6, #0x154]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x24
	b _0211D29C
_0211D27C:
	mla r1, r4, r0, r6
	ldr r1, [r1, #0xe8]
	cmp r1, #0
	addeq r1, r6, r4, lsl #3
	ldreq r1, [r1, #0x138]
	cmpeq r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r4, #1
_0211D29C:
	cmp r4, #3
	blt _0211D27C
	ldr r4, _0211D364 ; =0x02099EB4
	mov r7, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2C8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211D2E0 ; case 1
	b _0211D310 ; case 2
	b _0211D328 ; case 3
	b _0211D344 ; case 4
	b _0211D2F8 ; case 5
_0211D2E0:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov89_0211d368
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2F8:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov89_0211d414
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D310:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	bl FUN_ov89_0211d418
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D328:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov89_0211d46c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D344:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl FUN_ov89_0211d46c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D360: .word unk_02099ED4
_0211D364: .word unk_02099EB4
	arm_func_end FUN_ov89_0211d23c

	arm_func_start FUN_ov89_0211d368
FUN_ov89_0211d368: ; 0x0211D368
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	str r6, [r7, #0x1c4]
	cmp r6, #5
	sub r4, r6, #9
	ldr r5, [r7, #0xcc]
	beq _0211D394
	cmp r6, #6
	beq _0211D39C
	b _0211D3A0
_0211D394:
	bl FUN_ov89_0211ccb8
	b _0211D3A0
_0211D39C:
	bl FUN_ov89_0211cda8
_0211D3A0:
	cmp r6, #9
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0x10
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x150]
	cmp r0, #0
	bne _0211D3E4
	cmp r5, r4
	mov r0, r7
	bne _0211D3D0
	bl FUN_ov89_0211c9bc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3D0:
	mov r2, r4
	mov r1, #0
	mov r3, #1
	bl FUN_ov89_0211c3bc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3E4:
	mov r0, r7
	bl FUN_ov89_0211cda8
	mov r0, r7
	mov r2, r4
	mov r1, #0
	mov r3, #1
	bl FUN_ov89_0211c3bc
	ldr r1, [r7, #0xd8]
	ldr r0, [r7, #0xdc]
	str r1, [r7, #0xd0]
	str r0, [r7, #0xd4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov89_0211d368

	arm_func_start FUN_ov89_0211d414
FUN_ov89_0211d414: ; 0x0211D414
	bx lr
	arm_func_end FUN_ov89_0211d414

	arm_func_start FUN_ov89_0211d418
FUN_ov89_0211d418: ; 0x0211D418
	stmfd sp!, {r3, lr}
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_0211D428: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _0211D44C ; case 1
	b _0211D454 ; case 2
	b _0211D45C ; case 3
	b _0211D464 ; case 4
	b _0211D44C ; case 5
	b _0211D44C ; case 6
	ldmfd sp!, {r3, pc} ; case 7
	b _0211D44C ; case 8
_0211D44C:
	bl FUN_ov89_0211c9bc
	ldmfd sp!, {r3, pc}
_0211D454:
	bl FUN_ov89_0211cab8
	ldmfd sp!, {r3, pc}
_0211D45C:
	bl FUN_ov89_0211cc04
	ldmfd sp!, {r3, pc}
_0211D464:
	bl FUN_ov89_0211cc60
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov89_0211d418

	arm_func_start FUN_ov89_0211d46c
FUN_ov89_0211d46c: ; 0x0211D46C
	bx lr
	arm_func_end FUN_ov89_0211d46c

	arm_func_start FUN_ov89_0211d470
FUN_ov89_0211d470: ; 0x0211D470
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1dc
	bl FUN_0206c110
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov89_0211d470

	arm_func_start FUN_ov89_0211d490
FUN_ov89_0211d490: ; 0x0211D490
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1dc
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov89_0211d490

	.rodata
	.global ov89_0211D4A8
ov89_0211D4A8:
	.byte 0x08, 0x00, 0x00, 0x00
	.global ov89_0211D4AC
ov89_0211D4AC:
	.byte 0x04, 0x00, 0x00, 0x00
	.global ov89_0211D4B0
ov89_0211D4B0:
	.byte 0x08, 0x00, 0x00, 0x00
	.global ov89_0211D4B4
ov89_0211D4B4:
	.byte 0x08, 0x00, 0x00, 0x00
	.global ov89_0211D4B8
ov89_0211D4B8:
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov89_0211D4C0
ov89_0211D4C0:
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov89_0211D4CC
ov89_0211D4CC:
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global ov89_0211D4DC
ov89_0211D4DC:
	.word ov89_0211D668
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov89_0211D608
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov89_0211D618
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov89_0211D628
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov89_0211D638
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov89_0211D648
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov89_0211D658
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov89_0211D678
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov89_0211D688
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov89_0211D698
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov89_0211D6A8
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov89_0211D5D8
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov89_0211D5E8
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov89_0211D5F8
	.byte 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov89_0211d564
FUN_ov89_0211d564: ; 0x0211D564
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211D5AC ; =0x0211D5C0
	str r0, [r4]
	ldr r0, _0211D5B0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _0211D5B4 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5AC: .word ov89_0211D5C0
_0211D5B0: .word 0x00009CCD
_0211D5B4: .word 0x0000EA3C
	arm_func_end FUN_ov89_0211d564

	.section .sinit, 4
ov89_0211D5B8:
	.word FUN_ov89_0211d564

	.data
	.global ov89_0211D5C0
ov89_0211D5C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov89_0211D5D8
ov89_0211D5D8:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D5E8
ov89_0211D5E8:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D5F8
ov89_0211D5F8:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x32, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D608
ov89_0211D608:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D618
ov89_0211D618:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x37
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D628
ov89_0211D628:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D638
ov89_0211D638:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D648
ov89_0211D648:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x63, 0x31, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D658
ov89_0211D658:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x66, 0x31, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D668
ov89_0211D668:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D678
ov89_0211D678:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x66, 0x31, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D688
ov89_0211D688:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D698
ov89_0211D698:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x35
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov89_0211D6A8
ov89_0211D6A8:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x36
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov89_0211D6C0
ov89_0211D6C0:
	.word FUN_ov89_0211d490
	.word FUN_ov89_0211d470
	.word FUN_ov89_0211c870
	.word FUN_ov89_0211d23c
	.word FUN_ov89_02119f00
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov89_0211a138
	.word FUN_ov89_0211a2a0
	.word FUN_ov89_0211a03c
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
	.global ov89_0211D73C
ov89_0211D73C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x70, 0x72, 0x65, 0x6D, 0x69
	.byte 0x75, 0x6D, 0x63, 0x6F, 0x6E, 0x64, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x5F, 0x68, 0x75, 0x72, 0x72
	.byte 0x69, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00, 0x00
	.global ov89_0211D768
ov89_0211D768:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x70, 0x72, 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x63, 0x6F
	.byte 0x6E, 0x64, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov89_0211D78C
ov89_0211D78C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov89_0211D7A4
ov89_0211D7A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x70, 0x73, 0x5F, 0x6C, 0x69, 0x73, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00
	.global ov89_0211D7C0
ov89_0211D7C0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov89_0211D7D8
ov89_0211D7D8:
	.byte 0x70, 0x73, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x25
	.byte 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov89_0211D7EC
ov89_0211D7EC:
	.byte 0x70, 0x73, 0x64, 0x6E
	.byte 0x5F, 0x74, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov89_0211D7FC
ov89_0211D7FC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x70, 0x73, 0x5F, 0x6C, 0x69
	.byte 0x73, 0x74, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00
	.global ov89_0211D818
ov89_0211D818:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov89_0211D830
ov89_0211D830:
	.byte 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x82, 0xF0, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov89_0211D848
ov89_0211D848:
	.byte 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67
	.byte 0x5B, 0x8C, 0x8B, 0x89, 0xCA, 0x2F, 0x82, 0xAF, 0x82, 0xC1, 0x82, 0xA9, 0x5D, 0x82, 0xF0, 0x83
	.byte 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xE6
	.byte 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov89_0211D880
ov89_0211D880:
	.byte 0x81, 0xA6, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x5B, 0x8C, 0xE3, 0x2F, 0x82, 0xB2, 0x5D, 0x81
	.byte 0x40, 0x83, 0x76, 0x83, 0x8C, 0x83, 0x7E, 0x83, 0x41, 0x83, 0x80, 0x83, 0x58, 0x83, 0x4A, 0x83
	.byte 0x45, 0x83, 0x67, 0x82, 0xF0, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov89_0211D8C4
ov89_0211D8C4:
	.byte 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x82, 0xC5, 0x82, 0xAB
	.byte 0x82, 0xE9, 0x5B, 0x91, 0x49, 0x8E, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xB5, 0x82, 0xE3
	.byte 0x5D, 0x82, 0xAA, 0x0A, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82
	.byte 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A
	.byte 0x83, 0x76, 0x83, 0x8C, 0x83, 0x7E, 0x83, 0x41, 0x83, 0x80, 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45
	.byte 0x83, 0x67, 0x82, 0xF0, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

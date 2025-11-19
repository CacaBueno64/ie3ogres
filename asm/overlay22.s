
	.include "/macros/function.inc"
	.include "/include/overlay22.inc"

	.text
	arm_func_start FUN_ov22_02119f00
FUN_ov22_02119f00: ; 0x02119F00
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, _0211A350 ; =0x0209A0E0
	mov r6, r0
	ldrb r0, [r1]
	mov r4, #1
	cmp r0, #2
	ldreq r0, _0211A354 ; =0x0209A0FC
	ldreq r0, [r0]
	ldrne r0, _0211A358 ; =0x020A1640
	ldrne r0, [r0, #0x230]
	addne r0, r0, #0x1e8
	addne r0, r0, #0x5000
	str r0, [r6, #0xc]
	ldr r0, [r6, #4]
	bl _ZN14CScreenManager18getLoadedSceneMainEv
	cmp r0, #0x1b
	bne _02119F50
	bl FUN_ov16_020f47fc
	mov r0, #6
	bl FUN_ov16_020f3f60
_02119F50:
	ldr r3, _0211A35C ; =0x02099E91
	mov r7, #0
	ldr r2, _0211A360 ; =0x02099E90
	ldr r0, _0211A364 ; =0x02099EA0
	ldr r1, _0211A368 ; =0x02099E97
	strh r7, [r0]
	strb r7, [r3]
	strb r7, [r2]
	mov r0, #0x4000000
	strb r7, [r1]
	ldr r1, [r0]
	ldr r0, _0211A36C ; =0x02099EB4
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r6, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A370 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r8, _0211A374 ; =gL5Sound
	mov r5, #2
	mov r0, r8
	mov r1, r5
	bl FUN_0202cf00
	ldr r2, _0211A378 ; =0x02122BB0
	mov r0, r8
	mov r1, r5
	bl FUN_0202cdd4
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r6, #0x10
	mov r1, r7
	mov r2, #0x14c
	bl MI_CpuFill8
	mov r0, r6
	str r7, [r6, #0x164]
	str r7, [r6, #0x168]
	bl FUN_ov22_0211a6dc
	mov r0, r6
	bl FUN_ov22_0211a7dc
	mov r0, r6
	bl FUN_ov22_0211c130
	mov r0, r6
	str r7, [r6, #0x2f4]
	str r7, [r6, #0x2f8]
	bl FUN_ov22_0211c328
	add r0, r6, #0x94
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0x19
	bl MI_CpuFill8
	mov r5, #0x10
	add r0, r6, #0x4b0
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	add r0, r6, #0x4c0
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	add r0, r6, #0x480
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	add r0, r6, #0xde
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #4
	str r7, [r6, #0x4d0]
	str r7, [r6, #0x4d4]
	str r7, [r6, #0x4d8]
	bl MI_CpuFill8
	add r0, r6, #0xec
	add r3, r6, #0x400
	mov r1, r7
	add r0, r0, #0x400
	mov r2, #0x24
	strh r7, [r3, #0xdc]
	strh r7, [r3, #0xe2]
	str r7, [r6, #0x4e4]
	str r7, [r6, #0x4e8]
	bl MI_CpuFill8
	mov r8, #0xc
	mov r1, r7
	mov r2, r8
	add r0, r6, #0x510
	bl MI_CpuFill8
	add r0, r6, #0x11c
	mov r1, r7
	mov r2, r8
	add r0, r0, #0x400
	bl MI_CpuFill8
	add r0, r6, #0x128
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #3
	bl MI_CpuFill8
	ldr r0, [r6, #4]
	strb r7, [r6, #0x52b]
	str r7, [r6, #0x52c]
	str r7, [r6, #0x530]
	str r7, [r6, #0xb64]
	str r7, [r6, #0xb68]
	str r7, [r6, #0xb6c]
	str r7, [r6, #0xb70]
	str r7, [r6, #0xb74]
	str r7, [r6, #0xb78]
	str r7, [r6, #0x15c]
	str r7, [r6, #0x160]
	bl _ZN14CScreenManager18getLoadedSceneMainEv
	cmp r0, #0x1b
	bne _0211A160
	ldr r0, _0211A350 ; =0x0209A0E0
	ldrb r0, [r0]
	cmp r0, #1
	beq _0211A150
	cmp r0, #2
	beq _0211A144
	cmp r0, #3
	streq r4, [r6, #0xb6c]
	streq r5, [r6, #0x160]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A144:
	str r4, [r6, #0xb70]
	str r5, [r6, #0x160]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A150:
	mov r0, #0x11
	str r4, [r6, #0xb74]
	str r0, [r6, #0x160]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A160:
	ldr r0, _0211A37C ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211A194
	ldr r0, _0211A380 ; =0x02099E92
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211A194
	mov r0, r6
	mov r1, r7
	mov r2, r7
	bl FUN_ov22_0211bc48
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A194:
	ldr r0, _0211A384 ; =0x02099E8C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211A1B4
	ldr r0, _0211A37C ; =0x02099E99
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A1B4:
	mov r8, #0x10
	ldr r0, _0211A388 ; =0x0209A050
	mov r2, r8
	add r1, r6, #0x2fc
	mov r5, #0
	bl MI_CpuCopy8
	ldr r0, _0211A38C ; =0x0209A060
	mov r2, r8
	add r1, r6, #0x30c
	bl MI_CpuCopy8
	mov r7, #8
	ldr r0, _0211A390 ; =0x02099F80
	mov r2, r7
	add r1, r6, #0x31c
	bl MI_CpuCopy8
	ldr r0, _0211A394 ; =0x02099F88
	mov r2, r7
	add r1, r6, #0x324
	bl MI_CpuCopy8
	ldr r0, _0211A398 ; =0x0209A080
	mov r2, r8
	add r1, r6, #0x32c
	bl MI_CpuCopy8
	ldr r1, _0211A39C ; =0x02099E9A
	ldr r0, _0211A3A0 ; =0x02099E9C
	b _0211A248
_0211A21C:
	ldrb r2, [r1]
	mov r2, r2, asr r5
	tst r2, #1
	addne r2, r6, r5, lsl #2
	strne r4, [r2, #0x43c]
	ldrb r2, [r0]
	mov r2, r2, asr r5
	tst r2, #1
	addne r2, r6, r5, lsl #2
	strne r4, [r2, #0x45c]
	add r5, r5, #1
_0211A248:
	cmp r5, #8
	blt _0211A21C
	ldr r1, _0211A3A4 ; =0x02099E9D
	ldr r0, _0211A3A8 ; =0x02099F6E
	ldrb r3, [r1]
	add r1, r6, #0x480
	mov r2, #7
	str r3, [r6, #0x4d0]
	bl MI_CpuCopy8
	mov r5, #0
	ldr r12, _0211A3AC ; =0x02099F5C
	ldr r2, _0211A3B0 ; =0x02099F62
	ldr r1, _0211A3B4 ; =0x02099F68
	ldr r0, _0211A3B8 ; =0x02099EA6
	ldr r9, _0211A3BC ; =0x02099EA9
	mov r7, #0xc
	b _0211A2C4
_0211A28C:
	mla r3, r5, r7, r6
	mov lr, r5, lsl #1
	ldrh r10, [r12, lr]
	add r8, r3, #0x400
	strh r10, [r8, #0xec]
	ldrh r10, [r2, lr]
	strh r10, [r8, #0xee]
	ldrh lr, [r1, lr]
	strh lr, [r8, #0xf0]
	ldrb r8, [r0, r5]
	strb r8, [r3, #0x4f2]
	ldrb r8, [r9, r5]
	add r5, r5, #1
	strb r8, [r3, #0x4f4]
_0211A2C4:
	cmp r5, #3
	blt _0211A28C
	add r1, r6, #0x128
	mov r5, #3
	ldr r0, _0211A3C0 ; =0x02099EAC
	mov r2, r5
	add r1, r1, #0x400
	bl MI_CpuCopy8
	ldr r0, _0211A3C4 ; =0x02099E96
	add r1, r6, #0x94
	ldrb r3, [r0]
	ldr r2, _0211A3C8 ; =0x02099E9B
	ldr r0, _0211A3CC ; =0x0209A090
	strb r3, [r6, #0x52b]
	ldrb r3, [r2]
	add r1, r1, #0x400
	mov r2, #0x19
	str r3, [r6, #0x490]
	bl MI_CpuCopy8
	mov r0, r6
	bl FUN_ov22_0211d2f8
	ldr r0, _0211A384 ; =0x02099E8C
	mov r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, _0211A37C ; =0x02099E99
	strne r5, [r6, #0x160]
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #0xd
	strne r0, [r6, #0x160]
	ldr r0, _0211A37C ; =0x02099E99
	strne r4, [r6, #0x530]
	strb r1, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A350: .word unk_0209A0E0
_0211A354: .word unk_0209A0FC
_0211A358: .word unk_020A1640
_0211A35C: .word unk_02099E91
_0211A360: .word unk_02099E90
_0211A364: .word unk_02099EA0
_0211A368: .word unk_02099E97
_0211A36C: .word unk_02099EB4
_0211A370: .word unk_02099ED4
_0211A374: .word gL5Sound
_0211A378: .word ov22_02122BB0
_0211A37C: .word unk_02099E99
_0211A380: .word unk_02099E92
_0211A384: .word unk_02099E8C
_0211A388: .word unk_0209A050
_0211A38C: .word unk_0209A060
_0211A390: .word unk_02099F80
_0211A394: .word unk_02099F88
_0211A398: .word unk_0209A080
_0211A39C: .word unk_02099E9A
_0211A3A0: .word unk_02099E9C
_0211A3A4: .word unk_02099E9D
_0211A3A8: .word unk_02099F6E
_0211A3AC: .word unk_02099F5C
_0211A3B0: .word unk_02099F62
_0211A3B4: .word unk_02099F68
_0211A3B8: .word unk_02099EA6
_0211A3BC: .word unk_02099EA9
_0211A3C0: .word unk_02099EAC
_0211A3C4: .word unk_02099E96
_0211A3C8: .word unk_02099E9B
_0211A3CC: .word unk_0209A090
	arm_func_end FUN_ov22_02119f00

	arm_func_start FUN_ov22_0211a3d0
FUN_ov22_0211a3d0: ; 0x0211A3D0
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #8]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	ldr r0, _0211A468 ; =0x02099EB4
	str r2, [r1]
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A46C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211A470 ; =gL5Sound
	mov r1, #2
	bl FUN_0202cf00
	mov r0, r4
	bl FUN_ov22_02120e44
	mov r0, r4
	bl FUN_ov22_02120968
	mov r0, r4
	bl FUN_ov22_02120458
	mov r0, r4
	bl FUN_ov22_0211f33c
	mov r0, r4
	bl FUN_ov22_0211ebb0
	mov r0, r4
	mov r1, #1
	bl FUN_ov22_0211d828
	mov r0, r4
	bl FUN_ov22_0211c2b8
	mov r0, r4
	bl FUN_ov22_0211a894
	mov r0, r4
	mov r1, #8
	bl FUN_ov22_0211a6f4
	ldmfd sp!, {r4, pc}
_0211A468: .word unk_02099EB4
_0211A46C: .word unk_02099ED4
_0211A470: .word gL5Sound
	arm_func_end FUN_ov22_0211a3d0

	arm_func_start FUN_ov22_0211a474
FUN_ov22_0211a474: ; 0x0211A474
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x15c]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211A4E0
_0211A48C: ; jump table
	b _0211A4AC ; case 0
	b _0211A4B0 ; case 1
	b _0211A4BC ; case 2
	b _0211A4C4 ; case 3
	b _0211A4C8 ; case 4
	b _0211A4E0 ; case 5
	b _0211A4D4 ; case 6
	b _0211A4DC ; case 7
_0211A4AC:
	bl FUN_ov22_0211a798
_0211A4B0:
	mov r0, r4
	bl FUN_ov22_0211a8f0
	b _0211A4E0
_0211A4BC:
	bl FUN_ov22_0211b294
	b _0211A4E0
_0211A4C4:
	bl FUN_ov22_0211b318
_0211A4C8:
	mov r0, r4
	bl FUN_ov22_0211b324
	b _0211A4E0
_0211A4D4:
	bl FUN_ov22_0211bc5c
	b _0211A4E0
_0211A4DC:
	bl FUN_ov22_0211bc9c
_0211A4E0:
	mov r0, r4
	bl FUN_ov22_0211a574
	mov r0, r4
	bl FUN_ov22_0211d8e8
	mov r0, r4
	bl FUN_ov22_0211da38
	mov r0, r4
	bl FUN_ov22_0211e688
	mov r0, r4
	bl FUN_ov22_0211ff88
	ldr r0, _0211A564 ; =0x02099ED4
	ldr r4, _0211A568 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_ov16_0210e10c
	ldr r0, [r4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211A540
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211A54C
_0211A540:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211A54C:
	bl _ffix
	ldr r2, _0211A56C ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldmfd sp!, {r4, pc}
_0211A564: .word unk_02099ED4
_0211A568: .word unk_0209A110
_0211A56C: .word unk_02099F58
	arm_func_end FUN_ov22_0211a474

	arm_func_start FUN_ov22_0211a570
FUN_ov22_0211a570: ; 0x0211A570
	bx lr
	arm_func_end FUN_ov22_0211a570

	arm_func_start FUN_ov22_0211a574
FUN_ov22_0211a574: ; 0x0211A574
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r0, [r4, #0x160]
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _0211A698
_0211A58C: ; jump table
	b _0211A5D8 ; case 0
	b _0211A698 ; case 1
	b _0211A698 ; case 2
	b _0211A698 ; case 3
	b _0211A5E4 ; case 4
	b _0211A5E4 ; case 5
	b _0211A698 ; case 6
	b _0211A698 ; case 7
	b _0211A698 ; case 8
	b _0211A698 ; case 9
	b _0211A698 ; case 10
	b _0211A698 ; case 11
	b _0211A664 ; case 12
	b _0211A5E4 ; case 13
	b _0211A5E4 ; case 14
	b _0211A698 ; case 15
	b _0211A5E4 ; case 16
	b _0211A5E4 ; case 17
	b _0211A5E4 ; case 18
_0211A5D8:
	mov r0, #1
	strb r0, [r4, #0x24]
	b _0211A698
_0211A5E4:
	mov r3, #2
	add r0, r4, #0x30c
	add r1, r4, #0x28
	mov r2, #0x10
	strb r3, [r4, #0x24]
	mov r8, #0
	bl MI_CpuCopy8
	add r0, r4, #0x31c
	add r1, r4, #0x38
	mov r2, #8
	bl MI_CpuCopy8
	add r7, r4, #0x33c
	add r6, r4, #0x40
	mov r5, #0x20
	b _0211A634
_0211A620:
	mov r2, r5
	add r0, r7, r8, lsl #5
	add r1, r6, r8, lsl #5
	bl MI_CpuCopy8
	add r8, r8, #1
_0211A634:
	cmp r8, #8
	blt _0211A620
	add r0, r4, #0x94
	add r0, r0, #0x400
	add r1, r4, #0x140
	mov r2, #0x19
	bl MI_CpuCopy8
	ldrb r1, [r4, #0x52b]
	ldr r0, [r4, #0xb6c]
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	b _0211A698
_0211A664:
	add r0, r4, #0x300
	ldrh r2, [r0, #0xc]
	ldrb r1, [r4, #0x31c]
	mov r3, #3
	ldr r0, _0211A6B0 ; =0x020A1640
	strb r3, [r4, #0x24]
	strh r2, [r4, #0x28]
	strb r1, [r4, #0x38]
	ldrh r1, [r0, #0x14]
	ldr r0, _0211A6B4 ; =0x0000270F
	strh r1, [r4, #0x26]
	cmp r1, r0
	strhih r0, [r4, #0x26]
_0211A698:
	ldr r0, [r4, #4]
	add r1, r4, #0x10
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A6B0: .word unk_020A1640
_0211A6B4: .word 0x0000270F
	arm_func_end FUN_ov22_0211a574

	arm_func_start FUN_ov22_0211a6b8
FUN_ov22_0211a6b8: ; 0x0211A6B8
	mov r2, #4
	str r1, [r0, #0x160]
	str r2, [r0, #0x15c]
	bx lr
	arm_func_end FUN_ov22_0211a6b8

	arm_func_start FUN_ov22_0211a6c8
FUN_ov22_0211a6c8: ; 0x0211A6C8
	ldr r12, _0211A6D8 ; =FUN_ov22_0211a6b8
	str r1, [r0, #0x2f4]
	mov r1, #0xf
	bx r12
_0211A6D8: .word FUN_ov22_0211a6b8
	arm_func_end FUN_ov22_0211a6c8

	arm_func_start FUN_ov22_0211a6dc
FUN_ov22_0211a6dc: ; 0x0211A6DC
	ldr r12, _0211A6F0 ; =MI_CpuFill8
	add r0, r0, #0x16c
	mov r1, #0
	mov r2, #0x60
	bx r12
_0211A6F0: .word MI_CpuFill8
	arm_func_end FUN_ov22_0211a6dc

	arm_func_start FUN_ov22_0211a6f4
FUN_ov22_0211a6f4: ; 0x0211A6F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r4, r0
	cmp r1, #8
	blo _0211A758
	mov r9, #0
	add r8, r4, #0x16c
	mov r7, #1
	mov r6, r9
	mov r5, #0xc
_0211A718:
	mul r10, r9, r5
	mov r1, r7
	add r0, r8, r10
	bl FUN_ov16_020f338c
	add r0, r8, r10
	bl FUN_ov16_020f33fc
	add r0, r4, r10
	str r6, [r0, #0x16c]
	str r6, [r0, #0x170]
	strb r6, [r0, #0x174]
	strb r6, [r0, #0x175]
	add r9, r9, #1
	strb r6, [r0, #0x176]
	cmp r9, #8
	blt _0211A718
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A758:
	mov r0, #0xc
	mul r6, r1, r0
	add r5, r4, #0x16c
	add r0, r5, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r5, r6
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r5, r6]
	add r0, r4, r6
	str r1, [r0, #0x170]
	strb r1, [r0, #0x174]
	strb r1, [r0, #0x175]
	strb r1, [r0, #0x176]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov22_0211a6f4

	arm_func_start FUN_ov22_0211a798
FUN_ov22_0211a798: ; 0x0211A798
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _0211A7D0 ; =0x02122BB8
	add r1, r4, #0x16c
	bl FUN_ov16_020f3054
	ldr r0, _0211A7D4 ; =0x02122BDC
	add r1, r4, #0x178
	bl FUN_ov16_020f3054
	ldr r0, _0211A7D8 ; =0x02122BFC
	add r1, r4, #0x184
	bl FUN_ov16_020f3054
	mov r0, #1
	str r0, [r4, #0x15c]
	ldmfd sp!, {r4, pc}
_0211A7D0: .word ov22_02122BB8
_0211A7D4: .word ov22_02122BDC
_0211A7D8: .word ov22_02122BFC
	arm_func_end FUN_ov22_0211a798

	arm_func_start FUN_ov22_0211a7dc
FUN_ov22_0211a7dc: ; 0x0211A7DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x1cc
	mov r2, #0xb0
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #0x27c
	mov r2, #0x54
	bl MI_CpuFill8
	ldr r0, _0211A818 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A818: .word unk_02099F38
	arm_func_end FUN_ov22_0211a7dc

	arm_func_start FUN_ov22_0211a81c
FUN_ov22_0211a81c: ; 0x0211A81C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x27c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A854 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x27c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A854: .word unk_02099F38
	arm_func_end FUN_ov22_0211a81c

	arm_func_start FUN_ov22_0211a858
FUN_ov22_0211a858: ; 0x0211A858
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x1cc]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A890 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x1cc]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A890: .word unk_02099F38
	arm_func_end FUN_ov22_0211a858

	arm_func_start FUN_ov22_0211a894
FUN_ov22_0211a894: ; 0x0211A894
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _0211A8B4
_0211A8A4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov22_0211a81c
	add r4, r4, #1
_0211A8B4:
	cmp r4, #0x15
	blt _0211A8A4
	mov r4, #0
	b _0211A8D4
_0211A8C4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov22_0211a858
	add r4, r4, #1
_0211A8D4:
	cmp r4, #0x2c
	blt _0211A8C4
	ldr r0, _0211A8EC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, pc}
_0211A8EC: .word unk_02099F38
	arm_func_end FUN_ov22_0211a894

	arm_func_start FUN_ov22_0211a8f0
FUN_ov22_0211a8f0: ; 0x0211A8F0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x11c
	mov r4, r0
	add r0, r4, #0x16c
	mov r1, #8
	bl FUN_ov16_020f330c
	cmp r0, #0
	addeq sp, sp, #0x11c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r12, _0211A9B8 ; =0x021224A0
	add r6, sp, #0x14
	mov r5, #0x10
_0211A920:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211A920
	ldmia r12, {r0, r1}
	stmia r6, {r0, r1}
	ldr r6, _0211A9BC ; =gL5Allocator
	ldr r1, _0211A9C0 ; =0x00000101
	mov r0, r6
	ldr r7, [r4, #0x16c]
	bl _ZN11L5Allocator12setNextArenaEi
	mov r5, #0
	str r5, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	ldr r0, _0211A9C4 ; =gL5FileRequestManager
	ldr r1, _0211A9C8 ; =0x02122C14
	add r2, sp, #0x10
	mov r3, r5
	bl _ZN20L5FileRequestManager10readDirectEPKcPPvP11L5Allocatoriiih
	str r5, [sp]
	ldr r0, [sp, #0x10]
	mov r1, r7
	str r0, [sp, #4]
	ldr r0, _0211A9CC ; =0x02122C38
	add r2, sp, #0x14
	add r3, r4, #0x1cc
	bl FUN_ov16_020f5504
	ldr r1, [sp, #0x10]
	mov r0, r6
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #2
	str r0, [r4, #0x15c]
	add sp, sp, #0x11c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A9B8: .word ov22_021224A0
_0211A9BC: .word gL5Allocator
_0211A9C0: .word 0x00000101
_0211A9C4: .word gL5FileRequestManager
_0211A9C8: .word ov22_02122C14
_0211A9CC: .word ov22_02122C38
	arm_func_end FUN_ov22_0211a8f0

	arm_func_start FUN_ov22_0211a9d0
FUN_ov22_0211a9d0: ; 0x0211A9D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r1, [r6, #8]
	ldmia r6, {r4, r5}
	add r0, r0, r1, lsl #2
	ldr r3, [r0, #0x1cc]
	ldr r7, _0211AA6C ; =0x02099F38
	mov r1, r4
	ldr r0, [r7]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [r6, #0xc]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_0211401c
	ldrsh r0, [r6, #0x12]
	mov r1, r4
	mov r2, r5
	str r0, [sp]
	ldrsh r3, [r6, #0x10]
	ldr r0, [r7]
	bl FUN_ov16_02113b78
	ldrh r3, [r6, #0x14]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_021139bc
	ldrb r0, [r6, #0x16]
	mov r1, r4
	mov r2, r5
	str r0, [sp]
	ldr r0, [r7]
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA6C: .word unk_02099F38
	arm_func_end FUN_ov22_0211a9d0

	arm_func_start FUN_ov22_0211aa70
FUN_ov22_0211aa70: ; 0x0211AA70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r4, #0
	mov r11, r1
	mov r8, #4
	mov r7, r2
	add r0, sp, #0x2c
	mov r1, r4
	mov r2, r8
	mov r6, r3
	str r4, [sp, #0x24]
	ldr r5, [sp, #0x58]
	bl MI_CpuFill8
	add r0, sp, #0x28
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	ldr r0, [sp, #0x68]
	add r2, sp, #0x2c
	cmp r0, #0
	movne r0, #0x80
	movne r1, #8
	moveq r0, #0x100
	moveq r1, #0x10
	add r3, sp, #0x28
	str r4, [r5]
	bl FUN_02054070
	ldr r8, _0211ACE0 ; =0x02099F38
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [r8]
	bl FUN_02059630
	mov r2, #0
	str r0, [r5]
	mov r1, r0
	ldr r0, [r8]
	mov r3, r2
	bl FUN_02059038
	ldr r1, [r5]
	mov r2, #0
	str r2, [sp, #0x20]
	ldr r0, [r8]
	add r2, sp, #0x20
	add r3, sp, #0x24
	bl FUN_0205935c
	ldr r0, [r8]
	ldr r1, [r5]
	ldr r9, [sp, #0x20]
	bl FUN_ov16_02111438
	mov r10, r0
	ldr r0, [r8]
	ldr r1, [r5]
	bl FUN_ov16_02111458
	mov r8, r0
	ldr r0, [sp, #0x68]
	mov r1, #1
	cmp r0, #0
	beq _0211ABB4
	ldr r0, _0211ACE4 ; =gFont8
	mov r2, r1
	ldr r0, [r0]
	bl FUN_02043310
	str r8, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211ACE4 ; =gFont8
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r9
	mov r3, r10
	bl FUN_020425fc
	ldr r0, _0211ACE4 ; =gFont8
	b _0211AC0C
_0211ABB4:
	ldr r0, _0211ACE8 ; =gFont12
	mov r2, #5
	ldr r0, [r0]
	bl FUN_02043310
	str r8, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, _0211ACE8 ; =gFont12
	str r4, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r11
	mov r2, r9
	mov r3, r10
	bl FUN_020425fc
	ldr r0, _0211ACE8 ; =gFont12
_0211AC0C:
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r4, _0211ACE0 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r5]
	ldr r0, [r4]
	mov r11, #0
	str r11, [sp]
	str r11, [sp, #4]
	mov r2, r9
	str r11, [sp, #8]
	bl FUN_02059288
	ldr r3, [r5]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	mov r3, r11
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_02113d88
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r10, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_02113d08
	ldr r0, [sp, #0x60]
	mov r1, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r6
	ldr r3, [sp, #0x5c]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	ldr r3, [sp, #0x64]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211ACE0: .word unk_02099F38
_0211ACE4: .word gFont8
_0211ACE8: .word gFont12
	arm_func_end FUN_ov22_0211aa70

	arm_func_start FUN_ov22_0211acec
FUN_ov22_0211acec: ; 0x0211ACEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldr r6, _0211AFF8 ; =0x00007FFF
	ldr r5, _0211AFFC ; =0x02099F38
	mov r8, #0
	ldr r7, _0211B000 ; =0x00004210
	b _0211AD28
_0211AD08:
	add r0, r4, r8, lsl #2
	ldr r1, [r0, #0x27c]
	cmp r1, #0
	beq _0211AD24
	ldr r0, [r5]
	mov r2, r7
	bl FUN_ov16_02114204
_0211AD24:
	add r8, r8, #1
_0211AD28:
	cmp r8, #0x15
	blt _0211AD08
	ldr r0, [r4, #0x160]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AD40: ; jump table
	b _0211AD90 ; case 0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 3
	b _0211ADD4 ; case 4
	b _0211AE68 ; case 5
	b _0211AE68 ; case 6
	b _0211AE58 ; case 7
	b _0211AE08 ; case 8
	b _0211AE08 ; case 9
	b _0211AE48 ; case 10
	b _0211AE38 ; case 11
	b _0211AE8C ; case 12
	b _0211AEC0 ; case 13
	b _0211AEC0 ; case 14
	b _0211AF34 ; case 15
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 16
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 17
	b _0211AFB4 ; case 18
	b _0211AFB4 ; case 19
_0211AD90:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x280]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x284]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x28c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211ADD4:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x288]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x28c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE08:
	ldr r0, [r5]
	ldr r1, [r4, #0x2b4]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x288]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x28c]
	mov r2, r6
	bl FUN_ov16_02114204
_0211AE38:
	ldr r0, [r5]
	ldr r1, [r4, #0x2bc]
	ldr r2, _0211AFF8 ; =0x00007FFF
	bl FUN_ov16_02114204
_0211AE48:
	ldr r0, [r5]
	ldr r1, [r4, #0x2b8]
	ldr r2, _0211AFF8 ; =0x00007FFF
	bl FUN_ov16_02114204
_0211AE58:
	ldr r0, [r5]
	ldr r1, [r4, #0x2b0]
	ldr r2, _0211AFF8 ; =0x00007FFF
	bl FUN_ov16_02114204
_0211AE68:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2ac]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE8C:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x288]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x28c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AEC0:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2c0]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2c4]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2c8]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2cc]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x288]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x28c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AF34:
	ldr r0, [r4, #0x530]
	cmp r0, #0
	beq _0211AF50
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	ldr r2, _0211AFF8 ; =0x00007FFF
	bl FUN_ov16_02114204
_0211AF50:
	ldr r0, [r5]
	ldr r1, [r4, #0x290]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x294]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x298]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x29c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFB4:
	ldr r0, [r5]
	ldr r1, [r4, #0x27c]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2c0]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r6
	bl FUN_ov16_02114204
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r6
	bl FUN_ov16_02114204
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFF8: .word 0x00007FFF
_0211AFFC: .word unk_02099F38
_0211B000: .word 0x00004210
	arm_func_end FUN_ov22_0211acec

	arm_func_start FUN_ov22_0211b004
FUN_ov22_0211b004: ; 0x0211B004
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r1, #0
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #0x2b
	bl FUN_ov22_0211a858
	ldr r0, _0211B10C ; =0x0212227C
	add r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r0, [r4, #0x160]
	cmp r0, #0xc
	bgt _0211B064
	bge _0211B0A8
	cmp r0, #4
	bgt _0211B0B4
	cmp r0, #0
	blt _0211B0B4
	beq _0211B090
	cmp r0, #4
	beq _0211B09C
	b _0211B0B4
_0211B064:
	sub r0, r0, #0xd
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211B0B4
_0211B074: ; jump table
	b _0211B090 ; case 0
	b _0211B090 ; case 1
	b _0211B0B4 ; case 2
	b _0211B0B4 ; case 3
	b _0211B0B4 ; case 4
	b _0211B090 ; case 5
	b _0211B090 ; case 6
_0211B090:
	ldr r0, [sp, #4]
	ldr r1, _0211B110 ; =0x02122C5C
	b _0211B0B0
_0211B09C:
	ldr r0, [sp, #4]
	ldr r1, _0211B114 ; =0x02122C6C
	b _0211B0B0
_0211B0A8:
	ldr r0, [sp, #4]
	ldr r1, _0211B118 ; =0x02122C7C
_0211B0B0:
	bl sprintf
_0211B0B4:
	mov r6, #0
	str r6, [sp]
	ldr r1, [r4, #0x16c]
	ldr r0, _0211B11C ; =0x02122C8C
	add r2, sp, #4
	add r3, r4, #0x1cc
	bl FUN_ov16_020f5450
	ldr r0, [sp, #8]
	ldr r5, _0211B120 ; =0x02099F38
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r5]
	bl FUN_02059004
	ldr r1, [sp, #8]
	ldr r0, [r5]
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x1cc]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211B10C: .word ov22_0212227C
_0211B110: .word ov22_02122C5C
_0211B114: .word ov22_02122C6C
_0211B118: .word ov22_02122C7C
_0211B11C: .word ov22_02122C8C
_0211B120: .word unk_02099F38
	arm_func_end FUN_ov22_0211b004

	arm_func_start FUN_ov22_0211b124
FUN_ov22_0211b124: ; 0x0211B124
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1cc
	add r7, sp, #0x184
	mov r10, r0
	mov r0, r7
	bl FS_InitFile
	mov r9, #0
	add r0, sp, #0x18
	mov r1, r9
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r8, [r10, #0x178]
	ldr r1, _0211B284 ; =0x02122CB0
	mov r0, r7
	str r9, [sp, #0x14]
	str r9, [sp, #0x10]
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x1cc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, r9
	add r11, sp, #0x14
	ldr r6, _0211B288 ; =0x0209BA20
	ldr r4, _0211B28C ; =0x02099F38
	b _0211B218
_0211B188:
	add r0, r10, r9, lsl #1
	add r0, r0, #0x300
	cmp r9, #0
	ldrh r1, [r0, #0xc]
	beq _0211B1C4
	mov r0, r6
	add r2, sp, #0x18
	bl FUN_0207039c
	cmp r0, #0
	beq _0211B214
	ldrh r1, [sp, #0x42]
	cmp r1, #0
	addeq r0, r10, r9, lsl #1
	addeq r0, r0, #0x300
	ldreqh r1, [r0, #0xc]
_0211B1C4:
	mov r0, r8
	mov r2, r11
	add r3, sp, #0x10
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211B214
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r4]
	mov r1, r7
	str r5, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, _0211B290 ; =0x02122CD0
	mov r2, #5
	bl FUN_02058a10
	add r1, r9, #0x20
	add r1, r10, r1, lsl #2
	str r0, [r1, #0x1cc]
_0211B214:
	add r9, r9, #1
_0211B218:
	cmp r9, #8
	blt _0211B188
	add r0, sp, #0x184
	bl FS_CloseFile
	mov r9, #0x20
	mov r7, #4
	mov r6, #3
	mov r5, #0
	ldr r4, _0211B28C ; =0x02099F38
	b _0211B274
_0211B240:
	add r1, r10, r9, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x1cc]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02114918
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	add r9, r9, #1
_0211B274:
	cmp r9, #0x27
	ble _0211B240
	add sp, sp, #0x1cc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B284: .word ov22_02122CB0
_0211B288: .word unk_0209BA20
_0211B28C: .word unk_02099F38
_0211B290: .word ov22_02122CD0
	arm_func_end FUN_ov22_0211b124

	arm_func_start FUN_ov22_0211b294
FUN_ov22_0211b294: ; 0x0211B294
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r4, r0
	mov r6, r7
	ldr r5, _0211B314 ; =0x02099F38
	b _0211B300
_0211B2AC:
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1cc]
	cmp r1, #0
	beq _0211B2FC
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r5]
	bl FUN_02059004
	cmp r0, #0
	bne _0211B2FC
	add r0, r4, r7, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
_0211B2FC:
	add r7, r7, #1
_0211B300:
	cmp r7, #0x2c
	blt _0211B2AC
	mov r0, #3
	str r0, [r4, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B314: .word unk_02099F38
	arm_func_end FUN_ov22_0211b294

	arm_func_start FUN_ov22_0211b318
FUN_ov22_0211b318: ; 0x0211B318
	mov r1, #4
	str r1, [r0, #0x15c]
	bx lr
	arm_func_end FUN_ov22_0211b318

	arm_func_start FUN_ov22_0211b324
FUN_ov22_0211b324: ; 0x0211B324
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _0211BC30 ; =0x02099ED4
	mov r9, r0
	ldr r0, [r1]
	ldr r5, _0211BC34 ; =0x02099F38
	mov r4, #2
	mov r7, #0
	mov r11, #1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x160]
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _0211BC0C
_0211B360: ; jump table
	b _0211B3B0 ; case 0
	b _0211B424 ; case 1
	b _0211B44C ; case 2
	b _0211B55C ; case 3
	b _0211B57C ; case 4
	b _0211B644 ; case 5
	b _0211B688 ; case 6
	b _0211B694 ; case 7
	b _0211B688 ; case 8
	b _0211BC0C ; case 9
	b _0211B6D0 ; case 10
	b _0211B72C ; case 11
	b _0211B750 ; case 12
	b _0211B780 ; case 13
	b _0211B93C ; case 14
	b _0211B978 ; case 15
	b _0211B44C ; case 16
	b _0211BA9C ; case 17
	b _0211BBB0 ; case 18
	b _0211BBDC ; case 19
_0211B3B0:
	mov r0, r9
	bl FUN_ov22_0211c2b8
	mov r0, r9
	mov r1, r11
	bl FUN_ov22_0211d828
	mov r0, r9
	bl FUN_ov22_0211f33c
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	bl FUN_ov22_0211c148
	ldr r0, [r9, #0x2d0]
	cmp r0, #0
	bne _0211B40C
	mov r2, #5
	mov r1, r4
_0211B3F8:
	mov r0, r9
	mov r3, r2
	str r1, [sp]
_0211B404:
	bl FUN_ov22_02121e40
	b _0211BC0C
_0211B40C:
	mov r2, r4
	mov r0, r9
	mov r1, r11
	mov r3, r2
	str r11, [sp]
_0211B420:
	b _0211B404
_0211B424:
	mov r0, r9
	bl FUN_ov22_0211c840
	mov r0, r9
	bl FUN_ov22_0211d374
	mov r2, #0x10
	mov r0, r9
	mov r1, #3
	str r2, [r9, #0x4d4]
	bl FUN_ov22_0211a6b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B44C:
	mov r0, r9
	bl FUN_ov22_0211cbc4
	mov r8, r7
	add r6, r9, #0x580
	add r5, r9, #0x33c
	mov r4, #0x20
	b _0211B4B4
_0211B468:
	add r2, r9, r8, lsl #1
	add r3, r2, #0x500
	ldrh r1, [r3, #0x40]
	add r0, r2, #0x200
	add r10, r2, #0x300
	strh r1, [r0, #0xfc]
	ldrh r0, [r3, #0x50]
	add r12, r9, r8
	mov r2, r4
	strh r0, [r10, #0xc]
	ldrb r11, [r12, #0x560]
	add r0, r6, r8, lsl #5
	add r1, r5, r8, lsl #5
	strb r11, [r12, #0x31c]
	strb r7, [r12, #0x324]
	ldrh r3, [r3, #0x70]
	strh r3, [r10, #0x2c]
	bl MI_CpuCopy8
	add r8, r8, #1
_0211B4B4:
	cmp r8, #8
	blt _0211B468
	mov r8, #0
	mov r1, #0xc
	b _0211B520
_0211B4C8:
	mla r0, r8, r1, r9
	add r2, r0, #0x600
	ldrh r4, [r2, #0x80]
	add r3, r0, #0x400
	add r8, r8, #1
	strh r4, [r3, #0xec]
	ldrh r4, [r2, #0x82]
	strh r4, [r3, #0xee]
	ldrh r2, [r2, #0x84]
	strh r2, [r3, #0xf0]
	ldrb r2, [r0, #0x686]
	strb r2, [r0, #0x4f2]
	ldrb r2, [r0, #0x687]
	strb r2, [r0, #0x4f3]
	ldrb r2, [r0, #0x688]
	strb r2, [r0, #0x4f4]
	ldrb r2, [r0, #0x689]
	strb r2, [r0, #0x4f5]
	ldrb r3, [r0, #0x68a]
	ldrb r2, [r0, #0x68b]
	strb r3, [r0, #0x4f6]
	strb r2, [r0, #0x4f7]
_0211B520:
	cmp r8, #3
	blt _0211B4C8
	add r0, r9, #0x2a4
	add r1, r9, #0x94
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, #0x19
	bl MI_CpuCopy8
	ldr r2, [r9, #0x53c]
	mov r0, r9
	mov r1, #0xd
	strb r2, [r9, #0x52b]
	bl FUN_ov22_0211a6b8
	str r7, [r9, #0x2e0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B55C:
	mov r0, r9
	bl FUN_ov22_0211d2f8
	mov r0, r9
	bl FUN_ov22_0211b124
	mov r0, r9
	mov r1, #4
	bl FUN_ov22_0211a6b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B57C:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211c2b8
	mov r0, r9
	bl FUN_ov22_0211f33c
	mov r0, r9
	mov r1, r7
	bl FUN_ov22_0211d828
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	bl FUN_ov22_0211d56c
	ldr r0, [r9, #0xb74]
	cmp r0, #0
	bne _0211BC0C
	ldr r0, _0211BC38 ; =0x02099E8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0211BC0C
	cmp r0, #1
	bne _0211B630
	ldr r0, [r9, #0x4d0]
	cmp r0, #1
	bne _0211B5F0
	mov r0, r9
	mov r1, r4
_0211B5E8:
	bl FUN_ov22_0211a6c8
	b _0211B624
_0211B5F0:
	cmp r0, #2
	mov r0, r9
	bne _0211B60C
	bl FUN_ov22_0211dd8c
	mov r0, r9
	mov r1, #4
	b _0211B5E8
_0211B60C:
	bl FUN_ov22_0211dd8c
	mov r0, r9
	bl FUN_ov22_0211e108
	mov r0, r9
	mov r1, #0xa
	bl FUN_ov22_0211a6b8
_0211B624:
	mov r0, #0x10
	str r0, [r9, #0x4d4]
	b _0211B63C
_0211B630:
	mov r0, r9
	mov r1, #6
	bl FUN_ov22_0211a6c8
_0211B63C:
	str r11, [r9, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B644:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	mov r1, r7
	bl FUN_ov22_0211dab8
	mov r1, #3
	mov r0, r9
	mov r2, r7
	mov r3, r7
	str r1, [sp]
	bl FUN_ov22_02121e40
	mov r1, #4
	str r1, [sp]
	mov r0, r9
	mov r2, r7
	mov r3, r7
	b _0211B420
_0211B688:
	mov r0, #0x10
	str r0, [r9, #0x4d4]
	b _0211BC0C
_0211B694:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	mov r1, r7
	bl FUN_ov22_0211ddc0
_0211B6A8:
	ldr r0, [r5]
	ldr r1, [r9, #0x288]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	mov r2, r11
	mov r3, r4
	ldr r1, [r9, #0x28c]
	b _0211BA80
_0211B6D0:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211e2d4
	ldr r0, [r5]
	ldr r1, [r9, #0x288]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x28c]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x2b4]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x2b4]
	mov r2, r4
	b _0211BC04
_0211B72C:
	mov r0, r9
	bl FUN_ov22_0211e5f4
	ldr r1, _0211BC3C ; =0x020A1640
	ldr r0, _0211BC40 ; =0x0000270F
	ldrh r2, [r1, #0x14]
	cmp r2, r0
	addlo r0, r2, #1
	strloh r0, [r1, #0x14]
	b _0211BC0C
_0211B750:
	mov r0, r9
	mov r1, r11
	bl FUN_ov22_0211d828
	mov r0, r9
	bl FUN_ov22_0211ec48
	mov r0, r9
	bl FUN_ov22_0211e704
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	bl FUN_ov22_0211e830
	b _0211BC0C
_0211B780:
	mov r0, r9
	bl FUN_ov22_02120968
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211c2b8
	mov r0, r9
	bl FUN_ov22_0211ebb0
	mov r0, r9
	bl FUN_ov22_0211f33c
	mov r0, r9
	bl FUN_ov22_0211b004
	ldr r1, [r9, #0x530]
	mov r0, r9
	bl FUN_ov22_0211ee20
	ldr r0, [r9, #0xb6c]
	cmp r0, #0
	bne _0211B7D4
	ldr r0, [r9, #0xb70]
	cmp r0, #0
	beq _0211B884
_0211B7D4:
	ldr r0, [r9, #0xb78]
	cmp r0, #0
	bne _0211B828
	ldr r0, [r9, #0xb6c]
	str r7, [r9, #0x2e0]
	cmp r0, #0
	beq _0211B7FC
	mov r0, r9
	bl FUN_ov22_0211fec4
	str r0, [r9, #0x2e0]
_0211B7FC:
	ldr r0, [r9, #0xb70]
	cmp r0, #0
	beq _0211B814
	mov r0, r9
	bl FUN_ov22_0211fe88
	str r0, [r9, #0x2e0]
_0211B814:
	ldr r1, [r9, #0x2e0]
	mov r0, r9
	bl FUN_ov22_0211d110
	str r11, [r9, #0x10]
	str r11, [r9, #0x14]
_0211B828:
	mov r0, r9
	bl FUN_ov22_0211ff00
	ldr r1, [r9, #0x2e0]
	mov r0, r9
	bl FUN_ov22_0211f620
	cmp r0, #0
	mov r1, #3
	beq _0211B84C
	b _0211B858
_0211B84C:
	ldr r0, [r9, #0xb70]
	cmp r0, #0
	beq _0211B868
_0211B858:
	mov r0, r9
	mov r2, #0
	mov r3, #1
	b _0211B874
_0211B868:
	mov r2, #2
	mov r0, r9
	mov r3, r2
_0211B874:
	str r1, [sp]
	bl FUN_ov22_02121e40
	str r11, [r9, #0xb78]
	b _0211BC0C
_0211B884:
	ldr r0, _0211BC44 ; =0x02099E92
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, [r9, #0x530]
	cmpne r0, #0
	beq _0211B8F0
	ldr r0, [r5]
	ldr r1, [r9, #0x288]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x28c]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	mov r0, r9
	mov r1, #8
	bl FUN_ov22_0211a6c8
	mov r0, r9
	bl FUN_ov22_0211b324
	mov r0, r9
	bl FUN_ov22_0211fe88
	str r0, [r9, #0x2e0]
	mov r0, r9
	bl FUN_ov22_0211ff00
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8F0:
	mov r0, r9
	bl FUN_ov22_0211ff00
	ldr r0, _0211BC44 ; =0x02099E92
	ldrb r0, [r0]
	cmp r0, #0
	bne _0211BC0C
	mov r0, r9
	mov r1, r7
	bl FUN_ov22_0211f620
	cmp r0, #0
	mov r1, #3
	beq _0211B934
	mov r0, r9
	mov r2, r7
	mov r3, #1
	str r1, [sp]
	b _0211B420
_0211B934:
	mov r2, #2
	b _0211B3F8
_0211B93C:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211f33c
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	mov r1, r7
	bl FUN_ov22_0211ee20
	ldr r0, [r5]
	ldr r1, [r9, #0x27c]
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113f7c
	b _0211B6A8
_0211B978:
	mov r0, r9
	bl FUN_ov22_02120458
	mov r0, r9
	bl FUN_ov22_0211ffb8
	ldr r0, [r5]
	ldr r1, [r9, #0x288]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x28c]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r9, #0x2f4]
	mov r0, r11, lsl r0
	tst r0, #0x2a
	beq _0211B9E8
	ldr r0, [r5]
	ldr r1, [r9, #0x298]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r9, #0x29c]
	mov r2, r11
	mov r3, r4
	bl FUN_ov16_02113f7c
_0211B9E8:
	ldr r1, [r9, #0x2f4]
	mov r2, #1
	mov r0, r2, lsl r1
	tst r0, #0x1780
	ldr r0, _0211BC34 ; =0x02099F38
	mov r3, #0
	beq _0211BA84
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _0211BA68
_0211BA10: ; jump table
	b _0211BA68 ; case 0
	b _0211BA68 ; case 1
	b _0211BA68 ; case 2
	b _0211BA68 ; case 3
	b _0211BA68 ; case 4
	b _0211BA68 ; case 5
	b _0211BA68 ; case 6
	b _0211BA44 ; case 7
	b _0211BA4C ; case 8
	b _0211BA54 ; case 9
	b _0211BA5C ; case 10
	b _0211BA68 ; case 11
	b _0211BA64 ; case 12
_0211BA44:
	mov r3, r2
	b _0211BA68
_0211BA4C:
	mov r3, #2
	b _0211BA68
_0211BA54:
	mov r3, #3
	b _0211BA68
_0211BA5C:
	mov r3, #5
	b _0211BA68
_0211BA64:
	mov r3, #8
_0211BA68:
	add r1, r9, r3, lsl #2
	str r7, [r1, #0x2d0]
	ldr r0, [r0]
	ldr r1, [r9, #0x2a0]
	mov r2, #1
_0211BA7C:
	mov r3, #2
_0211BA80:
	b _0211BC08
_0211BA84:
	cmp r1, #0xb
	bne _0211BC0C
	str r2, [r9, #0x2ec]
	ldr r0, [r0]
	ldr r1, [r9, #0x2a4]
	b _0211BA7C
_0211BA9C:
	mov r0, r9
	bl FUN_ov22_0211cbc4
	mov r8, r7
	add r6, r9, #0x580
	add r5, r9, #0x33c
	mov r4, #0x20
	b _0211BB04
_0211BAB8:
	add r2, r9, r8, lsl #1
	add r3, r2, #0x500
	ldrh r1, [r3, #0x40]
	add r0, r2, #0x200
	add r12, r2, #0x300
	strh r1, [r0, #0xfc]
	ldrh r0, [r3, #0x50]
	add r10, r9, r8
	mov r2, r4
	strh r0, [r12, #0xc]
	ldrb lr, [r10, #0x560]
	add r0, r6, r8, lsl #5
	add r1, r5, r8, lsl #5
	strb lr, [r10, #0x31c]
	strb r7, [r10, #0x324]
	ldrh r3, [r3, #0x70]
	strh r3, [r12, #0x2c]
	bl MI_CpuCopy8
	add r8, r8, #1
_0211BB04:
	cmp r8, #8
	blt _0211BAB8
	mov r8, #0
	mov r1, #0xc
	b _0211BB70
_0211BB18:
	mla r0, r8, r1, r9
	add r2, r0, #0x600
	ldrh r4, [r2, #0x80]
	add r3, r0, #0x400
	add r8, r8, #1
	strh r4, [r3, #0xec]
	ldrh r4, [r2, #0x82]
	strh r4, [r3, #0xee]
	ldrh r2, [r2, #0x84]
	strh r2, [r3, #0xf0]
	ldrb r2, [r0, #0x686]
	strb r2, [r0, #0x4f2]
	ldrb r2, [r0, #0x687]
	strb r2, [r0, #0x4f3]
	ldrb r2, [r0, #0x688]
	strb r2, [r0, #0x4f4]
	ldrb r2, [r0, #0x689]
	strb r2, [r0, #0x4f5]
	ldrb r3, [r0, #0x68a]
	ldrb r2, [r0, #0x68b]
	strb r3, [r0, #0x4f6]
	strb r2, [r0, #0x4f7]
_0211BB70:
	cmp r8, #3
	blt _0211BB18
	add r0, r9, #0x2a4
	add r1, r9, #0x94
	add r0, r0, #0x400
	add r1, r1, #0x400
	mov r2, #0x19
	bl MI_CpuCopy8
	ldr r2, [r9, #0x53c]
	mov r0, r9
	mov r1, #3
	strb r2, [r9, #0x52b]
	str r11, [r9, #0x10]
	str r11, [r9, #0x14]
	bl FUN_ov22_0211a6b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BBB0:
	mov r0, r9
	bl FUN_ov22_02120e44
	mov r0, r9
	bl FUN_ov22_0211f33c
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	bl FUN_ov22_0212051c
	mov r2, r11
	str r2, [r9, #0x2e8]
	b _0211BBFC
_0211BBDC:
	mov r0, r9
	bl FUN_ov22_02120968
	mov r0, r9
	bl FUN_ov22_0211b004
	mov r0, r9
	bl FUN_ov22_021209f8
	mov r2, r11
	str r2, [r9, #0x2ec]
_0211BBFC:
	ldr r0, [r5]
	ldr r1, [r9, #0x2a4]
_0211BC04:
	mov r3, r4
_0211BC08:
	bl FUN_ov16_02113f7c
_0211BC0C:
	mov r0, r9
	bl FUN_ov22_0211acec
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r9, #0x15c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC30: .word unk_02099ED4
_0211BC34: .word unk_02099F38
_0211BC38: .word unk_02099E8C
_0211BC3C: .word unk_020A1640
_0211BC40: .word 0x0000270F
_0211BC44: .word unk_02099E92
	arm_func_end FUN_ov22_0211b324

	arm_func_start FUN_ov22_0211bc48
FUN_ov22_0211bc48: ; 0x0211BC48
	mov r3, #6
	str r1, [r0, #0x164]
	str r2, [r0, #0x168]
	str r3, [r0, #0x15c]
	bx lr
	arm_func_end FUN_ov22_0211bc48

	arm_func_start FUN_ov22_0211bc5c
FUN_ov22_0211bc5c: ; 0x0211BC5C
	stmfd sp!, {r4, lr}
	ldr r1, _0211BC98 ; =0x02099ED4
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x164]
	cmp r0, #0x7a
	beq _0211BC8C
	mov r0, #6
	bl FUN_ov16_020f153c
_0211BC8C:
	mov r0, #7
	str r0, [r4, #0x15c]
	ldmfd sp!, {r4, pc}
_0211BC98: .word unk_02099ED4
	arm_func_end FUN_ov22_0211bc5c

	arm_func_start FUN_ov22_0211bc9c
FUN_ov22_0211bc9c: ; 0x0211BC9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r1, [r0]
	mov r8, r0
	ldr r1, [r1, #0x58]
	ldr r9, _0211C0DC ; =0x02099E97
	ldr r10, _0211C0E0 ; =0x02099E8C
	mov r4, #0
	mov r5, #1
	blx r1
	cmp r0, #0
	ldreq r0, [r8, #0xb68]
	cmpeq r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r2, [r8, #0x164]
	ldr r6, [r8, #0x168]
	cmp r2, r6
	cmpeq r2, #0
	bne _0211C098
	ldr r0, [r8, #0x47c]
	cmp r0, #0
	beq _0211BEE8
	ldr r1, _0211C0E4 ; =0x02099E91
	mov r0, r8
	strb r5, [r1]
	bl FUN_ov22_0211fcb8
	ldrb r0, [r10]
	cmp r0, #0
	bne _0211BD50
	ldr r7, _0211C0E8 ; =0x020AF81C
	mov r6, #2
	mov r0, r7
	mov r1, r6
	bl FUN_02044680
	ldr r1, _0211C0EC ; =0x02099EF4
	ldr r3, _0211C0F0 ; =0x02099E90
	str r0, [r1]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	strb r5, [r3]
	bl FUN_02044754
	mov r0, r7
	bl FUN_0204457c
_0211BD50:
	ldr r0, [r8, #0x4d0]
	mov r1, #0
	mov r6, r1
	mov r7, r1
	cmp r0, #0
	beq _0211BD7C
	cmp r0, #1
	beq _0211BD9C
	cmp r0, #2
	beq _0211BDE0
	b _0211BE2C
_0211BD7C:
	ldrb r1, [r8, #0x325]
	add r2, r8, #0x300
	add r0, r8, #0x200
	cmp r1, #0
	ldrh r1, [r0, #0xfe]
	ldrb r6, [r8, #0x31d]
	ldrh r7, [r2, #0x2e]
	b _0211BE18
_0211BD9C:
	ldr r0, [r8, #0x444]
	cmp r0, #0
	beq _0211BDC4
	ldrb r1, [r8, #0x326]
	add r0, r8, #0x300
	ldrb r6, [r8, #0x31e]
	cmp r1, #0
	ldrh r1, [r0]
	ldrh r7, [r0, #0x30]
	b _0211BE18
_0211BDC4:
	ldrb r1, [r8, #0x327]
	add r0, r8, #0x300
	ldrb r6, [r8, #0x31f]
	cmp r1, #0
	ldrh r1, [r0, #2]
	ldrh r7, [r0, #0x32]
	b _0211BE18
_0211BDE0:
	mov r2, #4
_0211BDE4:
	add r0, r8, r2, lsl #2
	ldr r0, [r0, #0x45c]
	cmp r0, #0
	beq _0211BE20
	add r3, r8, r2
	ldrb r1, [r3, #0x324]
	add r2, r8, r2, lsl #1
	add r0, r2, #0x200
	add r2, r2, #0x300
	cmp r1, #0
	ldrh r1, [r0, #0xfc]
	ldrb r6, [r3, #0x31c]
	ldrh r7, [r2, #0x2c]
_0211BE18:
	strneb r5, [r9]
	b _0211BE2C
_0211BE20:
	add r2, r2, #1
	cmp r2, #8
	blt _0211BDE4
_0211BE2C:
	ldr r9, _0211C0F4 ; =0x0209BA20
	mov r0, r9
	bl FUN_020727a8
	mov r0, r9
	mov r1, r6
	bl FUN_020726e4
	mov r0, r9
	mov r1, r7
	bl FUN_020729dc
	ldrb r0, [r8, #0x52b]
	cmp r0, #0
	beq _0211BE68
	mov r0, r9
	mov r1, #0
	bl FUN_0204eb4c
_0211BE68:
	ldrb r0, [r10]
	cmp r0, #0
	bne _0211BED8
	ldr r6, _0211C0E8 ; =0x020AF81C
	mov r1, #0xa
	mov r0, r6
	mov r2, #3
	str r4, [sp, #8]
	bl FUN_02044668
	add r3, sp, #8
	mov r0, r6
	mov r1, r5
	mov r2, #0x80
	bl FUN_02044ea4
	mov r1, r0
	ldr r2, _0211C0F8 ; =0x00004016
	str r5, [sp]
	mov r3, #2
	str r3, [sp, #4]
	mov r0, r6
	mov r3, r5
	bl FUN_02045064
	mov r1, r0
	mov r0, r6
	bl FUN_02044f78
	add sp, sp, #0xc
	str r5, [r8, #0xb68]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BED8:
	mov r0, #2
	bl FUN_02029d44
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BEE8:
	ldrb r0, [r10]
	cmp r0, #0
	beq _0211BF00
	ldr r0, _0211C0F4 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204eb4c
_0211BF00:
	ldr r12, _0211C0E4 ; =0x02099E91
	ldr r7, _0211C0F0 ; =0x02099E90
	ldr r3, _0211C0FC ; =0x02099E96
	mov r6, #0x10
	ldr r0, _0211C100 ; =0x0209A050
	mov r1, r4
	mov r2, r6
	strb r4, [r12]
	strb r4, [r7]
	strb r4, [r9]
	strb r4, [r3]
	bl MI_CpuFill8
	ldr r0, _0211C104 ; =0x0209A060
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r6, #8
	ldr r0, _0211C108 ; =0x02099F80
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _0211C10C ; =0x02099F88
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _0211C110 ; =0x0209A090
	mov r1, r4
	mov r2, #0x19
	bl MI_CpuFill8
	ldr r1, _0211C114 ; =0x02099E9A
	ldr r0, _0211C118 ; =0x02099E9C
	strb r4, [r1]
	ldr r1, _0211C11C ; =0x02099E9D
	strb r4, [r0]
	ldr r0, _0211C120 ; =0x02099E99
	strb r4, [r1]
	ldr r1, _0211C124 ; =0x02099EA0
	strb r4, [r0]
	ldr r0, _0211C128 ; =0x02099E8D
	strh r4, [r1]
	strb r4, [r0]
	ldr r0, [r8, #0xb6c]
	cmp r0, #0
	ldreq r0, [r8, #0xb74]
	cmpeq r0, #0
	beq _0211BFCC
	ldr r0, [r8, #4]
	mov r1, #0
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFCC:
	ldr r0, [r8, #0xb70]
	cmp r0, #0
	beq _0211BFFC
	ldr r5, [r8, #4]
	mov r1, r4
	mov r0, r5
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	mov r0, r5
	mov r1, #1
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211BFFC:
	ldrb r0, [r10]
	cmp r0, #0
	beq _0211C054
	ldr r6, _0211C0EC ; =0x02099EF4
	str r4, [sp]
	ldr r3, [r6]
	ldr r0, _0211C0E8 ; =0x020AF81C
	mov r2, r5
	mov r1, #2
	bl FUN_02044690
	str r4, [r6]
	ldr r7, [r8, #4]
	mov r6, #0x83
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	b _0211C08C
_0211C054:
	ldr r0, _0211C0E8 ; =0x020AF81C
	mov r1, r6
	mov r2, r4
	bl FUN_02044668
	ldr r0, _0211C12C ; =0x020A9C40
	mov r1, r4
	bl FUN_020455a0
	ldr r5, [r8, #4]
	mov r1, r4
	mov r0, r5
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	mov r0, r5
	mov r1, #1
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
_0211C08C:
	add sp, sp, #0xc
	strb r4, [r10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C098:
	cmp r2, #0x7a
	mov r1, #0
	bne _0211C0B8
	ldr r0, [r8, #4]
	mov r2, #0x7a
	bl _ZN14CScreenManager12FUN_02041ef0E12EngineSelect9SceneType
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C0B8:
	ldr r4, [r8, #4]
	mov r0, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r2, r6
	mov r1, #1
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C0DC: .word unk_02099E97
_0211C0E0: .word unk_02099E8C
_0211C0E4: .word unk_02099E91
_0211C0E8: .word unk_020AF81C
_0211C0EC: .word unk_02099EF4
_0211C0F0: .word unk_02099E90
_0211C0F4: .word unk_0209BA20
_0211C0F8: .word 0x00004016
_0211C0FC: .word unk_02099E96
_0211C100: .word unk_0209A050
_0211C104: .word unk_0209A060
_0211C108: .word unk_02099F80
_0211C10C: .word unk_02099F88
_0211C110: .word unk_0209A090
_0211C114: .word unk_02099E9A
_0211C118: .word unk_02099E9C
_0211C11C: .word unk_02099E9D
_0211C120: .word unk_02099E99
_0211C124: .word unk_02099EA0
_0211C128: .word unk_02099E8D
_0211C12C: .word unk_020A9C40
	arm_func_end FUN_ov22_0211bc9c

	arm_func_start FUN_ov22_0211c130
FUN_ov22_0211c130: ; 0x0211C130
	ldr r12, _0211C144 ; =MI_CpuFill8
	add r0, r0, #0x2d0
	mov r1, #0
	mov r2, #0x24
	bx r12
_0211C144: .word MI_CpuFill8
	arm_func_end FUN_ov22_0211c130

	arm_func_start FUN_ov22_0211c148
FUN_ov22_0211c148: ; 0x0211C148
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x30
	mov r5, r0
	ldr r1, [r5, #0x27c]
	ldr r0, [r5, #0x280]
	ldr r2, [r5, #0x284]
	add r0, r1, r0
	ldr r1, [r5, #0x28c]
	add r0, r2, r0
	adds r0, r1, r0
	mov r4, #0
	addne sp, sp, #0x30
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r7, sp, #0x18
	mov r6, #0x18
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r10, #1
	ldr r0, _0211C2B4 ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	mov r2, r10
	bl FUN_ov16_02112724
	str r0, [r5, #0x27c]
	mov r2, #0x190
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, r1, #1
	mov r1, #0x2b
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r0, r5
	mov r1, r7
	str r4, [sp, #0x24]
	strh r4, [sp, #0x28]
	strh r4, [sp, #0x2a]
	strh r2, [sp, #0x2c]
	strb r10, [sp, #0x2e]
	bl FUN_ov22_0211a9d0
	add r9, sp, #0
	mov r2, r6
	mov r0, r9
	mov r1, r4
	bl MI_CpuFill8
	mov r8, #9
	mov r0, #0x20
	mov r7, #0x30
	strh r0, [sp, #0xe]
	rsb r6, r8, #0x198
	mov r0, r5
	mov r1, r9
	str r10, [sp]
	str r4, [sp, #8]
	strh r10, [sp, #0x10]
	str r10, [sp, #0x14]
	str r8, [sp, #4]
	strh r7, [sp, #0xc]
	strh r6, [sp, #0x12]
	bl FUN_ov22_02121c34
	mov r0, #2
	str r0, [sp]
	strh r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x60
	strh r0, [sp, #0xe]
	mov r0, r5
	mov r1, r9
	str r8, [sp, #4]
	strh r7, [sp, #0xc]
	strh r6, [sp, #0x12]
	str r10, [sp, #0x14]
	bl FUN_ov22_02121c34
	mov r2, #4
	str r2, [sp]
	strh r2, [sp, #0x10]
	mov r2, #0xd0
	strh r2, [sp, #0xc]
	mov r2, #0xa8
	mov r0, r5
	mov r1, r9
	strh r6, [sp, #0x12]
	str r10, [sp, #0x14]
	str r4, [sp, #4]
	str r4, [sp, #8]
	strh r2, [sp, #0xe]
	bl FUN_ov22_02121c34
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C2B4: .word unk_02099F38
	arm_func_end FUN_ov22_0211c148

	arm_func_start FUN_ov22_0211c2b8
FUN_ov22_0211c2b8: ; 0x0211C2B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	mov r4, r0
	bl FUN_ov22_0211a81c
	mov r7, #1
	mov r0, r4
	mov r1, r7
	bl FUN_ov22_0211a81c
	mov r6, #2
	mov r0, r4
	mov r1, r6
	bl FUN_ov22_0211a81c
	mov r5, #4
	mov r0, r4
	mov r1, r5
	bl FUN_ov22_0211a81c
	ldr r4, _0211C324 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C324: .word unk_02099EB4
	arm_func_end FUN_ov22_0211c2b8

	arm_func_start FUN_ov22_0211c328
FUN_ov22_0211c328: ; 0x0211C328
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #0x10
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x2fc
	bl MI_CpuFill8
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x30c
	bl MI_CpuFill8
	mov r4, #8
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x31c
	bl MI_CpuFill8
	mov r2, r4
	add r0, r7, #0x324
	mov r1, r6
	bl MI_CpuFill8
	mov r2, r5
	add r0, r7, #0x32c
	mov r1, r6
	bl MI_CpuFill8
	add r0, r7, #0x33c
	mov r1, r6
	mov r2, #0x100
	bl MI_CpuFill8
	add r0, r7, #0x3c
	add r0, r0, #0x400
	mov r1, r6
	mov r4, #0x20
	mov r2, r4
	bl MI_CpuFill8
	mov r2, r4
	add r0, r7, #0x5c
	add r0, r0, #0x400
	mov r1, r6
	bl MI_CpuFill8
	str r6, [r7, #0x47c]
	str r6, [r7, #0x490]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov22_0211c328

	arm_func_start FUN_ov22_0211c3d4
FUN_ov22_0211c3d4: ; 0x0211C3D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	mov r6, #0
	mov r4, #0x34
	add r5, sp, #0x44
	str r0, [sp]
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r11, r6
	bl MI_CpuFill8
	ldr r7, _0211C730 ; =0x0209BA20
	mov r1, r6
	mov r0, r7
	bl FUN_0205107c
	mov r9, r0
	mov r0, r7
	mov r1, r6
	bl FUN_020724c8
	ldr r1, [sp]
	mov r7, r0
	ldr r0, _0211C734 ; =0x02122CF0
	add r1, r1, #0x190
	bl FUN_ov16_020f3054
	ldr r0, [sp]
	mov r2, r4
	ldr r0, [r0, #0x190]
	mov r1, r5
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, #3
	bl FUN_ov22_0211a6f4
_0211C454:
	mov r0, r6, lsl #2
	ldrh r0, [r5, r0]
	add r1, r5, r6, lsl #2
	cmp r7, r0
	ldrh r0, [r1, #2]
	blt _0211C47C
	cmp r7, r0
	ldrle r0, [sp]
	addle r1, r6, #1
	strle r1, [r0, #0x490]
_0211C47C:
	add r6, r6, #1
	cmp r6, #0xd
	blt _0211C454
	mov r8, #0
	ldr r5, _0211C730 ; =0x0209BA20
	mov r10, r8
	mov r4, #0x25
_0211C498:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0211C4EC
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211C4EC
	mov r0, r6
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r9
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211C4EC
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, r11
	bl FUN_0204f02c
	cmp r8, r0
	movlt r8, r0
_0211C4EC:
	add r10, r10, #1
	cmp r10, #0x64
	blt _0211C498
	sub r0, r8, r7
	cmp r0, #0xa
	ldrge r0, [sp]
	mov r2, #0x24
	ldrge r0, [r0, #0x490]
	subge r1, r0, #2
	ldrge r0, [sp]
	strge r1, [r0, #0x490]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, sp, #0x20
	bl MI_CpuFill8
	ldr r0, _0211C738 ; =0x02122660
	add r3, sp, #0x14
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
_0211C544:
	mov r0, #0
	str r0, [sp, #0xc]
	add r8, sp, #0x20
	mov r4, #0x24
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [sp]
	add r2, sp, #0x14
	add r1, r0, #0x1a8
	ldr r0, [sp, #4]
	ldr r0, [r2, r0, lsl #2]
	bl FUN_ov16_020f3054
	ldr r0, [sp]
	mov r2, r4
	ldr r0, [r0, #0x1a8]
	mov r1, r8
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, #5
	bl FUN_ov22_0211a6f4
	ldr r0, [sp, #0xc]
	ldr r5, _0211C730 ; =0x0209BA20
	str r0, [sp, #8]
	mov r4, #0x25
	mov r11, #0
_0211C5B0:
	ldr r0, [sp, #8]
	mov r10, #0
	mov r6, r0, lsl #1
_0211C5BC:
	mov r0, r10
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _0211C634
	bl FUN_0206d64c
	cmp r0, #0
	beq _0211C634
	mov r0, r7
	bl FUN_0206cc00
	mov r1, r0
	mov r0, r9
	bl FUN_0204fca0
	cmp r0, #0
	beq _0211C634
	mov r0, r7
	bl FUN_0206cbf8
	ldrh r1, [r8, r6]
	cmp r1, r0
	bne _0211C634
	mov r1, r7
	mov r0, r5
	mov r2, r4
	mov r3, r11
	bl FUN_0204f02c
	ldrh r1, [sp, #0x40]
	cmp r0, r1
	ldrge r0, [sp, #0xc]
	addge r0, r0, #1
	strge r0, [sp, #0xc]
	bge _0211C640
_0211C634:
	add r10, r10, #1
	cmp r10, #0x64
	blt _0211C5BC
_0211C640:
	ldrh r1, [sp, #0x42]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0211C678
	ldr r0, [sp]
	ldr r1, [r0, #0x490]
	ldr r0, [sp, #4]
	rsb r0, r0, #3
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #0x490]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0211C68C
_0211C678:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x10
	blt _0211C5B0
_0211C68C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0211C6AC
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _0211C544
_0211C6AC:
	ldr r0, [sp]
	ldr r0, [r0, #0x490]
	cmp r0, #0xe
	beq _0211C6E4
	cmp r0, #0xf
	beq _0211C6DC
	cmp r0, #0x10
	bne _0211C6F8
	mov r0, #3
	bl FUN_ov16_020ef928
	add r1, r0, #0xe
	b _0211C6F0
_0211C6DC:
	mov r0, #3
	b _0211C6E8
_0211C6E4:
	mov r0, #2
_0211C6E8:
	bl FUN_ov16_020ef928
	add r1, r0, #0xd
_0211C6F0:
	ldr r0, [sp]
	str r1, [r0, #0x490]
_0211C6F8:
	ldr r0, [sp]
	ldr r0, [r0, #0x490]
	cmp r0, #1
	ldrlt r0, [sp]
	movlt r1, #1
	strlt r1, [r0, #0x490]
	ldr r0, [sp]
	ldr r0, [r0, #0x490]
	cmp r0, #0x10
	ldrgt r0, [sp]
	movgt r1, #0x10
	strgt r1, [r0, #0x490]
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C730: .word unk_0209BA20
_0211C734: .word ov22_02122CF0
_0211C738: .word ov22_02122660
	arm_func_end FUN_ov22_0211c3d4

	arm_func_start FUN_ov22_0211c73c
FUN_ov22_0211c73c: ; 0x0211C73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x7c
	mov r5, #0
	mov r8, #0x3c
	add r4, sp, #0x40
	mov r6, r0
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MI_CpuFill8
	add r7, sp, #0
	mov r1, r5
	mov r0, r7
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r1, _0211C82C ; =0x02122D14
	ldr r2, _0211C830 ; =0x02122D20
	ldr r3, [r6, #0x490]
	mov r0, r7
	bl sprintf
	mov r0, r7
	add r1, r6, #0x19c
	bl FUN_ov16_020f3054
	ldr r0, [r6, #0x19c]
	mov r2, r8
	mov r1, r4
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, #4
	bl FUN_ov22_0211a6f4
	mov r0, #0x12c
	bl FUN_ov16_020ef928
	mov r1, #0x14
_0211C7C0:
	mla r2, r5, r1, r4
	ldrb r2, [r2, #0x13]
	cmp r0, r2
	ldrlo r0, _0211C834 ; =0x02099E8D
	strlob r5, [r0]
	blo _0211C7E8
	add r5, r5, #1
	cmp r5, #3
	sub r0, r0, r2
	blt _0211C7C0
_0211C7E8:
	add r0, r6, #0x94
	add r0, r0, #0x400
	mov r1, #0
	mov r2, #0x19
	bl MI_CpuFill8
	ldr r0, _0211C834 ; =0x02099E8D
	add r2, sp, #0x40
	ldrb r3, [r0]
	mov r1, #0x14
	add r0, r6, #0x94
	mla r2, r3, r1, r2
	ldr r1, _0211C838 ; =0x02122D40
	ldr r3, _0211C83C ; =0x02122D48
	add r0, r0, #0x400
	bl sprintf
	add sp, sp, #0x7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C82C: .word ov22_02122D14
_0211C830: .word ov22_02122D20
_0211C834: .word unk_02099E8D
_0211C838: .word ov22_02122D40
_0211C83C: .word ov22_02122D48
	arm_func_end FUN_ov22_0211c73c

	arm_func_start FUN_ov22_0211c840
FUN_ov22_0211c840: ; 0x0211C840
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b8
	mov r5, r0
	bl FUN_ov22_0211c3d4
	mov r0, r5
	bl FUN_ov22_0211c73c
	add r4, sp, #0x138
	mov r6, #0
	mov r8, #0x80
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl MI_CpuFill8
	add r7, sp, #0xb8
	mov r1, r6
	mov r0, r7
	mov r2, r8
	bl MI_CpuFill8
	add r10, sp, #0x78
	mov r9, #0x40
	mov r1, r6
	mov r0, r10
	mov r2, r9
	bl MI_CpuFill8
	mov r2, r9
	add r9, sp, #0x38
	mov r1, r6
	mov r0, r9
	bl MI_CpuFill8
	ldr r1, _0211CBB8 ; =0x02122D50
	ldr r2, _0211CBBC ; =0x02122D5C
	ldr r3, [r5, #0x490]
	mov r0, r9
	bl sprintf
	mov r0, r9
	add r1, r5, #0x1b4
	bl FUN_ov16_020f3054
	ldr r0, [r5, #0x1b4]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r1, r7
	mov r2, r8
	mov r0, r4
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, #6
	bl FUN_ov22_0211a6f4
	mov r8, r6
	mov r7, #1
	mov r9, r6
_0211C90C:
	mov r0, r9
	mov r2, r9
_0211C914:
	ldr r1, [r10, r2, lsl #2]
	cmp r1, #0
	addeq r1, r4, r2, lsl #3
	ldreqb r1, [r1, #2]
	add r2, r2, #1
	addeq r0, r0, r1
	cmp r2, #0x10
	blt _0211C914
	bl FUN_ov16_020ef928
	mov r1, r8
_0211C93C:
	ldr r2, [r10, r1, lsl #2]
	cmp r2, #0
	bne _0211C95C
	add r2, r4, r1, lsl #3
	ldrb r2, [r2, #2]
	cmp r0, r2
	strlt r7, [r10, r1, lsl #2]
	blt _0211C974
_0211C95C:
	add r2, r4, r1, lsl #3
	ldrb r2, [r2, #2]
	add r1, r1, #1
	cmp r1, #0x10
	sub r0, r0, r2
	blt _0211C93C
_0211C974:
	add r6, r6, #1
	cmp r6, #7
	blt _0211C90C
	mov r4, #0
	add r0, sp, #0
	mov r1, r4
	mov r2, #8
	bl MI_CpuFill8
_0211C994:
	mov r0, #0x10
	bl FUN_ov16_020ef928
	add r8, sp, #0x78
	mov r6, r0
	ldr r0, [r8, r6, lsl #2]
	cmp r0, #0
	beq _0211C994
	mov r7, #0x10
_0211C9B4:
	mov r0, r7
	bl FUN_ov16_020ef928
	cmp r6, r0
	ldrne r1, [r8, r0, lsl #2]
	cmpne r1, #0
	beq _0211C9B4
	add r9, sp, #0x138
	add r7, r9, r6, lsl #3
	mov r10, r6, lsl #3
	mov r1, r0, lsl #3
	ldrb r6, [r7, #2]
	ldrb lr, [r7, #3]
	ldrb r12, [r7, #4]
	ldrb r3, [r7, #5]
	ldrh r8, [r9, r10]
	ldrh r2, [r7, #6]
	ldrh r11, [r9, r1]
	add r0, r9, r0, lsl #3
	strh r8, [sp]
	strh r11, [r9, r10]
	ldrb r8, [r0, #2]
	strh r2, [sp, #6]
	add r4, r4, #1
	strb r8, [r7, #2]
	ldrb r2, [r0, #3]
	ldrh r8, [sp]
	strb r6, [sp, #2]
	strb r2, [r7, #3]
	ldrb r2, [r0, #4]
	strb lr, [sp, #3]
	strb r12, [sp, #4]
	strb r2, [r7, #4]
	ldrb r2, [r0, #5]
	strb r3, [sp, #5]
	cmp r4, #8
	strb r2, [r7, #5]
	ldrh r10, [r0, #6]
	ldrh r2, [sp, #6]
	strh r10, [r7, #6]
	strh r8, [r9, r1]
	strb r6, [r0, #2]
	strb lr, [r0, #3]
	strb r12, [r0, #4]
	strb r3, [r0, #5]
	strh r2, [r0, #6]
	blt _0211C994
	mov r4, #0
	mov r7, r4
	mov r2, r4
	add r1, sp, #0xb8
	add r3, sp, #0x78
_0211CA80:
	ldr r0, [r3, r7, lsl #2]
	cmp r0, #0
	beq _0211CAC0
	mov r0, r7, lsl #3
	ldrh r6, [r9, r0]
	mov r8, r2
_0211CA98:
	mov r0, r8, lsl #3
	ldrh r0, [r1, r0]
	cmp r6, r0
	addeq r0, r5, r4
	streqb r8, [r0, #0x480]
	addeq r4, r4, #1
	beq _0211CAC0
	add r8, r8, #1
	cmp r8, #0x10
	blt _0211CA98
_0211CAC0:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211CA80
	mov r4, #0
	add r0, sp, #8
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _0211CBC0 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	ldrh r3, [r0, #0x2a]
	mov r6, #0
	ldr r10, _0211CBC0 ; =0x0209BA20
	cmp r3, #0
	ldreqh r3, [r0, #0x20]
	add r2, r5, #0x300
	mov r0, r10
	mov r1, r6
	strh r3, [r2, #0xc]
	bl FUN_020724c8
	strb r0, [r5, #0x31c]
	add r8, sp, #0x138
	add r7, sp, #8
	add r9, sp, #0x78
_0211CB24:
	ldr r0, [r9, r6, lsl #2]
	cmp r0, #0
	beq _0211CBA4
	mov r0, r6, lsl #3
	ldrh r1, [r8, r0]
	mov r0, r10
	mov r2, r7
	bl FUN_0207273c
	mov r0, r6, lsl #3
	ldrh r2, [r8, r0]
	add r1, r5, r4, lsl #1
	add r0, r1, #0x200
	strh r2, [r0, #0xfe]
	ldrh r3, [sp, #8]
	add r1, r1, #0x300
	add r0, r5, r4
	strh r3, [r1, #0xe]
	ldrsb r1, [sp, #0xb]
	add r2, r8, r6, lsl #3
	add r3, r8, r6, lsl #3
	strb r1, [r0, #0x31d]
	ldrb r1, [r2, #4]
	cmp r1, #0
	ldrneb r1, [r2, #5]
	strneb r1, [r0, #0x31d]
	add r1, r5, r4, lsl #1
	ldrb r2, [r3, #3]
	add r1, r1, #0x300
	add r4, r4, #1
	strb r2, [r0, #0x325]
	ldrh r0, [r3, #6]
	strh r0, [r1, #0x2e]
_0211CBA4:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0211CB24
	add sp, sp, #0x1b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBB8: .word ov22_02122D50
_0211CBBC: .word ov22_02122D5C
_0211CBC0: .word unk_0209BA20
	arm_func_end FUN_ov22_0211c840

	arm_func_start FUN_ov22_0211cbc4
FUN_ov22_0211cbc4: ; 0x0211CBC4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3fc
	mov r10, r0
	add r0, r10, #0x134
	mov r11, #0
	mov r1, r11
	add r0, r0, #0x400
	mov r2, #0x630
	bl MI_CpuFill8
_0211CBE8:
	add r0, sp, #0x37c
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	mov r4, #0x1c
	add r0, sp, #0x134
	mov r1, #0
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [r10, #0xb74]
	cmp r0, #0
	beq _0211CCBC
	cmp r11, #0
	addne sp, sp, #0x3fc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D0E8 ; =0x0209A134
	ldr r0, [r0]
	cmp r0, #0
	beq _0211CD64
	ldr r0, [r0, #0x3b0]
	add r5, sp, #0x100
	ldrb r1, [r0, #0x9e]
	add r5, r5, #0x35
	add r4, r0, #0x9f
	mov r3, #3
	strb r1, [sp, #0x134]
_0211CC50:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r4, r4, #2
	subs r3, r3, #1
	strb r1, [r5, #1]
	strb r2, [r5], #2
	bne _0211CC50
	ldrb r1, [r4]
	add r3, sp, #0x100
	add r4, r0, #0xa9
	strb r1, [r5]
	ldrb r5, [r0, #0xa6]
	ldrb r1, [r0, #0xa7]
	add r3, r3, #0x3f
	mov r2, #8
	strb r5, [sp, #0x13c]
	strb r1, [sp, #0x13d]
	ldrb r0, [r0, #0xa8]
	strb r0, [sp, #0x13e]
_0211CC9C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CC9C
	b _0211CD5C
_0211CCBC:
	mov r0, r10
	mov r1, r11
	bl FUN_ov22_0211f620
	cmp r0, #0
	beq _0211D0D4
	mul r0, r11, r4
	ldr r2, [r10, #0xc]
	add r5, sp, #0x100
	ldrb r1, [r2, r0]
	add r0, r2, r0
	add r5, r5, #0x35
	add r4, r0, #1
	strb r1, [sp, #0x134]
	mov r3, #3
_0211CCF4:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r4, r4, #2
	subs r3, r3, #1
	strb r1, [r5, #1]
	strb r2, [r5], #2
	bne _0211CCF4
	ldrb r1, [r4]
	add r3, sp, #0x100
	add r4, r0, #0xb
	strb r1, [r5]
	ldrb r5, [r0, #8]
	ldrb r1, [r0, #9]
	add r3, r3, #0x3f
	mov r2, #8
	strb r5, [sp, #0x13c]
	strb r1, [sp, #0x13d]
	ldrb r0, [r0, #0xa]
	strb r0, [sp, #0x13e]
_0211CD40:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211CD40
_0211CD5C:
	ldrb r0, [r4]
	strb r0, [r3]
_0211CD64:
	mov r0, #0x18c
	mul r0, r11, r0
	ldrb r1, [sp, #0x134]
	add r7, r10, r0
	str r0, [sp, #4]
	mov r1, r1, asr #3
	str r1, [r7, #0x534]
	ldrb r0, [sp, #0x134]
	cmp r1, #1
	add r4, sp, #0xf4
	mov r0, r0, asr #1
	and r0, r0, #3
	str r0, [r7, #0x538]
	ldrb r0, [sp, #0x134]
	mov r1, #0
	mov r2, #0x40
	and r0, r0, #1
	str r0, [r7, #0x53c]
	movlt r0, #1
	strlt r0, [r7, #0x534]
	ldr r0, [r7, #0x534]
	cmp r0, #0x10
	movgt r0, #0x10
	strgt r0, [r7, #0x534]
	mov r0, r4
	bl MI_CpuFill8
	ldr r3, [r7, #0x534]
	ldr r1, _0211D0EC ; =0x02122D7C
	ldr r2, _0211D0F0 ; =0x02122D88
	mov r0, r4
	bl sprintf
	mov r0, r4
	add r1, r10, #0x1b4
	bl FUN_ov16_020f3054
	ldr r0, [r10, #0x1b4]
	add r1, sp, #0x37c
	mov r2, #0x80
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #6
	bl FUN_ov22_0211a6f4
	ldr r0, _0211D0F4 ; =0x0209BA20
	mov r1, #0
	bl FUN_0207249c
	ldrh r3, [r0, #0x2a]
	mov r6, #0
	mov r1, r6
	cmp r3, #0
	ldreqh r3, [r0, #0x20]
	mov r0, #0x18c
	mul r0, r11, r0
	add r4, r10, r0
	str r0, [sp]
	add r2, r4, #0x500
	ldr r0, _0211D0F4 ; =0x0209BA20
	strh r3, [r2, #0x50]
	bl FUN_020724c8
	strb r0, [r4, #0x560]
	add r4, sp, #0x37c
	add r5, sp, #0xc4
_0211CE54:
	mov r0, r5
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, sp, #0x134
	add r0, r0, r6
	ldrb r8, [r0, #1]
	ldr r0, _0211D0F4 ; =0x0209BA20
	mov r2, r5
	mov r1, r8, lsl #3
	ldrh r1, [r4, r1]
	add r9, r6, #1
	bl FUN_0207273c
	mov r0, r8, lsl #3
	ldrh r2, [r4, r0]
	add r0, r7, r9, lsl #1
	add r1, r0, #0x500
	strh r2, [r1, #0x40]
	ldrh r3, [sp, #0xc4]
	add r0, r7, r9
	add r2, r4, r8, lsl #3
	strh r3, [r1, #0x50]
	ldrsb r1, [sp, #0xc7]
	add r3, r4, r8, lsl #3
	add r6, r6, #1
	strb r1, [r0, #0x560]
	ldrb r1, [r2, #4]
	cmp r1, #0
	ldrneb r1, [r2, #5]
	strneb r1, [r0, #0x560]
	ldrb r2, [r3, #3]
	add r1, r7, r9, lsl #1
	add r1, r1, #0x500
	strb r2, [r0, #0x568]
	ldrh r0, [r3, #6]
	cmp r6, #7
	strh r0, [r1, #0x70]
	blt _0211CE54
	add r4, sp, #0x210
	mov r8, #0
	mov r0, r4
	mov r1, r8
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	add r1, r10, #0x580
	add r5, r10, r0
	add r6, r1, r0
	mov r9, #1
_0211CF18:
	cmp r8, #0
	addne r0, r5, r8, lsl #1
	moveq r1, r9
	addne r0, r0, #0x500
	ldrneh r1, [r0, #0x50]
	ldr r0, _0211D0F4 ; =0x0209BA20
	mov r2, r4
	bl FUN_0207039c
	mov r0, r4
	add r1, r6, r8, lsl #5
	mov r2, #0x20
	bl MI_CpuCopy8
	add r8, r8, #1
	cmp r8, #8
	blt _0211CF18
	add r4, sp, #0x150
	mov r5, #0
	mov r8, #0xc0
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl MI_CpuFill8
	add r6, sp, #0x84
	mov r1, r5
	mov r0, r6
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r1, _0211D0F8 ; =0x02122DA8
	ldr r2, _0211D0FC ; =0x02122DB4
	ldr r3, [r7, #0x534]
	mov r0, r6
	bl sprintf
	mov r0, r6
	add r1, r10, #0x1c0
	bl FUN_ov16_020f3054
	ldr r0, [r10, #0x1c0]
	mov r2, r8
	mov r1, r4
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #7
	bl FUN_ov22_0211a6f4
	mov r3, #0xc
	add r1, sp, #0x134
	mov r6, r3
_0211CFCC:
	add r0, r1, r5
	ldrb r2, [r0, #8]
	mla r0, r5, r6, r7
	mul r12, r2, r3
	ldrh r9, [r4, r12]
	add r8, r0, #0x600
	add r2, r4, r12
	strh r9, [r8, #0x80]
	ldrh r9, [r2, #2]
	add r5, r5, #1
	cmp r5, #3
	strh r9, [r8, #0x82]
	ldrh r9, [r2, #4]
	strh r9, [r8, #0x84]
	ldrb r8, [r2, #6]
	strb r8, [r0, #0x686]
	ldrb r8, [r2, #7]
	strb r8, [r0, #0x687]
	ldrb r8, [r2, #8]
	strb r8, [r0, #0x688]
	ldrb r8, [r2, #9]
	strb r8, [r0, #0x689]
	ldrb r8, [r2, #0xa]
	ldrb r2, [r2, #0xb]
	strb r8, [r0, #0x68a]
	strb r2, [r0, #0x68b]
	blt _0211CFCC
	add r8, sp, #0x48
	mov r6, #0
	mov r5, #0x3c
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldrb r0, [sp, #0x134]
	add r4, sp, #8
	mov r1, r6
	mov r0, r0, asr #1
	and r6, r0, #3
	mov r0, r4
	mov r2, #0x40
	bl MI_CpuFill8
	ldr r3, [r7, #0x534]
	ldr r1, _0211D100 ; =0x02122DD4
	ldr r2, _0211D104 ; =0x02122DE0
	mov r0, r4
	bl sprintf
	mov r0, r4
	add r1, r10, #0x19c
	bl FUN_ov16_020f3054
	ldr r0, [r10, #0x19c]
	mov r2, r5
	mov r1, r8
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #4
	bl FUN_ov22_0211a6f4
	mov r2, #0x14
	add r0, r10, #0x2a4
	add r1, r0, #0x400
	ldr r0, [sp]
	mla r2, r6, r2, r8
	add r0, r1, r0
	ldr r1, _0211D108 ; =0x02122E00
	ldr r3, _0211D10C ; =0x02122E08
	bl sprintf
_0211D0D4:
	add r11, r11, #1
	cmp r11, #4
	blt _0211CBE8
	add sp, sp, #0x3fc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D0E8: .word unk_0209A134
_0211D0EC: .word ov22_02122D7C
_0211D0F0: .word ov22_02122D88
_0211D0F4: .word unk_0209BA20
_0211D0F8: .word ov22_02122DA8
_0211D0FC: .word ov22_02122DB4
_0211D100: .word ov22_02122DD4
_0211D104: .word ov22_02122DE0
_0211D108: .word ov22_02122E00
_0211D10C: .word ov22_02122E08
	arm_func_end FUN_ov22_0211cbc4

	arm_func_start FUN_ov22_0211d110
FUN_ov22_0211d110: ; 0x0211D110
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r2, _0211D2F0 ; =0x02099E92
	mov r10, r0
	ldrb r0, [r2]
	mov r11, r1
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211D2F4 ; =0x0209BA20
	mov r1, #0
	bl FUN_0207249c
	ldrh r3, [r0, #0x2a]
	mov r6, #0
	add r2, r10, #0x300
	cmp r3, #0
	ldreqh r3, [r0, #0x20]
	ldr r0, _0211D2F4 ; =0x0209BA20
	mov r1, r6
	strh r3, [r2, #0xc]
	bl FUN_020724c8
	mov r1, #0x18c
	mul r1, r11, r1
	str r1, [sp, #4]
	strb r0, [r10, #0x31c]
	ldr r0, [sp, #4]
	add r1, r10, #0x580
	add r7, r10, r0
	add r8, r1, r0
	add r5, r10, #0x33c
	mov r9, r6
	mov r4, #0x20
_0211D190:
	add r0, r7, r6, lsl #1
	add r1, r0, #0x500
	ldrh r2, [r1, #0x40]
	add r3, r10, r6, lsl #1
	add r0, r3, #0x200
	strh r2, [r0, #0xfc]
	ldrh r2, [r1, #0x50]
	add r3, r3, #0x300
	add r0, r7, r6
	strh r2, [r3, #0xc]
	ldrb r0, [r0, #0x560]
	add r12, r10, r6
	mov r2, r4
	strb r0, [r12, #0x31c]
	strb r9, [r12, #0x324]
	ldrh r12, [r1, #0x70]
	add r0, r8, r6, lsl #5
	add r1, r5, r6, lsl #5
	strh r12, [r3, #0x2c]
	bl MI_CpuCopy8
	add r6, r6, #1
	cmp r6, #8
	blt _0211D190
	ldr r0, [sp, #4]
	mov r3, #0xc
	add r2, r10, r0
_0211D1F8:
	mul r0, r9, r3
	add r1, r2, r0
	add r4, r1, #0x600
	ldrh r6, [r4, #0x80]
	add r0, r10, r0
	add r5, r0, #0x400
	strh r6, [r5, #0xec]
	ldrh r6, [r4, #0x82]
	add r9, r9, #1
	cmp r9, #3
	strh r6, [r5, #0xee]
	ldrh r4, [r4, #0x84]
	strh r4, [r5, #0xf0]
	ldrb r4, [r1, #0x686]
	strb r4, [r0, #0x4f2]
	ldrb r4, [r1, #0x687]
	strb r4, [r0, #0x4f3]
	ldrb r4, [r1, #0x688]
	strb r4, [r0, #0x4f4]
	ldrb r4, [r1, #0x689]
	strb r4, [r0, #0x4f5]
	ldrb r4, [r1, #0x68a]
	ldrb r1, [r1, #0x68b]
	strb r4, [r0, #0x4f6]
	strb r1, [r0, #0x4f7]
	blt _0211D1F8
	mov r0, #0x18c
	mul r4, r11, r0
	add r0, r10, #0x2a4
	add r0, r0, #0x400
	add r1, r10, #0x94
	add r0, r0, r4
	add r1, r1, #0x400
	mov r2, #0x19
	bl MI_CpuCopy8
	add r0, r10, r4
	ldr r2, [r0, #0x53c]
	mov r0, r10
	mov r1, r11
	strb r2, [r10, #0x52b]
	bl FUN_ov22_0211f620
	cmp r0, #0
	mov r1, #3
	beq _0211D2AC
	b _0211D2B8
_0211D2AC:
	ldr r0, [r10, #0xb70]
	cmp r0, #0
	beq _0211D2C8
_0211D2B8:
	mov r0, r10
	mov r2, #0
	mov r3, #1
	b _0211D2D4
_0211D2C8:
	mov r2, #2
	mov r0, r10
	mov r3, r2
_0211D2D4:
	str r1, [sp]
	bl FUN_ov22_02121e40
	mov r0, #1
	str r0, [r10, #0x14]
	str r0, [r10, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D2F0: .word unk_02099E92
_0211D2F4: .word unk_0209BA20
	arm_func_end FUN_ov22_0211d110

	arm_func_start FUN_ov22_0211d2f8
FUN_ov22_0211d2f8: ; 0x0211D2F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x16c
	mov r9, #0
	add r8, sp, #0
	mov r10, r0
	mov r0, r8
	mov r1, r9
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r6, _0211D370 ; =0x0209BA20
	add r5, r10, #0x33c
	mov r7, #1
	mov r4, #0x20
_0211D32C:
	cmp r9, #0
	addne r0, r10, r9, lsl #1
	moveq r1, r7
	addne r0, r0, #0x300
	ldrneh r1, [r0, #0xc]
	mov r0, r6
	mov r2, r8
	bl FUN_0207039c
	mov r0, r8
	mov r2, r4
	add r1, r5, r9, lsl #5
	bl MI_CpuCopy8
	add r9, r9, #1
	cmp r9, #8
	blt _0211D32C
	add sp, sp, #0x16c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D370: .word unk_0209BA20
	arm_func_end FUN_ov22_0211d2f8

	arm_func_start FUN_ov22_0211d374
FUN_ov22_0211d374: ; 0x0211D374
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x140
	mov r9, #0
	mov r5, #0xc0
	add r8, sp, #0x80
	mov r10, r0
	mov r0, r8
	mov r1, r9
	mov r2, r5
	bl MI_CpuFill8
	add r7, sp, #0x40
	mov r4, #0x40
	mov r0, r7
	mov r1, r9
	mov r2, r4
	bl MI_CpuFill8
	mov r2, r4
	add r4, sp, #0
	mov r1, r9
	mov r0, r4
	bl MI_CpuFill8
	ldr r1, _0211D564 ; =0x02122E10
	ldr r2, _0211D568 ; =0x02122E1C
	ldr r3, [r10, #0x490]
	mov r0, r4
	bl sprintf
	mov r0, r4
	add r1, r10, #0x1c0
	bl FUN_ov16_020f3054
	ldr r0, [r10, #0x1c0]
	mov r2, r5
	mov r1, r8
	bl MI_CpuCopy8
	mov r0, r10
	mov r1, #7
	bl FUN_ov22_0211a6f4
	mov r5, #0xc
	mov r11, r9
	mov r6, #1
_0211D410:
	mov r0, #0
	mov r2, r0
_0211D418:
	ldr r1, [r7, r2, lsl #2]
	cmp r1, #0
	mlaeq r1, r2, r5, r8
	ldreqb r1, [r1, #7]
	add r2, r2, #1
	addeq r0, r0, r1
	cmp r2, #0x10
	blt _0211D418
	mov r4, #0xc
	bl FUN_ov16_020ef928
	mov r1, r11
	mov r2, r4
_0211D448:
	ldr r3, [r7, r1, lsl #2]
	cmp r3, #0
	bne _0211D468
	mla r3, r1, r2, r8
	ldrb r3, [r3, #7]
	cmp r0, r3
	strlt r6, [r7, r1, lsl #2]
	blt _0211D480
_0211D468:
	mla r3, r1, r4, r8
	ldrb r3, [r3, #7]
	add r1, r1, #1
	cmp r1, #0x10
	sub r0, r0, r3
	blt _0211D448
_0211D480:
	add r9, r9, #1
	cmp r9, #3
	mov r0, #0xc
	mov r4, #0
	blt _0211D410
	mov r6, r4
	mov r7, r6
	add r2, sp, #0x80
	add r5, sp, #0x40
_0211D4A4:
	ldr r1, [r5, r7, lsl #2]
	cmp r1, #0
	beq _0211D514
	mul r3, r7, r0
	mla r1, r6, r0, r10
	ldrh r9, [r2, r3]
	add r8, r1, #0x400
	add r3, r2, r3
	strh r9, [r8, #0xec]
	ldrh r11, [r3, #2]
	add r9, r10, r6
	add r6, r6, #1
	strh r11, [r8, #0xee]
	ldrh r11, [r3, #4]
	strh r11, [r8, #0xf0]
	ldrb r8, [r3, #6]
	strb r8, [r1, #0x4f2]
	ldrb r8, [r3, #7]
	strb r8, [r1, #0x4f3]
	ldrb r8, [r3, #8]
	strb r8, [r1, #0x4f4]
	ldrb r8, [r3, #9]
	strb r8, [r1, #0x4f5]
	ldrb r8, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	strb r8, [r1, #0x4f6]
	strb r3, [r1, #0x4f7]
	strb r7, [r9, #0x528]
_0211D514:
	add r7, r7, #1
	cmp r7, #0x10
	blt _0211D4A4
	mov r5, #0
	mov r1, #1
	mov r2, r5
	strb r1, [r10, #0x52b]
_0211D530:
	mla r1, r2, r0, r10
	ldrb r1, [r1, #0x4f5]
	add r2, r2, #1
	cmp r5, r1
	movlo r5, r1
	cmp r2, #3
	blt _0211D530
	mov r0, #0x64
	bl FUN_ov16_020ef928
	cmp r5, r0
	strhib r4, [r10, #0x52b]
	add sp, sp, #0x140
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D564: .word ov22_02122E10
_0211D568: .word ov22_02122E1C
	arm_func_end FUN_ov22_0211d374

	arm_func_start FUN_ov22_0211d56c
FUN_ov22_0211d56c: ; 0x0211D56C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	ldr r1, [r4, #0x27c]
	ldr r0, [r4, #0x2a8]
	ldr r2, [r4, #0x288]
	add r0, r1, r0
	ldr r1, [r4, #0x28c]
	add r0, r2, r0
	adds r0, r1, r0
	mov r7, #0
	addne sp, sp, #0x3c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, sp, #0x24
	mov r1, r7
	mov r0, r6
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r8, _0211D818 ; =0x02099F38
	mov r5, #1
	ldr r0, [r8]
	mov r2, r5
	mov r1, #0xa
	bl FUN_ov16_02112724
	str r0, [r4, #0x27c]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	str r0, [r4, #0x2a8]
	ldr r1, [sp, #0x28]
	mov r0, r4
	add r1, r1, #1
	str r1, [sp, #0x28]
	ldr r2, [r4, #0x27c]
	mov r1, #0x2b
	str r1, [sp, #0x2c]
	mov r8, #0x190
	mov r1, r6
	str r2, [sp, #0x24]
	str r7, [sp, #0x30]
	strh r7, [sp, #0x34]
	strh r7, [sp, #0x36]
	strh r8, [sp, #0x38]
	strb r5, [sp, #0x3a]
	bl FUN_ov22_0211a9d0
	ldr r1, [sp, #0x28]
	sub r0, r8, #0xa
	add r1, r1, #1
	str r1, [sp, #0x28]
	ldr r3, [r4, #0x27c]
	mov r1, #0x70
	strh r0, [sp, #0x38]
	mov r0, #8
	mov r2, #0xb
	strh r1, [sp, #0x34]
	strh r0, [sp, #0x36]
	mov r0, r4
	mov r1, r6
	str r3, [sp, #0x24]
	str r2, [sp, #0x2c]
	strb r5, [sp, #0x3a]
	str r7, [sp, #0x30]
	bl FUN_ov22_0211a9d0
	mov r5, r7
	mov r10, #0x88
	ldr r9, _0211D81C ; =0x0000018F
	mov r8, #1
	b _0211D6C4
_0211D680:
	ldr r1, [sp, #0x28]
	mov r0, r4
	add r1, r1, #1
	str r1, [sp, #0x28]
	ldr r12, [r4, #0x27c]
	add r3, r7, #0x20
	mov r2, r7, lsl #5
	mov r1, r6
	str r12, [sp, #0x24]
	str r3, [sp, #0x2c]
	str r5, [sp, #0x30]
	strh r2, [sp, #0x34]
	strh r10, [sp, #0x36]
	strh r9, [sp, #0x38]
	strb r8, [sp, #0x3a]
	bl FUN_ov22_0211a9d0
	add r7, r7, #1
_0211D6C4:
	cmp r7, #8
	blt _0211D680
	ldr r2, _0211D820 ; =0x0212222C
	ldr r1, _0211D824 ; =0x0212223C
	ldrh r12, [r2, #4]
	ldrh r0, [r1, #4]
	mov r7, #1
	ldrh r3, [r1]
	str r7, [sp, #0x28]
	ldr r9, [r4, #0x2a8]
	mov r5, #0xc
	mov r6, #0
	ldrh lr, [r2, #2]
	ldrh r8, [r2]
	ldrh r1, [r1, #2]
	str r9, [sp, #0x24]
	str r5, [sp, #0x2c]
	str r6, [sp, #0x30]
	ldr r10, [r4, #0x4d0]
	strh r1, [sp, #2]
	strh r0, [sp, #4]
	rsb r2, r7, #0x18c
	add r9, sp, #6
	add r5, sp, #0
	strh lr, [sp, #8]
	strh r12, [sp, #0xa]
	mov r10, r10, lsl #1
	strh r8, [sp, #6]
	ldrsh r8, [r9, r10]
	strh r3, [sp]
	ldrsh r3, [r5, r10]
	add r1, sp, #0x24
	mov r0, r4
	strh r8, [sp, #0x34]
	strh r3, [sp, #0x36]
	strh r2, [sp, #0x38]
	strb r7, [sp, #0x3a]
	bl FUN_ov22_0211a9d0
	add r5, sp, #0xc
	mov r1, r6
	mov r0, r5
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, [r4, #0xb74]
	cmp r0, #0
	bne _0211D7B8
	mov r3, #0xb0
	mov r9, #3
	add r2, r3, #0xdf
	mov r8, #0x88
	mov r0, r4
	mov r1, r5
	str r9, [sp, #0xc]
	str r9, [sp, #0x10]
	str r6, [sp, #0x14]
	strh r8, [sp, #0x18]
	strh r3, [sp, #0x1a]
	strh r9, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	str r7, [sp, #0x20]
	bl FUN_ov22_02121c34
_0211D7B8:
	mov r1, #4
	mov r0, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xb74]
	mov r6, #0xb0
	cmp r0, #0
	mov r8, #3
	moveq r8, #0
	add r3, r6, #0xdf
	mov r7, #0xd0
	mov r5, #4
	mov r2, #1
	add r1, sp, #0xc
	mov r0, r4
	str r8, [sp, #0x14]
	strh r7, [sp, #0x18]
	strh r6, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r3, [sp, #0x1e]
	str r2, [sp, #0x20]
	bl FUN_ov22_02121c34
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D818: .word unk_02099F38
_0211D81C: .word 0x0000018F
_0211D820: .word ov22_0212222C
_0211D824: .word ov22_0212223C
	arm_func_end FUN_ov22_0211d56c

	arm_func_start FUN_ov22_0211d828
FUN_ov22_0211d828: ; 0x0211D828
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xb
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0x10
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xc
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xd
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xe
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xf
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #3
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #4
	bl FUN_ov22_0211a81c
	cmp r4, #0
	beq _0211D8C4
	mov r4, #0x20
	b _0211D8BC
_0211D8AC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov22_0211a858
	add r4, r4, #1
_0211D8BC:
	cmp r4, #0x27
	ble _0211D8AC
_0211D8C4:
	ldr r4, _0211D8E4 ; =0x02099EB4
	mov r1, #3
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #4
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, pc}
_0211D8E4: .word unk_02099EB4
	arm_func_end FUN_ov22_0211d828

	arm_func_start FUN_ov22_0211d8e8
FUN_ov22_0211d8e8: ; 0x0211D8E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r4, [r5, #0x2a8]
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x4d8]
	cmp r0, #0
	bne _0211D950
	ldr r0, [r5, #0x160]
	ldr r2, _0211DA28 ; =0x00000251
	mov r1, #1
	tst r2, r1, lsl r0
	beq _0211D930
	ldr r0, [r5, #0xb74]
	cmp r0, #0
	beq _0211D950
_0211D930:
	ldr r0, _0211DA2C ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D950:
	ldr r0, [r5, #0x4d4]
	mov r6, #0x1f
	mov r1, r6
	add r0, r0, #1
	bl _s32_div_f
	add r0, r6, r6, lsr #31
	str r1, [r5, #0x4d4]
	cmp r1, r0, asr #1
	subgt r1, r6, r1
	add r1, r1, #0x10
	orr r0, r1, r1, lsl #5
	orr r0, r0, r1, lsl #10
	mov r2, r0, lsl #0x10
	ldr r6, _0211DA2C ; =0x02099F38
	mov r1, r4
	ldr r0, [r6]
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02114204
	ldr r0, _0211DA30 ; =0x02122234
	ldr r1, _0211DA34 ; =0x02122244
	ldrh r7, [r0]
	ldrh r3, [r0, #2]
	ldrh r2, [r0, #4]
	ldrh r12, [r1]
	ldr r0, [r5, #0x4d0]
	strh r7, [sp, #4]
	ldrh lr, [r1, #2]
	strh r12, [sp, #0xa]
	ldrh r12, [r1, #4]
	strh r3, [sp, #6]
	add r1, sp, #4
	strh r2, [sp, #8]
	mov r0, r0, lsl #1
	ldrsh r0, [r1, r0]
	strh lr, [sp, #0xc]
	strh r12, [sp, #0xe]
	str r0, [sp]
	ldr r2, [r5, #0x4d0]
	add r3, sp, #0xa
	mov r2, r2, lsl #1
	ldrsh r3, [r3, r2]
	mov r7, #1
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_02113ec0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DA28: .word 0x00000251
_0211DA2C: .word unk_02099F38
_0211DA30: .word ov22_02122234
_0211DA34: .word ov22_02122244
	arm_func_end FUN_ov22_0211d8e8

	arm_func_start FUN_ov22_0211da38
FUN_ov22_0211da38: ; 0x0211DA38
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x160]
	cmp r1, #5
	beq _0211DA60
	cmp r1, #7
	beq _0211DA6C
	cmp r1, #0xa
	beq _0211DA78
	b _0211DA7C
_0211DA60:
	mov r1, #0
	bl FUN_ov22_0211dc28
	b _0211DA7C
_0211DA6C:
	mov r1, #0
	bl FUN_ov22_0211df5c
	b _0211DA7C
_0211DA78:
	bl FUN_ov22_0211e3bc
_0211DA7C:
	ldr r0, [r4, #0x4d0]
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x2f4]
	mov r2, #1
	ldr r1, [r4, #0x160]
	mov r0, r2, lsl r0
	mov r1, r2, lsl r1
	and r0, r0, #0xa0
	tst r1, #0x100
	cmpeq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov22_0211e230
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov22_0211da38

	arm_func_start FUN_ov22_0211dab8
FUN_ov22_0211dab8: ; 0x0211DAB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x7c
	mov r5, #0x18
	mov r10, r0
	str r1, [sp]
	mov r1, #0
	add r0, sp, #4
	mov r2, r5
	mov r4, #1
	mov r6, r1
	bl MI_CpuFill8
	ldr r3, _0211DC1C ; =0x02122300
	add r2, sp, #0x1c
_0211DAEC:
	ldrh r0, [r3, #2]
	ldrh r1, [r3], #4
	subs r5, r5, #1
	strh r0, [r2, #2]
	strh r1, [r2], #4
	bne _0211DAEC
	add r0, r10, #0x400
	mov r1, #0
	strh r1, [r0, #0xdc]
	strh r1, [r0, #0xe2]
	ldr r0, [sp]
	mov r2, #1
	cmp r0, #0
	moveq r1, #1
	str r1, [r10, #0x4e4]
	ldr r0, _0211DC20 ; =0x02099F38
	mov r1, #0x18
	ldr r0, [r0]
	add r9, sp, #0x1c
	bl FUN_ov16_02112724
	str r0, [r10, #0x2ac]
	mov r8, #0
	mov r7, #0x11
	ldr r5, _0211DC24 ; =0x0000018D
	add r11, sp, #4
	b _0211DB9C
_0211DB54:
	ldr r0, [sp, #8]
	ldrsh r3, [r9]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r12, [r10, #0x2ac]
	ldrsh r2, [r9, #2]
	mov r0, r10
	mov r1, r11
	str r12, [sp, #4]
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	strh r5, [sp, #0x18]
	strb r6, [sp, #0x1a]
	bl FUN_ov22_0211a9d0
	add r8, r8, #1
	add r9, r9, #4
_0211DB9C:
	cmp r8, #0x18
	blt _0211DB54
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #0x7c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #1
	str r8, [r10, #0x43c]
	b _0211DC0C
_0211DBC0:
	mov r5, r8, lsl #1
	add r7, r5, #1
	add r1, r10, r8, lsl #1
	add r0, r10, r7
	ldrb r1, [r1, #0x31c]
	ldrb r0, [r0, #0x31c]
	add r0, r1, r0
	bl FUN_ov16_020ef928
	add r1, r10, r8, lsl #1
	ldrb r1, [r1, #0x31c]
	add r8, r8, #1
	cmp r1, r0
	addhi r0, r10, r5, lsl #2
	strhi r4, [r0, #0x43c]
	addhi r0, r10, r7, lsl #2
	addls r0, r10, r7, lsl #2
	strls r4, [r0, #0x43c]
	addls r0, r10, r5, lsl #2
	str r6, [r0, #0x43c]
_0211DC0C:
	cmp r8, #4
	blt _0211DBC0
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DC1C: .word ov22_02122300
_0211DC20: .word unk_02099F38
_0211DC24: .word 0x0000018D
	arm_func_end FUN_ov22_0211dab8

	arm_func_start FUN_ov22_0211dc28
FUN_ov22_0211dc28: ; 0x0211DC28
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xc8
	mov r5, r0
	ldr r2, [r5, #0x2ac]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0xc8
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r5, #0x400
	ldrsh r6, [r1, #0xe2]
	ldr r3, _0211DD7C ; =0x55555556
	smull r2, r12, r3, r6
	add r12, r12, r6, lsr #31
	add r2, r5, r12, lsl #2
	ldr r2, [r2, #0x43c]
	cmp r2, #0
	bne _0211DC98
	add r2, r6, #1
	strh r2, [r1, #0xe2]
	ldrsh r1, [r1, #0xe2]
	cmp r1, #0x18
	cmpeq r4, #0
	addne sp, sp, #0xc8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r1, #6
	bl FUN_ov22_0211a6b8
	add sp, sp, #0xc8
	ldmfd sp!, {r4, r5, r6, pc}
_0211DC98:
	ldr r6, _0211DD80 ; =0x021223E0
	add lr, sp, #8
	mov r12, #0xc
_0211DCA4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211DCA4
	add r0, r5, #0x400
	ldrsh r2, [r0, #0xe2]
	add r0, sp, #8
	add r3, r5, #0xdc
	add r0, r0, r2, lsl #3
	stmia sp, {r0, r4}
	ldr r1, [r5, #0x2ac]
	mov r0, r5
	add r2, r2, #1
	add r3, r3, #0x400
	bl FUN_ov22_0211e488
	ldr r1, [r5, #0x4e4]
	mov r6, r0
	cmp r1, #0
	beq _0211DD04
	ldr r0, _0211DD84 ; =gL5Sound
	mov r2, #0
	ldr r1, _0211DD88 ; =0x00008001
	str r2, [r5, #0x4e4]
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211DD04:
	cmp r6, #0
	beq _0211DD50
	add r0, r5, #0x400
	ldrsh r2, [r0, #0xe2]
	mov r6, #0
	ldr r1, _0211DD7C ; =0x55555556
	add r2, r2, #1
	strh r2, [r0, #0xe2]
	ldrsh r3, [r0, #0xe2]
	mov r2, #3
	strh r6, [r0, #0xdc]
	smull r0, r12, r1, r3
	add r12, r12, r3, lsr #31
	smull r0, r1, r2, r12
	subs r12, r3, r0
	bne _0211DD50
	cmp r4, #0
	moveq r6, #1
	str r6, [r5, #0x4e4]
_0211DD50:
	add r0, r5, #0x400
	ldrsh r0, [r0, #0xe2]
	cmp r0, #0x18
	cmpeq r4, #0
	addne sp, sp, #0xc8
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, #6
	bl FUN_ov22_0211a6b8
	add sp, sp, #0xc8
	ldmfd sp!, {r4, r5, r6, pc}
_0211DD7C: .word 0x55555556
_0211DD80: .word ov22_021223E0
_0211DD84: .word gL5Sound
_0211DD88: .word 0x00008001
	arm_func_end FUN_ov22_0211dc28

	arm_func_start FUN_ov22_0211dd8c
FUN_ov22_0211dd8c: ; 0x0211DD8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #1
	mov r6, r0
	bl FUN_ov22_0211dab8
	mov r5, #0
	mov r4, #1
_0211DDA4:
	mov r0, r6
	mov r1, r4
	bl FUN_ov22_0211dc28
	add r5, r5, #1
	cmp r5, #0x18
	blt _0211DDA4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211dd8c

	arm_func_start FUN_ov22_0211ddc0
FUN_ov22_0211ddc0: ; 0x0211DDC0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x5c
	mov r10, r0
	str r1, [sp]
	mov r1, #0
	add r0, sp, #0x44
	mov r2, #0x18
	mov r6, #1
	mov r7, r1
	bl MI_CpuFill8
	ldr r4, _0211DF50 ; =0x021222C0
	add r3, sp, #4
	mov r2, #0x10
_0211DDF4:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0211DDF4
	add r0, r10, #0x400
	mov r1, #0
	strh r1, [r0, #0xdc]
	strh r1, [r0, #0xe2]
	ldr r0, [sp]
	mov r2, #1
	cmp r0, #0
	moveq r1, #1
	str r1, [r10, #0x4e4]
	ldr r0, _0211DF54 ; =0x02099F38
	mov r1, #0x10
	ldr r0, [r0]
	add r8, sp, #4
	bl FUN_ov16_02112724
	str r0, [r10, #0x2b0]
	mov r11, #0
	mov r5, #0x11
	ldr r4, _0211DF58 ; =0x0000018D
	add r9, sp, #0x44
	b _0211DEA4
_0211DE5C:
	ldr r0, [sp, #0x48]
	ldrsh r3, [r8]
	add r0, r0, #1
	str r0, [sp, #0x48]
	ldr r12, [r10, #0x2b0]
	ldrsh r2, [r8, #2]
	mov r0, r10
	mov r1, r9
	str r12, [sp, #0x44]
	str r5, [sp, #0x4c]
	str r7, [sp, #0x50]
	strh r3, [sp, #0x54]
	strh r2, [sp, #0x56]
	strh r4, [sp, #0x58]
	strb r7, [sp, #0x5a]
	bl FUN_ov22_0211a9d0
	add r11, r11, #1
	add r8, r8, #4
_0211DEA4:
	cmp r11, #0x10
	blt _0211DE5C
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #0x5c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [r10, #0x45c]
	mov r11, #0
	b _0211DF40
_0211DEC8:
	add r1, r11, #4
	add r5, r10, r1, lsl #2
	ldr r0, [r5, #0x43c]
	cmp r0, #0
	beq _0211DF3C
	mov r9, #0
	add r4, r10, r1
	b _0211DF34
_0211DEE8:
	add r8, r9, #6
	add r0, r10, r8, lsl #2
	ldr r0, [r0, #0x43c]
	cmp r0, #0
	beq _0211DF30
	add r0, r10, r8
	ldrb r1, [r4, #0x31c]
	ldrb r0, [r0, #0x31c]
	add r0, r1, r0
	bl FUN_ov16_020ef928
	ldrb r1, [r4, #0x31c]
	cmp r1, r0
	strhi r6, [r5, #0x45c]
	addhi r0, r10, r8, lsl #2
	strhi r7, [r0, #0x45c]
	addls r0, r10, r8, lsl #2
	strls r6, [r0, #0x45c]
	strls r7, [r5, #0x45c]
_0211DF30:
	add r9, r9, #1
_0211DF34:
	cmp r9, #2
	blt _0211DEE8
_0211DF3C:
	add r11, r11, #1
_0211DF40:
	cmp r11, #2
	blt _0211DEC8
	add sp, sp, #0x5c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DF50: .word ov22_021222C0
_0211DF54: .word unk_02099F38
_0211DF58: .word 0x0000018D
	arm_func_end FUN_ov22_0211ddc0

	arm_func_start FUN_ov22_0211df5c
FUN_ov22_0211df5c: ; 0x0211DF5C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x88
	mov r5, r0
	ldr r2, [r5, #0x2b0]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r5, #0x400
	ldrsh r3, [r1, #0xe2]
	add r2, r3, r3, lsr #31
	mov r2, r2, asr #1
	add r2, r5, r2, lsl #2
	ldr r2, [r2, #0x45c]
	cmp r2, #0
	bne _0211DFD0
	add r2, r3, #1
	strh r2, [r1, #0xe2]
	ldrsh r1, [r1, #0xe2]
	cmp r1, #0x10
	cmpeq r4, #0
	addne sp, sp, #0x88
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov22_0211e13c
	mov r0, r5
	mov r1, #8
	bl FUN_ov22_0211a6b8
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, pc}
_0211DFD0:
	ldr r6, _0211E0FC ; =0x02122360
	add lr, sp, #8
	mov r12, #8
_0211DFDC:
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r12, r12, #1
	bne _0211DFDC
	add r0, r5, #0x400
	ldrsh r2, [r0, #0xe2]
	add r0, sp, #8
	add r3, r5, #0xdc
	add r0, r0, r2, lsl #3
	stmia sp, {r0, r4}
	ldr r1, [r5, #0x2b0]
	mov r0, r5
	add r2, r2, #1
	add r3, r3, #0x400
	bl FUN_ov22_0211e488
	ldr r1, [r5, #0x4e4]
	mov r6, r0
	cmp r1, #0
	beq _0211E03C
	ldr r0, _0211E100 ; =gL5Sound
	mov r2, #0
	ldr r1, _0211E104 ; =0x00008002
	str r2, [r5, #0x4e4]
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211E03C:
	cmp r6, #0
	beq _0211E080
	add r0, r5, #0x400
	ldrsh r1, [r0, #0xe2]
	mov r2, #0
	strh r2, [r0, #0xdc]
	add r1, r1, #1
	strh r1, [r0, #0xe2]
	ldrsh r0, [r0, #0xe2]
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	bne _0211E0C8
	cmp r4, #0
	moveq r2, #1
	str r2, [r5, #0x4e4]
	b _0211E0C8
_0211E080:
	add r2, r5, #0x400
	ldrsh r3, [r2, #0xe2]
	cmp r3, #2
	blt _0211E0C8
	add r0, r3, r3, lsr #31
	mov r0, r0, asr #1
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x45c]
	cmp r0, #0
	beq _0211E0C8
	mov r1, r3, lsr #0x1f
	rsb r0, r1, r3, lsl #31
	adds r0, r1, r0, ror #31
	beq _0211E0C8
	ldrsh r0, [r2, #0xdc]
	cmp r0, #0x32
	movge r0, #1
	strge r0, [r5, #0x4d8]
_0211E0C8:
	add r0, r5, #0x400
	ldrsh r0, [r0, #0xe2]
	cmp r0, #0x10
	cmpeq r4, #0
	addne sp, sp, #0x88
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov22_0211e13c
	mov r0, r5
	mov r1, #8
	bl FUN_ov22_0211a6b8
	add sp, sp, #0x88
	ldmfd sp!, {r4, r5, r6, pc}
_0211E0FC: .word ov22_02122360
_0211E100: .word gL5Sound
_0211E104: .word 0x00008002
	arm_func_end FUN_ov22_0211df5c

	arm_func_start FUN_ov22_0211e108
FUN_ov22_0211e108: ; 0x0211E108
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #1
	mov r6, r0
	bl FUN_ov22_0211ddc0
	mov r5, #0
	mov r4, #1
_0211E120:
	mov r0, r6
	mov r1, r4
	bl FUN_ov22_0211df5c
	add r5, r5, #1
	cmp r5, #0x10
	blt _0211E120
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211e108

	arm_func_start FUN_ov22_0211e13c
FUN_ov22_0211e13c: ; 0x0211E13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x20
	mov r7, #0
	add r5, sp, #8
	mov r8, r0
	mov r0, r5
	mov r1, r7
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r2, _0211E224 ; =0x0212224C
	add r0, r8, #0xde
	ldrh r4, [r2]
	ldrh r3, [r2, #2]
	mov r1, r7
	strh r4, [sp]
	strh r3, [sp, #2]
	ldrh r4, [r2, #4]
	ldrh r3, [r2, #6]
	add r0, r0, #0x400
	mov r2, #4
	strh r4, [sp, #4]
	strh r3, [sp, #6]
	add r6, sp, #0
	bl MI_CpuFill8
	add r0, r8, #0x400
	ldr r1, _0211E228 ; =0x02099F38
	strh r7, [r0, #0xe2]
	ldr r0, [r1]
	mov r1, #2
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r8, #0x2b4]
	mov r4, r7
	ldr r9, _0211E22C ; =0x0000018D
	b _0211E214
_0211E1C8:
	ldr r0, [sp, #0xc]
	rsb r1, r7, #0x13
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r2, [r8, #0x2b4]
	mov r0, r8
	str r2, [sp, #8]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	ldrsh r2, [r6]
	mov r1, r5
	strh r2, [sp, #0x18]
	ldrsh r2, [r6, #2]
	strh r2, [sp, #0x1a]
	strh r9, [sp, #0x1c]
	strb r4, [sp, #0x1e]
	bl FUN_ov22_0211a9d0
	add r7, r7, #1
	add r6, r6, #4
_0211E214:
	cmp r7, #2
	blt _0211E1C8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211E224: .word ov22_0212224C
_0211E228: .word unk_02099F38
_0211E22C: .word 0x0000018D
	arm_func_end FUN_ov22_0211e13c

	arm_func_start FUN_ov22_0211e230
FUN_ov22_0211e230: ; 0x0211E230
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r4, [r5, #0x2b4]
	cmp r4, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211E2D0 ; =0x0212225C
	add r6, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	add r2, r5, #0xde
	add r3, r2, #0x400
	mov r0, r5
	mov r1, r4
	str r6, [sp]
	mov r7, #0
	mov r2, #1
	str r7, [sp, #4]
	bl FUN_ov22_0211e488
	add r1, sp, #0x10
	str r1, [sp]
	mov r6, r0
	mov r0, r5
	mov r1, r4
	add r3, r5, #0x4e0
	mov r2, #2
	str r7, [sp, #4]
	bl FUN_ov22_0211e488
	cmp r6, #0
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0xde
	mov r1, r7
	add r0, r0, #0x400
	mov r2, #4
	bl MI_CpuFill8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E2D0: .word ov22_0212225C
	arm_func_end FUN_ov22_0211e230

	arm_func_start FUN_ov22_0211e2d4
FUN_ov22_0211e2d4: ; 0x0211E2D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	mov r8, #0
	add r6, sp, #8
	mov r9, r0
	mov r0, r6
	mov r1, r8
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r1, _0211E3B0 ; =0x02122254
	mov r2, #1
	ldrh r4, [r1]
	ldrh r3, [r1, #2]
	add r0, r9, #0x400
	strh r4, [sp]
	strh r3, [sp, #2]
	ldrh r5, [r1, #4]
	ldrh r4, [r1, #6]
	ldr r3, _0211E3B4 ; =0x02099F38
	mov r1, #2
	strh r5, [sp, #4]
	strh r4, [sp, #6]
	str r2, [r9, #0x4e4]
	strh r8, [r0, #0xdc]
	strh r8, [r0, #0xe2]
	ldr r0, [r3]
	add r7, sp, #0
	bl FUN_ov16_02112724
	str r0, [r9, #0x2b8]
	mov r5, #0x11
	mov r4, r8
	ldr r10, _0211E3B8 ; =0x0000018B
	b _0211E3A0
_0211E358:
	ldr r1, [sp, #0xc]
	mov r0, r9
	add r1, r1, #1
	str r1, [sp, #0xc]
	ldr r2, [r9, #0x2b8]
	mov r1, r6
	str r2, [sp, #8]
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	ldrsh r2, [r7]
	strh r2, [sp, #0x18]
	ldrsh r2, [r7, #2]
	strh r2, [sp, #0x1a]
	strh r10, [sp, #0x1c]
	strb r4, [sp, #0x1e]
	bl FUN_ov22_0211a9d0
	add r8, r8, #1
	add r7, r7, #4
_0211E3A0:
	cmp r8, #2
	blt _0211E358
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211E3B0: .word ov22_02122254
_0211E3B4: .word unk_02099F38
_0211E3B8: .word 0x0000018B
	arm_func_end FUN_ov22_0211e2d4

	arm_func_start FUN_ov22_0211e3bc
FUN_ov22_0211e3bc: ; 0x0211E3BC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r4, r0
	ldr r0, [r4, #0x2b8]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211E47C ; =0x0212226C
	add r12, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	add r0, r4, #0x400
	ldrsh r2, [r0, #0xe2]
	add r3, r4, #0xdc
	mov r5, #0
	add r0, r12, r2, lsl #3
	stmia sp, {r0, r5}
	ldr r1, [r4, #0x2b8]
	mov r0, r4
	add r2, r2, #1
	add r3, r3, #0x400
	bl FUN_ov22_0211e488
	ldr r1, [r4, #0x4e4]
	mov r6, r0
	cmp r1, #0
	beq _0211E434
	ldr r0, _0211E480 ; =gL5Sound
	ldr r1, _0211E484 ; =0x00008003
	str r5, [r4, #0x4e4]
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211E434:
	cmp r6, #0
	beq _0211E454
	add r0, r4, #0x400
	ldrsh r1, [r0, #0xe2]
	mov r2, #0
	strh r2, [r0, #0xdc]
	add r1, r1, #1
	strh r1, [r0, #0xe2]
_0211E454:
	add r0, r4, #0x400
	ldrsh r0, [r0, #0xe2]
	cmp r0, #2
	addne sp, sp, #0x18
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov22_0211a6b8
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0211E47C: .word ov22_0212226C
_0211E480: .word gL5Sound
_0211E484: .word 0x00008003
	arm_func_end FUN_ov22_0211e3bc

	arm_func_start FUN_ov22_0211e488
FUN_ov22_0211e488: ; 0x0211E488
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r6, [sp, #0x28]
	mov r9, r1
	ldr r4, [r6, #4]
	mov r8, r2
	mov r7, r3
	cmp r4, #0xb4
	mov r5, #0
	bgt _0211E4D4
	cmp r4, #0xb4
	bge _0211E4F8
	cmp r4, #0
	bgt _0211E4C8
	beq _0211E4F0
	b _0211E4FC
_0211E4C8:
	cmp r4, #0x5a
	moveq r5, #0x4000
	b _0211E4FC
_0211E4D4:
	ldr r1, _0211E5EC ; =0x0000010E
	cmp r4, r1
	bgt _0211E4E8
	moveq r5, #0xc000
	b _0211E4FC
_0211E4E8:
	cmp r4, #0x168
	bne _0211E4FC
_0211E4F0:
	mov r5, #0
	b _0211E4FC
_0211E4F8:
	mov r5, #0x8000
_0211E4FC:
	ldrsh r2, [r7]
	ldr r1, [r6]
	cmp r2, r1
	addlt r1, r2, #6
	strlth r1, [r7]
	ldrsh r2, [r7]
	ldr r1, [r6]
	cmp r2, r1
	strgth r1, [r7]
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ldrne r1, [r6]
	strneh r1, [r7]
	ldr r0, [r0, #0x2b4]
	cmp r9, r0
	cmpeq r8, #1
	bne _0211E560
	mov r0, #0x64
	str r0, [sp]
	ldr r0, _0211E5F0 ; =0x02099F38
	ldrsh r3, [r7]
	ldr r0, [r0]
	mov r1, r9
	mov r2, r8
	b _0211E57C
_0211E560:
	ldrsh r2, [r7]
	ldr r0, _0211E5F0 ; =0x02099F38
	mov r1, r9
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r8
	mov r3, #0x64
_0211E57C:
	bl FUN_ov16_02113c60
	mov r4, #0
	ldr r10, _0211E5F0 ; =0x02099F38
	str r4, [sp]
	ldr r0, [r10]
	mov r1, r9
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211409c
	ldr r0, [r10]
	mov r1, r9
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113e30
	mov r5, #1
	str r5, [sp]
	ldr r0, [r10]
	mov r1, r9
	mov r2, r8
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldrsh r1, [r7]
	ldr r0, [r6]
	cmp r1, r0
	movlt r5, r4
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211E5EC: .word 0x0000010E
_0211E5F0: .word unk_02099F38
	arm_func_end FUN_ov22_0211e488

	arm_func_start FUN_ov22_0211e5f4
FUN_ov22_0211e5f4: ; 0x0211E5F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r4, #0
	add r5, sp, #0
	mov r6, r0
	mov r0, r5
	mov r1, r4
	mov r2, #0x18
	bl MI_CpuFill8
	mov r7, #1
	ldr r0, _0211E684 ; =0x02099F38
	str r4, [r6, #0x4e8]
	ldr r0, [r0]
	mov r1, r7
	mov r2, r7
	bl FUN_ov16_02112724
	str r0, [r6, #0x2bc]
	add r2, r7, #0x180
	mov lr, #0xe
	mov r12, #0x58
	mov r3, #0x20
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r1, #1
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r5
	str lr, [sp, #8]
	str r4, [sp, #0xc]
	strh r12, [sp, #0x10]
	strh r3, [sp, #0x12]
	strh r2, [sp, #0x14]
	strb r4, [sp, #0x16]
	bl FUN_ov22_0211a9d0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E684: .word unk_02099F38
	arm_func_end FUN_ov22_0211e5f4

	arm_func_start FUN_ov22_0211e688
FUN_ov22_0211e688: ; 0x0211E688
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x2bc]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x160]
	cmp r1, #0xb
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0x4e8]
	add r1, r1, #1
	str r1, [r0, #0x4e8]
	cmp r1, #0xf
	bne _0211E6E4
	mov r2, #1
	str r2, [sp]
	ldr r3, _0211E6F8 ; =0x02099F38
	ldr r1, [r0, #0x2bc]
	ldr r0, [r3]
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r0, _0211E6FC ; =gL5Sound
	ldr r1, _0211E700 ; =0x00008006
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, pc}
_0211E6E4:
	cmp r1, #0x32
	ldmnefd sp!, {r3, pc}
	mov r1, #0xc
	bl FUN_ov22_0211a6b8
	ldmfd sp!, {r3, pc}
_0211E6F8: .word unk_02099F38
_0211E6FC: .word gL5Sound
_0211E700: .word 0x00008006
	arm_func_end FUN_ov22_0211e688

	arm_func_start FUN_ov22_0211e704
FUN_ov22_0211e704: ; 0x0211E704
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	add r7, sp, #0x18
	mov r10, r0
	mov r0, r7
	mov r8, #0
	bl FS_InitFile
	ldr r9, [r10, #0x184]
	ldr r1, _0211E824 ; =0x02122E3C
	mov r0, r7
	str r8, [sp, #0x14]
	str r8, [sp, #0x10]
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, r8
	add r11, sp, #0x14
	ldr r5, _0211E828 ; =0x02099F38
	mov r4, #0xc
	b _0211E7C8
_0211E758:
	add r0, r10, r8, lsl #2
	ldr r0, [r0, #0x510]
	cmp r0, #0
	beq _0211E7C4
	mla r0, r8, r4, r10
	add r0, r0, #0x400
	ldrh r1, [r0, #0xee]
	mov r0, r9
	mov r2, r11
	add r3, sp, #0x10
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211E7C4
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r5]
	mov r1, r7
	str r6, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, _0211E82C ; =0x02122E54
	mov r2, #5
	bl FUN_02058a10
	add r1, r8, #0x28
	add r1, r10, r1, lsl #2
	str r0, [r1, #0x1cc]
_0211E7C4:
	add r8, r8, #1
_0211E7C8:
	cmp r8, #3
	blt _0211E758
	add r0, sp, #0x18
	bl FS_CloseFile
	mov r8, #0x28
	mov r5, #0
	ldr r4, _0211E828 ; =0x02099F38
	b _0211E814
_0211E7E8:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r4]
	bl FUN_02059004
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1cc]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	add r8, r8, #1
_0211E814:
	cmp r8, #0x2a
	ble _0211E7E8
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E824: .word ov22_02122E3C
_0211E828: .word unk_02099F38
_0211E82C: .word ov22_02122E54
	arm_func_end FUN_ov22_0211e704

	arm_func_start FUN_ov22_0211e830
FUN_ov22_0211e830: ; 0x0211E830
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	mov r9, r0
	ldr r1, [r9, #0x27c]
	ldr r0, [r9, #0x288]
	ldr r2, [r9, #0x28c]
	add r0, r1, r0
	adds r0, r2, r0
	mov r7, #0
	addne sp, sp, #0x94
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r10, #0x18
	add r0, sp, #0x7c
	mov r1, r7
	mov r2, r10
	bl MI_CpuFill8
	ldr r0, _0211EB90 ; =0x02099F38
	mov r6, #1
	ldr r0, [r0]
	mov r2, r6
	mov r1, #9
	mov r8, r7
	bl FUN_ov16_02112724
	str r0, [r9, #0x27c]
	mov r2, #0x190
	ldr r1, [sp, #0x80]
	str r0, [sp, #0x7c]
	add r0, r1, #1
	mov r1, #0x2b
	str r0, [sp, #0x80]
	str r1, [sp, #0x84]
	mov r0, r9
	add r1, sp, #0x7c
	strh r2, [sp, #0x90]
	str r7, [sp, #0x88]
	strh r7, [sp, #0x8c]
	strh r7, [sp, #0x8e]
	strb r6, [sp, #0x92]
	bl FUN_ov22_0211a9d0
	ldr r1, [sp, #0x80]
	mov r0, #0x1b
	add r1, r1, #1
	str r1, [sp, #0x80]
	ldr r1, [r9, #0x27c]
	mov r5, #0x20
	str r1, [sp, #0x7c]
	add r4, r0, #0x174
	str r0, [sp, #0x84]
	mov r0, r9
	add r1, sp, #0x7c
	str r7, [sp, #0x88]
	strh r7, [sp, #0x8c]
	strh r5, [sp, #0x8e]
	strh r4, [sp, #0x90]
	strb r6, [sp, #0x92]
	bl FUN_ov22_0211a9d0
	ldr r0, [sp, #0x80]
	mov r1, #0x60
	add r0, r0, #1
	str r0, [sp, #0x80]
	ldr r2, [r9, #0x27c]
	mov r0, r9
	strh r1, [sp, #0x8e]
	add r1, sp, #0x7c
	str r2, [sp, #0x7c]
	str r10, [sp, #0x84]
	strh r5, [sp, #0x8c]
	strh r4, [sp, #0x90]
	strb r6, [sp, #0x92]
	str r7, [sp, #0x88]
	bl FUN_ov22_0211a9d0
	add r0, r9, #0x11c
	add r11, r0, #0x400
	add r4, sp, #0x3c
	add r10, sp, #0x2c
	mov r6, r7
	add r5, sp, #0x5c
	b _0211EAEC
_0211E968:
	add r0, r9, r8, lsl #2
	ldr r0, [r0, #0x510]
	cmp r0, #0
	beq _0211EAE8
	ldr r0, [sp, #0x80]
	add r1, r8, #0x28
	add r0, r0, #1
	str r0, [sp, #0x80]
	ldr r2, [r9, #0x27c]
	mov r0, r7, lsl #4
	add r0, r0, #0x6c
	strh r0, [sp, #0x8e]
	mov r0, #0x28
	strh r0, [sp, #0x8c]
	ldr r0, _0211EB94 ; =0x0000018D
	str r1, [sp, #0x84]
	strh r0, [sp, #0x90]
	mov r0, #1
	strb r0, [sp, #0x92]
	mov r0, r9
	add r1, sp, #0x7c
	str r2, [sp, #0x7c]
	str r6, [sp, #0x88]
	bl FUN_ov22_0211a9d0
	mov r0, r5
	mov r1, r6
	mov r2, #0x20
	add r7, r7, #1
	bl MI_CpuFill8
	mov r0, #0xc
	mla r1, r8, r0, r9
	ldrb r0, [r1, #0x4f2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211EAA0
_0211E9F4: ; jump table
	b _0211EA04 ; case 0
	b _0211EA24 ; case 1
	b _0211EA24 ; case 2
	b _0211EA24 ; case 3
_0211EA04:
	add r0, r1, #0x400
	ldrh r1, [r0, #0xec]
	ldr r0, _0211EB98 ; =0x0209BA20
	bl FUN_ov16_020ee034
	movs r1, r0
	beq _0211EAE8
	mov r0, r5
	b _0211EA9C
_0211EA24:
	ldr r0, _0211EB9C ; =0x0212287C
	add r12, sp, #0x4c
	ldmia r0, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	mov r0, r4
	mov r1, r6
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r6
	mov r2, #0x10
	bl MI_CpuFill8
	mov r2, #0xc
	mla r2, r8, r2, r9
	add r2, r2, #0x400
	ldrh r2, [r2, #0xf0]
	ldr r1, _0211EBA0 ; =0x02122E6C
	mov r0, r4
	bl sprintf
	mov r0, r4
	mov r1, r10
	bl FUN_ov16_020f1f5c
	mov r2, #0xc
	mla r2, r8, r2, r9
	ldrb r12, [r2, #0x4f2]
	add r2, sp, #0x4c
	ldr r1, _0211EBA4 ; =0x02122E70
	ldr r2, [r2, r12, lsl #2]
	mov r0, r5
	mov r3, r10
_0211EA9C:
	bl sprintf
_0211EAA0:
	add r0, r11, r8, lsl #2
	str r0, [sp]
	ldrsh r2, [sp, #0x8c]
	mov r0, r9
	mov r1, r5
	add r2, r2, #0x16
	str r2, [sp, #4]
	ldrsh r2, [sp, #0x8e]
	add r2, r2, #4
	str r2, [sp, #8]
	ldrh r2, [sp, #0x90]
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	ldr r3, [sp, #0x80]
	ldr r2, [r9, #0x27c]
	add r3, r3, #3
	bl FUN_ov22_0211aa70
_0211EAE8:
	add r8, r8, #1
_0211EAEC:
	cmp r8, #3
	blt _0211E968
	mov r4, #0
	add r0, sp, #0x14
	mov r1, r4
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _0211EBA8 ; =0x02099E92
	mov r2, #1
	ldrb r0, [r0]
	mov r1, #3
	mov r3, #0
	cmp r0, #0
	ldreq r0, [r9, #0x52c]
	cmpeq r0, #0
	moveq r2, r4
	cmp r2, #0
	moveq r1, #4
	mov r0, #8
	cmp r2, #0
	moveq r3, #2
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0xd0
	mov r0, #0xa8
	str r3, [sp, #0x1c]
	ldr r3, _0211EBAC ; =0x0000018F
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	cmp r2, #0
	mov r4, #3
	moveq r4, #4
	mov r2, #1
	add r1, sp, #0x14
	mov r0, r9
	strh r4, [sp, #0x24]
	strh r3, [sp, #0x26]
	str r2, [sp, #0x28]
	bl FUN_ov22_02121c34
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EB90: .word unk_02099F38
_0211EB94: .word 0x0000018D
_0211EB98: .word unk_0209BA20
_0211EB9C: .word ov22_0212287C
_0211EBA0: .word ov22_02122E6C
_0211EBA4: .word ov22_02122E70
_0211EBA8: .word unk_02099E92
_0211EBAC: .word 0x0000018F
	arm_func_end FUN_ov22_0211e830

	arm_func_start FUN_ov22_0211ebb0
FUN_ov22_0211ebb0: ; 0x0211EBB0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r1, r6
	bl FUN_ov22_0211a81c
	mov r0, r7
	mov r1, #3
	bl FUN_ov22_0211a81c
	mov r0, r7
	mov r1, #4
	bl FUN_ov22_0211a81c
	mov r5, r6
	ldr r4, _0211EC40 ; =0x02099F38
	b _0211EC18
_0211EBE8:
	mov r0, r7
	add r1, r6, #0x20
	bl FUN_ov22_0211a858
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x51c]
	cmp r1, #0
	beq _0211EC14
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x51c]
_0211EC14:
	add r6, r6, #1
_0211EC18:
	cmp r6, #3
	blt _0211EBE8
	ldr r4, _0211EC44 ; =0x02099EB4
	mov r1, #3
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #4
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211EC40: .word unk_02099F38
_0211EC44: .word unk_02099EB4
	arm_func_end FUN_ov22_0211ebb0

	arm_func_start FUN_ov22_0211ec48
FUN_ov22_0211ec48: ; 0x0211EC48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	mov r9, r0
	mov r6, r7
	mov r8, r7
	mov r10, #1
	mov r5, #0x64
	mov r4, #0xc
	b _0211EC90
_0211EC6C:
	mov r0, r5
	bl FUN_ov16_020ef928
	mla r1, r7, r4, r9
	ldrb r1, [r1, #0x4f4]
	cmp r0, r1
	addlo r0, r9, r7, lsl #2
	movlo r8, r10
	strlo r10, [r0, #0x510]
	add r7, r7, #1
_0211EC90:
	cmp r7, #3
	blt _0211EC6C
	cmp r8, #0
	bne _0211ED04
	mov r7, #0
	mov r0, #0xc
	b _0211ECBC
_0211ECAC:
	mla r1, r7, r0, r9
	ldrb r1, [r1, #0x4f4]
	add r7, r7, #1
	add r6, r6, r1
_0211ECBC:
	cmp r7, #3
	blt _0211ECAC
	mov r0, r6
	bl FUN_ov16_020ef928
	mov r7, #0
	mov r1, #0xc
	b _0211ECFC
_0211ECD8:
	mla r2, r7, r1, r9
	ldrb r2, [r2, #0x4f4]
	cmp r0, r2
	addlo r0, r9, r7, lsl #2
	movlo r1, #1
	strlo r1, [r0, #0x510]
	blo _0211ED04
	sub r0, r0, r2
	add r7, r7, #1
_0211ECFC:
	cmp r7, #3
	blt _0211ECD8
_0211ED04:
	mov r7, #0
	ldr r11, _0211EE10 ; =0x02122E78
	ldr r6, _0211EE14 ; =0x0209BA20
	mov r5, #1
	ldr r4, _0211EE18 ; =0x02099EA0
	mov r10, #0xc
	b _0211EE04
_0211ED20:
	add r0, r9, r7, lsl #2
	ldr r0, [r0, #0x510]
	cmp r0, #0
	beq _0211EE00
	mla r1, r7, r10, r9
	ldrb r0, [r1, #0x4f2]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211EE00
_0211ED44: ; jump table
	b _0211ED54 ; case 0
	b _0211EDC0 ; case 1
	b _0211EDDC ; case 2
	b _0211EDF0 ; case 3
_0211ED54:
	add r0, r1, #0x400
	ldrh r8, [r0, #0xec]
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020ee034
	cmp r0, #0
	beq _0211EE00
	mov r1, r11
	bl STD_CompareString
	cmp r0, #0
	addeq r1, r9, r7, lsl #2
	moveq r0, #0
	streq r0, [r1, #0x510]
	beq _0211EE00
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020edeb4
	add r0, r0, #1
	cmp r0, #0x63
	bgt _0211EE00
	ldr r0, _0211EE1C ; =0x020A0700
	mov r1, r8
	ldrb r2, [r0, r8]
	add r2, r2, #1
	and r2, r2, #0xff
	bl FUN_ov16_020eef64
	b _0211EE00
_0211EDC0:
	str r5, [r9, #0x52c]
	add r0, r1, #0x400
	ldrh r1, [r4]
	ldrh r0, [r0, #0xf0]
	add r0, r1, r0
	strh r0, [r4]
	b _0211EE00
_0211EDDC:
	add r0, r1, #0x400
	ldrh r1, [r0, #0xf0]
	mov r0, r6
	bl FUN_ov16_020edf8c
	b _0211EE00
_0211EDF0:
	add r0, r1, #0x400
	ldrh r1, [r0, #0xf0]
	mov r0, r6
	bl FUN_ov16_020edfe4
_0211EE00:
	add r7, r7, #1
_0211EE04:
	cmp r7, #3
	blt _0211ED20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EE10: .word ov22_02122E78
_0211EE14: .word unk_0209BA20
_0211EE18: .word unk_02099EA0
_0211EE1C: .word unk_020A0700
	arm_func_end FUN_ov22_0211ec48

	arm_func_start FUN_ov22_0211ee20
FUN_ov22_0211ee20: ; 0x0211EE20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x7c
	mov r10, r0
	ldr r2, [r10, #0x27c]
	ldr r0, [r10, #0x288]
	ldr r3, [r10, #0x28c]
	add r0, r2, r0
	adds r0, r3, r0
	mov r5, r1
	mov r4, #0
	addne sp, sp, #0x7c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0x18
	add r0, sp, #0x64
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	add r0, sp, #0x4c
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	ldr r0, _0211F32C ; =0x02099F38
	mov r1, #1
	cmp r5, #0
	ldr r0, [r0]
	moveq r1, #0x1e
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x27c]
	ldr r1, [sp, #0x68]
	mov r2, #0x190
	add r6, r1, #1
	str r0, [sp, #0x64]
	mov r3, #0x2b
	strh r2, [sp, #0x78]
	mov r2, #1
	add r1, sp, #0x64
	mov r0, r10
	str r6, [sp, #0x68]
	str r3, [sp, #0x6c]
	str r4, [sp, #0x70]
	strh r4, [sp, #0x74]
	strh r4, [sp, #0x76]
	strb r2, [sp, #0x7a]
	bl FUN_ov22_0211a9d0
	cmp r5, #0
	addne sp, sp, #0x7c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211F330 ; =0x02099E92
	add r8, sp, #0x64
	ldrb r0, [r0]
	mov r3, #0x19
	ldr r4, _0211F334 ; =0x0000018F
	cmp r0, #0
	ldr r0, [r10, #0xb6c]
	moveq r3, #0x1a
	cmp r0, #0
	ldr r0, [r10, #0xb70]
	movne r3, #0x1c
	cmp r0, #0
	ldr r0, [sp, #0x68]
	movne r3, #0x19
	add r0, r0, #1
	str r0, [sp, #0x68]
	ldr r2, [r10, #0x27c]
	mov r9, #0
	str r2, [sp, #0x64]
	mov r2, #1
	mov r0, r10
	mov r1, r8
	str r3, [sp, #0x6c]
	str r9, [sp, #0x70]
	strh r9, [sp, #0x74]
	strh r9, [sp, #0x76]
	strh r4, [sp, #0x78]
	strb r2, [sp, #0x7a]
	bl FUN_ov22_0211a9d0
	add r11, sp, #0x31
	mov r1, r9
	mov r0, r11
	mov r2, #0x19
	bl MI_CpuFill8
	mov r1, r9
	add r0, sp, #0x20
	mov r2, #0x11
	bl MI_CpuFill8
	add r0, r10, #0x4b0
	str r0, [sp, #0x14]
	add r0, r10, #0x4c0
	str r0, [sp, #0x18]
	sub r0, r4, #4
	sub r6, r4, #9
	str r0, [sp, #0x1c]
	mov r7, r9
	mov r5, #1
	b _0211F2A0
_0211EFA0:
	mov r0, r10
	mov r1, r9
	bl FUN_ov22_0211f620
	cmp r0, #0
	beq _0211F1FC
	mov r0, r11
	mov r1, r7
	mov r2, #0x19
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_ov22_0211f804
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x14]
	add r3, r1, #1
	add r0, r0, r9, lsl #2
	str r3, [sp, #0x68]
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, r9, lsl #5
	add r0, r0, #0x28
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	mov r0, r10
	mov r1, r11
	bl FUN_ov22_0211aa70
	add r0, sp, #0x20
	mov r1, r7
	mov r2, #0x11
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x20
	bl FUN_ov22_0211f968
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x18]
	add r3, r1, #1
	add r0, r0, r9, lsl #2
	str r3, [sp, #0x68]
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, r9, lsl #5
	add r0, r0, #0x30
	str r0, [sp, #8]
	mov r0, #0x188
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	mov r0, r10
	add r1, sp, #0x20
	bl FUN_ov22_0211aa70
	ldr r1, [sp, #0x68]
	mov r0, r9, lsl #5
	add r1, r1, #1
	str r1, [sp, #0x68]
	ldr r2, [r10, #0x27c]
	add r1, r0, #0x28
	strh r1, [sp, #0x76]
	mov r1, #0x10
	str r1, [sp, #0x6c]
	mov r1, #0xc0
	strh r1, [sp, #0x74]
	mov r0, r10
	mov r1, r8
	str r2, [sp, #0x64]
	str r7, [sp, #0x70]
	strh r6, [sp, #0x78]
	strb r5, [sp, #0x7a]
	bl FUN_ov22_0211a9d0
	mov r0, r10
	mov r1, r9
	bl FUN_ov22_0211fa3c
	cmp r0, #0
	bne _0211F124
	ldr r1, [sp, #0x68]
	mov r0, r9, lsl #5
	add r1, r1, #1
	str r1, [sp, #0x68]
	ldr r2, [r10, #0x27c]
	add r1, r0, #0x20
	strh r1, [sp, #0x76]
	mov r1, #0xf
	str r1, [sp, #0x6c]
	mov r1, #0xe0
	strh r1, [sp, #0x74]
	mov r0, r10
	mov r1, r8
	str r2, [sp, #0x64]
	str r7, [sp, #0x70]
	strh r6, [sp, #0x78]
	strb r5, [sp, #0x7a]
	bl FUN_ov22_0211a9d0
_0211F124:
	mov r0, r10
	mov r1, r9
	bl FUN_ov22_0211fafc
	ldr r1, _0211F338 ; =0x66666667
	mov r4, r0
	smull r2, r0, r1, r4
	ldr r3, [sp, #0x68]
	add r1, r3, #1
	str r1, [sp, #0x68]
	ldr r2, [r10, #0x27c]
	mov r1, r4, lsr #0x1f
	add r0, r1, r0, asr #2
	mov r1, #0x14
	str r1, [sp, #0x6c]
	mov r1, #0xd8
	strh r1, [sp, #0x74]
	mov r1, #1
	strb r1, [sp, #0x7a]
	mov r1, #0xa
	str r2, [sp, #0x64]
	smull r0, r2, r1, r0
	sub r0, r4, r0
	str r0, [sp, #0x70]
	mov r0, r9, lsl #5
	add r0, r0, #0x20
	strh r0, [sp, #0x76]
	mov r0, r10
	mov r1, r8
	strh r6, [sp, #0x78]
	bl FUN_ov22_0211a9d0
	cmp r4, #0xa
	blt _0211F24C
	ldr r0, _0211F338 ; =0x66666667
	ldr r3, [sp, #0x68]
	smull r1, r2, r0, r4
	add r0, r3, #1
	str r0, [sp, #0x68]
	ldr r1, [r10, #0x27c]
	mov r0, r4, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r9, lsl #5
	add r0, r0, #0x20
	strh r0, [sp, #0x76]
	mov r0, #0x14
	str r0, [sp, #0x6c]
	mov r0, #0xd0
	strh r0, [sp, #0x74]
	mov r0, #1
	strb r0, [sp, #0x7a]
	str r1, [sp, #0x64]
	str r2, [sp, #0x70]
	strh r6, [sp, #0x78]
	mov r0, r10
	b _0211F244
_0211F1FC:
	ldr r1, [sp, #0x68]
	mov r0, r9, lsl #5
	add r1, r1, #1
	str r1, [sp, #0x68]
	ldr r2, [r10, #0x27c]
	add r1, r0, #0x26
	strh r1, [sp, #0x76]
	mov r1, #0xd
	str r1, [sp, #0x6c]
	mov r1, #0
	str r1, [sp, #0x70]
	mov r1, #0x70
	strh r1, [sp, #0x74]
	mov r1, #1
	mov r0, r10
	str r2, [sp, #0x64]
	strh r6, [sp, #0x78]
	strb r1, [sp, #0x7a]
_0211F244:
	mov r1, r8
	bl FUN_ov22_0211a9d0
_0211F24C:
	mov r0, #0xa
	str r0, [sp, #0x50]
	mov r0, #2
	str r0, [sp, #0x54]
	mov r0, #0
	strh r0, [sp, #0x58]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x4c
	strh r0, [sp, #0x5e]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, r9, #0x11
	str r0, [sp, #0x4c]
	mov r0, r9, lsl #5
	add r0, r0, #0x20
	strh r0, [sp, #0x5a]
	add r0, r9, #0xa
	strh r0, [sp, #0x5c]
	mov r0, r10
	bl FUN_ov22_02121c34
	add r9, r9, #1
_0211F2A0:
	cmp r9, #4
	blt _0211EFA0
	mov r6, #0xa8
	mov r3, #3
	mov r8, #1
	add r4, sp, #0x4c
	add r5, r6, #0xe7
	mov r7, #0
	mov r2, #0x98
	mov r0, r10
	mov r1, r4
	str r3, [sp, #0x4c]
	str r8, [sp, #0x50]
	str r7, [sp, #0x54]
	strh r2, [sp, #0x58]
	strh r6, [sp, #0x5a]
	strh r3, [sp, #0x5c]
	strh r5, [sp, #0x5e]
	str r8, [sp, #0x60]
	bl FUN_ov22_02121c34
	mov r3, #4
	mov r2, #0xd0
	mov r0, r10
	mov r1, r4
	str r3, [sp, #0x4c]
	str r7, [sp, #0x50]
	str r7, [sp, #0x54]
	strh r2, [sp, #0x58]
	strh r6, [sp, #0x5a]
	strh r3, [sp, #0x5c]
	strh r5, [sp, #0x5e]
	str r8, [sp, #0x60]
	bl FUN_ov22_02121c34
	add sp, sp, #0x7c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211F32C: .word unk_02099F38
_0211F330: .word unk_02099E92
_0211F334: .word 0x0000018F
_0211F338: .word 0x66666667
	arm_func_end FUN_ov22_0211ee20

	arm_func_start FUN_ov22_0211f33c
FUN_ov22_0211f33c: ; 0x0211F33C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r7, r0
	mov r1, r6
	bl FUN_ov22_0211a81c
	mov r0, r7
	mov r1, #3
	bl FUN_ov22_0211a81c
	mov r0, r7
	mov r1, #4
	bl FUN_ov22_0211a81c
	mov r5, r6
	mov r4, r6
	ldr r8, _0211F408 ; =0x02099F38
	ldr r9, _0211F40C ; =0x02099EB4
	b _0211F3E0
_0211F37C:
	mov r0, r7
	add r1, r6, #0x11
	bl FUN_ov22_0211a81c
	add r0, r6, #0xa
	mov r1, r0, lsl #0x10
	ldr r0, [r9]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x4b0]
	cmp r1, #0
	beq _0211F3BC
	ldr r0, [r8]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x4b0]
_0211F3BC:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x4c0]
	cmp r1, #0
	beq _0211F3DC
	ldr r0, [r8]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r4, [r0, #0x4c0]
_0211F3DC:
	add r6, r6, #1
_0211F3E0:
	cmp r6, #4
	blt _0211F37C
	ldr r4, _0211F40C ; =0x02099EB4
	mov r1, #3
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #4
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211F408: .word unk_02099F38
_0211F40C: .word unk_02099EB4
	arm_func_end FUN_ov22_0211f33c

	arm_func_start FUN_ov22_0211f410
FUN_ov22_0211f410: ; 0x0211F410
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, #0x1c
	mov r6, r0
	mov r4, #0
	mov r5, r1
	add r0, sp, #0
	mov r1, r4
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, [r6, #0xb70]
	cmp r0, #0
	beq _0211F4D8
	ldr r0, _0211F614 ; =0x0209A134
	mul r3, r5, r7
	ldr r0, [r0]
	ldr r4, [r6, #0xc]
	ldr r0, [r0, #0x3b0]
	add r1, r4, r3
	ldrb r2, [r0, #0x9e]
	add r12, r0, #0x9f
	add r5, r1, #1
	strb r2, [r4, r3]
	mov r4, #3
_0211F470:
	ldrb r3, [r12]
	ldrb r2, [r12, #1]
	add r12, r12, #2
	subs r4, r4, #1
	strb r2, [r5, #1]
	strb r3, [r5], #2
	bne _0211F470
	ldrb r2, [r12]
	add r4, r0, #0xa9
	add r3, r1, #0xb
	strb r2, [r5]
	ldrb r12, [r0, #0xa6]
	ldrb r5, [r0, #0xa7]
	mov r2, #8
	strb r12, [r1, #8]
	strb r5, [r1, #9]
	ldrb r0, [r0, #0xa8]
	strb r0, [r1, #0xa]
_0211F4B8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211F4B8
	b _0211F5F8
_0211F4D8:
	ldr r0, _0211F618 ; =0x02099E8D
	strb r4, [sp]
	ldr r1, [r6, #0x490]
	ldrb r0, [r0]
	mov r1, r1, lsl #3
	and r2, r4, #0xff
	and r1, r1, #0xff
	mov r0, r0, lsl #1
	orr r1, r2, r1
	and r0, r0, #0xff
	orr r1, r1, r0
	strb r1, [sp]
	ldrb r0, [r6, #0x52b]
	orr r0, r1, r0
	strb r0, [sp]
	add r0, sp, #1
	b _0211F52C
_0211F51C:
	add r1, r6, r4
	ldrb r1, [r1, #0x480]
	strb r1, [r0, r4]
	add r4, r4, #1
_0211F52C:
	cmp r4, #7
	blt _0211F51C
	mov r4, #0
	add r0, sp, #8
	b _0211F550
_0211F540:
	add r1, r6, r4
	ldrb r1, [r1, #0x528]
	strb r1, [r0, r4]
	add r4, r4, #1
_0211F550:
	cmp r4, #3
	blt _0211F540
	ldr r0, _0211F61C ; =0x020A0B00
	add r1, sp, #0xb
	mov r2, #0x11
	bl MI_CpuCopy8
	mov r0, #0x1c
	mov r1, #0
	strb r1, [sp, #0x1b]
	mul r2, r5, r0
	ldr r3, [r6, #0xc]
	ldrb r1, [sp]
	add r0, r3, r2
	add r4, sp, #1
	strb r1, [r3, r2]
	add r5, r0, #1
	mov r3, #3
_0211F594:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r4, r4, #2
	subs r3, r3, #1
	strb r1, [r5, #1]
	strb r2, [r5], #2
	bne _0211F594
	ldrb r1, [r4]
	add r4, sp, #0xb
	add r3, r0, #0xb
	strb r1, [r5]
	ldrb r5, [sp, #8]
	ldrb r1, [sp, #9]
	mov r2, #8
	strb r5, [r0, #8]
	strb r1, [r0, #9]
	ldrb r1, [sp, #0xa]
	strb r1, [r0, #0xa]
_0211F5DC:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211F5DC
_0211F5F8:
	ldrb r0, [r4]
	strb r0, [r3]
	mov r0, r6
	mov r1, #0xe
	bl FUN_ov22_0211a6b8
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F614: .word unk_0209A134
_0211F618: .word unk_02099E8D
_0211F61C: .word unk_020A0B00
	arm_func_end FUN_ov22_0211f410

	arm_func_start FUN_ov22_0211f620
FUN_ov22_0211f620: ; 0x0211F620
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r5, #0x1c
	mov r6, r0
	mov r4, #0
	mov r7, r1
	add r0, sp, #0
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
	mul r5, r7, r5
	ldr r0, [r6, #0xc]
	add r7, sp, #1
	ldrb r1, [r0, r5]
	add r0, r0, r5
	add r12, r0, #1
	strb r1, [sp]
	mov r3, #3
_0211F668:
	ldrb r2, [r12]
	ldrb r1, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r1, [r7, #1]
	strb r2, [r7], #2
	mov r2, #1
	bne _0211F668
	ldrb r1, [r12]
	add lr, r0, #0xb
	add r12, sp, #0xb
	strb r1, [r7]
	ldrb r7, [r0, #8]
	ldrb r1, [r0, #9]
	mov r3, #8
	strb r7, [sp, #8]
	strb r1, [sp, #9]
	ldrb r0, [r0, #0xa]
	strb r0, [sp, #0xa]
_0211F6B4:
	ldrb r1, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211F6B4
	ldrb r0, [lr]
	strb r0, [r12]
	ldrb r1, [sp]
	mov r0, r1, asr #3
	cmp r0, #1
	blt _0211F6F0
	cmp r0, #0x10
	ble _0211F6F4
_0211F6F0:
	mov r4, #1
_0211F6F4:
	mov r0, r1, asr #1
	and r0, r0, #3
	cmp r0, #2
	movgt r4, #1
	mov r3, #0
	add r1, sp, #0
_0211F70C:
	add r0, r1, r3
	ldrb r0, [r0, #1]
	add r3, r3, #1
	cmp r0, #0x10
	movhs r4, r2
	cmp r3, #7
	blt _0211F70C
	mov r3, #0
	add r1, sp, #0
_0211F730:
	add r0, r1, r3
	ldrb r0, [r0, #8]
	add r3, r3, #1
	cmp r0, #0x10
	movhs r4, r2
	cmp r3, #3
	blt _0211F730
	cmp r4, #0
	beq _0211F7F8
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r2, [r6, #0xc]
	ldrb r1, [sp]
	add r0, r2, r5
	add r4, sp, #1
	strb r1, [r2, r5]
	add r5, r0, #1
	mov r3, #3
_0211F780:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r4, r4, #2
	subs r3, r3, #1
	strb r1, [r5, #1]
	strb r2, [r5], #2
	bne _0211F780
	ldrb r1, [r4]
	add r4, sp, #0xb
	add r3, r0, #0xb
	strb r1, [r5]
	ldrb r5, [sp, #8]
	ldrb r1, [sp, #9]
	mov r2, #8
	strb r5, [r0, #8]
	strb r1, [r0, #9]
	ldrb r1, [sp, #0xa]
	strb r1, [r0, #0xa]
_0211F7C8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211F7C8
	ldrb r1, [r4]
	add sp, sp, #0x1c
	mov r0, #0
	strb r1, [r3]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F7F8:
	mov r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov22_0211f620

	arm_func_start FUN_ov22_0211f804
FUN_ov22_0211f804: ; 0x0211F804
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	mov r7, #0
	mov r5, r0
	mov r4, r2
	mov r8, r1
	add r0, sp, #0x5c
	mov r1, r7
	mov r2, #0x3c
	bl MI_CpuFill8
	mov r6, #0x1c
	add r0, sp, #0x40
	mov r1, r7
	mov r2, r6
	bl MI_CpuFill8
	mul r0, r8, r6
	ldr r2, [r5, #0xc]
	add r12, sp, #0x41
	ldrb r1, [r2, r0]
	add r0, r2, r0
	add r6, r0, #1
	strb r1, [sp, #0x40]
	mov r3, #3
_0211F860:
	ldrb r2, [r6]
	ldrb r1, [r6, #1]
	add r6, r6, #2
	subs r3, r3, #1
	strb r1, [r12, #1]
	strb r2, [r12], #2
	bne _0211F860
	ldrb r1, [r6]
	add r6, r0, #0xb
	add r3, sp, #0x4b
	strb r1, [r12]
	ldrb r12, [r0, #8]
	ldrb r1, [r0, #9]
	mov r2, #8
	strb r12, [sp, #0x48]
	strb r1, [sp, #0x49]
	ldrb r0, [r0, #0xa]
	strb r0, [sp, #0x4a]
_0211F8A8:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211F8A8
	ldrb r2, [r6]
	add r0, sp, #0
	mov r1, #0
	strb r2, [r3]
	mov r2, #0x40
	bl MI_CpuFill8
	ldrb r0, [sp, #0x40]
	add r6, sp, #0
	ldr r1, _0211F95C ; =0x02122E80
	mov r3, r0, asr #3
	cmp r3, #1
	movlt r3, #1
	cmp r3, #0x10
	ldr r2, _0211F960 ; =0x02122E8C
	movgt r3, #0x10
	mov r0, r6
	bl sprintf
	mov r0, r6
	add r1, r5, #0x19c
	bl FUN_ov16_020f3054
	add r6, sp, #0x5c
	ldr r0, [r5, #0x19c]
	mov r1, r6
	mov r2, #0x3c
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, #4
	bl FUN_ov22_0211a6f4
	ldrb r3, [sp, #0x40]
	mov r2, #0x14
	ldr r1, _0211F964 ; =0x02122EAC
	mov r3, r3, asr #1
	and r3, r3, #3
	mla r2, r3, r2, r6
	mov r0, r4
	bl sprintf
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211F95C: .word ov22_02122E80
_0211F960: .word ov22_02122E8C
_0211F964: .word ov22_02122EAC
	arm_func_end FUN_ov22_0211f804

	arm_func_start FUN_ov22_0211f968
FUN_ov22_0211f968: ; 0x0211F968
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r5, #0x1c
	mov r7, r0
	mov r6, r1
	mov r4, r2
	add r0, sp, #0
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	mul r0, r6, r5
	ldr r2, [r7, #0xc]
	add lr, sp, #1
	ldrb r1, [r2, r0]
	add r0, r2, r0
	add r12, r0, #1
	strb r1, [sp]
	mov r3, #3
_0211F9B0:
	ldrb r2, [r12]
	ldrb r1, [r12, #1]
	add r12, r12, #2
	subs r3, r3, #1
	strb r1, [lr, #1]
	strb r2, [lr], #2
	bne _0211F9B0
	ldrb r1, [r12]
	add r3, r0, #0xb
	add r12, sp, #0xb
	strb r1, [lr]
	ldrb lr, [r0, #8]
	ldrb r1, [r0, #9]
	mov r2, #8
	strb lr, [sp, #8]
	strb r1, [sp, #9]
	ldrb r0, [r0, #0xa]
	strb r0, [sp, #0xa]
_0211F9F8:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [r12, #1]
	strb r1, [r12], #2
	bne _0211F9F8
	ldrb r3, [r3]
	add r0, sp, #0xb
	mov r1, r4
	mov r2, #0x11
	strb r3, [r12]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x10]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov22_0211f968

	arm_func_start FUN_ov22_0211fa3c
FUN_ov22_0211fa3c: ; 0x0211FA3C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, #0x1c
	mov r6, r0
	mov r5, r1
	add r0, sp, #0
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mul r1, r5, r4
	ldr r2, [r6, #0xc]
	add lr, sp, #1
	ldrb r0, [r2, r1]
	add r4, r2, r1
	add r3, r4, #1
	strb r0, [sp]
	mov r2, #3
_0211FA80:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	strb r0, [lr, #1]
	strb r1, [lr], #2
	bne _0211FA80
	ldrb r0, [r3]
	add r3, sp, #0xb
	add r12, r4, #0xb
	strb r0, [lr]
	ldrb r1, [r4, #8]
	ldrb r0, [r4, #9]
	mov r2, #8
	strb r1, [sp, #8]
	strb r0, [sp, #9]
	ldrb r0, [r4, #0xa]
	strb r0, [sp, #0xa]
_0211FAC8:
	ldrb r1, [r12]
	ldrb r0, [r12, #1]
	add r12, r12, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211FAC8
	ldrb r0, [r12]
	strb r0, [r3]
	ldrb r0, [sp]
	and r0, r0, #1
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211fa3c

	arm_func_start FUN_ov22_0211fafc
FUN_ov22_0211fafc: ; 0x0211FAFC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10c
	mov r7, #0
	mov r4, r0
	mov r6, r1
	add r0, sp, #0x8c
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	mov r5, #0x1c
	add r0, sp, #0x70
	mov r1, r7
	mov r2, r5
	bl MI_CpuFill8
	mul r0, r6, r5
	ldr r2, [r4, #0xc]
	add r6, sp, #0x71
	ldrb r1, [r2, r0]
	add r0, r2, r0
	add r5, r0, #1
	strb r1, [sp, #0x70]
	mov r3, #3
_0211FB54:
	ldrb r2, [r5]
	ldrb r1, [r5, #1]
	add r5, r5, #2
	subs r3, r3, #1
	strb r1, [r6, #1]
	strb r2, [r6], #2
	bne _0211FB54
	ldrb r1, [r5]
	add r5, r0, #0xb
	add r3, sp, #0x7b
	strb r1, [r6]
	ldrb r6, [r0, #8]
	ldrb r1, [r0, #9]
	mov r2, #8
	strb r6, [sp, #0x78]
	strb r1, [sp, #0x79]
	ldrb r0, [r0, #0xa]
	strb r0, [sp, #0x7a]
_0211FB9C:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211FB9C
	ldrb r2, [r5]
	add r0, sp, #0x30
	mov r1, #0
	strb r2, [r3]
	mov r2, #0x40
	bl MI_CpuFill8
	ldrb r0, [sp, #0x70]
	add r5, sp, #0x30
	ldr r1, _0211FCA8 ; =0x02122EB8
	mov r3, r0, asr #3
	cmp r3, #1
	movlt r3, #1
	cmp r3, #0x10
	ldr r2, _0211FCAC ; =0x02122EC4
	movgt r3, #0x10
	mov r0, r5
	bl sprintf
	mov r0, r5
	add r1, r4, #0x1b4
	bl FUN_ov16_020f3054
	add r6, sp, #0x8c
	ldr r0, [r4, #0x1b4]
	mov r1, r6
	mov r2, #0x80
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, #6
	bl FUN_ov22_0211a6f4
	add r5, sp, #0
	mov r8, #0
	mov r0, r5
	mov r1, r8
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r9, _0211FCB0 ; =0x0209BA20
	add r4, sp, #0x70
_0211FC48:
	add r0, r4, r8
	ldrb r2, [r0, #1]
	add r1, r6, r2, lsl #3
	ldrb r0, [r1, #4]
	mov r2, r2, lsl #3
	cmp r0, #0
	ldrneb r0, [r1, #5]
	bne _0211FC7C
	ldrh r1, [r6, r2]
	mov r0, r9
	mov r2, r5
	bl FUN_0207273c
	ldrsb r0, [sp, #3]
_0211FC7C:
	add r8, r8, #1
	add r7, r7, r0
	cmp r8, #7
	blt _0211FC48
	ldr r3, _0211FCB4 ; =0x92492493
	mov r1, r7, lsr #0x1f
	smull r2, r0, r3, r7
	add r0, r7, r0
	add r0, r1, r0, asr #2
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211FCA8: .word ov22_02122EB8
_0211FCAC: .word ov22_02122EC4
_0211FCB0: .word unk_0209BA20
_0211FCB4: .word 0x92492493
	arm_func_end FUN_ov22_0211fafc

	arm_func_start FUN_ov22_0211fcb8
FUN_ov22_0211fcb8: ; 0x0211FCB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r6, #0x10
	ldr r1, _0211FE40 ; =0x0209A050
	mov r2, r6
	add r0, r4, #0x2fc
	bl MI_CpuCopy8
	ldr r1, _0211FE44 ; =0x0209A060
	mov r2, r6
	add r0, r4, #0x30c
	bl MI_CpuCopy8
	mov r5, #8
	ldr r1, _0211FE48 ; =0x02099F80
	mov r2, r5
	add r0, r4, #0x31c
	bl MI_CpuCopy8
	ldr r1, _0211FE4C ; =0x02099F88
	mov r2, r5
	add r0, r4, #0x324
	bl MI_CpuCopy8
	ldr r1, _0211FE50 ; =0x0209A080
	mov r2, r6
	add r0, r4, #0x32c
	bl MI_CpuCopy8
	ldr r12, _0211FE54 ; =0x02099E9A
	ldr r3, _0211FE58 ; =0x02099E9C
	mov r0, #1
	ldrb r1, [r12]
	ldrb r7, [r3]
	mov r2, #0
	mov r6, r0
_0211FD34:
	add r5, r4, r2, lsl #2
	ldr r5, [r5, #0x43c]
	cmp r5, #0
	movne r5, r0, lsl r2
	andne r8, r1, #0xff
	andne r1, r5, #0xff
	orrne r1, r8, r1
	strneb r1, [r12]
	add r5, r4, r2, lsl #2
	ldr r5, [r5, #0x45c]
	cmp r5, #0
	movne r5, r6, lsl r2
	andne r7, r7, #0xff
	andne r5, r5, #0xff
	orrne r7, r7, r5
	add r2, r2, #1
	strneb r7, [r3]
	cmp r2, #8
	blt _0211FD34
	ldr r0, [r4, #0x4d0]
	ldr r3, _0211FE5C ; =0x02099E9D
	add r5, r0, #1
	ldr r1, _0211FE60 ; =0x02099F6E
	add r0, r4, #0x480
	mov r2, #7
	strb r5, [r3]
	bl MI_CpuCopy8
	ldr r0, _0211FE64 ; =0x02099F5C
	ldr r7, _0211FE68 ; =0x02099F62
	ldr r6, _0211FE6C ; =0x02099F68
	ldr r5, _0211FE70 ; =0x02099EA6
	ldr lr, _0211FE74 ; =0x02099EA9
	mov r2, #0
	mov r3, #0xc
_0211FDBC:
	mla r1, r2, r3, r4
	add r12, r1, #0x400
	ldrh r8, [r12, #0xec]
	mov r9, r2, lsl #1
	strh r8, [r0, r9]
	ldrh r8, [r12, #0xee]
	strh r8, [r7, r9]
	ldrh r12, [r12, #0xf0]
	strh r12, [r6, r9]
	ldrb r12, [r1, #0x4f2]
	strb r12, [r5, r2]
	ldrb r1, [r1, #0x4f4]
	strb r1, [lr, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _0211FDBC
	add r0, r4, #0x128
	ldr r1, _0211FE78 ; =0x02099EAC
	add r0, r0, #0x400
	mov r2, #3
	bl MI_CpuCopy8
	add r0, r4, #0x94
	ldrb r2, [r4, #0x52b]
	ldr r1, _0211FE7C ; =0x02099E96
	ldr r3, _0211FE80 ; =0x02099E9B
	strb r2, [r1]
	ldr r4, [r4, #0x490]
	ldr r1, _0211FE84 ; =0x0209A090
	add r0, r0, #0x400
	mov r2, #0x19
	strb r4, [r3]
	bl MI_CpuCopy8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211FE40: .word unk_0209A050
_0211FE44: .word unk_0209A060
_0211FE48: .word unk_02099F80
_0211FE4C: .word unk_02099F88
_0211FE50: .word unk_0209A080
_0211FE54: .word unk_02099E9A
_0211FE58: .word unk_02099E9C
_0211FE5C: .word unk_02099E9D
_0211FE60: .word unk_02099F6E
_0211FE64: .word unk_02099F5C
_0211FE68: .word unk_02099F62
_0211FE6C: .word unk_02099F68
_0211FE70: .word unk_02099EA6
_0211FE74: .word unk_02099EA9
_0211FE78: .word unk_02099EAC
_0211FE7C: .word unk_02099E96
_0211FE80: .word unk_02099E9B
_0211FE84: .word unk_0209A090
	arm_func_end FUN_ov22_0211fcb8

	arm_func_start FUN_ov22_0211fe88
FUN_ov22_0211fe88: ; 0x0211FE88
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
_0211FE98:
	mov r0, r6
	mov r1, r5
	bl FUN_ov22_0211f620
	cmp r0, #0
	moveq r4, r5
	beq _0211FEBC
	add r5, r5, #1
	cmp r5, #4
	blt _0211FE98
_0211FEBC:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211fe88

	arm_func_start FUN_ov22_0211fec4
FUN_ov22_0211fec4: ; 0x0211FEC4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
_0211FED4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov22_0211f620
	cmp r0, #0
	movne r4, r5
	bne _0211FEF8
	add r5, r5, #1
	cmp r5, #4
	blt _0211FED4
_0211FEF8:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211fec4

	arm_func_start FUN_ov22_0211ff00
FUN_ov22_0211ff00: ; 0x0211FF00
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x2e0]
	mov r2, #0
	add r12, r1, #0xa
	add r1, r1, #0x11
	mov r3, #1
	str r12, [sp]
	bl FUN_ov22_02121e40
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov22_0211ff00

	arm_func_start FUN_ov22_0211ff24
FUN_ov22_0211ff24: ; 0x0211FF24
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r5, [r4, #0x2e0]
	mov r2, #2
	mov r6, r1
	add r12, r5, #0xa
	mov r3, r2
	add r1, r5, #0x11
	str r12, [sp]
	bl FUN_ov22_02121e40
	add r0, r5, r6
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r1, r1, r0, ror #30
	mov r0, r4
	str r1, [r4, #0x2e0]
	add r4, r1, #0xa
	add r1, r1, #0x11
	mov r2, #0
	mov r3, #1
	str r4, [sp]
	bl FUN_ov22_02121e40
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov22_0211ff24

	arm_func_start FUN_ov22_0211ff88
FUN_ov22_0211ff88: ; 0x0211FF88
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x160]
	cmp r1, #0xe
	ldreq r1, [r0, #0xb64]
	addeq r1, r1, #1
	streq r1, [r0, #0xb64]
	cmpeq r1, #0x17
	ldmnefd sp!, {r3, pc}
	mov r1, #0
	mov r2, r1
	bl FUN_ov22_0211bc48
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov22_0211ff88

	arm_func_start FUN_ov22_0211ffb8
FUN_ov22_0211ffb8: ; 0x0211FFB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x12c
	mov r9, r0
	ldr r0, [r9, #0x290]
	cmp r0, #0
	addne sp, sp, #0x12c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0
	add r0, sp, #0x94
	mov r1, r11
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _0212043C ; =0x02099F38
	mov r4, #1
	ldr r0, [r0]
	mov r2, r4
	mov r1, #2
	bl FUN_ov16_02112724
	str r0, [r9, #0x290]
	str r0, [sp, #0x94]
	ldr r0, [sp, #0x98]
	add r10, sp, #0x60
	add r0, r0, #1
	ldr r12, _02120440 ; =0x0212228C
	str r0, [sp, #0x98]
	ldmia r12!, {r0, r1, r2, r3}
	mov r8, r10
	stmia r10!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldmia r12!, {r0, r1, r2, r3}
	stmia r10!, {r0, r1, r2, r3}
	ldr r0, [r12]
	mov r7, #0x10
	str r0, [r10]
	ldr r1, [r9, #0x2f4]
	mov r6, #0x38
	ldr r0, [r8, r1, lsl #2]
	mov r5, #0xc8
	cmp r1, #0xb
	str r0, [sp, #0x9c]
	str r11, [sp, #0xa0]
	strh r7, [sp, #0xa4]
	moveq r0, #8
	strh r6, [sp, #0xa6]
	strh r5, [sp, #0xa8]
	strb r4, [sp, #0xaa]
	streqh r0, [sp, #0xa4]
	ldr r0, [r9, #0x2f4]
	add r1, sp, #0x94
	cmp r0, #0xc
	moveq r0, #0x34
	streqh r0, [sp, #0xa6]
	mov r0, r9
	bl FUN_ov22_0211a9d0
	mov r5, #0
	add r0, sp, #0xac
	mov r1, r5
	mov r2, #0x80
	ldr r8, [r9, #0x290]
	ldr r7, [sp, #0x98]
	mov r6, #0xbe
	bl MI_CpuFill8
	ldr r4, _02120444 ; =0x02122A14
	add r11, sp, #0x2c
	ldmia r4!, {r0, r1, r2, r3}
	mov r10, r11
	stmia r11!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia r11!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia r11!, {r0, r1, r2, r3}
	ldr r4, [r4]
	add r0, sp, #0xac
	str r4, [r11]
	ldr r1, [r9, #0x2f4]
	ldr r1, [r10, r1, lsl #2]
	bl sprintf
	ldr r4, _0212043C ; =0x02099F38
	mov r10, #5
	ldr r0, [r4]
	mov r1, r10
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r9, #0x2f8]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r3, [r9, #0x2f8]
	ldr r0, [r4]
	mov r1, r8
	add r2, r7, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r7, #1
	mov r3, #0x100
	bl FUN_ov16_02113d08
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r7, #1
	mov r3, r5
	bl FUN_ov16_02113d88
	mov r0, #0x3e
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	add r2, r7, #1
	mov r3, r5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	add r2, r7, #1
	mov r3, r6
	bl FUN_ov16_021139bc
	mov r4, #1
	stmia sp, {r4, r5}
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r7, #9
	ldr r1, [r9, #0x2f8]
	add r0, sp, #0xac
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020f2304
	mov r1, r5
	add r0, sp, #0x14
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, [r9, #0x2f4]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021203B8
_021201E8: ; jump table
	b _021203B8 ; case 0
	b _02120254 ; case 1
	b _0212021C ; case 2
	b _02120254 ; case 3
	b _0212021C ; case 4
	b _02120254 ; case 5
	b _0212021C ; case 6
	b _021202D4 ; case 7
	b _021202D4 ; case 8
	b _021202D4 ; case 9
	b _021202D4 ; case 10
	b _021202D4 ; case 11
	b _021202D4 ; case 12
_0212021C:
	mov r2, #0x68
	mov r5, #6
	mov r3, #0x17
	mov r0, r9
	add r1, sp, #0x14
	str r5, [sp, #0x14]
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strh r10, [sp, #0x24]
_02120248:
	strh r6, [sp, #0x26]
	str r4, [sp, #0x28]
	b _021203B4
_02120254:
	ldrsh r1, [sp, #0xa4]
	ldrsh r0, [sp, #0xa6]
	mov r7, #7
	add r8, r1, #0x10
	add r3, r0, #0x30
	mov r11, #4
	mov r2, #6
	mov r0, r9
	add r1, sp, #0x14
	str r7, [sp, #0x14]
	str r11, [sp, #0x18]
	str r5, [sp, #0x1c]
	strh r8, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r2, [sp, #0x24]
	strh r6, [sp, #0x26]
	str r4, [sp, #0x28]
	bl FUN_ov22_02121c34
	ldrsh r1, [sp, #0xa4]
	ldrsh r0, [sp, #0xa6]
	mov r2, #8
	add r8, r1, #0x88
	add r3, r0, #0x30
	mov r0, r9
	add r1, sp, #0x14
	str r2, [sp, #0x14]
	str r10, [sp, #0x18]
	str r5, [sp, #0x1c]
	strh r8, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r7, [sp, #0x24]
	b _02120248
_021202D4:
	ldrsh r2, [sp, #0xa4]
	mov r8, #7
	ldrsh r1, [sp, #0xa6]
	add r3, r2, #0x28
	strh r3, [sp, #0x20]
	cmp r0, #0xb
	ldreqsh r0, [sp, #0x20]
	add r2, r1, #0x30
	mov r1, #8
	strh r1, [sp, #0x24]
	addeq r0, r0, #8
	str r7, [sp, #0x14]
	str r8, [sp, #0x18]
	str r5, [sp, #0x1c]
	strh r2, [sp, #0x22]
	strh r6, [sp, #0x26]
	str r4, [sp, #0x28]
	streqh r0, [sp, #0x20]
	ldr r0, [r9, #0x2f4]
	add r1, sp, #0x14
	cmp r0, #0xc
	ldreqsh r0, [sp, #0x22]
	addeq r0, r0, #8
	streqh r0, [sp, #0x22]
	mov r0, r9
	bl FUN_ov22_02121c34
	ldrsh r1, [sp, #0xa4]
	ldrsh r0, [sp, #0xa6]
	mov r7, #0xa
	add r4, r1, #0x88
	add r3, r0, #0x30
	mov r6, #7
	mov r5, #2
	mov r2, #9
	mov r1, #0xbe
	mov r0, #1
	strh r1, [sp, #0x26]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	str r5, [sp, #0x1c]
	strh r4, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r2, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [r9, #0x2f4]
	add r1, sp, #0x14
	cmp r0, #0xb
	ldreqsh r0, [sp, #0x20]
	addeq r0, r0, #8
	streqh r0, [sp, #0x20]
	ldr r0, [r9, #0x2f4]
	cmp r0, #0xc
	ldreqsh r0, [sp, #0x22]
	addeq r0, r0, #8
	streqh r0, [sp, #0x22]
	mov r0, r9
_021203B4:
	bl FUN_ov22_02121c34
_021203B8:
	mov r3, #0
	str r3, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r1, #0x1f4
	str r1, [sp, #0xc]
	ldr r0, _02120448 ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0xe
	bl FUN_ov16_0210fba4
	ldr r0, [r9, #0x2f4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02120434
_021203FC: ; jump table
	b _02120434 ; case 0
	b _02120428 ; case 1
	b _02120414 ; case 2
	b _02120428 ; case 3
	b _02120414 ; case 4
	b _02120428 ; case 5
_02120414:
	ldr r0, _0212044C ; =gL5Sound
	ldr r1, _02120450 ; =0x00008004
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #0x12c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120428:
	ldr r0, _0212044C ; =gL5Sound
	ldr r1, _02120454 ; =0x00008005
	bl _ZN7L5Sound12FUN_0202cf6cEm
_02120434:
	add sp, sp, #0x12c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0212043C: .word unk_02099F38
_02120440: .word ov22_0212228C
_02120444: .word ov22_02122A14
_02120448: .word unk_02099EB4
_0212044C: .word gL5Sound
_02120450: .word 0x00008004
_02120454: .word 0x00008005
	arm_func_end FUN_ov22_0211ffb8

	arm_func_start FUN_ov22_02120458
FUN_ov22_02120458: ; 0x02120458
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #6
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #7
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #8
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #9
	bl FUN_ov22_0211a81c
	mov r0, r4
	mov r1, #0xa
	bl FUN_ov22_0211a81c
	ldr r1, [r4, #0x2f8]
	cmp r1, #0
	beq _021204C4
	ldr r0, _02120514 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r4, #0x2f8]
_021204C4:
	ldr r4, _02120518 ; =0x02099EB4
	mov r1, #5
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #6
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #7
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #8
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #9
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #0xe
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r4, pc}
_02120514: .word unk_02099F38
_02120518: .word unk_02099EB4
	arm_func_end FUN_ov22_02120458

	arm_func_start FUN_ov22_0212051c
FUN_ov22_0212051c: ; 0x0212051C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r10, r0
	ldr r1, [r10, #0x27c]
	ldr r0, [r10, #0x2a0]
	ldr r2, [r10, #0x2a4]
	add r0, r1, r0
	adds r0, r2, r0
	mov r6, #0
	addne sp, sp, #0x70
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r11, sp, #0x58
	mov r4, #0x18
	mov r0, r11
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	add r0, sp, #0x40
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, _02120960 ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r2, r5
	mov r1, #9
	bl FUN_ov16_02112724
	str r0, [r10, #0x27c]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x58]
	add r1, r1, #1
	mov r0, #0x2b
	str r1, [sp, #0x5c]
	mov r4, #0x190
	str r0, [sp, #0x60]
	mov r0, r10
	mov r1, r11
	str r6, [sp, #0x64]
	strh r6, [sp, #0x68]
	strh r6, [sp, #0x6a]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	ldr r0, [sp, #0x5c]
	sub r4, r4, #0xa
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r1, [r10, #0x27c]
	mov r0, #8
	mov r8, #0x1d
	strh r0, [sp, #0x68]
	mov r0, #0x48
	str r1, [sp, #0x58]
	strh r0, [sp, #0x6a]
	str r8, [sp, #0x60]
	str r6, [sp, #0x64]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	mov r0, r10
	mov r1, r11
	bl FUN_ov22_0211a9d0
	ldr r7, [r10, #0x2e0]
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211f620
	rsb r1, r8, #0x1a8
	mov r8, r0
	ldr r0, [sp, #0x5c]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r3, [r10, #0x27c]
	mov r0, #2
	str r0, [sp, #0x64]
	strh r1, [sp, #0x6c]
	mov r9, #0x20
	mov r0, r10
	mov r1, r11
	str r3, [sp, #0x58]
	str r2, [sp, #0x60]
	strh r6, [sp, #0x68]
	strb r5, [sp, #0x6e]
	strh r9, [sp, #0x6a]
	bl FUN_ov22_0211a9d0
	cmp r8, #0
	beq _0212088C
	add r8, sp, #0x25
	mov r1, r6
	mov r0, r8
	mov r2, #0x19
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov22_0211f804
	ldr r2, [sp, #0x5c]
	mov r1, r8
	add r3, r2, #1
	add r0, r10, #0x4b0
	str r3, [sp, #0x5c]
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r8, #0x28
	str r8, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	mov r0, r10
	bl FUN_ov22_0211aa70
	mov r1, r6
	add r0, sp, #0x14
	mov r2, #0x11
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	bl FUN_ov22_0211f968
	ldr r2, [sp, #0x5c]
	add r0, r10, #0x4c0
	add r3, r2, #1
	str r3, [sp, #0x5c]
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	add r1, sp, #0x14
	mov r0, r10
	bl FUN_ov22_0211aa70
	ldr r0, [sp, #0x5c]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r2, [r10, #0x27c]
	mov r0, #0xc0
	str r1, [sp, #0x60]
	strh r0, [sp, #0x68]
	mov r0, r10
	mov r1, r11
	str r2, [sp, #0x58]
	strh r8, [sp, #0x6a]
	str r6, [sp, #0x64]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211fa3c
	cmp r0, #0
	bne _021207C4
	ldr r1, [sp, #0x5c]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x5c]
	ldr r8, [r10, #0x27c]
	mov r3, #0xf
	mov r2, #0xe0
	mov r1, r11
	str r8, [sp, #0x58]
	str r3, [sp, #0x60]
	str r6, [sp, #0x64]
	strh r2, [sp, #0x68]
	strh r9, [sp, #0x6a]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
_021207C4:
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211fafc
	mov r9, r0
	ldr r4, _02120964 ; =0x66666667
	ldr r3, [sp, #0x5c]
	smull r2, r1, r4, r9
	add r2, r3, #1
	str r2, [sp, #0x5c]
	ldr r2, [r10, #0x27c]
	mov r0, r9, lsr #0x1f
	str r2, [sp, #0x58]
	add r1, r0, r1, asr #2
	mov r3, #0xd8
	mov r2, #0xa
	smull r0, r1, r2, r1
	sub r1, r9, r0
	add r6, r3, #0xae
	mov r8, #0x14
	mov r7, #0x20
	mov r5, #1
	add r11, sp, #0x58
	str r1, [sp, #0x64]
	mov r0, r10
	mov r1, r11
	strh r3, [sp, #0x68]
	str r8, [sp, #0x60]
	strh r7, [sp, #0x6a]
	strh r6, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	cmp r9, #0xa
	blt _021208D0
	ldr r1, [sp, #0x5c]
	smull r0, r2, r4, r9
	add r0, r1, #1
	str r0, [sp, #0x5c]
	ldr r4, [r10, #0x27c]
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r3, #0xd0
	mov r0, r10
	mov r1, r11
	str r4, [sp, #0x58]
	str r8, [sp, #0x60]
	str r2, [sp, #0x64]
	strh r3, [sp, #0x68]
	strh r7, [sp, #0x6a]
	strh r6, [sp, #0x6c]
	b _021208C8
_0212088C:
	ldr r1, [sp, #0x5c]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x5c]
	ldr r8, [r10, #0x27c]
	mov r7, #0xd
	mov r3, #0x70
	mov r2, #0x26
	mov r1, r11
	str r8, [sp, #0x58]
	str r7, [sp, #0x60]
	str r6, [sp, #0x64]
	strh r3, [sp, #0x68]
	strh r2, [sp, #0x6a]
	strh r4, [sp, #0x6c]
_021208C8:
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
_021208D0:
	add r4, sp, #0x40
	mov r9, #9
	mov r8, #7
	mov r11, #0
	mov r3, #0x38
	mov r7, #0x78
	mov r2, #8
	mov r6, #0x17c
	mov r5, #1
	mov r0, r10
	mov r1, r4
	str r9, [sp, #0x40]
	str r8, [sp, #0x44]
	str r11, [sp, #0x48]
	strh r3, [sp, #0x4c]
	strh r7, [sp, #0x4e]
	strh r2, [sp, #0x50]
	strh r6, [sp, #0x52]
	str r5, [sp, #0x54]
	bl FUN_ov22_02121c34
	mov r11, #0xa
	mov r3, #2
	mov r2, #0x98
	mov r0, r10
	mov r1, r4
	str r11, [sp, #0x40]
	str r8, [sp, #0x44]
	str r3, [sp, #0x48]
	strh r2, [sp, #0x4c]
	strh r7, [sp, #0x4e]
	strh r9, [sp, #0x50]
	strh r6, [sp, #0x52]
	str r5, [sp, #0x54]
	bl FUN_ov22_02121c34
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120960: .word unk_02099F38
_02120964: .word 0x66666667
	arm_func_end FUN_ov22_0212051c

	arm_func_start FUN_ov22_02120968
FUN_ov22_02120968: ; 0x02120968
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #9
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xa
	bl FUN_ov22_0211a81c
	ldr r1, [r5, #0x4b0]
	cmp r1, #0
	beq _021209B0
	ldr r0, _021209F0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	str r4, [r5, #0x4b0]
_021209B0:
	ldr r1, [r5, #0x4c0]
	cmp r1, #0
	beq _021209D0
	ldr r0, _021209F0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5, #0x4c0]
_021209D0:
	ldr r4, _021209F4 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #9
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, pc}
_021209F0: .word unk_02099F38
_021209F4: .word unk_02099EB4
	arm_func_end FUN_ov22_02120968

	arm_func_start FUN_ov22_021209f8
FUN_ov22_021209f8: ; 0x021209F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r10, r0
	ldr r1, [r10, #0x27c]
	ldr r0, [r10, #0x2a0]
	ldr r2, [r10, #0x2a4]
	add r0, r1, r0
	adds r0, r2, r0
	mov r6, #0
	addne sp, sp, #0x70
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r11, sp, #0x58
	mov r4, #0x18
	mov r0, r11
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	add r0, sp, #0x40
	mov r1, r6
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, _02120E3C ; =0x02099F38
	mov r5, #1
	ldr r0, [r0]
	mov r2, r5
	mov r1, #9
	bl FUN_ov16_02112724
	str r0, [r10, #0x27c]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x58]
	add r1, r1, #1
	mov r0, #0x2b
	str r1, [sp, #0x5c]
	mov r8, #0x190
	str r0, [sp, #0x60]
	mov r0, r10
	mov r1, r11
	str r6, [sp, #0x64]
	strh r6, [sp, #0x68]
	strh r6, [sp, #0x6a]
	strh r8, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	ldr r0, [sp, #0x5c]
	mov r1, #0x1e
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r2, [r10, #0x27c]
	mov r0, #8
	strh r0, [sp, #0x68]
	add r4, r1, #0x168
	mov r0, #0x48
	str r1, [sp, #0x60]
	strh r0, [sp, #0x6a]
	str r2, [sp, #0x58]
	str r6, [sp, #0x64]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	mov r0, r10
	mov r1, r11
	bl FUN_ov22_0211a9d0
	ldr r7, [r10, #0x2e0]
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211f620
	sub r1, r8, #5
	mov r8, r0
	ldr r0, [sp, #0x5c]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r3, [r10, #0x27c]
	mov r0, #2
	str r0, [sp, #0x64]
	strh r1, [sp, #0x6c]
	mov r9, #0x20
	mov r0, r10
	mov r1, r11
	str r3, [sp, #0x58]
	str r2, [sp, #0x60]
	strh r6, [sp, #0x68]
	strb r5, [sp, #0x6e]
	strh r9, [sp, #0x6a]
	bl FUN_ov22_0211a9d0
	cmp r8, #0
	beq _02120D68
	add r8, sp, #0x25
	mov r1, r6
	mov r0, r8
	mov r2, #0x19
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov22_0211f804
	ldr r2, [sp, #0x5c]
	mov r1, r8
	add r3, r2, #1
	add r0, r10, #0x4b0
	str r3, [sp, #0x5c]
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r8, #0x28
	str r8, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	mov r0, r10
	bl FUN_ov22_0211aa70
	mov r1, r6
	add r0, sp, #0x14
	mov r2, #0x11
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r7
	add r2, sp, #0x14
	bl FUN_ov22_0211f968
	ldr r2, [sp, #0x5c]
	add r0, r10, #0x4c0
	add r3, r2, #1
	str r3, [sp, #0x5c]
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r2, [r10, #0x27c]
	add r1, sp, #0x14
	mov r0, r10
	bl FUN_ov22_0211aa70
	ldr r0, [sp, #0x5c]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [sp, #0x5c]
	ldr r2, [r10, #0x27c]
	mov r0, #0xc0
	str r1, [sp, #0x60]
	strh r0, [sp, #0x68]
	mov r0, r10
	mov r1, r11
	str r2, [sp, #0x58]
	strh r8, [sp, #0x6a]
	str r6, [sp, #0x64]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211fa3c
	cmp r0, #0
	bne _02120CA0
	ldr r1, [sp, #0x5c]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x5c]
	ldr r8, [r10, #0x27c]
	mov r3, #0xf
	mov r2, #0xe0
	mov r1, r11
	str r8, [sp, #0x58]
	str r3, [sp, #0x60]
	str r6, [sp, #0x64]
	strh r2, [sp, #0x68]
	strh r9, [sp, #0x6a]
	strh r4, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
_02120CA0:
	mov r0, r10
	mov r1, r7
	bl FUN_ov22_0211fafc
	mov r9, r0
	ldr r4, _02120E40 ; =0x66666667
	ldr r3, [sp, #0x5c]
	smull r2, r1, r4, r9
	add r2, r3, #1
	str r2, [sp, #0x5c]
	ldr r2, [r10, #0x27c]
	mov r0, r9, lsr #0x1f
	str r2, [sp, #0x58]
	add r1, r0, r1, asr #2
	mov r3, #0xd8
	mov r2, #0xa
	smull r0, r1, r2, r1
	sub r1, r9, r0
	add r6, r3, #0xae
	mov r8, #0x14
	mov r7, #0x20
	mov r5, #1
	add r11, sp, #0x58
	str r1, [sp, #0x64]
	mov r0, r10
	mov r1, r11
	strh r3, [sp, #0x68]
	str r8, [sp, #0x60]
	strh r7, [sp, #0x6a]
	strh r6, [sp, #0x6c]
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
	cmp r9, #0xa
	blt _02120DAC
	ldr r1, [sp, #0x5c]
	smull r0, r2, r4, r9
	add r0, r1, #1
	str r0, [sp, #0x5c]
	ldr r4, [r10, #0x27c]
	mov r0, r9, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r3, #0xd0
	mov r0, r10
	mov r1, r11
	str r4, [sp, #0x58]
	str r8, [sp, #0x60]
	str r2, [sp, #0x64]
	strh r3, [sp, #0x68]
	strh r7, [sp, #0x6a]
	strh r6, [sp, #0x6c]
	b _02120DA4
_02120D68:
	ldr r1, [sp, #0x5c]
	mov r0, r10
	add r1, r1, #1
	str r1, [sp, #0x5c]
	ldr r8, [r10, #0x27c]
	mov r7, #0xd
	mov r3, #0x70
	mov r2, #0x26
	mov r1, r11
	str r8, [sp, #0x58]
	str r7, [sp, #0x60]
	str r6, [sp, #0x64]
	strh r3, [sp, #0x68]
	strh r2, [sp, #0x6a]
	strh r4, [sp, #0x6c]
_02120DA4:
	strb r5, [sp, #0x6e]
	bl FUN_ov22_0211a9d0
_02120DAC:
	add r4, sp, #0x40
	mov r9, #9
	mov r8, #7
	mov r11, #0
	mov r3, #0x38
	mov r7, #0x78
	mov r2, #8
	mov r6, #0x17c
	mov r5, #1
	mov r0, r10
	mov r1, r4
	str r9, [sp, #0x40]
	str r8, [sp, #0x44]
	str r11, [sp, #0x48]
	strh r3, [sp, #0x4c]
	strh r7, [sp, #0x4e]
	strh r2, [sp, #0x50]
	strh r6, [sp, #0x52]
	str r5, [sp, #0x54]
	bl FUN_ov22_02121c34
	mov r11, #0xa
	mov r3, #2
	mov r2, #0x98
	mov r0, r10
	mov r1, r4
	str r11, [sp, #0x40]
	str r8, [sp, #0x44]
	str r3, [sp, #0x48]
	strh r2, [sp, #0x4c]
	strh r7, [sp, #0x4e]
	strh r9, [sp, #0x50]
	strh r6, [sp, #0x52]
	str r5, [sp, #0x54]
	bl FUN_ov22_02121c34
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120E3C: .word unk_02099F38
_02120E40: .word 0x66666667
	arm_func_end FUN_ov22_021209f8

	arm_func_start FUN_ov22_02120e44
FUN_ov22_02120e44: ; 0x02120E44
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #9
	bl FUN_ov22_0211a81c
	mov r0, r5
	mov r1, #0xa
	bl FUN_ov22_0211a81c
	ldr r1, [r5, #0x4b0]
	cmp r1, #0
	beq _02120E8C
	ldr r0, _02120ECC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	str r4, [r5, #0x4b0]
_02120E8C:
	ldr r1, [r5, #0x4c0]
	cmp r1, #0
	beq _02120EAC
	ldr r0, _02120ECC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5, #0x4c0]
_02120EAC:
	ldr r4, _02120ED0 ; =0x02099EB4
	mov r1, #8
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
	ldr r0, [r4]
	mov r1, #9
	bl FUN_ov16_0210eab4
	ldmfd sp!, {r3, r4, r5, pc}
_02120ECC: .word unk_02099F38
_02120ED0: .word unk_02099EB4
	arm_func_end FUN_ov22_02120e44

	arm_func_start FUN_ov22_02120ed4
FUN_ov22_02120ed4: ; 0x02120ED4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _02120F80 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r5, #0x15c]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x160]
	cmp r0, #0xe
	ldmeqfd sp!, {r3, r4, r5, pc}
	tst r4, #1
	beq _02120F1C
	mov r0, r5
	bl FUN_ov22_02120f84
	ldmfd sp!, {r3, r4, r5, pc}
_02120F1C:
	tst r4, #2
	beq _02120F30
	mov r0, r5
	bl FUN_ov22_021214ac
	ldmfd sp!, {r3, r4, r5, pc}
_02120F30:
	tst r4, #0x40
	beq _02120F44
	mov r0, r5
	bl FUN_ov22_02121768
	ldmfd sp!, {r3, r4, r5, pc}
_02120F44:
	tst r4, #0x80
	beq _02120F58
	mov r0, r5
	bl FUN_ov22_02121814
	ldmfd sp!, {r3, r4, r5, pc}
_02120F58:
	tst r4, #0x20
	beq _02120F6C
	mov r0, r5
	bl FUN_ov22_021218b0
	ldmfd sp!, {r3, r4, r5, pc}
_02120F6C:
	tst r4, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov22_02121a6c
	ldmfd sp!, {r3, r4, r5, pc}
_02120F80: .word unk_02099ED4
	arm_func_end FUN_ov22_02120ed4

	arm_func_start FUN_ov22_02120f84
FUN_ov22_02120f84: ; 0x02120F84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r1, [r6, #0x160]
	mov r8, #5
	cmp r1, #0x13
	mov r7, #9
	mov r4, #1
	mov r5, #0
	addls pc, pc, r1, lsl #2
	b _02121454
_02120FB0: ; jump table
	b _02121000 ; case 0
	b _02121454 ; case 1
	b _02121454 ; case 2
	b _02121454 ; case 3
	b _02121044 ; case 4
	b _02121454 ; case 5
	b _0212106C ; case 6
	b _02121454 ; case 7
	b _02121078 ; case 8
	b _02121454 ; case 9
	b _02121454 ; case 10
	b _02121454 ; case 11
	b _02121080 ; case 12
	b _021210DC ; case 13
	b _02121454 ; case 14
	b _02121200 ; case 15
	b _02121454 ; case 16
	b _02121454 ; case 17
	b _021213FC ; case 18
	b _02121414 ; case 19
_02121000:
	ldr r7, [r6, #0x2d0]
	mov r1, r4
	cmp r7, #0
	movne r1, r5
	ldr r0, _02121490 ; =0x02099E92
	cmp r7, #0
	strb r1, [r0]
	moveq r1, #1
	movne r1, #2
	mov r0, r6
	bl FUN_ov22_0211a6b8
	add r0, r7, #1
	mov r1, r0, lsl #0x10
	mov r0, r6
	mov r1, r1, lsr #0x10
	mov r2, #1
_02121040:
	b _02121450
_02121044:
	ldr r1, [r6, #0xb74]
	cmp r1, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, r4
	bl FUN_ov22_0211a6c8
_0212105C:
	mov r0, r6
	mov r2, r4
	mov r1, #3
	b _02121040
_0212106C:
	mov r1, #3
_02121070:
	bl FUN_ov22_0211a6c8
	b _02121454
_02121078:
	mov r1, r8
	b _02121070
_02121080:
	ldr r1, [r6, #0x52c]
	cmp r1, #0
	beq _021210AC
	ldr r1, _02121494 ; =0x02099E99
	strb r4, [r1]
	bl FUN_ov22_0211fcb8
	mov r0, r6
	mov r2, r5
	mov r1, #0x7a
	bl FUN_ov22_0211bc48
	b _0212105C
_021210AC:
	ldr r1, _02121490 ; =0x02099E92
	ldrb r1, [r1]
	cmp r1, #0
	beq _02121454
	mov r1, #0xd
	str r4, [r6, #0x530]
	bl FUN_ov22_0211a6b8
	mov r0, r6
	mov r2, r4
	mov r1, #3
	bl FUN_ov22_02121ef8
	b _02121454
_021210DC:
	ldr r1, [r6, #0x2e0]
	bl FUN_ov22_0211f620
	ldr r1, [r6, #0xb6c]
	cmp r1, #0
	beq _02121130
	cmp r0, #0
	beq _0212111C
	mov r0, r6
	mov r1, #0x12
	bl FUN_ov22_0211a6b8
	mov r0, r6
	mov r1, #3
	mov r2, r4
	bl FUN_ov22_02121ef8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212111C:
	ldr r0, _02121498 ; =gL5Sound
	mov r1, r7
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02121130:
	ldr r1, [r6, #0xb70]
	cmp r1, #0
	beq _02121178
	cmp r0, #0
	beq _02121154
	mov r0, r6
	mov r1, #0xa
	bl FUN_ov22_0211a6c8
	b _02121160
_02121154:
	ldr r1, [r6, #0x2e0]
	mov r0, r6
	bl FUN_ov22_0211f410
_02121160:
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_ov22_02121ef8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02121178:
	ldr r1, _02121490 ; =0x02099E92
	ldrb r1, [r1]
	cmp r1, #0
	beq _021211B8
	cmp r0, #0
	beq _021211A0
	mov r0, r6
	mov r1, #0xa
	bl FUN_ov22_0211a6c8
	b _021211AC
_021211A0:
	ldr r1, [r6, #0x2e0]
	mov r0, r6
	bl FUN_ov22_0211f410
_021211AC:
	ldr r0, _02121498 ; =gL5Sound
	mov r1, #1
	b _021211E8
_021211B8:
	cmp r0, #0
	beq _021211E0
	mov r2, #0x10
	mov r0, r6
	mov r1, #3
	str r2, [r6, #0x4d4]
	bl FUN_ov22_0211a6b8
	ldr r0, _02121498 ; =gL5Sound
	mov r1, r4
	b _021211E8
_021211E0:
	ldr r0, _02121498 ; =gL5Sound
	mov r1, r7
_021211E8:
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldr r0, _0212149C ; =0x02099EB4
	mov r1, #3
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _02121454
_02121200:
	ldr r1, [r6, #0x2f4]
	cmp r1, #1
	bne _02121210
	b _0212125C
_02121210:
	cmp r1, #2
	bne _02121220
	mov r1, r8
	b _02121240
_02121220:
	cmp r1, #3
	bne _0212122C
	b _0212125C
_0212122C:
	cmp r1, #4
	bne _02121254
	mov r2, #0x10
	mov r1, #7
	str r2, [r6, #0x4d4]
_02121240:
	bl FUN_ov22_0211a6b8
_02121244:
	mov r0, r6
	mov r1, r8
	mov r2, r4
	b _02121040
_02121254:
	cmp r1, #5
	bne _021212A4
_0212125C:
	mov r5, r4
	str r5, [sp]
	ldr r7, _021214A0 ; =0x02099F38
	mov r8, #2
	ldr r0, [r7]
	ldr r1, [r6, #0x298]
	mov r2, r5
	mov r3, r8
	bl FUN_ov16_02113ec0
	ldr r0, [r7]
	ldr r1, [r6, #0x29c]
	mov r2, r5
	mov r3, r8
	bl FUN_ov16_02113f7c
	mov r0, r6
	mov r2, r5
	mov r1, #6
	b _02121040
_021212A4:
	cmp r1, #6
	bne _021212BC
	mov r1, r5
	mov r2, r5
	bl FUN_ov22_0211bc48
	b _02121244
_021212BC:
	cmp r1, #7
	bne _02121314
	ldr r1, [r6, #0x2d4]
	cmp r1, #0
	beq _021212DC
	mov r1, #6
	bl FUN_ov22_0211a6c8
_021212D8:
	b _02121364
_021212DC:
	ldr r1, [r6, #0x4d0]
	cmp r1, #1
	beq _021212F4
	cmp r1, #2
	beq _021212FC
	b _02121304
_021212F4:
	mov r1, #3
	b _02121300
_021212FC:
	mov r1, r8
_02121300:
	bl FUN_ov22_0211a6c8
_02121304:
	mov r0, r6
	mov r1, #9
	mov r2, #4
	b _02121040
_02121314:
	cmp r1, #8
	bne _02121344
	ldr r1, [r6, #0x2d8]
	cmp r1, #0
	beq _02121338
	mov r1, #0xd
	str r5, [r6, #0x530]
_02121330:
	bl FUN_ov22_0211a6b8
	b _021212D8
_02121338:
	mov r1, r7
_0212133C:
	bl FUN_ov22_0211a6c8
	b _021213A4
_02121344:
	cmp r1, #9
	bne _0212137C
	ldr r1, [r6, #0x2dc]
	cmp r1, #0
	beq _02121374
_02121358:
	mov r1, r5
	mov r2, r5
_02121360:
	bl FUN_ov22_0211bc48
_02121364:
	mov r0, r6
	mov r1, #8
	mov r2, r4
	b _02121450
_02121374:
	mov r1, #8
	b _0212133C
_0212137C:
	cmp r1, #0xa
	bne _021213B0
	ldr r1, [r6, #0x2e4]
	cmp r1, #0
	beq _0212139C
	ldr r1, [r6, #0x2e0]
	bl FUN_ov22_0211f410
	b _021212D8
_0212139C:
	mov r1, #0xd
	bl FUN_ov22_0211a6b8
_021213A4:
	mov r0, r6
	mov r1, r7
	b _0212144C
_021213B0:
	cmp r1, #0xb
	bne _021213E0
	ldr r1, [r6, #0x2ec]
	cmp r1, #0
	beq _021213DC
	ldr r3, _021214A4 ; =0x02099E93
	mov r7, #0xff
_021213CC:
	mov r1, r5
	mov r2, r5
	strb r7, [r3]
	b _02121360
_021213DC:
	b _0212142C
_021213E0:
	cmp r1, #0xc
	bne _02121454
	ldr r1, [r6, #0x2f0]
	cmp r1, #0
	beq _021213F8
	b _02121358
_021213F8:
	b _0212139C
_021213FC:
	ldr r1, [r6, #0x2e8]
	cmp r1, #0
	beq _02121410
	mov r1, #0x13
	b _02121330
_02121410:
	b _0212139C
_02121414:
	ldr r1, [r6, #0x2ec]
	cmp r1, #0
	beq _0212142C
	ldr r7, [r6, #0x2e0]
	ldr r3, _021214A4 ; =0x02099E93
	b _021213CC
_0212142C:
	ldr r3, _021214A4 ; =0x02099E93
	mov r7, #0xfe
	mov r1, r5
	mov r2, r5
	strb r7, [r3]
	bl FUN_ov22_0211bc48
	mov r0, r6
	mov r1, #9
_0212144C:
	mov r2, #4
_02121450:
	bl FUN_ov22_02121ef8
_02121454:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0
	ldr r0, _02121498 ; =gL5Sound
	ldr r2, _021214A8 ; =0x000005DC
	mov r1, r5
	bl FUN_0202c44c
	mov r0, r6
	mov r1, r5
	mov r2, r5
	str r4, [r6, #0x47c]
	bl FUN_ov22_0211bc48
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02121490: .word unk_02099E92
_02121494: .word unk_02099E99
_02121498: .word gL5Sound
_0212149C: .word unk_02099EB4
_021214A0: .word unk_02099F38
_021214A4: .word unk_02099E93
_021214A8: .word 0x000005DC
	arm_func_end FUN_ov22_02120f84

	arm_func_start FUN_ov22_021214ac
FUN_ov22_021214ac: ; 0x021214AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r1, [r6, #0x160]
	mov r4, #2
	cmp r1, #0xc
	mov r5, #0
	bgt _021214F0
	cmp r1, #0xc
	bge _02121564
	cmp r1, #4
	bgt _021216BC
	cmp r1, #0
	blt _021216BC
	beq _0212151C
	cmp r1, #4
	beq _02121540
	b _021216BC
_021214F0:
	sub r1, r1, #0xd
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _021216BC
_02121500: ; jump table
	b _02121588 ; case 0
	b _021216BC ; case 1
	b _021215D8 ; case 2
	b _021216BC ; case 3
	b _021216BC ; case 4
	b _02121694 ; case 5
	b _021216A0 ; case 6
_0212151C:
	mov r1, #0
	mov r0, r6
	mov r2, r1
_02121528:
	bl FUN_ov22_0211bc48
_0212152C:
	mov r1, #4
	mov r0, r6
	mov r2, r1
	bl FUN_ov22_02121ef8
	b _021216BC
_02121540:
	ldr r1, [r6, #0xb74]
	cmp r1, #0
	mov r1, r5
	beq _0212155C
	mov r2, r5
	bl FUN_ov22_0211bc48
	b _02121560
_0212155C:
	bl FUN_ov22_0211a6b8
_02121560:
	b _0212152C
_02121564:
	ldr r1, _0212175C ; =0x02099E92
	ldrb r1, [r1]
	cmp r1, #0
	ldreq r1, [r6, #0x52c]
	cmpeq r1, #0
	bne _021216BC
	mov r1, r5
	mov r2, r5
	b _02121528
_02121588:
	ldr r1, [r6, #0xb6c]
	cmp r1, #0
	beq _021215A0
	mov r1, #0xb
_02121598:
	bl FUN_ov22_0211a6c8
	b _021215D4
_021215A0:
	ldr r1, [r6, #0xb70]
	cmp r1, #0
	beq _021215B4
	mov r1, #0xc
	b _02121598
_021215B4:
	ldr r1, _0212175C ; =0x02099E92
	ldrb r1, [r1]
	cmp r1, #0
	beq _021215CC
	mov r1, #9
	b _02121598
_021215CC:
	mov r1, r5
	bl FUN_ov22_0211a6b8
_021215D4:
	b _0212152C
_021215D8:
	ldr r1, [r6, #0x2f4]
	cmp r1, #1
	bne _021215F4
	mov r1, #4
	bl FUN_ov22_0211a6b8
_021215EC:
	mov r5, #1
	b _021216BC
_021215F4:
	cmp r1, #3
	cmpne r1, #5
	bne _02121610
	mov r0, r6
	mov r1, #7
	bl FUN_ov22_0211a6c8
	b _021215EC
_02121610:
	cmp r1, #7
	bne _02121648
	ldr r1, [r6, #0x4d0]
	cmp r1, #1
	beq _02121630
	cmp r1, #2
	beq _02121638
	b _02121640
_02121630:
	mov r1, #3
	b _0212163C
_02121638:
	mov r1, #5
_0212163C:
	bl FUN_ov22_0211a6c8
_02121640:
	mov r5, #2
	b _021216BC
_02121648:
	cmp r1, #8
	bne _0212165C
	mov r1, #9
_02121654:
	bl FUN_ov22_0211a6c8
_02121658:
	b _021216B8
_0212165C:
	cmp r1, #9
	bne _0212166C
	mov r1, #8
	b _02121654
_0212166C:
	cmp r1, #0xa
	cmpne r1, #0xc
	bne _02121688
	mov r0, r6
	mov r1, #0xd
	bl FUN_ov22_0211a6b8
	b _02121640
_02121688:
	cmp r1, #0xb
	bne _021216BC
	b _021216A0
_02121694:
	mov r1, #0xd
	bl FUN_ov22_0211a6b8
	b _02121658
_021216A0:
	ldr r3, _02121760 ; =0x02099E93
	mov r7, #0xfe
	mov r1, r5
	mov r2, r5
	strb r7, [r3]
	bl FUN_ov22_0211bc48
_021216B8:
	mov r5, r4
_021216BC:
	cmp r5, #1
	bne _0212170C
	ldr r5, _02121764 ; =0x02099F38
	mov r7, #1
	ldr r0, [r5]
	ldr r1, [r6, #0x298]
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r6, #0x29c]
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113ec0
	mov r0, r6
	mov r1, #7
	mov r2, #4
	bl FUN_ov22_02121ef8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212170C:
	cmp r5, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _02121764 ; =0x02099F38
	mov r7, #1
	ldr r0, [r5]
	ldr r1, [r6, #0x2a0]
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113f7c
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r6, #0x2a4]
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113ec0
	mov r0, r6
	mov r1, #9
	mov r2, #4
	bl FUN_ov22_02121ef8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212175C: .word unk_02099E92
_02121760: .word unk_02099E93
_02121764: .word unk_02099F38
	arm_func_end FUN_ov22_021214ac

	arm_func_start FUN_ov22_02121768
FUN_ov22_02121768: ; 0x02121768
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0x160]
	cmp r1, #0
	beq _02121790
	cmp r1, #0xd
	beq _021217E8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02121790:
	ldr r1, [r4, #0x2d0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	mov r2, #0
	mov r1, #1
	mov r3, r1
	str r2, [r4, #0x2d0]
	strb r2, [r4, #0x25]
	str r1, [sp]
	bl FUN_ov22_02121e40
	mov r2, #5
	mov r1, #2
	mov r0, r4
	mov r3, r2
	str r1, [sp]
	bl FUN_ov22_02121e40
	ldr r0, _02121810 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021217E8:
	mov r1, #3
	bl FUN_ov22_0211ff24
	ldr r1, [r4, #0x2e0]
	mov r0, r4
	bl FUN_ov22_0211d110
	ldr r0, _02121810 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02121810: .word gL5Sound
	arm_func_end FUN_ov22_02121768

	arm_func_start FUN_ov22_02121814
FUN_ov22_02121814: ; 0x02121814
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x160]
	cmp r1, #0
	beq _02121834
	cmp r1, #0xd
	beq _02121888
	ldmfd sp!, {r3, r4, r5, pc}
_02121834:
	ldr r1, [r5, #0x2d0]
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	mov r4, #2
	mov r2, r4
	mov r3, r4
	str r1, [r5, #0x2d0]
	strb r1, [r5, #0x25]
	str r1, [sp]
	bl FUN_ov22_02121e40
	mov r0, r5
	mov r1, r4
	mov r2, #3
	mov r3, #4
	str r4, [sp]
	bl FUN_ov22_02121e40
	ldr r0, _021218AC ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_02121888:
	mov r1, #1
	bl FUN_ov22_0211ff24
	ldr r1, [r5, #0x2e0]
	mov r0, r5
	bl FUN_ov22_0211d110
	ldr r0, _021218AC ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, pc}
_021218AC: .word gL5Sound
	arm_func_end FUN_ov22_02121814

	arm_func_start FUN_ov22_021218b0
FUN_ov22_021218b0: ; 0x021218B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x160]
	cmp r0, #0xf
	bne _021219A4
	ldr r0, [r4, #0x2f4]
	mov r1, #1
	mov r2, r1, lsl r0
	tst r2, #0x1f80
	mov r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02121948
_021218E8: ; jump table
	b _02121948 ; case 0
	b _02121948 ; case 1
	b _02121948 ; case 2
	b _02121948 ; case 3
	b _02121948 ; case 4
	b _02121948 ; case 5
	b _02121948 ; case 6
	b _0212191C ; case 7
	b _02121924 ; case 8
	b _0212192C ; case 9
	b _02121934 ; case 10
	b _0212193C ; case 11
	b _02121944 ; case 12
_0212191C:
	mov r2, r1
	b _02121948
_02121924:
	mov r2, #2
	b _02121948
_0212192C:
	mov r2, #3
	b _02121948
_02121934:
	mov r2, #5
	b _02121948
_0212193C:
	mov r2, #7
	b _02121948
_02121944:
	mov r2, #8
_02121948:
	add r1, r4, r2, lsl #2
	ldr r0, [r1, #0x2d0]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
	str r7, [r1, #0x2d0]
	str r7, [sp]
	ldr r5, _02121A64 ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121A68 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021219A4:
	cmp r0, #0x12
	bne _02121A04
	ldr r0, [r4, #0x2e8]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
	str r7, [r4, #0x2e8]
	str r7, [sp]
	ldr r5, _02121A64 ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121A68 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121A04:
	cmp r0, #0x13
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x2ec]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #1
	str r7, [r4, #0x2ec]
	str r7, [sp]
	ldr r5, _02121A64 ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121A68 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121A64: .word unk_02099F38
_02121A68: .word gL5Sound
	arm_func_end FUN_ov22_021218b0

	arm_func_start FUN_ov22_02121a6c
FUN_ov22_02121a6c: ; 0x02121A6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x160]
	cmp r0, #0xf
	bne _02121B64
	ldr r0, [r4, #0x2f4]
	mov r1, #1
	mov r2, r1, lsl r0
	tst r2, #0x1f80
	mov r2, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _02121B04
_02121AA4: ; jump table
	b _02121B04 ; case 0
	b _02121B04 ; case 1
	b _02121B04 ; case 2
	b _02121B04 ; case 3
	b _02121B04 ; case 4
	b _02121B04 ; case 5
	b _02121B04 ; case 6
	b _02121AD8 ; case 7
	b _02121AE0 ; case 8
	b _02121AE8 ; case 9
	b _02121AF0 ; case 10
	b _02121AF8 ; case 11
	b _02121B00 ; case 12
_02121AD8:
	mov r2, r1
	b _02121B04
_02121AE0:
	mov r2, #2
	b _02121B04
_02121AE8:
	mov r2, #3
	b _02121B04
_02121AF0:
	mov r2, #5
	b _02121B04
_02121AF8:
	mov r2, #7
	b _02121B04
_02121B00:
	mov r2, #8
_02121B04:
	add r1, r4, r2, lsl #2
	ldr r0, [r1, #0x2d0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	mov r7, #1
	str r0, [r1, #0x2d0]
	str r7, [sp]
	ldr r5, _02121C2C ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121C30 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121B64:
	cmp r0, #0x12
	bne _02121BC8
	ldr r0, [r4, #0x2e8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	mov r7, #1
	str r0, [r4, #0x2e8]
	str r7, [sp]
	ldr r5, _02121C2C ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121C30 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121BC8:
	cmp r0, #0x13
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x2ec]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	mov r7, #1
	str r0, [r4, #0x2ec]
	str r7, [sp]
	ldr r5, _02121C2C ; =0x02099F38
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0x2a4]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldr r0, [r5]
	ldr r1, [r4, #0x2a0]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, _02121C30 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121C2C: .word unk_02099F38
_02121C30: .word gL5Sound
	arm_func_end FUN_ov22_02121a6c

	arm_func_start FUN_ov22_02121c34
FUN_ov22_02121c34: ; 0x02121C34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r10, _02121E38 ; =0x02099F38
	mov r5, r0
	mov r6, #1
	ldr r0, [r10]
	mov r7, #2
	mov r4, r1
	mov r1, r7
	mov r2, r6
	mov r8, #0
	bl FUN_ov16_02112724
	ldr r1, [r4]
	mov r9, r0
	add r0, r5, r1, lsl #2
	str r9, [r0, #0x27c]
	ldr r1, [r4, #4]
	ldr r0, [r10]
	add r1, r5, r1, lsl #2
	ldr r2, [r1, #0x1cc]
	mov r1, r9
	and r3, r2, #0xff
	mov r2, r6
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r10]
	ldr r3, [r4, #8]
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_0211401c
	ldrsh r0, [r4, #0xe]
	mov r1, r9
	mov r2, r6
	str r0, [sp]
	ldrsh r3, [r4, #0xc]
	ldr r0, [r10]
	bl FUN_ov16_02113b78
	ldrh r3, [r4, #0x12]
	ldr r0, [r10]
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_021139bc
	str r6, [sp]
	ldr r0, [r10]
	mov r1, r9
	mov r2, r6
	mov r3, r7
	bl FUN_ov16_02113ec0
	ldrh r0, [r4, #0x10]
	mov r8, #1
	mov r1, r8
	mov r0, r6, lsl r0
	tst r0, #0x3e0
	addne r0, r7, #0x1fc
	moveq r0, #0x64
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, _02121E3C ; =0x02099EB4
	ldrh r2, [r4, #0x10]
	ldr r0, [r0]
	mov r3, r9
	bl FUN_ov16_0210fc74
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0
	strb r6, [r7, #0x10]
	strb r6, [r7, #0xf]
	strh r6, [r7, #0xc]
	strb r6, [r7, #0x11]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r4, #0x10]
	cmp r0, #5
	add r0, r7, #0x3a
	bne _02121DD0
	mov r1, r8
	mov r2, r8
	mov r3, r6
	add r0, r0, r6, lsl #2
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3a
	mov r1, r8
	mov r2, r8
	mov r3, r6
	add r0, r0, r8, lsl #2
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3a
	ldr r1, [r5, #0x228]
	add r0, r0, r6, lsl #2
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_0210e720
	add r0, r7, #0x3a
	ldr r1, [r5, #0x1e4]
	add r0, r0, r8, lsl #2
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121DD0:
	mov r1, r6
	mov r2, r8
	mov r3, r6
	add r0, r0, r6, lsl #2
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3a
	mov r1, r6
	mov r2, r8
	mov r3, r6
	add r0, r0, r8, lsl #2
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3a
	ldr r2, [r4, #8]
	add r0, r0, r6, lsl #2
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	ldr r2, [r4, #8]
	add r0, r7, #0x3a
	add r0, r0, r8, lsl #2
	mov r1, r6
	add r2, r2, #1
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02121E38: .word unk_02099F38
_02121E3C: .word unk_02099EB4
	arm_func_end FUN_ov22_02121c34

	arm_func_start FUN_ov22_02121e40
FUN_ov22_02121e40: ; 0x02121E40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [sp, #0x20]
	ldr r5, _02121EF0 ; =0x02099EB4
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
	ldr r0, _02121EF4 ; =0x02099F38
	str r5, [sp]
	add r1, r9, r8, lsl #2
	mov r8, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x27c]
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
_02121EF0: .word unk_02099EB4
_02121EF4: .word unk_02099F38
	arm_func_end FUN_ov22_02121e40

	arm_func_start FUN_ov22_02121ef8
FUN_ov22_02121ef8: ; 0x02121EF8
	stmfd sp!, {r4, lr}
	ldr r0, _02121F1C ; =0x02099EB4
	mov r4, r2
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldr r0, _02121F20 ; =gL5Sound
	mov r1, r4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r4, pc}
_02121F1C: .word unk_02099EB4
_02121F20: .word gL5Sound
	arm_func_end FUN_ov22_02121ef8

	arm_func_start FUN_ov22_02121f24
FUN_ov22_02121f24: ; 0x02121F24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0212203C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r2]
	mov r7, r1
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r4, #0x15c]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x160]
	cmp r0, #0xe
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #6
	beq _02121F68
	cmp r0, #8
	bne _02121F80
_02121F68:
	ldrh r0, [r7, #4]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov22_02120f84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121F80:
	ldr r5, _02122040 ; =0x02099EB4
	mov r6, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_0210f20c
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121FA4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _02121FBC ; case 1
	b _02121FEC ; case 2
	b _02122004 ; case 3
	b _02122020 ; case 4
	b _02121FD4 ; case 5
_02121FBC:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov22_02122044
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121FD4:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov22_021221b4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02121FEC:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	bl FUN_ov22_021221b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122004:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, #0
	bl FUN_ov22_02122210
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02122020:
	ldr r0, [r5]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r4
	mov r2, r6
	bl FUN_ov22_02122210
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0212203C: .word unk_02099ED4
_02122040: .word unk_02099EB4
	arm_func_end FUN_ov22_02121f24

	arm_func_start FUN_ov22_02122044
FUN_ov22_02122044: ; 0x02122044
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	cmp r4, #8
	bgt _02122080
	bge _0212209C
	cmp r4, #2
	bgt _021220A8
	cmp r4, #1
	blt _021220A8
	beq _0212208C
	cmp r4, #2
	beq _02122094
	b _021220A8
_02122080:
	cmp r4, #9
	beq _021220A4
	b _021220A8
_0212208C:
	bl FUN_ov22_02121768
	b _021220A8
_02122094:
	bl FUN_ov22_02121814
	b _021220A8
_0212209C:
	bl FUN_ov22_021218b0
	b _021220A8
_021220A4:
	bl FUN_ov22_02121a6c
_021220A8:
	cmp r4, #6
	bne _021220E0
	mov r8, #1
	str r8, [sp]
	ldr r6, _021221AC ; =0x02099F38
	mov r7, #2
	ldr r0, [r6]
	ldr r1, [r5, #0x298]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113ec0
	ldr r0, [r6]
	ldr r1, [r5, #0x29c]
	b _02122114
_021220E0:
	cmp r4, #7
	bne _02122120
	mov r8, #1
	str r8, [sp]
	ldr r6, _021221AC ; =0x02099F38
	mov r7, #2
	ldr r0, [r6]
	ldr r1, [r5, #0x29c]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113ec0
	ldr r0, [r6]
	ldr r1, [r5, #0x298]
_02122114:
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113f7c
_02122120:
	cmp r4, #0xa
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #0xd
	addgt sp, sp, #4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, [r5, #0x2e0]
	sub r7, r4, #0xa
	cmp r6, r7
	mov r4, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r1, r6, #0xa
	mov r2, #2
	mov r0, r5
	mov r3, r2
	str r1, [sp]
	add r1, r6, #0x11
	bl FUN_ov22_02121e40
	str r7, [r5, #0x2e0]
	add r1, r7, #0xa
	mov r0, r5
	mov r2, r4
	str r1, [sp]
	add r1, r7, #0x11
	add r3, r4, #1
	bl FUN_ov22_02121e40
	ldr r1, [r5, #0x2e0]
	mov r0, r5
	bl FUN_ov22_0211d110
	ldr r0, _021221B0 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_021221AC: .word unk_02099F38
_021221B0: .word gL5Sound
	arm_func_end FUN_ov22_02122044

	arm_func_start FUN_ov22_021221b4
FUN_ov22_021221b4: ; 0x021221B4
	bx lr
	arm_func_end FUN_ov22_021221b4

	arm_func_start FUN_ov22_021221b8
FUN_ov22_021221b8: ; 0x021221B8
	stmfd sp!, {r3, lr}
	cmp r1, #0xd
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_021221C8: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _02122200 ; case 1
	b _02122200 ; case 2
	b _02122200 ; case 3
	b _02122208 ; case 4
	b _02122200 ; case 5
	b _02122200 ; case 6
	b _02122208 ; case 7
	b _02122200 ; case 8
	b _02122208 ; case 9
	b _02122200 ; case 10
	b _02122200 ; case 11
	b _02122200 ; case 12
	b _02122200 ; case 13
_02122200:
	bl FUN_ov22_02120f84
	ldmfd sp!, {r3, pc}
_02122208:
	bl FUN_ov22_021214ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov22_021221b8

	arm_func_start FUN_ov22_02122210
FUN_ov22_02122210: ; 0x02122210
	bx lr
	arm_func_end FUN_ov22_02122210

	arm_func_start FUN_ov22_02122214
FUN_ov22_02122214: ; 0x02122214
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov22_02122214

	arm_func_start FUN_ov22_02122228
FUN_ov22_02122228: ; 0x02122228
	bx lr
	arm_func_end FUN_ov22_02122228

	.rodata
	.global ov22_0212222C
ov22_0212222C:
	.byte 0x10, 0x00, 0x30, 0x00, 0x70, 0x00, 0x00, 0x00
	.global ov22_02122234
ov22_02122234:
	.byte 0x60, 0x00, 0x40, 0x00, 0x20, 0x00, 0x00, 0x00
	.global ov22_0212223C
ov22_0212223C:
	.byte 0x60, 0x00, 0x40, 0x00, 0x20, 0x00, 0x00, 0x00
	.global ov22_02122244
ov22_02122244:
	.byte 0x10, 0x00, 0x30, 0x00, 0x70, 0x00, 0x00, 0x00
	.global ov22_0212224C
ov22_0212224C:
	.byte 0x42, 0x00, 0x28, 0x00, 0xBE, 0x00, 0x28, 0x00
	.global ov22_02122254
ov22_02122254:
	.byte 0x42, 0x00, 0x2C, 0x00, 0x82, 0x00, 0x28, 0x00
	.global ov22_0212225C
ov22_0212225C:
	.byte 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00
	.global ov22_0212226C
ov22_0212226C:
	.byte 0xC8, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00
	.global ov22_0212227C
ov22_0212227C:
	.word ov22_02122628
	.byte 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov22_0212228C
ov22_0212228C:
	.byte 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00
	.global ov22_021222C0
ov22_021222C0:
	.byte 0x22, 0x00, 0x4C, 0x00, 0x42, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x4C, 0x00, 0xC2, 0x00, 0x48, 0x00, 0xA2, 0x00, 0x4C, 0x00
	.byte 0xC2, 0x00, 0x48, 0x00, 0xDE, 0x00, 0x48, 0x00, 0xC2, 0x00, 0x48, 0x00, 0xDE, 0x00, 0x48, 0x00
	.byte 0xC2, 0x00, 0x48, 0x00
	.global ov22_02122300
ov22_02122300:
	.byte 0x12, 0x00, 0x88, 0x00, 0x12, 0x00, 0x6C, 0x00, 0x22, 0x00, 0x68, 0x00
	.byte 0x32, 0x00, 0x88, 0x00, 0x2E, 0x00, 0x68, 0x00, 0x22, 0x00, 0x68, 0x00, 0x52, 0x00, 0x88, 0x00
	.byte 0x52, 0x00, 0x6C, 0x00, 0x62, 0x00, 0x68, 0x00, 0x72, 0x00, 0x88, 0x00, 0x6E, 0x00, 0x68, 0x00
	.byte 0x62, 0x00, 0x68, 0x00, 0x92, 0x00, 0x88, 0x00, 0x92, 0x00, 0x6C, 0x00, 0xA2, 0x00, 0x68, 0x00
	.byte 0xB2, 0x00, 0x88, 0x00, 0xAE, 0x00, 0x68, 0x00, 0xA2, 0x00, 0x68, 0x00, 0xD2, 0x00, 0x88, 0x00
	.byte 0xD2, 0x00, 0x6C, 0x00, 0xE2, 0x00, 0x68, 0x00, 0xF2, 0x00, 0x88, 0x00, 0xEE, 0x00, 0x68, 0x00
	.byte 0xE2, 0x00, 0x68, 0x00
	.global ov22_02122360
ov22_02122360:
	.byte 0x64, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00
	.global ov22_021223E0
ov22_021223E0:
	.byte 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x00, 0x00
	.global ov22_021224A0
ov22_021224A0:
	.word ov22_0212267C
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov22_021227FC
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov22_021227BC
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov22_0212279C
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov22_021227DC
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov22_021226AC
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov22_0212281C
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov22_0212282C
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov22_0212283C
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov22_0212276C
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov22_0212270C
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov22_021226FC
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov22_0212266C
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov22_0212268C
	.byte 0x0D, 0x00, 0x00, 0x00
	.word ov22_021226EC
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov22_0212284C
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov22_021226DC
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov22_0212285C
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov22_021226CC
	.byte 0x12, 0x00, 0x00, 0x00
	.word ov22_0212286C
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov22_0212269C
	.byte 0x14, 0x00, 0x00, 0x00
	.word ov22_021226BC
	.byte 0x15, 0x00, 0x00, 0x00
	.word ov22_0212271C
	.byte 0x16, 0x00, 0x00, 0x00
	.word ov22_0212272C
	.byte 0x17, 0x00, 0x00, 0x00
	.word ov22_0212273C
	.byte 0x18, 0x00, 0x00, 0x00
	.word ov22_0212280C
	.byte 0x19, 0x00, 0x00, 0x00
	.word ov22_0212274C
	.byte 0x1A, 0x00, 0x00, 0x00
	.word ov22_021227EC
	.byte 0x1B, 0x00, 0x00, 0x00
	.word ov22_0212275C
	.byte 0x1C, 0x00, 0x00, 0x00
	.word ov22_021227CC
	.byte 0x1D, 0x00, 0x00, 0x00
	.word ov22_0212277C
	.byte 0x1E, 0x00, 0x00, 0x00
	.word ov22_0212278C
	.byte 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov22_021225a8
FUN_ov22_021225a8: ; 0x021225A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021225F0 ; =0x02122630
	str r0, [r4, #4]
	ldr r0, _021225F4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _021225F8 ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_021225F0: .word ov22_02122630
_021225F4: .word 0x00009CCD
_021225F8: .word 0x0000EA3C
	arm_func_end FUN_ov22_021225a8

	.section .sinit, 4
ov22_021225FC:
	.word FUN_ov22_021225a8

	.data
	.global ov22_02122620
ov22_02122620:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_02122624
ov22_02122624:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_02122628
ov22_02122628:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_0212262C
ov22_0212262C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_02122630
ov22_02122630:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov22_02122648
ov22_02122648: ; shift-jis string
	.byte 0x82, 0xAF, 0x82, 0xA2, 0x82, 0xAF, 0x82, 0xF1
	.byte 0x82, 0xBF, 0x00, 0x00
	.global ov22_02122654
ov22_02122654: ; shift-jis string
	.byte 0x82, 0xCB, 0x82, 0xC1, 0x82, 0xAF, 0x82, 0xC2, 0x82, 0x6F, 0x00, 0x00
	.global ov22_02122660
ov22_02122660:
	.word ov22_02122910
	.word ov22_02122938
	.word ov22_02122960
	.global ov22_0212266C
ov22_0212266C:
	.asciz "tmd_i01.pac_"
	.balign 4, 0
	.global ov22_0212267C
ov22_0212267C:
	.asciz "tmd_b00.pac_"
	.balign 4, 0
	.global ov22_0212268C
ov22_0212268C:
	.asciz "tmd_i03.pac_"
	.balign 4, 0
	.global ov22_0212269C
ov22_0212269C:
	.asciz "tmd_n00.pac_"
	.balign 4, 0
	.global ov22_021226AC
ov22_021226AC:
	.asciz "tmd_b05.pac_"
	.balign 4, 0
	.global ov22_021226BC
ov22_021226BC:
	.asciz "tmd_w00.pac_"
	.balign 4, 0
	.global ov22_021226CC
ov22_021226CC:
	.asciz "tmd_l01.pac_"
	.balign 4, 0
	.global ov22_021226DC
ov22_021226DC:
	.asciz "tmd_i06.pac_"
	.balign 4, 0
	.global ov22_021226EC
ov22_021226EC:
	.asciz "tmd_i04.pac_"
	.balign 4, 0
	.global ov22_021226FC
ov22_021226FC:
	.asciz "tmd_i00.pac_"
	.balign 4, 0
	.global ov22_0212270C
ov22_0212270C:
	.asciz "tmd_b12.pac_"
	.balign 4, 0
	.global ov22_0212271C
ov22_0212271C:
	.asciz "tmd_w01.pac_"
	.balign 4, 0
	.global ov22_0212272C
ov22_0212272C:
	.asciz "tmd_w02.pac_"
	.balign 4, 0
	.global ov22_0212273C
ov22_0212273C:
	.asciz "tmd_w04.pac_"
	.balign 4, 0
	.global ov22_0212274C
ov22_0212274C:
	.asciz "tmd_w06.pac_"
	.balign 4, 0
	.global ov22_0212275C
ov22_0212275C:
	.asciz "tmd_w08.pac_"
	.balign 4, 0
	.global ov22_0212276C
ov22_0212276C:
	.asciz "tmd_b11.pac_"
	.balign 4, 0
	.global ov22_0212277C
ov22_0212277C:
	.asciz "tmd_w10.pac_"
	.balign 4, 0
	.global ov22_0212278C
ov22_0212278C:
	.asciz "tmd_w11.pac_"
	.balign 4, 0
	.global ov22_0212279C
ov22_0212279C:
	.asciz "tmd_b03.pac_"
	.balign 4, 0
	.global ov22_021227AC
ov22_021227AC: ; shift-jis string
	.byte 0x82, 0xE4, 0x82, 0xA4
	.byte 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0x6F, 0x00, 0x00, 0x00, 0x00
	.global ov22_021227BC
ov22_021227BC:
	.asciz "tmd_b02.pac_"
	.balign 4, 0
	.global ov22_021227CC
ov22_021227CC:
	.asciz "tmd_w09.pac_"
	.balign 4, 0
	.global ov22_021227DC
ov22_021227DC:
	.asciz "tmd_b04.pac_"
	.balign 4, 0
	.global ov22_021227EC
ov22_021227EC:
	.asciz "tmd_w07.pac_"
	.balign 4, 0
	.global ov22_021227FC
ov22_021227FC:
	.asciz "tmd_b01.pac_"
	.balign 4, 0
	.global ov22_0212280C
ov22_0212280C:
	.asciz "tmd_w05.pac_"
	.balign 4, 0
	.global ov22_0212281C
ov22_0212281C:
	.asciz "tmd_b06.pac_"
	.balign 4, 0
	.global ov22_0212282C
ov22_0212282C:
	.asciz "tmd_b07.pac_"
	.balign 4, 0
	.global ov22_0212283C
ov22_0212283C:
	.asciz "tmd_b08.pac_"
	.balign 4, 0
	.global ov22_0212284C
ov22_0212284C:
	.asciz "tmd_i05.pac_"
	.balign 4, 0
	.global ov22_0212285C
ov22_0212285C:
	.asciz "tmd_l00.pac_"
	.balign 4, 0
	.global ov22_0212286C
ov22_0212286C:
	.asciz "tmd_l02.pac_"
	.balign 4, 0
	.global ov22_0212287C
ov22_0212287C:
	.word ov22_0212262C
	.word ov22_02122648
	.word ov22_02122654
	.word ov22_021227AC
	.global ov22_0212288C
ov22_0212288C: ; shift-jis string
	.byte 0x82, 0x50, 0x5B, 0x89
	.byte 0xF1, 0x90, 0xED, 0x2F, 0x82, 0xA9, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xD6, 0x81
	.byte 0x49, 0x00, 0x00, 0x00
	.global ov22_021228A4
ov22_021228A4: ; shift-jis string
	.byte 0x82, 0x51, 0x5B, 0x89, 0xF1, 0x90, 0xED, 0x2F, 0x82, 0xA9, 0x82, 0xA2
	.byte 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xD6, 0x81, 0x49, 0x00, 0x00, 0x00
	.global ov22_021228BC
ov22_021228BC: ; shift-jis string
	.byte 0x82, 0x50, 0x5B, 0x89
	.byte 0xF1, 0x90, 0xED, 0x2F, 0x82, 0xA9, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xC6, 0x82
	.byte 0xC1, 0x82, 0xCF, 0x81, 0x49, 0x00, 0x00, 0x00
	.global ov22_021228D8
ov22_021228D8: ; shift-jis string
	.byte 0x82, 0x51, 0x5B, 0x89, 0xF1, 0x90, 0xED, 0x2F
	.byte 0x82, 0xA9, 0x82, 0xA2, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xC6, 0x82, 0xC1, 0x82, 0xCF, 0x81
	.byte 0x49, 0x00, 0x00, 0x00
	.global ov22_021228F4
ov22_021228F4: ; shift-jis string
	.byte 0x5B, 0x8C, 0x88, 0x8F, 0x9F, 0x90, 0xED, 0x2F, 0x82, 0xAF, 0x82, 0xC1
	.byte 0x82, 0xB5, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82, 0xD6, 0x81, 0x49, 0x00
	.global ov22_02122910
ov22_02122910:
	.asciz "/data_iz/logic/TournamentRankPlus3.dat"
	.balign 4, 0
	.global ov22_02122938
ov22_02122938:
	.asciz "/data_iz/logic/TournamentRankPlus2.dat"
	.balign 4, 0
	.global ov22_02122960
ov22_02122960:
	.asciz "/data_iz/logic/TournamentRankPlus1.dat"
	.balign 4, 0
	.global ov22_02122988
ov22_02122988: ; shift-jis string
	.byte 0x5B, 0x95, 0xDB, 0x91, 0xB6, 0x2F, 0x82, 0xD9
	.byte 0x82, 0xBC, 0x82, 0xF1, 0x5D, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x82, 0xE2, 0x82, 0xDF
	.byte 0x82, 0xC4, 0x82, 0xE0, 0x82, 0xA2, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_021229B4
ov22_021229B4: ; shift-jis string
	.byte 0x82, 0xB1, 0x82, 0xCC, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81
	.byte 0x83, 0x93, 0x83, 0x67, 0x82, 0xF0, 0x0A, 0x5B, 0x95, 0xDB, 0x91, 0xB6, 0x2F, 0x82, 0xD9, 0x82
	.byte 0xBC, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov22_021229E0
ov22_021229E0: ; shift-jis string
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0, 0x5B, 0x8F, 0xE3, 0x8F, 0x91, 0x2F, 0x82, 0xA4
	.byte 0x82, 0xED, 0x82, 0xAA, 0x5D, 0x82, 0xAB, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A
	.byte 0x82, 0xE6, 0x82, 0xEB, 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_02122A14
ov22_02122A14:
	.word ov22_02122624
	.word ov22_0212288C
	.word ov22_021228BC
	.word ov22_021228A4
	.word ov22_021228D8
	.word ov22_021228F4
	.word ov22_02122AD0
	.word ov22_02122A48
	.word ov22_021229B4
	.word ov22_02122988
	.word ov22_021229E0
	.word ov22_02122620
	.word ov22_02122A84
	.global ov22_02122A48
ov22_02122A48: ; shift-jis string
	.byte 0x83, 0x8A, 0x83, 0x5E, 0x83, 0x43, 0x83, 0x41
	.byte 0x82, 0xC9, 0x82, 0xC8, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x5B, 0x96, 0x7B
	.byte 0x93, 0x96, 0x2F, 0x82, 0xD9, 0x82, 0xF1, 0x82, 0xC6, 0x82, 0xA4, 0x5D, 0x82, 0xC9, 0x82, 0xE2
	.byte 0x82, 0xDF, 0x82, 0xC4, 0x82, 0xE0, 0x82, 0xA2, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9
	.byte 0x81, 0x48, 0x00, 0x00
	.global ov22_02122A84
ov22_02122A84: ; shift-jis string
	.byte 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xF0, 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B
	.byte 0x8F, 0x49, 0x97, 0xB9, 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xAA, 0x81, 0x40, 0x82, 0xE6, 0x82, 0xEB
	.byte 0x82, 0xB5, 0x82, 0xA2, 0x82, 0xC5, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov22_02122AD0
ov22_02122AD0: ; shift-jis string
	.byte 0x5B, 0x8E, 0x63, 0x94, 0x4F, 0x2F, 0x82, 0xB4, 0x82, 0xF1, 0x82, 0xCB, 0x82, 0xF1, 0x5D, 0x81
	.byte 0x49, 0x81, 0x49, 0x83, 0x67, 0x81, 0x5B, 0x83, 0x69, 0x83, 0x81, 0x83, 0x93, 0x83, 0x67, 0x5B
	.byte 0x94, 0x73, 0x91, 0xDE, 0x2F, 0x82, 0xCD, 0x82, 0xA2, 0x82, 0xBD, 0x82, 0xA2, 0x5D, 0x81, 0x49
	.byte 0x81, 0x49, 0x0A, 0x5B, 0x8E, 0x9F, 0x2F, 0x82, 0xC2, 0x82, 0xAC, 0x5D, 0x82, 0xCC, 0x5B, 0x92
	.byte 0xA7, 0x90, 0xED, 0x2F, 0x82, 0xBF, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xF0, 0x82, 0xA8, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xB5, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov22_02122B44
ov22_02122B44:
	.word FUN_ov22_02122228
	.word FUN_ov22_02122214
	.word FUN_ov22_02120ed4
	.word FUN_ov22_02121f24
	.word FUN_ov22_02119f00
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov22_0211a474
	.word FUN_ov22_0211a570
	.word FUN_ov22_0211a3d0
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
	.global ov22_02122BB0
ov22_02122BB0:
	.asciz "2D_019"
	.balign 4, 0
	.global ov22_02122BB8
ov22_02122BB8:
	.asciz "/data_iz/pic3d/menu_tournament.SPL"
	.balign 4, 0
	.global ov22_02122BDC
ov22_02122BDC:
	.asciz "/data_iz/pic2d/team/mgu_tu.pkh"
	.balign 4, 0
	.global ov22_02122BFC
ov22_02122BFC:
	.asciz "/data_iz/pic3d/io.pkh"
	.balign 4, 0
	.global ov22_02122C14
ov22_02122C14:
	.asciz "/data_iz/pic3d/menu_tournament.SPD"
	.balign 4, 0
	.global ov22_02122C38
ov22_02122C38:
	.asciz "/data_iz/pic3d/menu_tournament.SPD"
	.balign 4, 0
	.global ov22_02122C5C
ov22_02122C5C:
	.asciz "tmd_bs00.pac_"
	.balign 4, 0
	.global ov22_02122C6C
ov22_02122C6C:
	.asciz "tmd_bs01.pac_"
	.balign 4, 0
	.global ov22_02122C7C
ov22_02122C7C:
	.asciz "tmd_bs02.pac_"
	.balign 4, 0
	.global ov22_02122C8C
ov22_02122C8C:
	.asciz "/data_iz/pic3d/menu_tournament.SPD"
	.balign 4, 0
	.global ov22_02122CB0
ov22_02122CB0:
	.asciz "/data_iz/pic2d/team/mgu_tu.pkb"
	.balign 4, 0
	.global ov22_02122CD0
ov22_02122CD0:
	.asciz "/data_iz/pic2d/team/mgu_tu.pkb"
	.balign 4, 0
	.global ov22_02122CF0
ov22_02122CF0:
	.asciz "/data_iz/logic/TournamentRank.dat"
	.balign 4, 0
	.global ov22_02122D14
ov22_02122D14:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122D20
ov22_02122D20:
	.asciz "/data_iz/logic/TournamentName"
	.balign 4, 0
	.global ov22_02122D40
ov22_02122D40:
	.asciz "%s%s"
	.balign 4, 0
	.global ov22_02122D48
ov22_02122D48:
	.byte 0x83, 0x4A, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00
	.global ov22_02122D50
ov22_02122D50:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122D5C
ov22_02122D5C:
	.asciz "/data_iz/logic/TournamentTeam"
	.balign 4, 0
	.global ov22_02122D7C
ov22_02122D7C:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122D88
ov22_02122D88:
	.asciz "/data_iz/logic/TournamentTeam"
	.balign 4, 0
	.global ov22_02122DA8
ov22_02122DA8:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122DB4
ov22_02122DB4:
	.asciz "/data_iz/logic/TournamentItem"
	.balign 4, 0
	.global ov22_02122DD4
ov22_02122DD4:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122DE0
ov22_02122DE0:
	.asciz "/data_iz/logic/TournamentName"
	.balign 4, 0
	.global ov22_02122E00
ov22_02122E00:
	.asciz "%s%s"
	.balign 4, 0
	.global ov22_02122E08
ov22_02122E08: ; shift-jis string
	.byte 0x83, 0x4A, 0x83, 0x62, 0x83, 0x76, 0x00, 0x00
	.global ov22_02122E10
ov22_02122E10:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122E1C
ov22_02122E1C:
	.asciz "/data_iz/logic/TournamentItem"
	.balign 4, 0
	.global ov22_02122E3C
ov22_02122E3C:
	.asciz "/data_iz/pic3d/io.pkb"
	.balign 4, 0
	.global ov22_02122E54
ov22_02122E54:
	.asciz "/data_iz/pic3d/io.pkb"
	.balign 4, 0
	.global ov22_02122E6C
ov22_02122E6C:
	.asciz "+%d"
	.balign 4, 0
	.global ov22_02122E70
ov22_02122E70:
	.asciz "%s%s"
	.balign 4, 0
	.global ov22_02122E78
ov22_02122E78: ; shift-jis string
	.byte 0x82, 0xC8, 0x82, 0xB5, 0x00, 0x00, 0x00, 0x00
	.global ov22_02122E80
ov22_02122E80:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122E8C
ov22_02122E8C:
	.asciz "/data_iz/logic/TournamentName"
	.balign 4, 0
	.global ov22_02122EAC
ov22_02122EAC:
	.byte 0x25, 0x73, 0x83, 0x4A
	.byte 0x83, 0x62, 0x83, 0x76, 0x00, 0x00, 0x00, 0x00
	.global ov22_02122EB8
ov22_02122EB8:
	.asciz "%s%02d.dat"
	.balign 4, 0
	.global ov22_02122EC4
ov22_02122EC4:
	.asciz "/data_iz/logic/TournamentTeam"
	.balign 4, 0

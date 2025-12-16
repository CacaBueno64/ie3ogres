
	.include "/macros/function.inc"
	.include "/include/overlay52.inc"

	.text
	arm_func_start FUN_ov52_02119f00
FUN_ov52_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f00

	arm_func_start FUN_ov52_02119f14
FUN_ov52_02119f14: ; 0x02119F14
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f14

	arm_func_start FUN_ov52_02119f28
FUN_ov52_02119f28: ; 0x02119F28
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f28

	arm_func_start FUN_ov52_02119f3c
FUN_ov52_02119f3c: ; 0x02119F3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f3c

	arm_func_start FUN_ov52_02119f50
FUN_ov52_02119f50: ; 0x02119F50
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f50

	arm_func_start FUN_ov52_02119f64
FUN_ov52_02119f64: ; 0x02119F64
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f64

	arm_func_start FUN_ov52_02119f78
FUN_ov52_02119f78: ; 0x02119F78
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x108
	bl FUN_0206c110
	add r0, r4, #0xf0
	bl FUN_ov52_02122358
	mov r0, r4
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02119f78

	arm_func_start FUN_ov52_02119fa0
FUN_ov52_02119fa0: ; 0x02119FA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x2cc
	ldr r2, _0211A0CC ; =0x021245AC
	add r0, r0, #0xc00
	mov r6, r1
	str r2, [r7]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0x3bc
	ldr r1, _0211A0D0 ; =0x02124440
	add r0, r0, #0xc00
	str r1, [r7, #0xecc]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0xb8
	ldr r1, _0211A0D4 ; =0x021243F8
	add r0, r0, #0x1000
	str r1, [r7, #0xfbc]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0x1ac
	ldr r2, _0211A0D8 ; =0x02124518
	add r1, r7, #0x1000
	add r0, r0, #0x1000
	str r2, [r1, #0xb8]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0x29c
	ldr r2, _0211A0DC ; =0x021243B0
	add r1, r7, #0x1000
	add r0, r0, #0x1000
	str r2, [r1, #0x1ac]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0x38c
	ldr r2, _0211A0E0 ; =0x02124368
	add r1, r7, #0x1000
	add r0, r0, #0x1000
	str r2, [r1, #0x29c]
	bl FUN_ov52_0211b6a8
	add r0, r7, #0x8c
	add r5, r0, #0x1400
	ldr r2, _0211A0E4 ; =0x02124560
	add r1, r7, #0x1000
	mov r0, r5
	str r2, [r1, #0x38c]
	bl FUN_ov52_0211b6a8
	mov r4, #0
	ldr r1, _0211A0E8 ; =0x021244D0
	add r0, r7, #0x1000
	str r1, [r0, #0x48c]
	add r0, r5, #0x108
	str r4, [r5, #0xf0]
	str r4, [r5, #0xf4]
	str r4, [r5, #0xf8]
	str r4, [r5, #0xfc]
	str r4, [r5, #0x100]
	str r4, [r5, #0x104]
	bl FUN_0206c0d8
	add r1, r7, #0x1000
	add r0, r7, #0x268
	str r6, [r1, #0x6a0]
	add r3, r0, #0x1400
	add r0, r7, #0x284
	add r2, r0, #0x1400
	mov r0, r7
	str r4, [r1, #0x668]
	str r4, [r1, #0x684]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #0xc]
	str r4, [r3, #0x10]
	str r4, [r3, #0x14]
	str r4, [r2, #4]
	str r4, [r2, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #0x10]
	str r4, [r2, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A0CC: .word ov52_021245AC
_0211A0D0: .word ov52_02124440
_0211A0D4: .word ov52_021243F8
_0211A0D8: .word ov52_02124518
_0211A0DC: .word ov52_021243B0
_0211A0E0: .word ov52_02124368
_0211A0E4: .word ov52_02124560
_0211A0E8: .word ov52_021244D0
	arm_func_end FUN_ov52_02119fa0

	arm_func_start FUN_ov52_0211a0ec
FUN_ov52_0211a0ec: ; 0x0211A0EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x284
	add r0, r0, #0x1400
	bl FUN_ov52_02122218
	add r0, r4, #0x268
	add r0, r0, #0x1400
	bl FUN_ov52_02122218
	add r0, r4, #0x8c
	add r5, r0, #0x1400
	add r0, r5, #0x108
	bl FUN_0206c110
	add r0, r5, #0xf0
	bl FUN_ov52_02122358
	mov r0, r5
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x38c
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x29c
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x1ac
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x3bc
	add r0, r0, #0xc00
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x2cc
	add r0, r0, #0xc00
	bl FUN_ov52_0211b6d0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_0211a0ec

	arm_func_start FUN_ov52_0211a17c
FUN_ov52_0211a17c: ; 0x0211A17C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x284
	add r0, r0, #0x1400
	bl FUN_ov52_02122218
	add r0, r4, #0x268
	add r0, r0, #0x1400
	bl FUN_ov52_02122218
	add r0, r4, #0x8c
	add r5, r0, #0x1400
	add r0, r5, #0x108
	bl FUN_0206c110
	add r0, r5, #0xf0
	bl FUN_ov52_02122358
	mov r0, r5
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x38c
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x29c
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x1ac
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x3bc
	add r0, r0, #0xc00
	bl FUN_ov52_0211b6d0
	add r0, r4, #0x2cc
	add r0, r0, #0xc00
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_0211a17c

	arm_func_start FUN_ov52_0211a214
FUN_ov52_0211a214: ; 0x0211A214
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	ldr r1, [r0]
	mov r6, r0
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211A488 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211A48C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	ldr r0, _0211A490 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r4, _0211A494 ; =0x0209BA20
	mov r0, r4
	bl FUN_0204eba0
	mov r0, r4
	bl FUN_02071fac
	add r0, r6, #0x28c
	mov r5, #0
	mov r4, #0x40
	add r0, r0, #0xc00
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r7, #0x18
	add r0, r6, #4
	mov r1, r5
	mov r2, r7
	bl MI_CpuFill8
	add r0, r6, #0x1c
	mov r1, r5
	mov r2, #0xa8
	bl MI_CpuFill8
	mov r2, r7
	add r0, r6, #0xc4
	mov r1, r5
	bl MI_CpuFill8
	add r1, r6, #0x1000
	add r0, r6, #0x1600
	strh r5, [r0, #0xa8]
	strh r5, [r0, #0xb0]
	strh r5, [r0, #0xb2]
	mov r0, #1
	str r0, [r1, #0x6ac]
	ldr r0, _0211A498 ; =0x02124624
	add r7, sp, #0x40
	str r5, [r1, #0x6a4]
	strb r5, [r1, #0x6b4]
	str r5, [r1, #0x6b8]
	strb r5, [r1, #0x6bc]
	mov r1, r7
	bl FUN_ov16_020f3054
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r0, r6, #0xdc
	bl memcpy
	mov r0, r7
	bl FUN_ov16_020f33fc
	ldr r0, _0211A49C ; =0x02124644
	str r5, [sp, #0x40]
	str r5, [sp, #0x44]
	mov r1, r7
	strb r5, [sp, #0x48]
	strb r5, [sp, #0x49]
	strb r5, [sp, #0x4a]
	bl FUN_ov16_020f3054
	add r0, r6, #0x20c
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r0, r0, #0x800
	bl memcpy
	mov r0, r7
	bl FUN_ov16_020f33fc
	ldr r0, _0211A4A0 ; =0x02099F44
	mov r2, r4
	add r4, sp, #0
	ldr r0, [r0]
	mov r1, r4
	str r5, [sp, #0x40]
	str r5, [sp, #0x44]
	strb r5, [sp, #0x48]
	strb r5, [sp, #0x49]
	strb r5, [sp, #0x4a]
	bl FUN_ov131_0213b6d8
	mov r2, #1
	b _0211A388
_0211A378:
	ldrb r1, [r4, r5]
	add r5, r5, #1
	add r1, r6, r1
	strb r2, [r1, #0xe8c]
_0211A388:
	cmp r5, r0
	blt _0211A378
	add r0, r6, #0x2cc
	mov r4, #1
	strb r4, [r6, #0xe8d]
	add r0, r0, #0xc00
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0x3bc
	add r0, r0, #0xc00
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0x1ac
	add r0, r0, #0x1000
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0x29c
	add r0, r0, #0x1000
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0x38c
	add r0, r0, #0x1000
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0xb8
	add r0, r0, #0x1000
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	add r0, r6, #0x8c
	add r0, r0, #0x1400
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #8]
	blx r2
	ldr r0, _0211A4A4 ; =0x02124668
	add r1, r6, #4
	bl FUN_ov16_020f3054
	ldr r0, _0211A4A8 ; =0x02124684
	add r1, r6, #0x10
	bl FUN_ov16_020f3054
	mov r2, #0
	add r1, r6, #0x1000
	str r4, [r1, #0x680]
	add r0, r6, #0x2cc
	add r0, r0, #0xc00
	str r0, [r1, #0x664]
	str r2, [r1, #0x65c]
	str r2, [r1, #0x660]
	sub r0, r2, #1
	str r0, [r1, #0x658]
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A488: .word unk_02099EB4
_0211A48C: .word unk_02099ED4
_0211A490: .word unk_02099F38
_0211A494: .word gLogicThink
_0211A498: .word ov52_02124624
_0211A49C: .word ov52_02124644
_0211A4A0: .word unk_02099F44
_0211A4A4: .word ov52_02124668
_0211A4A8: .word ov52_02124684
	arm_func_end FUN_ov52_0211a214

	arm_func_start FUN_ov52_0211a4ac
FUN_ov52_0211a4ac: ; 0x0211A4AC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r0
	add r0, r6, #0x2cc
	add r0, r0, #0xc00
	ldr r1, [r0]
	mov r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0x3bc
	add r0, r0, #0xc00
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0x1ac
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0x29c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0x38c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0xb8
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	add r0, r6, #0x8c
	add r0, r0, #0x1400
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r5, r4
	ldr r7, _0211A650 ; =0x02099F38
	b _0211A584
_0211A550:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211A580
	ldr r0, [r7]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x1c]
_0211A580:
	add r5, r5, #1
_0211A584:
	cmp r5, #0x2a
	blt _0211A550
	mov r5, #0
	ldr r7, _0211A650 ; =0x02099F38
	b _0211A5BC
_0211A598:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	beq _0211A5B8
	ldr r0, [r7]
	bl FUN_ov16_021128c4
	add r0, r6, r5, lsl #2
	str r4, [r0, #0xc4]
_0211A5B8:
	add r5, r5, #1
_0211A5BC:
	cmp r5, #6
	blt _0211A598
	add r9, r6, #4
	mov r5, #0
	mov r7, #1
	mov r6, #0xc
	b _0211A60C
_0211A5D8:
	mul r8, r5, r6
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f338c
	mov r0, r10
	bl FUN_ov16_020f33fc
	str r4, [r9, r8]
	str r4, [r10, #4]
	strb r4, [r10, #8]
	strb r4, [r10, #9]
	strb r4, [r10, #0xa]
	add r5, r5, #1
_0211A60C:
	cmp r5, #2
	blt _0211A5D8
	ldr r0, _0211A654 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211A658 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211A650 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r4, _0211A65C ; =0x0209BA20
	mov r0, r4
	bl FUN_0204ec3c
	mov r0, r4
	bl FUN_02072020
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A650: .word unk_02099F38
_0211A654: .word unk_02099EB4
_0211A658: .word unk_02099ED4
_0211A65C: .word gLogicThink
	arm_func_end FUN_ov52_0211a4ac

	arm_func_start FUN_ov52_0211a660
FUN_ov52_0211a660: ; 0x0211A660
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0211A908 ; =0x0209A110
	ldr r5, _0211A90C ; =0x02099ED4
	mov r4, r0
	ldr r0, [r5]
	ldr r1, [r1]
	bl FUN_ov16_0210e10c
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x1000
	ldr r1, [r0, #0x680]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	b _0211A80C
_0211A6B8: ; jump table
	b _0211A80C ; case 0
	b _0211A6D0 ; case 1
	b _0211A6F0 ; case 2
	b _0211A728 ; case 3
	b _0211A744 ; case 4
	b _0211A7C0 ; case 5
_0211A6D0:
	ldr r0, [r0, #0x664]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	add r0, r4, #0x1000
	mov r1, #2
_0211A6E8:
	str r1, [r0, #0x680]
	b _0211A80C
_0211A6F0:
	ldr r1, [r0, #0x660]
	cmp r1, #0
	beq _0211A708
	ldr r0, [r0, #0x664]
	cmp r1, r0
	beq _0211A71C
_0211A708:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x664]
	ldr r1, [r0]
	ldr r1, [r1, #0x14]
	blx r1
_0211A71C:
	add r0, r4, #0x1000
	mov r1, #3
	b _0211A6E8
_0211A728:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	add r0, r4, #0x1000
	mov r1, #4
	b _0211A6E8
_0211A744:
	ldr r0, [r0, #0x664]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	add r1, r4, #0x1000
	ldr r0, [r1, #0x660]
	cmp r0, #0
	ldrne r1, [r1, #0x664]
	cmpne r0, r1
	beq _0211A790
	ldr r2, [r0]
	mov r1, #0
	ldr r2, [r2, #0x30]
	blx r2
	add r0, r4, #0x1000
	ldr r0, [r0, #0x660]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	blx r1
_0211A790:
	add r1, r4, #0x1000
	ldr r0, [r1, #0x664]
	mov r2, #0
	str r0, [r1, #0x660]
	str r2, [r1, #0x664]
	ldr r2, [r0]
	mov r1, #1
	ldr r2, [r2, #0x30]
	blx r2
	add r0, r4, #0x1000
	mov r1, #5
	b _0211A6E8
_0211A7C0:
	mov r0, r4
	bl FUN_ov52_0211aad0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x660]
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	add r0, r4, #0x1000
	ldr r0, [r0, #0x660]
	mov r1, #0
	ldr r3, [r0]
	mov r2, r1
	ldr r3, [r3, #0x24]
	blx r3
	add r0, r4, #0x1000
	ldr r0, [r0, #0x660]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
_0211A80C:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x658]
	cmn r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _0211A910 ; =0x02099EB4
	ldr r0, [r5]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, [r5]
	bl FUN_ov16_0210e980
	add r0, r4, #0x1000
	ldr r1, [r0, #0x658]
	tst r1, #0x1000
	bicne r1, r1, #0x1000
	strne r1, [r0, #0x658]
	bne _0211A878
	ldr r0, [r0, #0x65c]
	cmp r0, r1
	beq _0211A878
	mov r0, #0
	sub r2, sp, #4
	strb r0, [r2]
	add r0, r4, #0x268
	add r1, r4, #0x25c
	ldr r2, [r2]
	add r0, r0, #0x1400
	add r1, r1, #0x1400
	bl FUN_ov52_02121ac0
_0211A878:
	add r1, r4, #0x1000
	ldr r0, [r1, #0x658]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211A8E4
_0211A88C: ; jump table
	b _0211A8E4 ; case 0
	b _0211A8A8 ; case 1
	b _0211A8B4 ; case 2
	b _0211A8BC ; case 3
	b _0211A8D8 ; case 4
	b _0211A8C4 ; case 5
	b _0211A8CC ; case 6
_0211A8A8:
	add r0, r4, #0x3bc
	add r0, r0, #0xc00
	b _0211A8E0
_0211A8B4:
	add r0, r4, #0xb8
	b _0211A8D0
_0211A8BC:
	add r0, r4, #0x1ac
	b _0211A8D0
_0211A8C4:
	add r0, r4, #0x29c
	b _0211A8D0
_0211A8CC:
	add r0, r4, #0x38c
_0211A8D0:
	add r0, r0, #0x1000
	b _0211A8E0
_0211A8D8:
	add r0, r4, #0x8c
	add r0, r0, #0x1400
_0211A8E0:
	str r0, [r1, #0x664]
_0211A8E4:
	add r0, r4, #0x1000
	ldr r3, [r0, #0x658]
	mvn r2, #0
	mov r1, #1
	str r3, [r0, #0x69c]
	str r3, [r0, #0x65c]
	str r2, [r0, #0x658]
	str r1, [r0, #0x680]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A908: .word unk_0209A110
_0211A90C: .word unk_02099ED4
_0211A910: .word unk_02099EB4
	arm_func_end FUN_ov52_0211a660

	arm_func_start FUN_ov52_0211a914
FUN_ov52_0211a914: ; 0x0211A914
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, [r0]
	mov r6, r0
	ldr r3, [r3, #0x58]
	mov r5, r1
	mov r4, r2
	blx r3
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211A97C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addeq r0, r6, #0x1000
	ldreq r1, [r0, #0x680]
	cmpeq r1, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0x660]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r3, [r0]
	mov r1, r5
	ldr r3, [r3, #0x24]
	mov r2, r4
	blx r3
	ldmfd sp!, {r4, r5, r6, pc}
_0211A97C: .word unk_02099ED4
	arm_func_end FUN_ov52_0211a914

	arm_func_start FUN_ov52_0211a980
FUN_ov52_0211a980: ; 0x0211A980
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0]
	mov r5, r0
	ldr r2, [r2, #0x58]
	mov r4, r1
	blx r2
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AA10 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addeq r0, r5, #0x1000
	ldreq r1, [r0, #0x680]
	cmpeq r1, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0, #0x660]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _0211AA14 ; =0x02099EB4
	mov r1, r4
	ldr r0, [r6]
	mov r2, #1
	bl FUN_ov16_0210f20c
	mov r7, r0
	ldr r0, [r6]
	bl FUN_ov16_0210f484
	add r1, r5, #0x1000
	mov r3, r0
	ldr r0, [r1, #0x660]
	mov r1, r4
	ldr r4, [r0]
	mov r2, r7
	ldr r4, [r4, #0x28]
	blx r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA10: .word unk_02099ED4
_0211AA14: .word unk_02099EB4
	arm_func_end FUN_ov52_0211a980

	arm_func_start FUN_ov52_0211aa18
FUN_ov52_0211aa18: ; 0x0211AA18
	bx lr
	arm_func_end FUN_ov52_0211aa18

	arm_func_start FUN_ov52_0211aa1c
FUN_ov52_0211aa1c: ; 0x0211AA1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211AA7C ; =0x02099F38
	b _0211AA70
_0211AA34:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211AA6C
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211AA6C
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x1c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211AA6C:
	add r6, r6, #1
_0211AA70:
	cmp r6, #0x2a
	blt _0211AA34
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AA7C: .word unk_02099F38
	arm_func_end FUN_ov52_0211aa1c

	arm_func_start FUN_ov52_0211aa80
FUN_ov52_0211aa80: ; 0x0211AA80
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211AACC ; =0x02099F38
	b _0211AABC
_0211AA94:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0211AAB8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211AAB8:
	add r5, r5, #1
_0211AABC:
	cmp r5, #0x2a
	blt _0211AA94
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211AACC: .word unk_02099F38
	arm_func_end FUN_ov52_0211aa80

	arm_func_start FUN_ov52_0211aad0
FUN_ov52_0211aad0: ; 0x0211AAD0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r1, r7, #0x1000
	ldr r0, [r1, #0x69c]
	mov r5, #1
	cmp r0, #6
	mov r6, #0
	addls pc, pc, r0, lsl #2
	b _0211AC5C
_0211AAF4: ; jump table
	b _0211AC5C ; case 0
	b _0211AB10 ; case 1
	b _0211AB20 ; case 2
	b _0211ABB4 ; case 3
	b _0211ABC4 ; case 4
	b _0211ABB4 ; case 5
	b _0211ABB4 ; case 6
_0211AB10:
	str r6, [r1, #0x6b8]
	str r5, [r1, #0x6a4]
	str r6, [r1, #0x6ac]
	b _0211AC60
_0211AB20:
	add r0, r7, #0x3bc
	add r0, r0, #0xc00
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	sub r0, r0, #1
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0211ABA4
_0211AB44: ; jump table
	b _0211AB5C ; case 0
	b _0211AB68 ; case 1
	b _0211AB74 ; case 2
	b _0211AB80 ; case 3
	b _0211AB8C ; case 4
	b _0211AB98 ; case 5
_0211AB5C:
	add r0, r7, #0x1000
	mov r1, #2
	b _0211ABA0
_0211AB68:
	add r0, r7, #0x1000
	mov r1, #3
	b _0211ABA0
_0211AB74:
	add r0, r7, #0x1000
	mov r1, #4
	b _0211ABA0
_0211AB80:
	add r0, r7, #0x1000
	mov r1, #5
	b _0211ABA0
_0211AB8C:
	add r0, r7, #0x1000
	mov r1, #6
	b _0211ABA0
_0211AB98:
	add r0, r7, #0x1000
	mov r1, #7
_0211ABA0:
	str r1, [r0, #0x6ac]
_0211ABA4:
	add r0, r7, #0x1000
	str r6, [r0, #0x6b8]
	str r5, [r0, #0x6a4]
	b _0211AC60
_0211ABB4:
	str r6, [r1, #0x6b8]
	str r5, [r1, #0x6ac]
	str r5, [r1, #0x6a4]
	b _0211AC60
_0211ABC4:
	add r0, r7, #0x8c
	mov r4, #2
	add r0, r0, #0x1400
	str r4, [r1, #0x6a4]
	bl FUN_ov52_02121878
	cmp r0, #0
	beq _0211AC34
	ldrb r1, [r0, #3]
	tst r1, #0xa
	beq _0211AC04
	ldrh r2, [r0]
	add r0, r7, #0x1600
	add r1, r7, #0x1000
	strh r2, [r0, #0xa8]
	strb r4, [r1, #0x6b4]
	b _0211AC44
_0211AC04:
	tst r1, #1
	addeq r0, r7, #0x1600
	addeq r1, r7, #0x1000
	streqh r6, [r0, #0xa8]
	streqb r6, [r1, #0x6b4]
	beq _0211AC44
	ldrh r2, [r0]
	add r0, r7, #0x1600
	add r1, r7, #0x1000
	strh r2, [r0, #0xa8]
	strb r5, [r1, #0x6b4]
	b _0211AC44
_0211AC34:
	add r0, r7, #0x1600
	add r1, r7, #0x1000
	strh r6, [r0, #0xa8]
	strb r6, [r1, #0x6b4]
_0211AC44:
	ldr r0, _0211AC90 ; =0x0209BA20
	mov r1, #1
	bl FUN_0207249c
	add r1, r7, #0x1000
	str r0, [r1, #0x6b8]
	b _0211AC60
_0211AC5C:
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC60:
	add r0, r7, #0x1000
	ldr r0, [r0, #0x6a0]
	add r1, r7, #0x2a4
	ldr r2, [r0]
	add r1, r1, #0x1400
	ldr r2, [r2, #0x3c]
	blx r2
	cmp r0, #0
	addne r0, r7, #0x1000
	mvnne r1, #0
	strne r1, [r0, #0x69c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AC90: .word gLogicThink
	arm_func_end FUN_ov52_0211aad0

	arm_func_start FUN_ov52_0211ac94
FUN_ov52_0211ac94: ; 0x0211AC94
	stmfd sp!, {r3, lr}
	add r0, r0, #0x1000
	str r1, [r0, #0x658]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0211ACB8 ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, pc}
_0211ACB8: .word gL5Sound
	arm_func_end FUN_ov52_0211ac94

	arm_func_start FUN_ov52_0211acbc
FUN_ov52_0211acbc: ; 0x0211ACBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r2, r6, #0x1000
	ldr r3, [r2, #0x66c]
	mov r5, r1
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x268
	add r7, r0, #0x1400
	ldr r1, [r2, #0x668]
	sub r2, r3, #1
	add r4, r2, r1
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x14]
	add r0, r0, r4, lsr #8
	bl _u32_div_f
	ldr r0, [r7, #8]
	mov r2, #0
	ldr r1, [r0, r1, lsl #2]
	and r0, r4, #0xff
	ldr r0, [r1, r0, lsl #2]
	add r1, r6, #0x268
	orr r3, r0, #0x1000
	add r0, r6, #0x1000
	str r3, [r0, #0x658]
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, r1, #0x1400
	mov r1, #1
	bl FUN_ov52_0212217c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211AD60 ; =0x02099EB4
	mov r1, #0xe
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldr r0, _0211AD64 ; =gL5Sound
	mov r1, #4
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AD60: .word unk_02099EB4
_0211AD64: .word gL5Sound
	arm_func_end FUN_ov52_0211acbc

	arm_func_start FUN_ov52_0211ad68
FUN_ov52_0211ad68: ; 0x0211AD68
	add r0, r0, r1
	ldrb r0, [r0, #0xe8c]
	bx lr
	arm_func_end FUN_ov52_0211ad68

	arm_func_start FUN_ov52_0211ad74
FUN_ov52_0211ad74: ; 0x0211AD74
	add r2, r0, #0xdc
	mov r0, #0x150
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_ov52_0211ad74

	arm_func_start FUN_ov52_0211ad84
FUN_ov52_0211ad84: ; 0x0211AD84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	add r2, r5, #0x28c
	add r2, r2, #0x1400
	mov r4, r1
	ldr r1, [r0, #0x684]
	ldr r0, [r2, #4]
	add r4, r4, r1
	ldr r1, [r2, #0xc]
	add r0, r0, r4, lsr #8
	bl _u32_div_f
	add r0, r5, #0x1000
	ldr r2, [r0, #0x68c]
	and r0, r4, #0xff
	ldr r1, [r2, r1, lsl #2]
	ldr r0, [r1, r0, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_0211ad84

	arm_func_start FUN_ov52_0211adcc
FUN_ov52_0211adcc: ; 0x0211ADCC
	add r0, r0, #0x1000
	ldr r0, [r0, #0x688]
	bx lr
	arm_func_end FUN_ov52_0211adcc

	arm_func_start FUN_ov52_0211add8
FUN_ov52_0211add8: ; 0x0211ADD8
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r3, r0
	str r2, [sp]
	mov r2, r1
	ldr r1, [r3, #4]
	ldr r0, _0211AE00 ; =0x0212469C
	add r3, r3, #0x1c
	bl FUN_ov16_020f5450
	ldmfd sp!, {r3, pc}
_0211AE00: .word ov52_0212469C
	arm_func_end FUN_ov52_0211add8

	arm_func_start FUN_ov52_0211ae04
FUN_ov52_0211ae04: ; 0x0211AE04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1d4
	mov r4, #0
	str r0, [sp, #0x10]
	mov r5, r1
	mov r0, r4
	add r1, sp, #0x2c
	mov r2, #0x160
	str r4, [sp, #0x20]
	bl MIi_CpuClearFast
	ldr r1, _0211B124 ; =0x0209C220
	ldr r0, [sp, #0x10]
	ldrh r10, [r1, #0x6a]
	add r1, r0, #0x1600
	add r2, r0, #0x284
	add r0, r2, #0x1400
	strh r4, [r1, #0xb0]
	strh r4, [r1, #0xb2]
	bl FUN_ov52_02121b38
	ldr r0, [sp, #0x10]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x688]
	ldr r0, [sp, #0x10]
	add r1, r1, #0xc
	add r0, r0, #0x284
	add r0, r0, #0x1400
	bl FUN_ov52_02121ba8
	ldr r3, _0211B128 ; =gL5Allocator
	ldr r1, _0211B12C ; =0x021246B8
	ldr r0, [r3]
	cmp r0, #0
	beq _0211AEA4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r4, #1
	add r2, sp, #0x20
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP11L5Allocatorimih
	mov r4, r0
_0211AEA4:
	add r6, sp, #0x18c
	mov r0, r6
	str r4, [sp, #0x28]
	bl FS_InitFile
	ldr r1, _0211B130 ; =0x021246D0
	mov r0, r6
	bl FS_OpenFile
	cmp r0, #0
	beq _0211B104
	ldr r0, [sp, #0x28]
	cmp r0, #0
	addeq sp, sp, #0x1d4
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	mov r1, #0x150
	mla r0, r5, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x1c]
_0211AEF4:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r2, #0x1c
	mla r0, r1, r2, r0
	ldrsh r6, [r0, #0xde]
	cmp r6, #0
	beq _0211B0F0
	ldr r0, [sp, #0x20]
	add r2, sp, #0x24
	add r3, sp, #0x28
	mov r1, r6
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _0211B0F0
	ldr r5, [sp, #0x28]
	mov r9, #0
	cmp r5, #0x160
	movhi r5, #0x160
	mov r0, r9
	add r1, sp, #0x2c
	mov r2, #0x160
	strhi r5, [sp, #0x28]
	bl MIi_CpuClearFast
	add r4, sp, #0x18c
	ldr r1, [sp, #0x24]
	mov r0, r4
	mov r2, r9
	bl FS_SeekFile
	mov r0, r4
	mov r2, r5
	add r1, sp, #0x2c
	bl FS_ReadFile
	str r0, [sp, #0x28]
	cmp r0, #0
	beq _0211B0F0
	ldr r0, [sp, #0x10]
	str r9, [sp, #0x18]
	add r1, r0, #0x6b0
	add r11, r0, r6
	add r0, r0, #0xb2
	add r5, r1, #0x1000
	add r4, r0, #0x1600
_0211AF9C:
	ldr r0, [sp, #0x18]
	add r1, sp, #0x2c
	add r6, r1, r0, lsl #3
	ldrh r0, [r6, #0x40]
	cmp r0, #0
	beq _0211B020
	ldr r0, _0211B134 ; =0x0209BA20
	cmp r10, #0
	ldr r7, [r0, #0x7ec]
	mov r8, #0
	bls _0211B020
_0211AFC8:
	ldrh r1, [r7, #0x24]
	ldrh r0, [r6, #0x40]
	cmp r1, r0
	bne _0211B010
	ldrb r0, [r7, #0x2b]
	tst r0, #2
	beq _0211B010
	ldr r0, _0211B134 ; =0x0209BA20
	bl FUN_0204bc4c
	ldrb r0, [r11, #0xe8c]
	cmp r0, #0
	ldrneh r0, [r5]
	addne r9, r9, #1
	addne r0, r0, #1
	strneh r0, [r5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_0211B010:
	add r8, r8, #1
	cmp r8, r10
	add r7, r7, #0x2c
	blo _0211AFC8
_0211B020:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x20
	blo _0211AF9C
	ldr r0, [sp, #0x10]
	add r1, r0, #0x1000
	add r0, r0, #0x28c
	add r3, r0, #0x1400
	ldr r1, [r1, #0x684]
	ldr r0, [sp, #0x1c]
	ldr r2, [r3, #4]
	add r4, r0, r1
	ldr r1, [r3, #0xc]
	add r0, r2, r4, lsr #8
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	ldr r3, _0211B138 ; =0x66666667
	add r0, r0, #0x1000
	ldr r7, [r0, #0x68c]
	smull r0, r6, r3, r9
	smull r2, r0, r3, r9
	mov r5, r9, lsr #0x1f
	add r6, r5, r6, asr #2
	mov r3, #0xa
	ldr r7, [r7, r1, lsl #2]
	smull r1, r2, r3, r6
	add r0, r5, r0, asr #2
	and r2, r4, #0xff
	str r0, [r7, r2, lsl #2]
	subs r6, r9, r1
	ldr r0, [sp, #0x10]
	moveq r4, #0
	add r1, r0, #0x1000
	add r0, r0, #0x28c
	add r3, r0, #0x1400
	ldr r1, [r1, #0x684]
	ldr r0, [sp, #0x1c]
	ldr r2, [r3, #4]
	add r5, r0, r1
	ldr r1, [r3, #0xc]
	add r0, r2, r5, lsr #8
	movne r4, #1
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	and r2, r5, #0xff
	add r0, r0, #0x1000
	ldr r0, [r0, #0x68c]
	ldr r1, [r0, r1, lsl #2]
	ldr r0, [r1, r2, lsl #2]
	add r0, r0, r4
	str r0, [r1, r2, lsl #2]
_0211B0F0:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0xc
	blo _0211AEF4
_0211B104:
	add r0, sp, #0x18c
	bl FS_CloseFile
	ldr r1, [sp, #0x20]
	ldr r0, _0211B128 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r0, #1
	add sp, sp, #0x1d4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B124: .word unk_0209C220
_0211B128: .word gL5Allocator
_0211B12C: .word ov52_021246B8
_0211B130: .word ov52_021246D0
_0211B134: .word gLogicThink
_0211B138: .word 0x66666667
	arm_func_end FUN_ov52_0211ae04

	arm_func_start FUN_ov52_0211b13c
FUN_ov52_0211b13c: ; 0x0211B13C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x104
	mov r10, r0
	ldr r2, _0211B4A4 ; =0x0209C220
	add r0, r10, #0x20c
	ldrh r9, [r2, #0x6a]
	add r5, r0, #0x800
	mov r2, #0x180
	mla r2, r1, r2, r5
	add r4, r10, #0x284
	add r3, r10, #0x1600
	mov r8, #0
	add r0, r4, #0x1400
	strh r8, [r3, #0xb0]
	strh r8, [r3, #0xb2]
	str r2, [sp]
	mov r4, r8
	bl FUN_ov52_02121b38
	add r0, r10, #0x1000
	ldr r1, [r0, #0x688]
	add r0, r10, #0x284
	add r0, r0, #0x1400
	add r1, r1, #0xc
	bl FUN_ov52_02121ba8
	add r0, r10, #0x284
	add r5, r0, #0x1400
	add r7, r10, #0x1000
	b _0211B1D8
_0211B1AC:
	ldr r1, [r7, #0x684]
	ldr r0, [r5, #0xc]
	add r6, r8, r1
	ldr r1, [r5, #0x14]
	add r0, r0, r6, lsr #8
	bl _u32_div_f
	ldr r2, [r5, #8]
	and r0, r6, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r8, r8, #1
	str r4, [r1, r0, lsl #2]
_0211B1D8:
	ldr r0, [r7, #0x688]
	cmp r8, r0
	blo _0211B1AC
	add r6, sp, #0x84
	mov r8, #0
	mov r4, #0x80
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	add r11, sp, #4
	mov r1, r8
	mov r0, r11
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, _0211B4A8 ; =0x0209BA20
	mvn r4, #0
	ldr r7, [r0, #0x7ec]
	b _0211B2D0
_0211B224:
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	beq _0211B2C8
	ldrb r0, [r7, #0x2a]
	cmp r0, #1
	bne _0211B2C8
	ldrb r0, [r7, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0211B2C8
	ldrb r0, [r7, #0x28]
	cmp r0, #0
	beq _0211B2C8
	cmp r0, #0x20
	bhs _0211B2C8
	ldrh r1, [r7, #0x24]
	ldr r0, _0211B4A8 ; =0x0209BA20
	bl FUN_0204bc4c
	mov r5, r0
	cmp r5, r4
	beq _0211B2C8
	ldrb r3, [r7, #0x28]
	ldr r0, _0211B4AC ; =0x020A108A
	mov r1, r5
	ldr r2, [r6, r3, lsl #2]
	add r2, r2, #1
	str r2, [r6, r3, lsl #2]
	bl FUN_020509d8
	cmp r0, #0
	bne _0211B2B8
	ldr r0, _0211B4B0 ; =0x020A0DB0
	mov r1, r5
	bl FUN_020508fc
	cmp r0, #0
	beq _0211B2C8
_0211B2B8:
	ldrb r1, [r7, #0x28]
	ldr r0, [r11, r1, lsl #2]
	add r0, r0, #1
	str r0, [r11, r1, lsl #2]
_0211B2C8:
	add r8, r8, #1
	add r7, r7, #0x2c
_0211B2D0:
	cmp r8, r9
	blo _0211B224
	add r0, r10, #0x284
	add r0, r0, #0x1400
	mov r6, #0
	bl FUN_ov52_02121b38
	add r0, r10, #0x1000
	ldr r1, [r0, #0x688]
	add r0, r10, #0x284
	add r0, r0, #0x1400
	add r1, r1, #0xc
	bl FUN_ov52_02121ba8
	add r0, r10, #0x284
	mov r8, r6
	add r4, r0, #0x1400
	add r7, r10, #0x1000
	b _0211B340
_0211B314:
	ldr r1, [r7, #0x684]
	ldr r0, [r4, #0xc]
	add r5, r8, r1
	ldr r1, [r4, #0x14]
	add r0, r0, r5, lsr #8
	bl _u32_div_f
	ldr r2, [r4, #8]
	and r0, r5, #0xff
	ldr r1, [r2, r1, lsl #2]
	add r8, r8, #1
	str r6, [r1, r0, lsl #2]
_0211B340:
	ldr r0, [r7, #0x688]
	cmp r8, r0
	blo _0211B314
	add r0, r10, #0x284
	mov r8, #0
	add r5, r0, #0x1400
	add r4, r10, #0x1000
	add r11, sp, #0x84
	b _0211B3C0
_0211B364:
	ldr r0, [sp]
	mov r7, r6
	add r1, r0, r8, lsl #5
	b _0211B3B4
_0211B374:
	ldrsh r0, [r1, #2]
	cmp r7, r0
	bne _0211B3B0
	ldr r1, [r4, #0x684]
	ldr r0, [r5, #0xc]
	add r9, r8, r1
	ldr r1, [r5, #0x14]
	add r0, r0, r9, lsr #8
	bl _u32_div_f
	ldr r2, [r5, #8]
	ldr r0, [r11, r7, lsl #2]
	ldr r2, [r2, r1, lsl #2]
	and r1, r9, #0xff
	str r0, [r2, r1, lsl #2]
	b _0211B3BC
_0211B3B0:
	add r7, r7, #1
_0211B3B4:
	cmp r7, #0x20
	blt _0211B374
_0211B3BC:
	add r8, r8, #1
_0211B3C0:
	cmp r8, #0xc
	blo _0211B364
	add r0, r10, #0x284
	mov r8, #0
	add r7, r0, #0x1400
	add r4, r10, #0x1000
	ldr r5, _0211B4B4 ; =0x66666667
	mov r11, #0xa
	b _0211B48C
_0211B3E4:
	ldr r1, [r4, #0x684]
	ldr r0, [r7, #0xc]
	add r9, r8, r1
	ldr r1, [r7, #0x14]
	add r0, r0, r9, lsr #8
	bl _u32_div_f
	ldr r0, [r7, #8]
	ldr r2, [r4, #0x684]
	ldr r3, [r0, r1, lsl #2]
	and r1, r9, #0xff
	ldr r9, [r3, r1, lsl #2]
	ldr r0, [r7, #0xc]
	add r10, r8, r2
	ldr r1, [r7, #0x14]
	add r0, r0, r10, lsr #8
	bl _u32_div_f
	ldr r0, [r7, #8]
	and r12, r10, #0xff
	ldr r0, [r0, r1, lsl #2]
	smull r1, r3, r5, r9
	mov r2, r9, lsr #0x1f
	smull r1, r10, r5, r9
	add r10, r2, r10, asr #2
	add r3, r2, r3, asr #2
	str r10, [r0, r12, lsl #2]
	smull r0, r1, r11, r3
	subs r3, r9, r0
	ldr r1, [r4, #0x684]
	moveq r10, r6
	add r9, r8, r1
	ldr r0, [r7, #0xc]
	ldr r1, [r7, #0x14]
	add r0, r0, r9, lsr #8
	movne r10, #1
	bl _u32_div_f
	ldr r0, [r7, #8]
	and r2, r9, #0xff
	ldr r1, [r0, r1, lsl #2]
	add r8, r8, #1
	ldr r0, [r1, r2, lsl #2]
	add r0, r0, r10
	str r0, [r1, r2, lsl #2]
_0211B48C:
	ldr r0, [r4, #0x688]
	cmp r8, r0
	blo _0211B3E4
	mov r0, #1
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B4A4: .word unk_0209C220
_0211B4A8: .word gLogicThink
_0211B4AC: .word unk_020A108A
_0211B4B0: .word unk_020A0DB0
_0211B4B4: .word 0x66666667
	arm_func_end FUN_ov52_0211b13c

	arm_func_start FUN_ov52_0211b4b8
FUN_ov52_0211b4b8: ; 0x0211B4B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x100
	mov r10, r0
	add r0, r10, #0x20c
	ldr r3, _0211B664 ; =0x0209C220
	add r2, r0, #0x800
	mov r0, #0x180
	add r11, sp, #0x80
	mla r8, r1, r0, r2
	mov r4, #0x80
	mov r7, #0
	mov r0, r11
	mov r1, r7
	mov r2, r4
	ldrh r9, [r3, #0x6a]
	bl MI_CpuFill8
	mov r2, r4
	add r0, sp, #0
	mov r1, r7
	bl MI_CpuFill8
	ldr r0, _0211B668 ; =0x0209BA20
	mvn r4, #0
	ldr r6, [r0, #0x7ec]
	b _0211B5C4
_0211B518:
	ldrh r0, [r6, #0x24]
	cmp r0, #0
	beq _0211B5BC
	ldrb r0, [r6, #0x2a]
	cmp r0, #1
	bne _0211B5BC
	ldrb r0, [r6, #0x2b]
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0211B5BC
	ldrb r0, [r6, #0x28]
	cmp r0, #0x20
	bhs _0211B5BC
	ldrh r1, [r6, #0x24]
	ldr r0, _0211B668 ; =0x0209BA20
	bl FUN_0204bc4c
	mov r5, r0
	cmp r5, r4
	beq _0211B5BC
	ldrb r3, [r6, #0x28]
	ldr r0, _0211B66C ; =0x020A108A
	mov r1, r5
	ldr r2, [r11, r3, lsl #2]
	add r2, r2, #1
	str r2, [r11, r3, lsl #2]
	bl FUN_020509d8
	cmp r0, #0
	bne _0211B5A4
	ldr r0, _0211B670 ; =0x020A0DB0
	mov r1, r5
	bl FUN_020508fc
	cmp r0, #0
	beq _0211B5BC
_0211B5A4:
	ldrb r2, [r6, #0x28]
	add r0, sp, #0
	ldr r0, [r0, r2, lsl #2]
	add r1, r0, #1
	add r0, sp, #0
	str r1, [r0, r2, lsl #2]
_0211B5BC:
	add r7, r7, #1
	add r6, r6, #0x2c
_0211B5C4:
	cmp r7, r9
	blo _0211B518
	mov r0, #0
	mov r1, #1
	mov r3, r0
	mov r7, r0
	add r5, sp, #0
	mov r4, r1
	b _0211B650
_0211B5E8:
	add r2, r10, r7
	add r2, r2, #0x1000
	mov r9, r0
	strb r1, [r2, #0x480]
	add r6, r8, r7, lsl #5
	b _0211B644
_0211B600:
	ldrsh r2, [r6, #2]
	cmp r9, r2
	bne _0211B614
	cmp r9, #0
	bne _0211B624
_0211B614:
	ldrsh r2, [r6, #2]
	cmp r2, #0x62
	cmpeq r9, #0
	bne _0211B640
_0211B624:
	ldr r2, [r5, r9, lsl #2]
	cmp r2, #0
	add r2, r10, r7
	add r2, r2, #0x1000
	strneb r4, [r2, #0x480]
	streqb r3, [r2, #0x480]
	b _0211B64C
_0211B640:
	add r9, r9, #1
_0211B644:
	cmp r9, #0x20
	blt _0211B600
_0211B64C:
	add r7, r7, #1
_0211B650:
	cmp r7, #0xc
	blo _0211B5E8
	mov r0, #1
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B664: .word unk_0209C220
_0211B668: .word gLogicThink
_0211B66C: .word unk_020A108A
_0211B670: .word unk_020A0DB0
	arm_func_end FUN_ov52_0211b4b8

	arm_func_start FUN_ov52_0211b674
FUN_ov52_0211b674: ; 0x0211B674
	stmfd sp!, {r3, lr}
	ldr r12, _0211B6A4 ; =0x02099F44
	add r1, r0, #0x284
	add r2, r0, #0x6b0
	add r3, r0, #0xb2
	ldr r0, [r12]
	add r1, r1, #0x1400
	add r2, r2, #0x1000
	add r3, r3, #0x1600
	bl FUN_ov131_0213dc68
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0211B6A4: .word unk_02099F44
	arm_func_end FUN_ov52_0211b674

	arm_func_start FUN_ov52_0211b6a8
FUN_ov52_0211b6a8: ; 0x0211B6A8
	ldr r1, _0211B6B4 ; =0x02124488
	str r1, [r0]
	bx lr
_0211B6B4: .word ov52_02124488
	arm_func_end FUN_ov52_0211b6a8

	arm_func_start FUN_ov52_0211b6b8
FUN_ov52_0211b6b8: ; 0x0211B6B8
	bx lr
	arm_func_end FUN_ov52_0211b6b8

	arm_func_start FUN_ov52_0211b6bc
FUN_ov52_0211b6bc: ; 0x0211B6BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_0211b6bc

	arm_func_start FUN_ov52_0211b6d0
FUN_ov52_0211b6d0: ; 0x0211B6D0
	bx lr
	arm_func_end FUN_ov52_0211b6d0

	arm_func_start FUN_ov52_0211b6d4
FUN_ov52_0211b6d4: ; 0x0211B6D4
	str r1, [r0, #4]
	mov r1, #0
	sub r2, r1, #1
	strb r2, [r0, #0xb6]
	ldr r12, _0211B704 ; =MI_CpuFill8
	str r1, [r0, #0xb0]
	strh r1, [r0, #0xb4]
	str r1, [r0, #0xe8]
	str r1, [r0, #0xec]
	add r0, r0, #8
	mov r2, #0xa8
	bx r12
_0211B704: .word MI_CpuFill8
	arm_func_end FUN_ov52_0211b6d4

	arm_func_start FUN_ov52_0211b708
FUN_ov52_0211b708: ; 0x0211B708
	bx lr
	arm_func_end FUN_ov52_0211b708

	arm_func_start FUN_ov52_0211b70c
FUN_ov52_0211b70c: ; 0x0211B70C
	bx lr
	arm_func_end FUN_ov52_0211b70c

	arm_func_start FUN_ov52_0211b710
FUN_ov52_0211b710: ; 0x0211B710
	bx lr
	arm_func_end FUN_ov52_0211b710

	arm_func_start FUN_ov52_0211b714
FUN_ov52_0211b714: ; 0x0211B714
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r5, r0
	mov r7, r4
	ldr r6, _0211B77C ; =0x02099F38
	b _0211B770
_0211B72C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0211B76C
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #8]
	ldr r0, [r6]
	bl FUN_02058ee0
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, r4, lsl #2
	str r7, [r0, #0x1c]
	add r0, r5, r4, lsl #2
	str r7, [r0, #8]
_0211B76C:
	add r4, r4, #1
_0211B770:
	cmp r4, #0x2a
	blt _0211B72C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B77C: .word unk_02099F38
	arm_func_end FUN_ov52_0211b714

	arm_func_start FUN_ov52_0211b780
FUN_ov52_0211b780: ; 0x0211B780
	bx lr
	arm_func_end FUN_ov52_0211b780

	arm_func_start FUN_ov52_0211b784
FUN_ov52_0211b784: ; 0x0211B784
	bx lr
	arm_func_end FUN_ov52_0211b784

	arm_func_start FUN_ov52_0211b788
FUN_ov52_0211b788: ; 0x0211B788
	cmp r3, #0
	bxeq lr
	cmp r2, #2
	bne _0211B7F8
	cmp r3, #1
	blt _0211B7A8
	cmp r3, #0xc
	ble _0211B7B0
_0211B7A8:
	cmp r3, #0xd
	bne _0211B7E4
_0211B7B0:
	ldr r1, [r0, #0xe8]
	cmp r3, #0xd
	orr r1, r1, #1
	str r1, [r0, #0xe8]
	bxeq lr
	ldrsh r2, [r0, #0xb4]
	mov r1, r3, lsl #0x18
	mov r1, r1, asr #0x18
	sub r3, r1, #1
	orr r1, r2, #1
	strb r3, [r0, #0xb6]
	strh r1, [r0, #0xb4]
	bx lr
_0211B7E4:
	cmp r3, #0xe
	ldreq r1, [r0, #0xe8]
	orreq r1, r1, #2
	streq r1, [r0, #0xe8]
	bx lr
_0211B7F8:
	cmp r2, #1
	bxne lr
	cmp r3, #1
	bxlt lr
	cmp r3, #0xc
	bxgt lr
	ldrsh r2, [r0, #0xb4]
	mov r1, r3, lsl #0x18
	mov r1, r1, asr #0x18
	sub r3, r1, #1
	orr r1, r2, #1
	strb r3, [r0, #0xb6]
	strh r1, [r0, #0xb4]
	bx lr
	arm_func_end FUN_ov52_0211b788

	arm_func_start FUN_ov52_0211b830
FUN_ov52_0211b830: ; 0x0211B830
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsh r0, [r4, #0xb4]
	tst r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211B894 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldrsb r1, [r4, #0xb6]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211B884
	ldr r2, [r0]
	ldr r1, [r0, #4]
	mov r0, r4
	mov r2, r2, asr #0xc
	mov r3, r1, asr #0xc
	mov r1, #0x11
	bl FUN_ov52_0211bc50
_0211B884:
	ldrsh r0, [r4, #0xb4]
	bic r0, r0, #1
	strh r0, [r4, #0xb4]
	ldmfd sp!, {r4, pc}
_0211B894: .word gL5Sound
	arm_func_end FUN_ov52_0211b830

	arm_func_start FUN_ov52_0211b898
FUN_ov52_0211b898: ; 0x0211B898
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211b898

	arm_func_start FUN_ov52_0211b8a0
FUN_ov52_0211b8a0: ; 0x0211B8A0
	ldr r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov52_0211b8a0

	arm_func_start FUN_ov52_0211b8a8
FUN_ov52_0211b8a8: ; 0x0211B8A8
	ldr r12, _0211B8B0 ; =FUN_ov52_0211bbb0
	bx r12
_0211B8B0: .word FUN_ov52_0211bbb0
	arm_func_end FUN_ov52_0211b8a8

	arm_func_start FUN_ov52_0211b8b4
FUN_ov52_0211b8b4: ; 0x0211B8B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov52_0211b8a0
	ldr r1, [r6, #0xb0]
	add r0, r0, r1, lsl #2
	ldr r4, [r0, #0xc4]
	cmp r4, #0
	bne _0211B904
	ldr r0, _0211B90C ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	mov r4, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	ldr r1, [r6, #0xb0]
	add r0, r0, r1, lsl #2
	str r4, [r0, #0xc4]
_0211B904:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0211B90C: .word unk_02099F38
	arm_func_end FUN_ov52_0211b8b4

	arm_func_start FUN_ov52_0211b910
FUN_ov52_0211b910: ; 0x0211B910
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r6, r1
	mov r7, r2
	mov r5, r3
	bl FUN_ov52_0211b8a0
	ldr r1, [r4, #0xb0]
	add r1, r0, r1, lsl #2
	mov r0, r4
	ldr r4, [r1, #0xc4]
	bl FUN_ov52_0211b8a0
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r7, _0211B9C0 ; =0x02099F38
	and r3, r0, #0xff
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	ldr r3, [sp, #0x20]
	bl FUN_ov16_0211401c
	ldr r0, [r7]
	mov r1, r4
	mov r2, r6
	ldr r3, [sp, #0x1c]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r1, r4
	mov r2, r6
	mov r0, r5, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r7]
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B9C0: .word unk_02099F38
	arm_func_end FUN_ov52_0211b910

	arm_func_start FUN_ov52_0211b9c4
FUN_ov52_0211b9c4: ; 0x0211B9C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r8, r2
	mov r4, r3
	bl FUN_ov52_0211b8a0
	ldr r1, [r6, #0xb0]
	ldr r6, _0211BA6C ; =0x02099F38
	add r0, r0, r1, lsl #2
	ldr r7, [r0, #0xc4]
	ldr r0, [r6]
	mov r1, r7
	and r3, r8, #0xff
	mov r2, r5
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	ldr r3, [sp, #0x28]
	bl FUN_ov16_0211401c
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	ldr r3, [sp, #0x24]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r1, r7
	mov r2, r5
	mov r0, r4, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [sp, #0x20]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r6]
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211BA6C: .word unk_02099F38
	arm_func_end FUN_ov52_0211b9c4

	arm_func_start FUN_ov52_0211ba70
FUN_ov52_0211ba70: ; 0x0211BA70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r7, r1
	mov r4, r2
	mov r6, r3
	bl FUN_ov52_0211b8a0
	ldr r1, [r5, #0xb0]
	add r1, r0, r1, lsl #2
	mov r0, r5
	ldr r5, [r1, #0xc4]
	bl FUN_ov52_0211b8a0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r4, _0211BB60 ; =0x02099F38
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	ldr r3, [sp, #0x20]
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	ldr r3, [sp, #0x1c]
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	mov r0, r6, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [sp, #0x18]
	mov r1, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_ov16_02113b78
	ldr r0, [sp, #0x28]
	mov r1, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r7
	ldr r3, [sp, #0x24]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113d08
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BB60: .word unk_02099F38
	arm_func_end FUN_ov52_0211ba70

	arm_func_start FUN_ov52_0211bb64
FUN_ov52_0211bb64: ; 0x0211BB64
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b8a0
	ldr r1, [r4, #0xb0]
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211BBAC ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021128c4
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r1, [r4, #0xb0]
	mov r2, #0
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xc4]
	ldmfd sp!, {r4, pc}
_0211BBAC: .word unk_02099F38
	arm_func_end FUN_ov52_0211bb64

	arm_func_start FUN_ov52_0211bbb0
FUN_ov52_0211bbb0: ; 0x0211BBB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov52_0211b8a0
	ldr r1, [r5, #0xb0]
	ldr r2, _0211BBE4 ; =0x02099F38
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, [r2]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, pc}
_0211BBE4: .word unk_02099F38
	arm_func_end FUN_ov52_0211bbb0

	arm_func_start FUN_ov52_0211bbe8
FUN_ov52_0211bbe8: ; 0x0211BBE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov52_0211b8a0
	ldr r1, [r5, #0xb0]
	ldr r2, _0211BC4C ; =0x02099F38
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, [r2]
	bl FUN_ov16_02114444
	cmp r0, #0
	ldrne r2, [r0]
	mov r1, #0
	cmpne r2, #0
	beq _0211BC44
	cmp r4, #1
	blt _0211BC44
	ldrb r0, [r0, #6]
	cmp r4, r0
	suble r1, r4, #1
	movle r0, #0x60
	mlale r0, r1, r0, r2
	addle r1, r0, #0x1c
_0211BC44:
	mov r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC4C: .word unk_02099F38
	arm_func_end FUN_ov52_0211bbe8

	arm_func_start FUN_ov52_0211bc50
FUN_ov52_0211bc50: ; 0x0211BC50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov52_0211b8a0
	ldr r1, [r7, #0xb0]
	mov r2, r5, lsl #0x10
	add r0, r0, r1, lsl #2
	mov r3, r6, lsl #0x10
	ldr r1, [r0, #0xc4]
	mov r2, r2, asr #0x10
	ldr r0, _0211BC9C ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r4
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BC9C: .word unk_02099F38
	arm_func_end FUN_ov52_0211bc50

	arm_func_start FUN_ov52_0211bca0
FUN_ov52_0211bca0: ; 0x0211BCA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov52_0211b8a0
	ldr r1, [r6, #0xb0]
	ldr r2, _0211BCD8 ; =0x02099F38
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, [r2]
	mov r2, r5
	and r3, r4, #0xff
	bl FUN_ov16_02113a80
	ldmfd sp!, {r4, r5, r6, pc}
_0211BCD8: .word unk_02099F38
	arm_func_end FUN_ov52_0211bca0

	arm_func_start FUN_ov52_0211bcdc
FUN_ov52_0211bcdc: ; 0x0211BCDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov52_0211b8a0
	ldr r1, [r5, #0xb0]
	ldr r2, _0211BD0C ; =0x02099F38
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, [r2]
	mov r2, r4
	bl FUN_ov16_02114530
	ldmfd sp!, {r3, r4, r5, pc}
_0211BD0C: .word unk_02099F38
	arm_func_end FUN_ov52_0211bcdc

	arm_func_start FUN_ov52_0211bd10
FUN_ov52_0211bd10: ; 0x0211BD10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r6, r2
	mov r4, r3
	bl FUN_ov52_0211b8a0
	ldr r1, [r7, #0xb0]
	add r1, r0, r1, lsl #2
	mov r0, r7
	ldr r7, [r1, #0xc4]
	bl FUN_ov52_0211b8a0
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x1c]
	ldr r6, _0211BD7C ; =0x02099F38
	and r3, r0, #0xff
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_021137dc
	mov r1, r7
	mov r2, r5
	mov r3, r4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6]
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BD7C: .word unk_02099F38
	arm_func_end FUN_ov52_0211bd10

	arm_func_start FUN_ov52_0211bd80
FUN_ov52_0211bd80: ; 0x0211BD80
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov52_0211b8a0
	ldr r1, [r6, #0xb0]
	mov r2, #0
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0xc4]
	ldr r0, _0211BDC8 ; =0x02099F38
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211BDC8: .word unk_02099F38
	arm_func_end FUN_ov52_0211bd80

	arm_func_start FUN_ov52_0211bdcc
FUN_ov52_0211bdcc: ; 0x0211BDCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r2
	mov r7, r3
	bl FUN_ov52_0211b8a0
	add r0, r0, r4, lsl #2
	ldr r4, _0211BE38 ; =0x02099F38
	ldr r6, [r0, #0x1c]
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	add r2, sp, #0
	mov r1, r6
	mov r3, r5
	bl FUN_0205935c
	ldr r0, [r4]
	mov r1, r6
	ldr r5, [sp]
	bl FUN_ov16_02111458
	ldr r2, [sp, #0x18]
	mov r1, r6
	str r0, [r2]
	ldr r0, [r4]
	bl FUN_ov16_02111438
	str r0, [r7]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE38: .word unk_02099F38
	arm_func_end FUN_ov52_0211bdcc

	arm_func_start FUN_ov52_0211be3c
FUN_ov52_0211be3c: ; 0x0211BE3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r5, r2
	mov r4, r3
	cmp r1, #8
	beq _0211BE64
	cmp r1, #0xc
	beq _0211BECC
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BE64:
	ldr r6, _0211BF34 ; =gFont8
	mov r7, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r7
	bl FUN_02043310
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x40]
	str r0, [sp, #0x1c]
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl FUN_020425fc
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BECC:
	ldr r6, _0211BF38 ; =gFont12
	mov r7, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r7
	bl FUN_02043310
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r6]
	ldr r3, [sp, #0x40]
	mov r1, r4
	mov r2, r5
	bl FUN_020425fc
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211BF34: .word gFont8
_0211BF38: .word gFont12
	arm_func_end FUN_ov52_0211be3c

	arm_func_start FUN_ov52_0211bf3c
FUN_ov52_0211bf3c: ; 0x0211BF3C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r3
	mov r7, r1
	mov r6, r2
	ldr r5, [sp, #0x20]
	bl FUN_ov52_0211b8a0
	add r0, r0, r4, lsl #2
	cmp r7, #8
	ldr r4, [r0, #0x1c]
	beq _0211BF78
	cmp r7, #0xc
	beq _0211BFC0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211BF78:
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _0211C008 ; =gFont8
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211C00C ; =0x02099F38
	mov r12, #0
	ldr r0, [r0]
	mov r1, r4
	str r12, [sp]
	str r12, [sp, #4]
	mov r2, r6
	mov r3, r5
	str r12, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211BFC0:
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _0211C010 ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	ldr r0, _0211C00C ; =0x02099F38
	mov r12, #0
	ldr r0, [r0]
	mov r1, r4
	str r12, [sp]
	str r12, [sp, #4]
	mov r2, r6
	mov r3, r5
	str r12, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C008: .word gFont8
_0211C00C: .word unk_02099F38
_0211C010: .word gFont12
	arm_func_end FUN_ov52_0211bf3c

	arm_func_start FUN_ov52_0211c014
FUN_ov52_0211c014: ; 0x0211C014
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xa8
	movs r5, r2
	mov r4, r0
	mov r6, r1
	beq _0211C040
	bl FUN_ov52_0211b8a0
	add r1, sp, #0
	add r0, r0, #0x1c
	mov r2, #0xa8
	bl MI_CpuCopy8
_0211C040:
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r2, [r0]
	mov r1, r6
	ldr r2, [r2, #0x74]
	blx r2
	cmp r5, #0
	addeq sp, sp, #0xa8
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1c
	add r1, r4, #8
	mov r2, #0xa8
	bl MI_CpuCopy8
	mov r12, #0
	add r1, sp, #0
_0211C084:
	add r3, r4, r12, lsl #2
	ldr r0, [r1, r12, lsl #2]
	ldr r2, [r3, #8]
	add r12, r12, #1
	sub r0, r2, r0
	str r0, [r3, #8]
	cmp r12, #0x2a
	blt _0211C084
	add sp, sp, #0xa8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_0211c014

	arm_func_start FUN_ov52_0211c0ac
FUN_ov52_0211c0ac: ; 0x0211C0AC
	ldr r1, [r0, #0xe8]
	tst r1, #0x40
	ldrnesb r1, [r0, #0xb6]
	addne r1, r0, r1, lsl #2
	ldrnesb r1, [r1, #0xba]
	strneb r1, [r0, #0xb6]
	bxne lr
	tst r1, #0x80
	ldrnesb r1, [r0, #0xb6]
	addne r1, r0, r1, lsl #2
	ldrnesb r1, [r1, #0xbb]
	strneb r1, [r0, #0xb6]
	bxne lr
	tst r1, #0x20
	ldrnesb r1, [r0, #0xb6]
	addne r1, r0, r1, lsl #2
	ldrnesb r1, [r1, #0xb8]
	strneb r1, [r0, #0xb6]
	bxne lr
	tst r1, #0x10
	ldrnesb r1, [r0, #0xb6]
	addne r1, r0, r1, lsl #2
	ldrnesb r1, [r1, #0xb9]
	strneb r1, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211c0ac

	arm_func_start FUN_ov52_0211c110
FUN_ov52_0211c110: ; 0x0211C110
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov52_0211b8a0
	ldr r2, [r7, #0xb0]
	ldr r1, [sp, #0x20]
	add r0, r0, r2, lsl #2
	ldr r3, [r0, #0xc4]
	ldr r0, _0211C190 ; =0x02099EB4
	str r4, [sp]
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r4, #0
	bl FUN_ov16_0210fc74
	strb r4, [r0, #0x10]
	ldr r2, _0211C194 ; =FUN_ov52_02121908
	strb r4, [r0, #0x38]
	ldr r1, _0211C198 ; =FUN_ov52_02121958
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldrh r1, [sp, #0x24]
	ldr r2, _0211C19C ; =FUN_ov52_021219a4
	str r4, [r0, #0x24]
	str r2, [r0, #0x28]
	bl FUN_ov16_0210e68c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C190: .word unk_02099EB4
_0211C194: .word FUN_ov52_02121908
_0211C198: .word FUN_ov52_02121958
_0211C19C: .word FUN_ov52_021219a4
	arm_func_end FUN_ov52_0211c110

	arm_func_start FUN_ov52_0211c1a0
FUN_ov52_0211c1a0: ; 0x0211C1A0
	str r1, [r0, #0xe8]
	str r2, [r0, #0xec]
	bx lr
	arm_func_end FUN_ov52_0211c1a0

	arm_func_start FUN_ov52_0211c1ac
FUN_ov52_0211c1ac: ; 0x0211C1AC
	ldr r12, _0211C1B4 ; =FUN_ov52_0211b6d4
	bx r12
_0211C1B4: .word FUN_ov52_0211b6d4
	arm_func_end FUN_ov52_0211c1ac

	arm_func_start FUN_ov52_0211c1b8
FUN_ov52_0211c1b8: ; 0x0211C1B8
	bx lr
	arm_func_end FUN_ov52_0211c1b8

	arm_func_start FUN_ov52_0211c1bc
FUN_ov52_0211c1bc: ; 0x0211C1BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb0
	ldr r7, _0211C2B4 ; =0x02123F2C
	add r6, sp, #0
	mov r4, r0
	mov r5, #0xb
_0211C1D4:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0211C1D4
	mov r0, r4
	ldr r3, [r0]
	mov r7, #0
	ldr r3, [r3, #0x34]
	add r1, sp, #0
	mov r2, r7
	blx r3
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _0211C254
	ldr r5, _0211C2B8 ; =0x02099F38
	mov r1, #4
	ldr r0, [r5]
	mov r2, #5
	bl FUN_02059630
	mov r6, r0
	mov r0, r4
	bl FUN_ov52_0211b8a0
	str r6, [r0, #0x2c]
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r1, [r0, #0x2c]
	ldr r0, [r5]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
_0211C254:
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	addne sp, sp, #0xb0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _0211C2B8 ; =0x02099F38
	mov r1, #4
	ldr r0, [r5]
	mov r2, #1
	bl FUN_02059630
	mov r6, r0
	mov r0, r4
	bl FUN_ov52_0211b8a0
	str r6, [r0, #0x30]
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r1, [r0, #0x30]
	ldr r0, [r5]
	mov r2, #0
	mov r3, r2
	bl FUN_02059038
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211C2B4: .word ov52_02123F2C
_0211C2B8: .word unk_02099F38
	arm_func_end FUN_ov52_0211c1bc

	arm_func_start FUN_ov52_0211c2bc
FUN_ov52_0211c2bc: ; 0x0211C2BC
	mvn r1, #0
	str r1, [r0, #0xb0]
	bx lr
	arm_func_end FUN_ov52_0211c2bc

	arm_func_start FUN_ov52_0211c2c8
FUN_ov52_0211c2c8: ; 0x0211C2C8
	bx lr
	arm_func_end FUN_ov52_0211c2c8

	arm_func_start FUN_ov52_0211c2cc
FUN_ov52_0211c2cc: ; 0x0211C2CC
	bx lr
	arm_func_end FUN_ov52_0211c2cc

	arm_func_start FUN_ov52_0211c2d0
FUN_ov52_0211c2d0: ; 0x0211C2D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b8a0
	mov r1, #1
	mov r2, #0
	bl FUN_ov52_0211ac94
	mov r0, r4
	bl FUN_ov52_0211b8a0
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_0211c2d0

	arm_func_start FUN_ov52_0211c300
FUN_ov52_0211c300: ; 0x0211C300
	bx lr
	arm_func_end FUN_ov52_0211c300

	arm_func_start FUN_ov52_0211c304
FUN_ov52_0211c304: ; 0x0211C304
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r5, r1
	bl FUN_ov52_0211b6d4
	mov r4, #0
	mov r1, r4
	add r0, r6, #0xf0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r3, #1
	mov r12, r4
	mov r0, #0x1c
	mov r1, #0x150
_0211C33C:
	mla r7, r4, r1, r5
	mov lr, r12
_0211C344:
	mla r2, lr, r0, r7
	ldrsh r2, [r2, #0xde]
	add r2, r5, r2
	ldrb r2, [r2, #0xe8c]
	cmp r2, #0
	addne r2, r6, r4
	strneb r3, [r2, #0xf1]
	bne _0211C370
	add lr, lr, #1
	cmp lr, #0xc
	blt _0211C344
_0211C370:
	add r4, r4, #1
	cmp r4, #7
	blt _0211C33C
	mov r1, #1
	mov r0, #0
	ldr r4, _0211C3F8 ; =0x02123D10
	add r3, sp, #0
	strb r1, [r6, #0xf0]
	strb r0, [r6, #0xb6]
	mov r2, #0xe
_0211C398:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211C398
	mov r5, #0
	add r4, sp, #0
_0211C3B8:
	mov r0, r5, lsl #2
	add r2, r4, r5, lsl #2
	ldrsb r1, [r4, r0]
	add r3, r6, r5, lsl #2
	ldrsb r0, [r2, #1]
	strb r1, [r3, #0xb8]
	add r5, r5, #1
	ldrsb r1, [r2, #2]
	strb r0, [r3, #0xb9]
	ldrsb r0, [r2, #3]
	strb r1, [r3, #0xba]
	cmp r5, #7
	strb r0, [r3, #0xbb]
	blt _0211C3B8
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211C3F8: .word ov52_02123D10
	arm_func_end FUN_ov52_0211c304

	arm_func_start FUN_ov52_0211c3fc
FUN_ov52_0211c3fc: ; 0x0211C3FC
	bx lr
	arm_func_end FUN_ov52_0211c3fc

	arm_func_start FUN_ov52_0211c400
FUN_ov52_0211c400: ; 0x0211C400
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _0211C448 ; =0x02123D4C
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211C448: .word ov52_02123D4C
	arm_func_end FUN_ov52_0211c400

	arm_func_start FUN_ov52_0211c44c
FUN_ov52_0211c44c: ; 0x0211C44C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r9, r0
	str r7, [r9, #0xb0]
	ldr r6, _0211C6F0 ; =0x000001D6
	mov r5, r7
	mov r4, #1
	bl FUN_ov52_0211bb64
	mov r8, #0x22
	mov r0, r9
	mov r1, r8
	bl FUN_ov52_0211b8b4
	add r0, r8, #0x1c8
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, r9
	str r7, [sp, #8]
	mov r1, #0x12
	mov r2, r7
	mov r3, r7
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf0]
	mov r8, #1
	mov r1, r8
	cmp r0, #0
	mov r0, #0x18
	stmia sp, {r0, r6}
	moveq r7, r4
	mov r0, r9
	str r5, [sp, #8]
	add r2, r7, #7
	mov r3, #0x48
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf1]
	mov r7, #1
	mov r1, #2
	cmp r0, #0
	mov r0, #0x38
	stmia sp, {r0, r6}
	movne r8, r5
	mov r0, r9
	str r7, [sp, #8]
	add r2, r8, #7
	mov r3, #0x10
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf2]
	mov r1, #2
	mov r3, #0x10
	cmp r0, #0
	mov r0, #0x58
	stmia sp, {r0, r6}
	movne r7, #0
	str r1, [sp, #8]
	mov r0, r9
	add r2, r7, #7
	mov r1, #3
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf3]
	mov r2, #1
	mov r1, #3
	cmp r0, #0
	mov r0, #0x78
	stmia sp, {r0, r6}
	movne r2, #0
	str r1, [sp, #8]
	mov r0, r9
	add r2, r2, #7
	mov r1, #4
	mov r3, #0x10
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf4]
	mov r2, #1
	mov r1, #4
	cmp r0, #0
	mov r0, #0x38
	stmia sp, {r0, r6}
	movne r2, #0
	str r1, [sp, #8]
	mov r0, r9
	add r2, r2, #7
	mov r1, #5
	mov r3, #0x80
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf5]
	mov r2, #1
	mov r1, #5
	cmp r0, #0
	mov r0, #0x58
	stmia sp, {r0, r6}
	movne r2, #0
	str r1, [sp, #8]
	mov r0, r9
	add r2, r2, #7
	mov r1, #6
	mov r3, #0x80
	bl FUN_ov52_0211b910
	ldrb r0, [r9, #0xf6]
	mov r1, #1
	mov r7, #6
	cmp r0, #0
	mov r0, #0x78
	str r0, [sp]
	movne r1, #0
	str r6, [sp, #4]
	add r2, r1, #7
	mov r0, r9
	mov r1, #7
	mov r3, #0x80
	str r7, [sp, #8]
	bl FUN_ov52_0211b910
	mov r7, #0xa8
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, r9
	mov r2, r4
	str r5, [sp, #8]
	mov r1, #0xd
	mov r3, #0xa0
	bl FUN_ov52_0211b910
	str r7, [sp]
	mov r7, #0xd0
	str r6, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r0, r9
	mov r2, r4
	mov r1, #0xe
	mov r3, r7
	bl FUN_ov52_0211b910
	ldrsb r1, [r9, #0xb6]
	cmp r1, #0
	blt _0211C6A0
	mov r0, r9
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211C6A0
	ldr r2, [r0, #4]
	add r1, r7, #0xca
	mov r2, r2, asr #0xc
	str r2, [sp]
	stmib sp, {r1, r5}
	ldr r1, [r0]
	mov r0, r9
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x17
	bl FUN_ov52_0211b910
_0211C6A0:
	mov r5, #0
	mov r6, #1
_0211C6A8:
	mov r0, r9
	mov r1, r6
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211C6DC
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r9
	mov r1, r4
	mov r3, r6
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov52_0211c110
_0211C6DC:
	add r6, r6, #1
	cmp r6, #0xe
	ble _0211C6A8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C6F0: .word 0x000001D6
	arm_func_end FUN_ov52_0211c44c

	arm_func_start FUN_ov52_0211c6f4
FUN_ov52_0211c6f4: ; 0x0211C6F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xe8]
	ldrsb r4, [r5, #0xb6]
	cmp r1, #0
	beq _0211C7C8
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldr r0, [r5, #0xe8]
	tst r0, #1
	beq _0211C780
	ldrsb r1, [r5, #0xb6]
	add r0, r5, r1
	ldrb r0, [r0, #0xf0]
	cmp r0, #0
	beq _0211C774
	cmp r1, #0
	mov r0, r5
	bne _0211C750
	bl FUN_ov52_0211b8a0
	mov r1, #3
	b _0211C758
_0211C750:
	bl FUN_ov52_0211b8a0
	mov r1, #2
_0211C758:
	mov r2, #1
	bl FUN_ov52_0211ac94
	ldr r0, _0211C7E0 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _0211C7C8
_0211C774:
	ldr r0, _0211C7E4 ; =gL5Sound
	mov r1, #9
	b _0211C7C4
_0211C780:
	tst r0, #2
	beq _0211C7C8
	ldr r0, _0211C7E0 ; =0x02099EB4
	mov r1, #0xe
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	mov r6, #8
	mov r1, r6
	mov r0, #0
	bl FUN_ov16_020f1560
	mov r1, r6
	mov r0, #1
	bl FUN_ov16_020f1560
	mov r2, #2
	ldr r0, _0211C7E4 ; =gL5Sound
	mov r1, #4
	strh r2, [r5, #0xb4]
_0211C7C4:
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211C7C8:
	ldrsb r0, [r5, #0xb6]
	cmp r4, r0
	ldrnesh r0, [r5, #0xb4]
	orrne r0, r0, #1
	strneh r0, [r5, #0xb4]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C7E0: .word unk_02099EB4
_0211C7E4: .word gL5Sound
	arm_func_end FUN_ov52_0211c6f4

	arm_func_start FUN_ov52_0211c7e8
FUN_ov52_0211c7e8: ; 0x0211C7E8
	ldr r12, _0211C7F0 ; =FUN_ov52_0211b788
	bx r12
_0211C7F0: .word FUN_ov52_0211b788
	arm_func_end FUN_ov52_0211c7e8

	arm_func_start FUN_ov52_0211c7f4
FUN_ov52_0211c7f4: ; 0x0211C7F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov52_0211b830
	ldrsh r0, [r5, #0xb4]
	tst r0, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov52_0211b8a0
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1000
	ldr r4, [r0, #0x6a0]
	mov r1, #0
	mov r0, r4
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	mov r0, r4
	mov r1, #1
	bl _ZN14CScreenManager12FUN_02041f2cE12EngineSelect
	ldrsh r0, [r5, #0xb4]
	bic r0, r0, #2
	strh r0, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_0211c7f4

	arm_func_start FUN_ov52_0211c860
FUN_ov52_0211c860: ; 0x0211C860
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211c860

	arm_func_start FUN_ov52_0211c868
FUN_ov52_0211c868: ; 0x0211C868
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl FUN_ov52_0211b6d4
	mov r0, #0
	ldr r12, _0211C8EC ; =0x02123CC0
	add r3, sp, #0
	strb r0, [r4, #0xb6]
	mov r2, #4
_0211C88C:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211C88C
	mov lr, #0
	add r12, sp, #0
_0211C8AC:
	mov r0, lr, lsl #2
	add r2, r12, lr, lsl #2
	ldrsb r1, [r12, r0]
	add r3, r4, lr, lsl #2
	ldrsb r0, [r2, #1]
	strb r1, [r3, #0xb8]
	add lr, lr, #1
	ldrsb r1, [r2, #2]
	strb r0, [r3, #0xb9]
	ldrsb r0, [r2, #3]
	strb r1, [r3, #0xba]
	cmp lr, #2
	strb r0, [r3, #0xbb]
	blt _0211C8AC
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0211C8EC: .word ov52_02123CC0
	arm_func_end FUN_ov52_0211c868

	arm_func_start FUN_ov52_0211c8f0
FUN_ov52_0211c8f0: ; 0x0211C8F0
	bx lr
	arm_func_end FUN_ov52_0211c8f0

	arm_func_start FUN_ov52_0211c8f4
FUN_ov52_0211c8f4: ; 0x0211C8F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r4, _0211C93C ; =0x02123CE0
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0211C93C: .word ov52_02123CE0
	arm_func_end FUN_ov52_0211c8f4

	arm_func_start FUN_ov52_0211c940
FUN_ov52_0211c940: ; 0x0211C940
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r7, #2
	str r7, [r8, #0xb0]
	bl FUN_ov52_0211bb64
	mov r5, #0x22
	mov r0, r8
	mov r1, r5
	bl FUN_ov52_0211b8b4
	mov r6, #0
	mov r4, #0x12
	str r6, [sp]
	add r0, r5, #0x1c8
	str r0, [sp, #4]
	mov r0, r8
	mov r1, r4
	mov r2, r6
	mov r3, r6
	str r6, [sp, #8]
	bl FUN_ov52_0211b910
	add r5, r4, #0x1c4
	mov r0, #0x38
	stmia sp, {r0, r5, r6}
	mov r4, #1
	mov r10, #0x1d
	mov r9, #0x50
	mov r0, r8
	mov r1, r4
	mov r2, r10
	mov r3, r9
	bl FUN_ov52_0211b910
	mov r0, #0x58
	stmia sp, {r0, r5}
	mov r2, r10
	mov r3, r9
	mov r0, r8
	mov r1, r7
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r9, #0xa8
	str r9, [sp]
	stmib sp, {r5, r6}
	mov r0, r8
	mov r1, #0xd
	mov r2, r4
	mov r3, #0xa0
	bl FUN_ov52_0211b910
	str r9, [sp]
	mov r2, r4
	mov r4, #0xd0
	stmib sp, {r5, r7}
	mov r0, r8
	mov r1, #0xe
	mov r3, r4
	bl FUN_ov52_0211b910
	ldrsb r1, [r8, #0xb6]
	cmp r1, #0
	blt _0211CA6C
	mov r0, r8
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211CA6C
	ldr r2, [r0, #4]
	add r1, r4, #0xca
	mov r2, r2, asr #0xc
	str r2, [sp]
	stmib sp, {r1, r6}
	ldr r1, [r0]
	mov r0, r8
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x25
	bl FUN_ov52_0211b910
_0211CA6C:
	mov r6, #1
	mov r5, #0
	mov r4, r6
_0211CA78:
	mov r0, r8
	mov r1, r6
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211CAAC
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r8
	mov r1, r4
	mov r3, r6
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov52_0211c110
_0211CAAC:
	add r6, r6, #1
	cmp r6, #0xe
	ble _0211CA78
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov52_0211c940

	arm_func_start FUN_ov52_0211cac0
FUN_ov52_0211cac0: ; 0x0211CAC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xe8]
	ldrsb r4, [r5, #0xb6]
	cmp r1, #0
	beq _0211CB58
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldr r0, [r5, #0xe8]
	tst r0, #1
	beq _0211CB40
	ldrsb r0, [r5, #0xb6]
	cmp r0, #0
	beq _0211CB08
	cmp r0, #1
	beq _0211CB18
	b _0211CB2C
_0211CB08:
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #5
	b _0211CB24
_0211CB18:
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #6
_0211CB24:
	mov r2, #1
	bl FUN_ov52_0211ac94
_0211CB2C:
	ldr r0, _0211CB70 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _0211CB58
_0211CB40:
	tst r0, #2
	beq _0211CB58
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #1
	bl FUN_ov52_0211acbc
_0211CB58:
	ldrsb r0, [r5, #0xb6]
	cmp r4, r0
	ldrnesh r0, [r5, #0xb4]
	orrne r0, r0, #1
	strneh r0, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CB70: .word unk_02099EB4
	arm_func_end FUN_ov52_0211cac0

	arm_func_start FUN_ov52_0211cb74
FUN_ov52_0211cb74: ; 0x0211CB74
	ldr r12, _0211CB7C ; =FUN_ov52_0211b788
	bx r12
_0211CB7C: .word FUN_ov52_0211b788
	arm_func_end FUN_ov52_0211cb74

	arm_func_start FUN_ov52_0211cb80
FUN_ov52_0211cb80: ; 0x0211CB80
	ldr r12, _0211CB88 ; =FUN_ov52_0211b830
	bx r12
_0211CB88: .word FUN_ov52_0211b830
	arm_func_end FUN_ov52_0211cb80

	arm_func_start FUN_ov52_0211cb8c
FUN_ov52_0211cb8c: ; 0x0211CB8C
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211cb8c

	arm_func_start FUN_ov52_0211cb94
FUN_ov52_0211cb94: ; 0x0211CB94
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d4
	mov r0, #0
	strb r0, [r4, #0xf0]
	strb r0, [r4, #0xb6]
	strb r0, [r4, #0xf1]
	strb r0, [r4, #0xf2]
	strb r0, [r4, #0xf3]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_0211cb94

	arm_func_start FUN_ov52_0211cbbc
FUN_ov52_0211cbbc: ; 0x0211CBBC
	bx lr
	arm_func_end FUN_ov52_0211cbbc

	arm_func_start FUN_ov52_0211cbc0
FUN_ov52_0211cbc0: ; 0x0211CBC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r4, [r5, #0xf0]
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x20c
	add r2, r0, #0x800
	mov r0, #0x180
	add r1, r5, r4
	mla r3, r4, r0, r2
	ldrsb r1, [r1, #0xf1]
	mov r4, #0
	strb r1, [r5, #0xb6]
_0211CBF0:
	add r2, r3, r4, lsl #5
	ldrsh r0, [r2, #0x18]
	add r1, r5, r4, lsl #2
	add r4, r4, #1
	strb r0, [r1, #0xb8]
	ldrsh r0, [r2, #0x1a]
	cmp r4, #0xc
	strb r0, [r1, #0xb9]
	ldrsh r0, [r2, #0x1c]
	strb r0, [r1, #0xba]
	ldrsh r0, [r2, #0x1e]
	strb r0, [r1, #0xbb]
	blt _0211CBF0
	mov r0, r5
	bl FUN_ov52_0211b8a0
	ldrb r1, [r5, #0xf0]
	bl FUN_ov52_0211b4b8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_0211cbc0

	arm_func_start FUN_ov52_0211cc38
FUN_ov52_0211cc38: ; 0x0211CC38
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	ldr r4, _0211CC90 ; =0x02123EF4
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_0211CC90: .word ov52_02123EF4
	arm_func_end FUN_ov52_0211cc38

	arm_func_start FUN_ov52_0211cc94
FUN_ov52_0211cc94: ; 0x0211CC94
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, #4
	str r9, [r10, #0xb0]
	mov r5, #1
	bl FUN_ov52_0211bb64
	mov r6, #0x22
	mov r0, r10
	mov r1, r6
	bl FUN_ov52_0211b8b4
	mov r8, #0
	mov r4, #0x12
	add r0, r6, #0x1c8
	str r8, [sp]
	str r0, [sp, #4]
	mov r0, r10
	str r8, [sp, #8]
	mov r1, r4
	mov r2, r8
	mov r3, r8
	bl FUN_ov52_0211b910
	ldrb r0, [r10, #0xf0]
	cmp r0, #0
	beq _0211CD0C
	cmp r0, #1
	beq _0211CEF0
	cmp r0, #2
	beq _0211D088
	b _0211D1F8
_0211CD0C:
	mov r7, #0x20
	str r7, [sp]
	add r6, r4, #0x1c4
	mov r0, r10
	mov r1, r5
	mov r2, #0x1e
	mov r3, #0x10
	stmib sp, {r6, r8}
	bl FUN_ov52_0211b910
	mov r4, #0x38
	mov r11, #2
	stmia sp, {r4, r6}
	mov r0, r10
	mov r1, r11
	mov r2, #0x1e
	mov r3, #0x10
	str r5, [sp, #8]
	bl FUN_ov52_0211b910
	mov r5, #0x50
	stmia sp, {r5, r6, r11}
	mov r0, r10
	mov r1, #3
	mov r2, #0x1e
	mov r3, #0x10
	bl FUN_ov52_0211b910
	mov r11, #0x68
	str r11, [sp]
	str r6, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, r10
	mov r1, r9
	mov r2, #0x1e
	mov r3, #0x10
	bl FUN_ov52_0211b910
	mov r0, #0x80
	stmia sp, {r0, r6, r9}
	mov r9, #5
	mov r3, #0x10
	mov r0, r10
	mov r1, r9
	mov r2, #0x1e
	bl FUN_ov52_0211b910
	str r7, [sp]
	stmib sp, {r6, r9}
	mov r7, #6
	mov r9, #0x88
	mov r0, r10
	mov r1, r7
	mov r2, #0x1e
	mov r3, r9
	bl FUN_ov52_0211b910
	stmia sp, {r4, r6, r7}
	mov r4, #7
	mov r0, r10
	mov r1, r4
	mov r2, #0x1e
	mov r3, r9
	bl FUN_ov52_0211b910
	stmia sp, {r5, r6}
	str r4, [sp, #8]
	mov r4, #8
	mov r0, r10
	mov r1, r4
	mov r2, #0x1e
	mov r3, r9
	bl FUN_ov52_0211b910
	str r11, [sp]
	mov r7, #9
	str r6, [sp, #4]
	mov r0, r10
	mov r1, r7
	mov r2, #0x1e
	mov r3, r9
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r0, #0x80
	str r0, [sp]
	mov r5, #0xa
	mov r0, r10
	mov r1, r5
	mov r2, #0x1e
	mov r3, r9
	stmib sp, {r6, r7}
	bl FUN_ov52_0211b910
	mov r6, #0x1f
	mov r1, r4
	mov r0, r10
	mov r2, r6
	bl FUN_ov52_0211bca0
	mov r1, r7
	mov r0, r10
	mov r2, r6
	bl FUN_ov52_0211bca0
	mov r2, r6
	mov r0, r10
	mov r1, r5
	bl FUN_ov52_0211bca0
	ldrsb r1, [r10, #0xb6]
	cmp r1, #0
	blt _0211D1F8
	mov r0, r10
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211D1F8
	ldrsb r1, [r10, #0xb6]
	ldr r2, [r0, #4]
	mov r2, r2, asr #0xc
	cmp r1, #0xa
	add r1, r5, #0x190
	str r2, [sp]
	bne _0211CEEC
_0211CED0:
	stmib sp, {r1, r8}
	ldr r1, [r0]
	mov r0, r10
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x18
	b _0211D1F4
_0211CEEC:
	b _0211D074
_0211CEF0:
	mov r7, #0x28
	str r7, [sp]
	add r6, r4, #0x1c4
	mov r0, r10
	mov r1, r5
	mov r2, #0x1f
	mov r3, #0x10
	stmib sp, {r6, r8}
	bl FUN_ov52_0211b910
	mov r4, #0x40
	mov r11, #2
	stmia sp, {r4, r6}
	mov r0, r10
	mov r1, r11
	mov r2, #0x1f
	mov r3, #0x10
	str r5, [sp, #8]
	bl FUN_ov52_0211b910
	mov r5, #0x58
	stmia sp, {r5, r6, r11}
	mov r0, r10
	mov r1, #3
	mov r2, #0x1f
	mov r3, #0x10
	bl FUN_ov52_0211b910
	mov r11, #0x70
	str r11, [sp]
	str r6, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r3, #0x10
	mov r0, r10
	mov r1, r9
	mov r2, #0x1f
	bl FUN_ov52_0211b910
	str r7, [sp]
	stmib sp, {r6, r9}
	mov r7, #5
	mov r9, #0x88
	mov r0, r10
	mov r1, r7
	mov r2, #0x1f
	mov r3, r9
	bl FUN_ov52_0211b910
	stmia sp, {r4, r6, r7}
	mov r4, #6
	mov r0, r10
	mov r1, r4
	mov r2, #0x1f
	mov r3, r9
	bl FUN_ov52_0211b910
	stmia sp, {r5, r6}
	str r4, [sp, #8]
	mov r4, #7
	mov r0, r10
	mov r1, r4
	mov r2, #0x1f
	mov r3, r9
	bl FUN_ov52_0211b910
	str r11, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r4, #8
	mov r3, r9
	mov r0, r10
	mov r1, r4
	mov r2, #0x1f
	bl FUN_ov52_0211b910
	mov r0, r10
	mov r1, r4
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
	mov r0, r10
	mov r2, r8
	mov r1, #9
	bl FUN_ov52_0211bca0
	mov r4, #0xa
	mov r0, r10
	mov r1, r4
	mov r2, r8
	bl FUN_ov52_0211bca0
	ldrsb r1, [r10, #0xb6]
	cmp r1, #0
	blt _0211D1F8
	mov r0, r10
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211D1F8
	ldrsb r1, [r10, #0xb6]
	ldr r2, [r0, #4]
	mov r2, r2, asr #0xc
	cmp r1, #8
	add r1, r4, #0x190
	str r2, [sp]
	bne _0211D074
	b _0211CED0
_0211D074:
	stmib sp, {r1, r8}
	ldr r1, [r0]
	mov r0, r10
	mov r2, #3
	b _0211D1EC
_0211D088:
	mov r6, #0x28
	str r6, [sp]
	add r7, r4, #0x1c4
	mov r0, r10
	mov r1, r5
	mov r2, #0x20
	mov r3, #0x10
	stmib sp, {r7, r8}
	bl FUN_ov52_0211b910
	mov r4, #0x40
	mov r11, #2
	stmia sp, {r4, r7}
	mov r0, r10
	mov r1, r11
	mov r2, #0x20
	mov r3, #0x10
	str r5, [sp, #8]
	bl FUN_ov52_0211b910
	mov r5, #0x58
	stmia sp, {r5, r7, r11}
	mov r11, #3
	mov r3, #0x10
	mov r0, r10
	mov r1, r11
	mov r2, #0x20
	bl FUN_ov52_0211b910
	stmia sp, {r6, r7, r11}
	mov r6, #0x88
	mov r0, r10
	mov r1, r9
	mov r2, #0x20
	mov r3, r6
	bl FUN_ov52_0211b910
	stmia sp, {r4, r7, r9}
	mov r4, #5
	mov r0, r10
	mov r1, r4
	mov r2, #0x20
	mov r3, r6
	bl FUN_ov52_0211b910
	stmia sp, {r5, r7}
	str r4, [sp, #8]
	mov r4, #6
	mov r0, r10
	mov r1, r4
	mov r2, #0x20
	mov r3, r6
	bl FUN_ov52_0211b910
	mov r0, #0x70
	stmia sp, {r0, r7}
	mov r2, #0x20
	mov r3, r6
	mov r0, r10
	mov r1, #7
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r0, r10
	mov r1, #8
	mov r2, r8
	bl FUN_ov52_0211bca0
	mov r0, r10
	mov r2, r8
	mov r1, #9
	bl FUN_ov52_0211bca0
	mov r4, #0xa
	mov r0, r10
	mov r1, r4
	mov r2, r8
	bl FUN_ov52_0211bca0
	ldrsb r1, [r10, #0xb6]
	cmp r1, #0
	blt _0211D1F8
	mov r0, r10
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211D1F8
	ldrsb r1, [r10, #0xb6]
	ldr r2, [r0, #4]
	mov r2, r2, asr #0xc
	cmp r1, #7
	add r1, r4, #0x190
	str r2, [sp]
	bne _0211D1DC
	b _0211CED0
_0211D1DC:
	stmib sp, {r1, r8}
	ldr r1, [r0]
	mov r0, r10
	mov r2, r11
_0211D1EC:
	mov r3, r1, asr #0xc
	mov r1, #0x11
_0211D1F4:
	bl FUN_ov52_0211b910
_0211D1F8:
	mov r6, #1
	mov r5, #0x21
	mov r4, #0
_0211D204:
	add r0, r10, r6
	ldrb r0, [r0, #0xf3]
	cmp r0, #0
	bne _0211D23C
	mov r0, r10
	mov r1, r6
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211D23C
	mov r0, r10
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov52_0211bd10
_0211D23C:
	add r6, r6, #1
	cmp r6, #0xb
	ble _0211D204
	ldr r5, _0211D37C ; =0x000001D6
	mov r4, #0xa8
	stmia sp, {r4, r5}
	mov r6, #1
	mov r7, #0
	mov r0, r10
	mov r2, r6
	str r7, [sp, #8]
	mov r1, #0xd
	mov r3, #0xa0
	bl FUN_ov52_0211b910
	stmia sp, {r4, r5}
	mov r8, #2
	mov r0, r10
	mov r2, r6
	mov r1, #0xe
	mov r3, #0xd0
	str r8, [sp, #8]
	bl FUN_ov52_0211b910
	mov r4, #8
	stmia sp, {r4, r5, r7}
	mov r0, r10
	mov r1, #0x22
	mov r2, #0x24
	mov r3, #0x48
	bl FUN_ov52_0211b910
	stmia sp, {r4, r5, r7}
	mov r7, #0x23
	mov r0, r10
	mov r1, #0xf
	mov r2, r7
	mov r3, #0x28
	bl FUN_ov52_0211b910
	stmia sp, {r4, r5, r8}
	mov r2, r7
	mov r0, r10
	mov r1, #0x10
	mov r3, #0xb8
	bl FUN_ov52_0211b910
	stmia sp, {r4, r5}
	ldrb r2, [r10, #0xf0]
	mov r7, #0x1a
	mov r0, r10
	add r2, r2, #1
	str r2, [sp, #8]
	mov r1, #0x20
	mov r2, r7
	mov r3, #0x70
	bl FUN_ov52_0211b910
	stmia sp, {r4, r5}
	mov r0, #3
	str r0, [sp, #8]
	mov r2, r7
	mov r0, r10
	mov r1, #0x21
	mov r3, #0x88
	bl FUN_ov52_0211b910
	mov r5, #0
	mov r4, r6
_0211D334:
	mov r0, r10
	mov r1, r6
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211D368
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r10
	mov r1, r4
	mov r3, r6
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov52_0211c110
_0211D368:
	add r6, r6, #1
	cmp r6, #0x10
	ble _0211D334
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D37C: .word 0x000001D6
	arm_func_end FUN_ov52_0211cc94

	arm_func_start FUN_ov52_0211d380
FUN_ov52_0211d380: ; 0x0211D380
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0xe8]
	ldrsb r4, [r5, #0xb6]
	cmp r1, #0
	beq _0211D52C
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldr r0, [r5, #0xe8]
	tst r0, #1
	beq _0211D480
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x20c
	ldrb r1, [r5, #0xf0]
	add r2, r0, #0x800
	mov r0, #0x180
	mla r0, r1, r0, r2
	ldrsb r1, [r5, #0xb6]
	add r0, r0, r1, lsl #5
	ldrsh r0, [r0, #2]
	cmp r0, #0x63
	bne _0211D424
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x8c
	mov r6, #1
	mov r1, r6
	add r0, r0, #0x1400
	bl FUN_ov52_02120b58
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r2, r6
	mov r1, #4
_0211D40C:
	bl FUN_ov52_0211ac94
	ldr r0, _0211D544 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _0211D46C
_0211D424:
	add r0, r5, r1
	ldrb r0, [r0, #0xf4]
	cmp r0, #0
	beq _0211D460
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x8c
	add r0, r0, #0x1400
	mov r1, #2
	bl FUN_ov52_02120b58
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #4
	mov r2, #1
	b _0211D40C
_0211D460:
	ldr r0, _0211D548 ; =gL5Sound
	mov r1, #9
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211D46C:
	ldrb r0, [r5, #0xf0]
	ldrsb r1, [r5, #0xb6]
	add r0, r5, r0
	strb r1, [r0, #0xf1]
	b _0211D52C
_0211D480:
	tst r0, #2
	beq _0211D4AC
	ldrb r1, [r5, #0xf0]
	ldrsb r2, [r5, #0xb6]
	mov r0, r5
	add r1, r5, r1
	strb r2, [r1, #0xf1]
	bl FUN_ov52_0211b8a0
	mov r1, #1
	bl FUN_ov52_0211acbc
	b _0211D52C
_0211D4AC:
	tst r0, #0x300
	beq _0211D52C
	ldrb r0, [r5, #0xf0]
	ldrsb r1, [r5, #0xb6]
	add r0, r5, r0
	strb r1, [r0, #0xf1]
	ldr r0, [r5, #0xe8]
	tst r0, #0x200
	ldrb r0, [r5, #0xf0]
	beq _0211D4F0
	cmp r0, #0
	moveq r0, #2
	subne r0, r0, #1
	strb r0, [r5, #0xf0]
	ldr r0, _0211D544 ; =0x02099EB4
	mov r1, #0xf
	b _0211D510
_0211D4F0:
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r5, #0xf0]
	cmp r0, #2
	movhi r0, #0
	strhib r0, [r5, #0xf0]
	ldr r0, _0211D544 ; =0x02099EB4
	mov r1, #0x10
_0211D510:
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #6
	mov r2, #1
	bl FUN_ov52_0211ac94
_0211D52C:
	ldrsb r0, [r5, #0xb6]
	cmp r4, r0
	ldrnesh r0, [r5, #0xb4]
	orrne r0, r0, #1
	strneh r0, [r5, #0xb4]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D544: .word unk_02099EB4
_0211D548: .word gL5Sound
	arm_func_end FUN_ov52_0211d380

	arm_func_start FUN_ov52_0211d54c
FUN_ov52_0211d54c: ; 0x0211D54C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r3
	mov r6, r0
	mov r5, r2
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov52_0211b788
	cmp r5, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r4, #0xf
	ldreq r0, [r6, #0xe8]
	orreq r0, r0, #0x200
	streq r0, [r6, #0xe8]
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r4, #0x10
	ldreq r0, [r6, #0xe8]
	orreq r0, r0, #0x100
	streq r0, [r6, #0xe8]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_0211d54c

	arm_func_start FUN_ov52_0211d59c
FUN_ov52_0211d59c: ; 0x0211D59C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldrsh r0, [r7, #0xb4]
	ldr r5, _0211D6E4 ; =0x0000019A
	mov r4, #0
	tst r0, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _0211D6E8 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldrsb r1, [r7, #0xb6]
	mov r0, r7
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	movs r6, r0
	beq _0211D6D0
	ldrb r0, [r7, #0xf0]
	cmp r0, #0
	bne _0211D65C
	ldrsb r0, [r7, #0xb6]
	cmp r0, #0xa
	ldr r0, [r6, #4]
	mov r0, r0, asr #0xc
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	bne _0211D624
	ldr r1, [r6]
	mov r0, r7
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x18
	b _0211D638
_0211D624:
	ldr r1, [r6]
	mov r0, r7
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #3
_0211D638:
	bl FUN_ov52_0211b910
	ldr r2, [r6]
	ldr r1, [r6, #4]
	mov r0, r7
	mov r2, r2, asr #0xc
	mov r3, r1, asr #0xc
	mov r1, #0x11
	bl FUN_ov52_0211bc50
	b _0211D6D0
_0211D65C:
	cmp r0, #1
	ldrsb r0, [r7, #0xb6]
	bne _0211D69C
	cmp r0, #8
	ldr r0, [r6, #4]
	mov r0, r0, asr #0xc
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	bne _0211D698
_0211D680:
	ldr r1, [r6]
	mov r0, r7
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x18
	b _0211D6CC
_0211D698:
	b _0211D6B8
_0211D69C:
	cmp r0, #7
	ldr r0, [r6, #4]
	mov r0, r0, asr #0xc
	stmia sp, {r0, r5}
	str r4, [sp, #8]
	bne _0211D6B8
	b _0211D680
_0211D6B8:
	ldr r1, [r6]
	mov r0, r7
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #3
_0211D6CC:
	bl FUN_ov52_0211b910
_0211D6D0:
	ldrsh r0, [r7, #0xb4]
	bic r0, r0, #1
	strh r0, [r7, #0xb4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211D6E4: .word 0x0000019A
_0211D6E8: .word gL5Sound
	arm_func_end FUN_ov52_0211d59c

	arm_func_start FUN_ov52_0211d6ec
FUN_ov52_0211d6ec: ; 0x0211D6EC
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211d6ec

	arm_func_start FUN_ov52_0211d6f4
FUN_ov52_0211d6f4: ; 0x0211D6F4
	ldrb r0, [r0, #0xf0]
	bx lr
	arm_func_end FUN_ov52_0211d6f4

	arm_func_start FUN_ov52_0211d6fc
FUN_ov52_0211d6fc: ; 0x0211D6FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r5, [r6, #0xf0]
	ldrsb r4, [r6, #0xb6]
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x20c
	add r1, r0, #0x800
	mov r0, #0x180
	mla r3, r5, r0, r1
	mov r2, #0xb
_0211D724:
	subs r4, r4, #1
	movmi r4, r2
	add r0, r3, r4, lsl #5
	ldrsh r0, [r0, #2]
	cmp r0, #0
	cmpne r0, #0x63
	addne r1, r6, r4
	ldrneb r1, [r1, #0xf4]
	cmpne r1, #0
	beq _0211D724
	mov r1, r4, lsl #0x18
	mov r2, r1, asr #0x18
	add r1, r6, r5
	strb r2, [r1, #0xf1]
	strb r2, [r6, #0xb6]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_0211d6fc

	arm_func_start FUN_ov52_0211d764
FUN_ov52_0211d764: ; 0x0211D764
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r5, [r6, #0xf0]
	ldrsb r4, [r6, #0xb6]
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x20c
	add r1, r0, #0x800
	mov r0, #0x180
	mla r3, r5, r0, r1
	mov r2, #0
_0211D78C:
	add r4, r4, #1
	cmp r4, #0xb
	movgt r4, r2
	add r0, r3, r4, lsl #5
	ldrsh r0, [r0, #2]
	cmp r0, #0
	cmpne r0, #0x63
	addne r1, r6, r4
	ldrneb r1, [r1, #0xf4]
	cmpne r1, #0
	beq _0211D78C
	mov r1, r4, lsl #0x18
	mov r2, r1, asr #0x18
	add r1, r6, r5
	strb r2, [r1, #0xf1]
	strb r2, [r6, #0xb6]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_0211d764

	arm_func_start FUN_ov52_0211d7d0
FUN_ov52_0211d7d0: ; 0x0211D7D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x20c
	ldrb r1, [r4, #0xf0]
	add r2, r0, #0x800
	mov r0, #0x180
	mla r2, r1, r0, r2
	ldrsb r0, [r4, #0xb6]
	add r0, r2, r0, lsl #5
	add r0, r0, #4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_0211d7d0

	arm_func_start FUN_ov52_0211d800
FUN_ov52_0211d800: ; 0x0211D800
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_ov52_0211b6d4
	mov r0, #0
	ldr r12, _0211D884 ; =0x02123EC8
	add r3, sp, #0
	strb r0, [r4, #0xb6]
	mov r2, #0x16
_0211D824:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211D824
	mov lr, #0
	add r12, sp, #0
_0211D844:
	mov r0, lr, lsl #2
	add r2, r12, lr, lsl #2
	ldrsb r1, [r12, r0]
	add r3, r4, lr, lsl #2
	ldrsb r0, [r2, #1]
	strb r1, [r3, #0xb8]
	add lr, lr, #1
	ldrsb r1, [r2, #2]
	strb r0, [r3, #0xb9]
	ldrsb r0, [r2, #3]
	strb r1, [r3, #0xba]
	cmp lr, #0xb
	strb r0, [r3, #0xbb]
	blt _0211D844
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_0211D884: .word ov52_02123EC8
	arm_func_end FUN_ov52_0211d800

	arm_func_start FUN_ov52_0211d888
FUN_ov52_0211d888: ; 0x0211D888
	bx lr
	arm_func_end FUN_ov52_0211d888

	arm_func_start FUN_ov52_0211d88c
FUN_ov52_0211d88c: ; 0x0211D88C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _0211D8D4 ; =0x02123D6C
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211D8D4: .word ov52_02123D6C
	arm_func_end FUN_ov52_0211d88c

	arm_func_start FUN_ov52_0211d8d8
FUN_ov52_0211d8d8: ; 0x0211D8D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r6, #3
	str r6, [r5, #0xb0]
	mov r4, #0
	bl FUN_ov52_0211bb64
	mov r8, #0x22
	mov r0, r5
	mov r1, r8
	bl FUN_ov52_0211b8b4
	mov r7, #0x12
	str r4, [sp]
	add r0, r8, #0x1c8
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r4
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r11, #0x18
	add r10, r7, #0x1c4
	str r11, [sp]
	mov r7, #1
	str r10, [sp, #4]
	mov r0, r5
	mov r1, r7
	mov r2, #9
	mov r3, r11
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r9, #0x30
	stmia sp, {r9, r10}
	str r7, [sp, #8]
	mov r7, #2
	mov r0, r5
	mov r1, r7
	mov r2, #9
	mov r3, r11
	bl FUN_ov52_0211b910
	mov r8, #0x48
	stmia sp, {r8, r10}
	mov r0, r5
	mov r1, r6
	mov r2, #9
	mov r3, r11
	str r7, [sp, #8]
	bl FUN_ov52_0211b910
	mov r7, #0x60
	stmia sp, {r7, r10}
	mov r0, r5
	mov r1, #4
	mov r2, #9
	mov r3, r11
	str r6, [sp, #8]
	bl FUN_ov52_0211b910
	mov r6, #0x78
	stmia sp, {r6, r10}
	mov r0, #4
	str r0, [sp, #8]
	mov r0, r5
	mov r1, #5
	mov r2, #9
	mov r3, r11
	bl FUN_ov52_0211b910
	str r11, [sp]
	str r10, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, r5
	mov r1, #6
	mov r2, #9
	mov r3, #0x90
	bl FUN_ov52_0211b910
	stmia sp, {r9, r10}
	mov r9, #7
	mov r3, #6
	str r3, [sp, #8]
	mov r0, r5
	mov r1, r9
	mov r2, #9
	mov r3, #0x90
	bl FUN_ov52_0211b910
	stmia sp, {r8, r10}
	mov r8, #8
	str r9, [sp, #8]
	mov r0, r5
	mov r1, r8
	mov r2, #9
	mov r3, #0x90
	bl FUN_ov52_0211b910
	stmia sp, {r7, r10}
	mov r1, #9
	str r8, [sp, #8]
	mov r0, r5
	mov r2, r1
	mov r3, #0x90
	bl FUN_ov52_0211b910
	stmia sp, {r6, r10}
	mov r0, #9
	mov r6, #0xa
	mov r3, #0x90
	str r0, [sp, #8]
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl FUN_ov52_0211b910
	mov r0, #0xa8
	stmia sp, {r0, r10}
	mov r2, r6
	mov r3, r11
	mov r0, r5
	mov r1, #0xb
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r9, #0x64
	mov r8, r4
	mov r7, #2
	ldr r6, _0211DC30 ; =0x020A1040
	mov r10, #0x1f
	b _0211DB30
_0211DAC0:
	mov r0, r5
	add r1, r4, #1
	bl FUN_ov52_0211bbe8
	movs r2, r0
	ldrne r0, [r2]
	cmpne r0, #0
	beq _0211DB2C
	ldr r1, [r2, #4]
	mov r0, r5
	mov r1, r1, asr #0xc
	stmia sp, {r1, r9}
	str r8, [sp, #8]
	ldr r1, [r2]
	mov r2, r7
	mov r3, r1, asr #0xc
	add r1, r4, #0x13
	add r3, r3, #0x40
	bl FUN_ov52_0211b910
	ldrb r0, [r6, r4]
	cmp r0, #0
	mov r0, r5
	beq _0211DB20
	mov r2, r10
	b _0211DB24
_0211DB20:
	mov r2, r8
_0211DB24:
	add r1, r4, #0x13
	bl FUN_ov52_0211bca0
_0211DB2C:
	add r4, r4, #1
_0211DB30:
	cmp r4, #0xa
	blt _0211DAC0
	ldr r8, _0211DC34 ; =0x000001D6
	mov r6, #0xa8
	stmia sp, {r6, r8}
	mov r7, #1
	mov r4, #0
	mov r0, r5
	mov r2, r7
	str r4, [sp, #8]
	mov r1, #0xd
	mov r3, #0xa0
	bl FUN_ov52_0211b910
	str r6, [sp]
	mov r6, #0xd0
	str r8, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	mov r0, r5
	mov r2, r7
	mov r3, r6
	mov r1, #0xe
	bl FUN_ov52_0211b910
	ldrsb r1, [r5, #0xb6]
	cmp r1, #0
	blt _0211DBD8
	mov r0, r5
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211DBD8
	ldr r2, [r0, #4]
	add r1, r6, #0xca
	mov r2, r2, asr #0xc
	str r2, [sp]
	stmib sp, {r1, r4}
	ldr r1, [r0]
	mov r0, r5
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #0x18
	bl FUN_ov52_0211b910
_0211DBD8:
	mov r4, #1
	mov r7, #0
	mov r6, r4
	b _0211DC20
_0211DBE8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211DC1C
	mov r2, r4, lsl #0x10
	str r7, [sp]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	mov r2, r2, lsr #0x10
	str r7, [sp, #4]
	bl FUN_ov52_0211c110
_0211DC1C:
	add r4, r4, #1
_0211DC20:
	cmp r4, #0xe
	ble _0211DBE8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DC30: .word unk_020A1040
_0211DC34: .word 0x000001D6
	arm_func_end FUN_ov52_0211d8d8

	arm_func_start FUN_ov52_0211dc38
FUN_ov52_0211dc38: ; 0x0211DC38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xe8]
	ldrsb r4, [r5, #0xb6]
	cmp r1, #0
	beq _0211DCE0
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldr r0, [r5, #0xe8]
	tst r0, #1
	beq _0211DCC8
	ldrsb r0, [r5, #0xb6]
	cmp r0, #0xa
	mov r0, r5
	bne _0211DC8C
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x8c
	add r0, r0, #0x1400
	mov r1, #1
	b _0211DC9C
_0211DC8C:
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x8c
	add r0, r0, #0x1400
	mov r1, #0
_0211DC9C:
	bl FUN_ov52_02120b58
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #4
	mov r2, #1
	bl FUN_ov52_0211ac94
	ldr r0, _0211DCF8 ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _0211DCE0
_0211DCC8:
	tst r0, #2
	beq _0211DCE0
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #1
	bl FUN_ov52_0211acbc
_0211DCE0:
	ldrsb r0, [r5, #0xb6]
	cmp r4, r0
	ldrnesh r0, [r5, #0xb4]
	orrne r0, r0, #1
	strneh r0, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211DCF8: .word unk_02099EB4
	arm_func_end FUN_ov52_0211dc38

	arm_func_start FUN_ov52_0211dcfc
FUN_ov52_0211dcfc: ; 0x0211DCFC
	ldr r12, _0211DD04 ; =FUN_ov52_0211b788
	bx r12
_0211DD04: .word FUN_ov52_0211b788
	arm_func_end FUN_ov52_0211dcfc

	arm_func_start FUN_ov52_0211dd08
FUN_ov52_0211dd08: ; 0x0211DD08
	ldr r12, _0211DD10 ; =FUN_ov52_0211b830
	bx r12
_0211DD10: .word FUN_ov52_0211b830
	arm_func_end FUN_ov52_0211dd08

	arm_func_start FUN_ov52_0211dd14
FUN_ov52_0211dd14: ; 0x0211DD14
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211dd14

	arm_func_start FUN_ov52_0211dd1c
FUN_ov52_0211dd1c: ; 0x0211DD1C
	ldr r12, _0211DD24 ; =FUN_ov52_0211b6d4
	bx r12
_0211DD24: .word FUN_ov52_0211b6d4
	arm_func_end FUN_ov52_0211dd1c

	arm_func_start FUN_ov52_0211dd28
FUN_ov52_0211dd28: ; 0x0211DD28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mvn r1, #0
	strb r1, [r10, #0xb6]
	mov r4, #0x1c
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x3bc
	add r0, r0, #0xc00
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	sub r1, r0, #1
	mov r0, r10
	str r1, [r10, #0xf0]
	bl FUN_ov52_0211b8a0
	ldr r1, [r10, #0xf0]
	bl FUN_ov52_0211ad74
	mov r6, r0
	mov r8, #0
_0211DD78:
	mov r0, r10
	bl FUN_ov52_0211b8a0
	mla r1, r8, r4, r6
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	beq _0211DF68
	mov r5, r8
_0211DD98:
	mla r0, r5, r4, r6
	ldrsh r1, [r0, #0x18]
	mov r0, r10
	mov r1, r1, lsl #0x18
	mov r5, r1, asr #0x18
	bl FUN_ov52_0211b8a0
	mla r1, r5, r4, r6
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	bne _0211DDCC
	cmp r5, r8
	bne _0211DD98
_0211DDCC:
	add r0, r10, r8, lsl #2
	mov r7, r8
	strb r5, [r0, #0xba]
_0211DDD8:
	mla r0, r7, r4, r6
	ldrsh r1, [r0, #0x1a]
	mov r0, r10
	mov r1, r1, lsl #0x18
	mov r7, r1, asr #0x18
	bl FUN_ov52_0211b8a0
	mla r1, r7, r4, r6
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	bne _0211DE0C
	cmp r7, r8
	bne _0211DDD8
_0211DE0C:
	add r0, r10, r8, lsl #2
	strb r7, [r0, #0xbb]
	cmp r8, #0
	mov r5, #0
	blt _0211DEC4
	cmp r8, #6
	bge _0211DEC4
	add r0, r8, #6
	mov r0, r0, lsl #0x18
	mov r9, r0, asr #0x18
	mla r0, r9, r4, r6
	str r0, [sp]
_0211DE3C:
	sub r11, r9, r5
	cmp r11, #6
	mov r7, #1
	blt _0211DE74
	mov r0, r10
	mov r7, #0
	bl FUN_ov52_0211b8a0
	mla r1, r11, r4, r6
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	addne r0, r10, r8, lsl #2
	strneb r11, [r0, #0xb8]
	bne _0211DF5C
_0211DE74:
	add r11, r9, r5
	cmp r11, #0xb
	bgt _0211DEAC
	mov r0, r10
	mov r7, #0
	bl FUN_ov52_0211b8a0
	ldr r1, [sp]
	mla r1, r5, r4, r1
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	addne r0, r10, r8, lsl #2
	strneb r11, [r0, #0xb8]
	bne _0211DF5C
_0211DEAC:
	cmp r7, #0
	addne r0, r10, r8, lsl #2
	strneb r8, [r0, #0xb8]
	bne _0211DF5C
	add r5, r5, #1
	b _0211DE3C
_0211DEC4:
	sub r0, r8, #6
	mov r0, r0, lsl #0x18
	mov r7, r0, asr #0x18
	mla r0, r7, r4, r6
	str r0, [sp, #4]
_0211DED8:
	mov r9, #1
	subs r11, r7, r5
	bmi _0211DF0C
	mov r0, r10
	mov r9, #0
	bl FUN_ov52_0211b8a0
	mla r1, r11, r4, r6
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	addne r0, r10, r8, lsl #2
	strneb r11, [r0, #0xb8]
	bne _0211DF5C
_0211DF0C:
	add r11, r7, r5
	cmp r11, #5
	bgt _0211DF44
	mov r0, r10
	mov r9, #0
	bl FUN_ov52_0211b8a0
	ldr r1, [sp, #4]
	mla r1, r5, r4, r1
	ldrsh r1, [r1, #2]
	bl FUN_ov52_0211ad68
	cmp r0, #0
	addne r0, r10, r8, lsl #2
	strneb r11, [r0, #0xb8]
	bne _0211DF5C
_0211DF44:
	cmp r9, #0
	addne r0, r10, r8, lsl #2
	strneb r8, [r0, #0xb8]
	bne _0211DF5C
	add r5, r5, #1
	b _0211DED8
_0211DF5C:
	add r1, r10, r8, lsl #2
	ldrsb r0, [r1, #0xb8]
	strb r0, [r1, #0xb9]
_0211DF68:
	add r0, r8, #1
	mov r0, r0, lsl #0x18
	mov r8, r0, asr #0x18
	cmp r8, #0xc
	blt _0211DD78
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov52_0211dd28

	arm_func_start FUN_ov52_0211df84
FUN_ov52_0211df84: ; 0x0211DF84
	bx lr
	arm_func_end FUN_ov52_0211df84

	arm_func_start FUN_ov52_0211df88
FUN_ov52_0211df88: ; 0x0211DF88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _0211DFD0 ; =0x02123D8C
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211DFD0: .word ov52_02123D8C
	arm_func_end FUN_ov52_0211df88

	arm_func_start FUN_ov52_0211dfd4
FUN_ov52_0211dfd4: ; 0x0211DFD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211E250 ; =0x02123CC8
	add r3, sp, #0x14
	mov r10, r0
	mov r2, #0xc
_0211DFEC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _0211DFEC
	mov r4, #1
	mov r0, r10
	str r4, [r10, #0xb0]
	bl FUN_ov52_0211bb64
	mov r6, #0x22
	mov r0, r10
	mov r1, r6
	bl FUN_ov52_0211b8b4
	mov r8, #0
	mov r5, #0x12
	add r0, r6, #0x1c8
	str r8, [sp]
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r8
	str r8, [sp, #8]
	bl FUN_ov52_0211b910
	add r6, r5, #0x1c4
	mov r5, #0xa8
	stmia sp, {r5, r6, r8}
	mov r0, r10
	mov r1, #0xd
	mov r2, r4
	mov r3, #0xa0
	bl FUN_ov52_0211b910
	stmia sp, {r5, r6}
	mov r0, #2
	str r0, [sp, #8]
	mov r2, r4
	mov r0, r10
	mov r1, #0xe
	mov r3, #0xd0
	bl FUN_ov52_0211b910
	mov r0, r10
	bl FUN_ov52_0211b8a0
	ldr r1, [r10, #0xf0]
	bl FUN_ov52_0211ad74
	str r0, [sp, #0xc]
	mvn r0, #0
	ldr r11, [r10, #0xf0]
	mov r7, r8
	add r5, sp, #0x14
	mov r4, r8
	str r0, [sp, #0x10]
	b _0211E1A4
_0211E0C0:
	ldr r0, [sp, #0xc]
	mov r1, #0x1c
	mla r0, r7, r1, r0
	ldrsh r9, [r0, #2]
	cmp r9, #0
	beq _0211E19C
	add r0, r5, r8, lsl #1
	ldrb r2, [r0, #1]
	ldrb r3, [r5, r8, lsl #1]
	mov r0, r10
	stmia sp, {r2, r6, r9}
	add r1, r8, #1
	add r2, r11, #0xb
	bl FUN_ov52_0211b910
	add r0, r5, r8, lsl #1
	ldrb r2, [r0, #1]
	ldrb r3, [r5, r8, lsl #1]
	mov r0, r10
	str r2, [sp]
	mov r2, #0x64
	stmib sp, {r2, r4}
	add r1, r7, #0x13
	mov r2, #2
	add r3, r3, #0x4c
	bl FUN_ov52_0211b910
	mov r0, r10
	bl FUN_ov52_0211b8a0
	mov r1, r9
	bl FUN_ov52_0211ad68
	cmp r0, #0
	mov r0, r10
	add r1, r8, #1
	beq _0211E184
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
	ldrsb r1, [r10, #0xb6]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	ldr r0, _0211E254 ; =0x020A104A
	streqb r7, [r10, #0xb6]
	ldrb r0, [r0, r9]
	add r1, r7, #0x13
	cmp r0, #0
	mov r0, r10
	beq _0211E17C
	mov r2, #0x1f
	b _0211E198
_0211E17C:
	mov r2, #0
	b _0211E198
_0211E184:
	mov r2, r4
	bl FUN_ov52_0211bca0
	mov r0, r10
	add r1, r7, #0x13
	mov r2, r4
_0211E198:
	bl FUN_ov52_0211bca0
_0211E19C:
	add r8, r8, #1
	add r7, r7, #1
_0211E1A4:
	cmp r7, #0xc
	blt _0211E0C0
	ldrsb r1, [r10, #0xb6]
	mov r5, #0
	cmp r1, #0
	blt _0211E1FC
	mov r0, r10
	add r1, r1, #1
	bl FUN_ov52_0211bbe8
	cmp r0, #0
	beq _0211E1FC
	ldr r2, [r0, #4]
	ldr r1, _0211E258 ; =0x0000019A
	mov r2, r2, asr #0xc
	str r2, [sp]
	stmib sp, {r1, r5}
	ldr r1, [r0]
	mov r0, r10
	mov r3, r1, asr #0xc
	mov r1, #0x11
	mov r2, #3
	bl FUN_ov52_0211b910
_0211E1FC:
	mov r6, #1
	mov r4, r6
	b _0211E240
_0211E208:
	mov r0, r10
	mov r1, r6
	bl FUN_ov52_0211bcdc
	cmp r0, #0
	beq _0211E23C
	mov r2, r6, lsl #0x10
	str r5, [sp]
	mov r0, r10
	mov r1, r4
	mov r3, r6
	mov r2, r2, lsr #0x10
	str r5, [sp, #4]
	bl FUN_ov52_0211c110
_0211E23C:
	add r6, r6, #1
_0211E240:
	cmp r6, #0xe
	ble _0211E208
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211E250: .word ov52_02123CC8
_0211E254: .word unk_020A104A
_0211E258: .word 0x0000019A
	arm_func_end FUN_ov52_0211dfd4

	arm_func_start FUN_ov52_0211e25c
FUN_ov52_0211e25c: ; 0x0211E25C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xe8]
	ldrsb r4, [r5, #0xb6]
	cmp r1, #0
	beq _0211E2E4
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	ldr r0, [r5, #0xe8]
	tst r0, #1
	beq _0211E2CC
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x8c
	add r0, r0, #0x1400
	mov r1, #3
	bl FUN_ov52_02120b58
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #4
	mov r2, #1
	bl FUN_ov52_0211ac94
	ldr r0, _0211E2FC ; =0x02099EB4
	mov r1, #0xd
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	b _0211E2E4
_0211E2CC:
	tst r0, #2
	beq _0211E2E4
	mov r0, r5
	bl FUN_ov52_0211b8a0
	mov r1, #1
	bl FUN_ov52_0211acbc
_0211E2E4:
	ldrsb r0, [r5, #0xb6]
	cmp r4, r0
	ldrnesh r0, [r5, #0xb4]
	orrne r0, r0, #1
	strneh r0, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E2FC: .word unk_02099EB4
	arm_func_end FUN_ov52_0211e25c

	arm_func_start FUN_ov52_0211e300
FUN_ov52_0211e300: ; 0x0211E300
	ldr r12, _0211E308 ; =FUN_ov52_0211b788
	bx r12
_0211E308: .word FUN_ov52_0211b788
	arm_func_end FUN_ov52_0211e300

	arm_func_start FUN_ov52_0211e30c
FUN_ov52_0211e30c: ; 0x0211E30C
	ldr r12, _0211E314 ; =FUN_ov52_0211b830
	bx r12
_0211E314: .word FUN_ov52_0211b830
	arm_func_end FUN_ov52_0211e30c

	arm_func_start FUN_ov52_0211e318
FUN_ov52_0211e318: ; 0x0211E318
	ldrsb r0, [r0, #0xb6]
	bx lr
	arm_func_end FUN_ov52_0211e318

	arm_func_start FUN_ov52_0211e320
FUN_ov52_0211e320: ; 0x0211E320
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldrsb r7, [r9, #0xb6]
	bl FUN_ov52_0211b8a0
	ldr r1, [r9, #0xf0]
	bl FUN_ov52_0211ad74
	mov r8, r0
	mov r5, #0xb
	mov r4, #0x1c
_0211E344:
	subs r7, r7, #1
	movmi r7, r5
	mla r0, r7, r4, r8
	ldrsh r6, [r0, #2]
	cmp r6, #0
	beq _0211E344
	mov r0, r9
	bl FUN_ov52_0211b8a0
	mov r1, r6
	bl FUN_ov52_0211ad68
	cmp r0, #0
	beq _0211E344
	mov r0, r6
	strb r7, [r9, #0xb6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov52_0211e320

	arm_func_start FUN_ov52_0211e380
FUN_ov52_0211e380: ; 0x0211E380
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldrsb r7, [r9, #0xb6]
	bl FUN_ov52_0211b8a0
	ldr r1, [r9, #0xf0]
	bl FUN_ov52_0211ad74
	mov r8, r0
	mov r5, #0
	mov r4, #0x1c
_0211E3A4:
	add r7, r7, #1
	cmp r7, #0xb
	movgt r7, r5
	mla r0, r7, r4, r8
	ldrsh r6, [r0, #2]
	cmp r6, #0
	beq _0211E3A4
	mov r0, r9
	bl FUN_ov52_0211b8a0
	mov r1, r6
	bl FUN_ov52_0211ad68
	cmp r0, #0
	beq _0211E3A4
	mov r0, r6
	strb r7, [r9, #0xb6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov52_0211e380

	arm_func_start FUN_ov52_0211e3e4
FUN_ov52_0211e3e4: ; 0x0211E3E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	bl FUN_ov52_0211b8a0
	ldr r1, [r8, #0xf0]
	bl FUN_ov52_0211ad74
	mov r4, r0
	ldrsb r2, [r8, #0xb6]
	mov r0, #0x1c
	mov r6, #0
	mla r1, r2, r0, r4
	mov r0, r8
	mov r7, r6
	ldrsh r5, [r1, #2]
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r0, #0
	ble _0211E46C
	mov r9, #0x1c
_0211E42C:
	mla r0, r7, r9, r4
	ldrsh r0, [r0, #2]
	cmp r5, r0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl FUN_ov52_0211b8a0
	mov r1, r7
	bl FUN_ov52_0211ad84
	add r6, r6, r0
	mov r0, r8
	add r7, r7, #1
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r7, r0
	blt _0211E42C
_0211E46C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov52_0211e3e4

	arm_func_start FUN_ov52_0211e474
FUN_ov52_0211e474: ; 0x0211E474
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r0, #0
	ble _0211E4C0
_0211E494:
	mov r0, r6
	bl FUN_ov52_0211b8a0
	mov r1, r5
	bl FUN_ov52_0211ad84
	add r4, r4, r0
	mov r0, r6
	add r5, r5, #1
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r5, r0
	blt _0211E494
_0211E4C0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_0211e474

	arm_func_start FUN_ov52_0211e4c8
FUN_ov52_0211e4c8: ; 0x0211E4C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov52_0211b6d4
	mov r5, #0
	mov r3, #1
	mov r1, r5
	add r0, r6, #0x130
	mov r2, #4
	strb r3, [r6, #0x13c]
	strb r5, [r6, #0x13d]
	str r5, [r6, #0x14c]
	bl MI_CpuFill8
	add r0, r6, #0x130
	mov r1, #0xa
	bl FUN_ov16_020f5278
	ldr r4, _0211E6E0 ; =gL5Config
	ldr r1, _0211E6E4 ; =0x021246E8
	mov r0, r4
	str r5, [r6, #0x1b4]
	str r5, [r6, #0x1b8]
	str r5, [r6, #0x1a8]
	str r5, [r6, #0x1b0]
	str r5, [r6, #0x1ac]
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	cmp r0, #0
	ble _0211E55C
	ldr r1, _0211E6E8 ; =0x021246FC
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211E57C
_0211E55C:
	ldr r1, _0211E6EC ; =0x02124710
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	rsb r0, r0, #0
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211E57C:
	bl _ffix
	ldr r4, _0211E6E0 ; =gL5Config
	mov r5, r0
	ldr r1, _0211E6F0 ; =0x02124724
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	cmp r0, #0
	ble _0211E5C0
	ldr r1, _0211E6F4 ; =0x02124738
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211E5DC
_0211E5C0:
	ldr r1, _0211E6F8 ; =0x0212474C
	mov r0, r4
	bl _ZN8L5Config8getParamEPc
	mov r0, r0, lsl #0xc
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0211E5DC:
	bl _ffix
	str r0, [r6, #0x178]
	mov r2, #0x168000
	rsb r2, r2, #0
	ldr r0, _0211E6E0 ; =gL5Config
	ldr r1, _0211E6FC ; =0x02124760
	str r5, [r6, #0x17c]
	str r2, [r6, #0x180]
	bl _ZN8L5Config8getParamEPc
	mov r2, #0
	ldr r1, _0211E700 ; =0x02099F18
	str r0, [r6, #0x1a0]
	str r0, [r6, #0x1a4]
	str r2, [r6, #0x184]
	str r2, [r6, #0x188]
	str r2, [r6, #0x18c]
	str r2, [r6, #0x190]
	str r2, [r6, #0x194]
	str r2, [r6, #0x198]
	str r0, [r6, #0x19c]
	str r2, [r6, #0x164]
	str r2, [r6, #0x160]
	str r2, [r6, #0x168]
	strb r2, [r6, #0x16c]
	ldr r0, [r1]
	ldrb r0, [r0, #0x45]
	strb r0, [r6, #0x16d]
	tst r0, #0xff
	bne _0211E65C
	ldr r0, [r1]
	mov r1, #1
	bl FUN_0205131c
_0211E65C:
	ldr r5, _0211E704 ; =0x02099EEC
	ldr r0, [r5]
	bl FUN_0205b2b8
	mov r4, #0
	ldr r0, [r5]
	mov r1, r4
	bl FUN_0205a5e8
	ldr r0, _0211E708 ; =0x02099F24
	mov r1, #4
	ldr r5, [r0]
	mov r0, r5
	bl FUN_ov16_020f7be0
	mov r0, r5
	bl FUN_ov16_020f7bf4
	str r0, [r6, #0x1bc]
	ldr r1, [r0, #0x24]
	mov r2, #0x64000
	str r1, [r6, #0x1c0]
	ldr r3, [r0, #0x28]
	mov r1, r4
	str r3, [r6, #0x1c4]
	str r2, [r0, #0x24]
	ldr r2, [r6, #0x1bc]
	mov r3, #0x1f4000
	mov r0, r5
	str r3, [r2, #0x28]
	bl FUN_ov16_020f7be0
	add r0, r6, #0x108
	mov r1, #0xa
	bl FUN_0206c158
	add r0, r6, #0x108
	bl FUN_ov16_020efa04
	ldmfd sp!, {r4, r5, r6, pc}
_0211E6E0: .word gL5Config
_0211E6E4: .word ov52_021246E8
_0211E6E8: .word ov52_021246FC
_0211E6EC: .word ov52_02124710
_0211E6F0: .word ov52_02124724
_0211E6F4: .word ov52_02124738
_0211E6F8: .word ov52_0212474C
_0211E6FC: .word ov52_02124760
_0211E700: .word unk_02099F18
_0211E704: .word unk_02099EEC
_0211E708: .word unk_02099F24
	arm_func_end FUN_ov52_0211e4c8

	arm_func_start FUN_ov52_0211e70c
FUN_ov52_0211e70c: ; 0x0211E70C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xf0
	bl FUN_ov52_021222e8
	ldr r0, _0211E78C ; =0x0209A0AC
	bl FUN_ov16_020efa04
	add r0, r5, #0x108
	bl FUN_0206c270
	ldr r4, _0211E790 ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b398
	ldr r0, [r4]
	bl FUN_0205a5f4
	ldrb r0, [r5, #0x16d]
	cmp r0, #0
	bne _0211E75C
	ldr r0, _0211E794 ; =0x02099F18
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0205131c
_0211E75C:
	add r0, r5, #0x130
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r5, #0x130
	bl FUN_ov16_020f52c4
	ldr r1, [r5, #0x1c0]
	ldr r0, [r5, #0x1bc]
	str r1, [r0, #0x24]
	ldr r1, [r5, #0x1c4]
	ldr r0, [r5, #0x1bc]
	str r1, [r0, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E78C: .word unk_0209A0AC
_0211E790: .word unk_02099EEC
_0211E794: .word unk_02099F18
	arm_func_end FUN_ov52_0211e70c

	arm_func_start FUN_ov52_0211e798
FUN_ov52_0211e798: ; 0x0211E798
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _0211E7E0 ; =0x02123D2C
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r0, r5
	ldr r3, [r0]
	mov r1, r12
	ldr r3, [r3, #0x34]
	mov r2, #1
	blx r3
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0211E7E0: .word ov52_02123D2C
	arm_func_end FUN_ov52_0211e798

	arm_func_start FUN_ov52_0211e7e4
FUN_ov52_0211e7e4: ; 0x0211E7E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r6, r0
	ldr r1, [r6, #0x138]
	mov r4, #0
	strb r4, [r6, #0xb6]
	str r4, [r6, #0x158]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211E9E8
_0211E80C: ; jump table
	b _0211E81C ; case 0
	b _0211E8A0 ; case 1
	b _0211E8C4 ; case 2
	b _0211E96C ; case 3
_0211E81C:
	ldr r8, _0211E9F0 ; =0x02123DAC
	add r7, sp, #0
	ldmia r8!, {r0, r1, r2, r3}
	mov r5, r7
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r8, {r0, r1}
	stmia r7, {r0, r1}
	mov r0, r6
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x29c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	ldr r1, [r5, r0, lsl #2]
	mov r0, r6
	str r1, [r6, #0x14c]
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211b674
	ldr r1, [r6, #0x14c]
	mov r0, r6
	bl FUN_ov52_02120be0
	str r0, [r6, #0x14c]
	mov r0, #1
	ldrsh r1, [r6, #0xb4]
	strb r0, [r6, #0x13c]
	add sp, sp, #0x28
	orr r0, r1, #4
	strb r4, [r6, #0x13d]
	strh r0, [r6, #0xb4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E8A0:
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211b674
	mov r0, r6
	bl FUN_ov52_02120e68
	mov r0, #1
	add sp, sp, #0x28
	strb r0, [r6, #0x13c]
	strb r0, [r6, #0x13d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E8C4:
	bl FUN_ov52_0211b8a0
	mov r5, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0x40]
	blx r1
	add r1, r5, #0x20c
	add r2, r1, #0x800
	mov r1, #0x180
	mla r5, r0, r1, r2
	mov r0, r6
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	mov r8, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	mov r7, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0x40]
	blx r1
	mov r1, r0
	mov r0, r7
	bl FUN_ov52_0211b13c
	add r0, r5, r8, lsl #5
	ldrsh r1, [r0, #2]
	mov r0, r6
	bl FUN_ov52_02120cb4
	add sp, sp, #0x28
	strb r4, [r6, #0x13c]
	strb r4, [r6, #0x13d]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E96C:
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x3bc
	add r0, r0, #0xc00
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	sub r8, r0, #1
	mov r0, r6
	bl FUN_ov52_0211b8a0
	add r0, r0, #0xb8
	add r0, r0, #0x1000
	ldr r1, [r0]
	ldr r1, [r1, #0x3c]
	blx r1
	mov r7, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	mov r1, r8
	bl FUN_ov52_0211ad74
	mov r5, r0
	mov r0, r6
	bl FUN_ov52_0211b8a0
	mov r1, r8
	bl FUN_ov52_0211ae04
	mov r0, r6
	mov r1, #0x1c
	mla r1, r7, r1, r5
	ldrsh r1, [r1, #2]
	bl FUN_ov52_02120ed8
	strb r4, [r6, #0x13c]
	strb r4, [r6, #0x13d]
_0211E9E8:
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211E9F0: .word ov52_02123DAC
	arm_func_end FUN_ov52_0211e7e4

	arm_func_start FUN_ov52_0211e9f4
FUN_ov52_0211e9f4: ; 0x0211E9F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r0
	mov r7, #5
	str r7, [r9, #0xb0]
	bl FUN_ov52_0211bb64
	mov r0, r9
	mov r1, #0x4b
	bl FUN_ov52_0211b8b4
	mov r8, #0
	ldr r6, _0211EF68 ; =0x000001EA
	str r8, [sp]
	stmib sp, {r6, r8}
	mov r0, r9
	mov r3, r8
	mov r1, #1
	mov r2, #6
	bl FUN_ov52_0211b910
	str r8, [sp]
	stmib sp, {r6, r8}
	mov r0, r9
	mov r1, #2
	mov r2, #0x1b
	mov r3, r8
	bl FUN_ov52_0211b910
	mov r1, #4
	str r8, [sp]
	mov r5, #0x1a4
	stmib sp, {r5, r8}
	mov r4, #0x80
	str r4, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	mov r0, r9
	mov r2, r1
	mov r3, #0x90
	bl FUN_ov52_0211ba70
	str r8, [sp]
	stmib sp, {r5, r8}
	str r4, [sp, #0xc]
	mov r0, #0x10
	str r0, [sp, #0x10]
	mov r2, r7
	mov r0, r9
	mov r1, #0x42
	mov r3, #0x28
	bl FUN_ov52_0211ba70
	sub r6, r6, #0x14
	mov r7, r8
	mov r5, #0x15
	mov r4, #0x70
	b _0211EAEC
_0211EAC4:
	mov r0, r8, lsl #4
	add r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	mov r2, r5
	mov r3, r4
	add r1, r8, #0x10
	stmib sp, {r6, r7}
	bl FUN_ov52_0211b910
	add r8, r8, #1
_0211EAEC:
	cmp r8, #0xa
	blt _0211EAC4
	mov r8, #0
	mov r6, #0x1b8
	mov r5, #0x16
	mov r10, #0x71
	mov r4, #0x64
	mov r11, #2
	b _0211EB5C
_0211EB10:
	mov r0, r8, lsl #4
	add r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	mov r2, r5
	mov r3, r10
	add r1, r8, #0x1b
	stmib sp, {r6, r7}
	bl FUN_ov52_0211b910
	mov r0, r8, lsl #4
	add r0, r0, #0x14
	str r0, [sp]
	mov r0, r9
	add r1, r8, #0x26
	mov r2, r11
	mov r3, #0xe0
	stmib sp, {r4, r7}
	bl FUN_ov52_0211b910
	add r8, r8, #1
_0211EB5C:
	cmp r8, #0xa
	blt _0211EB10
	mov r8, #0
	str r8, [sp]
	mov r4, #0x1e0
	stmib sp, {r4, r8}
	mov r0, r9
	mov r1, #0x31
	mov r2, #0x1c
	mov r3, #0x18
	bl FUN_ov52_0211b910
	mov r10, #0x11
	str r8, [sp]
	sub r7, r4, #0xa
	str r7, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, r9
	mov r2, r10
	mov r3, r8
	mov r1, #0x3c
	bl FUN_ov52_0211b910
	str r8, [sp]
	str r7, [sp, #4]
	mov r1, #6
	str r1, [sp, #8]
	mov r0, r9
	mov r2, r10
	mov r1, #0x3d
	mov r3, #0xb8
	bl FUN_ov52_0211b910
	mov r5, #0xb0
	mov r6, #0x13
	str r5, [sp]
	mov r4, #0x64
	stmib sp, {r4, r8}
	mov r0, r9
	mov r1, #0x3e
	mov r2, r6
	mov r3, r8
	bl FUN_ov52_0211b910
	str r5, [sp]
	mov r11, #0x40
	str r4, [sp, #4]
	mov r4, #2
	mov r2, r6
	mov r0, r9
	mov r1, #0x3f
	mov r3, r11
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r0, #0x20
	str r0, [sp]
	add r6, r4, #0x198
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, r9
	mov r1, #3
	mov r2, #0x14
	mov r3, #0x71
	bl FUN_ov52_0211b910
	stmia sp, {r5, r7, r8}
	mov r1, r11
	mov r0, r9
	mov r2, r10
	mov r3, #0x70
	bl FUN_ov52_0211b910
	stmia sp, {r5, r7}
	mov r2, r10
	mov r0, r9
	mov r1, #0x41
	mov r3, #0xe0
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r7, #1
	mov r4, r8
	mov r10, #0x1a
	b _0211ECB4
_0211EC94:
	mov r3, r8, lsl #3
	mov r0, r9
	mov r2, r10
	add r1, r8, #0x43
	add r3, r3, #0x90
	stmia sp, {r5, r6, r7}
	bl FUN_ov52_0211b910
	add r8, r8, #1
_0211ECB4:
	cmp r8, #3
	blt _0211EC94
	mov r8, #0
	mov r6, #0xb0
	ldr r5, _0211EF6C ; =0x0000019A
	mov r10, #7
	mov r11, #0x1a
	b _0211ECF8
_0211ECD4:
	mov r3, r8, lsl #3
	str r6, [sp]
	mov r0, r9
	mov r2, r11
	add r1, r8, #0x46
	add r3, r3, #0xb0
	stmib sp, {r5, r10}
	bl FUN_ov52_0211b910
	add r8, r8, #1
_0211ECF8:
	cmp r8, #3
	blt _0211ECD4
	ldr r0, [r9, #0x138]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211ED8C
_0211ED10: ; jump table
	b _0211ED20 ; case 0
	b _0211ED74 ; case 1
	b _0211ED78 ; case 2
	b _0211ED7C ; case 3
_0211ED20:
	ldr r0, _0211EF6C ; =0x0000019A
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r9
	mov r1, #0x4b
	mov r2, #0x22
	mov r3, #0xd0
	str r4, [sp, #8]
	bl FUN_ov52_0211b910
	mov r0, r9
	mov r1, #0x4b
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
	mov r2, #0x4b
	str r4, [sp]
	mov r0, r9
	mov r3, r2
	mov r1, #1
	str r4, [sp, #4]
	bl FUN_ov52_0211c110
	b _0211ED8C
_0211ED74:
	b _0211ED7C
_0211ED78:
	b _0211ED7C
_0211ED7C:
	mov r0, r9
	mov r1, #0x4b
	mov r2, #0
	bl FUN_ov52_0211bca0
_0211ED8C:
	ldrsh r1, [r9, #0xb4]
	mov r0, r9
	orr r1, r1, #4
	strh r1, [r9, #0xb4]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	blx r1
	ldrb r0, [r9, #0x13c]
	mov r8, #0
	cmp r0, #0
	beq _0211EE08
	ldrb r0, [r9, #0x13d]
	cmp r0, #0
	bne _0211EE08
	mov r5, #0x10
	ldr r6, _0211EF70 ; =0x02099EB4
	b _0211EE00
_0211EDD0:
	stmia sp, {r4, r5}
	str r5, [sp, #8]
	add r0, r8, #0x31
	mov r2, r0, lsl #0x10
	str r4, [sp, #0xc]
	mov r3, r8, lsl #4
	ldr r0, [r6]
	mov r1, r7
	mov r2, r2, lsr #0x10
	add r3, r3, #0x18
	bl FUN_ov16_0210fba4
	add r8, r8, #1
_0211EE00:
	cmp r8, #0xa
	blt _0211EDD0
_0211EE08:
	mov r8, #0
	mov r4, #1
	mov r2, #0x3c
	str r8, [sp]
	mov r0, r9
	mov r1, r4
	mov r3, r2
	str r8, [sp, #4]
	mov r6, r8
	bl FUN_ov52_0211c110
	mov r2, #0x3d
	str r8, [sp]
	mov r0, r9
	mov r1, r4
	mov r3, r2
	str r8, [sp, #4]
	bl FUN_ov52_0211c110
	mov r2, #0x3e
	str r8, [sp]
	mov r0, r9
	str r8, [sp, #4]
	mov r1, r4
	mov r3, r2
	bl FUN_ov52_0211c110
	mov r2, #0x3f
	str r8, [sp]
	mov r0, #0x400
	str r0, [sp, #4]
	mov r0, r9
	mov r1, r4
	mov r3, r2
	bl FUN_ov52_0211c110
	mov r2, #0x40
	str r8, [sp]
	mov r0, r9
	mov r1, r4
	mov r3, r2
	str r8, [sp, #4]
	bl FUN_ov52_0211c110
	mov r2, #0x41
	str r8, [sp]
	mov r0, r9
	mov r1, r4
	mov r3, r2
	str r8, [sp, #4]
	bl FUN_ov52_0211c110
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x9a
	str r0, [sp, #8]
	sub r0, r0, #0xb8
	ldr r5, _0211EF70 ; =0x02099EB4
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, r4
	mov r2, #0x4a
	mov r3, r8
	bl FUN_ov16_0210fba4
	ldr r2, _0211EF74 ; =FUN_ov16_0210f940
	ldr r1, _0211EF78 ; =FUN_ov16_0210fa20
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r2, _0211EF7C ; =FUN_ov16_0210fb10
	ldr r1, _0211EF80 ; =FUN_ov16_0210fb1c
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	b _0211EF58
_0211EF1C:
	mov r0, r9
	bl FUN_ov52_0211b8a0
	add r1, r8, #0x10
	str r1, [sp]
	mov r2, r1, lsl #0x10
	mov r1, r0
	str r6, [sp, #4]
	ldr r0, [r5]
	ldr r3, [r1, #0xd8]
	mov r1, r4
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fc74
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x38]
	add r8, r8, #1
_0211EF58:
	cmp r8, #0xa
	blt _0211EF1C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211EF68: .word 0x000001EA
_0211EF6C: .word 0x0000019A
_0211EF70: .word unk_02099EB4
_0211EF74: .word FUN_ov16_0210f940
_0211EF78: .word FUN_ov16_0210fa20
_0211EF7C: .word FUN_ov16_0210fb10
_0211EF80: .word FUN_ov16_0210fb1c
	arm_func_end FUN_ov52_0211e9f4

	arm_func_start FUN_ov52_0211ef84
FUN_ov52_0211ef84: ; 0x0211EF84
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r9, r0
	ldr r0, [r9, #0xe8]
	ldrsb r10, [r9, #0xb6]
	cmp r0, #0
	ldr r5, [r9, #0x14c]
	ldr r6, [r9, #0x144]
	ldr r7, _0211F58C ; =0x02099EB4
	mov r4, #0
	bne _0211EFBC
	ldr r0, [r9, #0xec]
	cmp r0, #0
	beq _0211F534
_0211EFBC:
	ldr r0, [r9, #0xe8]
	tst r0, #0x400
	beq _0211F024
	ldr r0, _0211F590 ; =0x02099EEC
	ldr r1, [r9, #0x15c]
	ldr r0, [r0]
	bl FUN_0205ad60
	movs r4, r0
	beq _0211F018
	add r0, sp, #0x10
	mov r1, r4
	bl FUN_ov16_020fbeb8
	ldr r1, [sp, #0x10]
	add r0, sp, #4
	str r1, [r9, #0x190]
	ldr r2, [sp, #0x14]
	mov r1, r4
	str r2, [r9, #0x194]
	ldr r2, [sp, #0x18]
	str r2, [r9, #0x198]
	bl FUN_ov16_020fbed0
	ldr r0, [sp, #4]
	str r0, [r9, #0x19c]
_0211F018:
	ldr r0, _0211F594 ; =gL5Sound
	mov r1, #1
	b _0211F1FC
_0211F024:
	ldr r0, [r9, #0xec]
	tst r0, #0x400
	beq _0211F0E8
	ldr r8, [r9, #0x1b8]
	tst r0, #0x40
	ldr r7, [r9, #0x1b4]
	subne r8, r8, #5
	bne _0211F064
	tst r0, #0x80
	addne r8, r8, #5
	bne _0211F064
	tst r0, #0x20
	subne r7, r7, #3
	bne _0211F064
	tst r0, #0x10
	addne r7, r7, #3
_0211F064:
	mvn r1, #0xff
	cmp r7, r1
	rsblt r7, r1, #0xa
	blt _0211F080
	rsb r0, r1, #0xa
	cmp r7, r0
	movgt r7, r1
_0211F080:
	mvn r0, #0xbf
	cmp r8, r0
	movlt r8, r0
	blt _0211F098
	cmp r8, #0xc0
	movgt r8, #0xc0
_0211F098:
	add r3, sp, #0
	mov r0, r9
	mov r1, r7
	mov r2, r8
	strb r4, [sp]
	bl FUN_ov52_021215a4
	ldrb r0, [sp]
	mov r1, #0x3f
	cmp r0, #0
	ldr r0, _0211F58C ; =0x02099EB4
	streq r7, [r9, #0x1b4]
	streq r8, [r9, #0x1b8]
	ldr r0, [r0]
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211F200
	mov r1, #1
	strb r1, [r0, #0xe]
	bl FUN_ov16_0210e69c
	b _0211F200
_0211F0E8:
	ldr r0, [r7]
	mov r1, #0x3f
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	beq _0211F110
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _0211F110
	strb r4, [r0, #0xe]
	bl FUN_ov16_0210e69c
_0211F110:
	ldr r0, [r9, #0xe8]
	tst r0, #0x40
	ldrnesb r0, [r9, #0xb6]
	subne r0, r0, #1
	strneb r0, [r9, #0xb6]
	bne _0211F200
	tst r0, #0x80
	ldrnesb r0, [r9, #0xb6]
	addne r0, r0, #1
	strneb r0, [r9, #0xb6]
	bne _0211F200
	tst r0, #0x20
	ldrne r0, [r9, #0x144]
	subne r0, r0, #1
	strne r0, [r9, #0x144]
	bne _0211F200
	tst r0, #0x10
	ldrne r0, [r9, #0x144]
	addne r0, r0, #1
	strne r0, [r9, #0x144]
	bne _0211F200
	tst r0, #2
	beq _0211F200
	ldr r0, [r9, #0x168]
	add r0, r9, r0, lsl #2
	ldr r1, [r0, #0x160]
	cmp r1, #0
	ble _0211F198
	ldr r0, _0211F590 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldr r0, [r9, #0x168]
	add r0, r9, r0, lsl #2
	str r4, [r0, #0x160]
_0211F198:
	ldr r0, [r9, #0x168]
	eor r0, r0, #1
	add r0, r9, r0, lsl #2
	ldr r1, [r0, #0x160]
	cmp r1, #0
	ble _0211F1CC
	ldr r0, _0211F590 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldr r0, [r9, #0x168]
	eor r0, r0, #1
	add r0, r9, r0, lsl #2
	str r4, [r0, #0x160]
_0211F1CC:
	add r1, r9, #0x100
	mov r0, r9
	str r4, [r9, #0x168]
	strh r4, [r1, #0x6e]
	bl FUN_ov52_0211b8a0
	mov r1, r4
	bl FUN_ov52_0211acbc
	ldr r0, [r7]
	mov r1, #0x3e
	bl FUN_ov16_0210efac
	ldr r0, _0211F594 ; =gL5Sound
	mov r1, #4
_0211F1FC:
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211F200:
	ldrsb r1, [r9, #0xb6]
	ldr r0, _0211F58C ; =0x02099EB4
	mov r2, #0
	cmp r1, #0
	movlt r1, #9
	strltb r1, [r9, #0xb6]
	blt _0211F224
	cmp r1, #9
	strgtb r2, [r9, #0xb6]
_0211F224:
	ldrsb r1, [r9, #0xb6]
	cmp r10, r1
	ldrnesh r1, [r9, #0xb4]
	orrne r1, r1, #1
	strneh r1, [r9, #0xb4]
	ldr r1, [r9, #0x138]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _0211F500
_0211F248: ; jump table
	b _0211F258 ; case 0
	b _0211F370 ; case 1
	b _0211F398 ; case 2
	b _0211F448 ; case 3
_0211F258:
	ldr r2, [r9, #0x144]
	ldr r1, [r9, #0x148]
	cmp r2, r1
	blt _0211F284
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0x14c]
	add r1, r1, #1
	orr r0, r0, #0x10
_0211F278:
	str r1, [r9, #0x14c]
	strh r0, [r9, #0xb4]
	b _0211F334
_0211F284:
	cmp r2, #0
	bge _0211F2A0
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0x14c]
	sub r1, r1, #1
	orr r0, r0, #0x20
	b _0211F278
_0211F2A0:
	ldr r1, [r9, #0xe8]
	tst r1, #0x200
	beq _0211F2D0
	ldr r0, [r9, #0x158]
	cmp r0, #0
	mov r0, r9
	bne _0211F2C8
	bl FUN_ov52_02120ffc
_0211F2C0:
	str r0, [r9, #0x14c]
	b _0211F334
_0211F2C8:
	bl FUN_ov52_021210ac
	b _0211F2C0
_0211F2D0:
	tst r1, #0x100
	beq _0211F2F8
	ldr r0, [r9, #0x158]
	cmp r0, #0
	mov r0, r9
	bne _0211F2F0
	bl FUN_ov52_02120f98
	b _0211F2C0
_0211F2F0:
	bl FUN_ov52_02121098
	b _0211F2C0
_0211F2F8:
	tst r1, #0x800
	beq _0211F334
	ldr r2, [r9, #0x158]
	ldrsh r1, [r9, #0xb4]
	mvn r2, r2
	add r2, r2, #2
	orr r1, r1, #4
	strh r1, [r9, #0xb4]
	str r2, [r9, #0x158]
	ldr r0, [r0]
	mov r1, #0x4b
	bl FUN_ov16_0210efac
	ldr r0, _0211F594 ; =gL5Sound
	mov r1, #1
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211F334:
	ldr r0, [r9, #0x14c]
	cmp r5, r0
	beq _0211F500
	cmp r0, #1
	movlt r0, #0x2e
	strlt r0, [r9, #0x14c]
	blt _0211F35C
	cmp r0, #0x2e
	movgt r0, #1
	strgt r0, [r9, #0x14c]
_0211F35C:
	ldr r1, [r9, #0x14c]
	mov r0, r9
	bl FUN_ov52_02120be0
	str r0, [r9, #0x14c]
	b _0211F500
_0211F370:
	ldr r1, [r9, #0x144]
	ldr r0, [r9, #0x148]
	cmp r1, r0
	strge r2, [r9, #0x144]
	ldr r0, [r9, #0x144]
	cmp r0, #0
	ldrlt r0, [r9, #0x148]
	sublt r0, r0, #1
	strlt r0, [r9, #0x144]
	b _0211F500
_0211F398:
	ldr r1, [r9, #0x144]
	ldr r0, [r9, #0x148]
	cmp r1, r0
	blt _0211F3C0
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0xe8]
	orr r1, r1, #0x100
	orr r0, r0, #0x10
	str r1, [r9, #0xe8]
	strh r0, [r9, #0xb4]
_0211F3C0:
	ldr r0, [r9, #0x144]
	cmp r0, #0
	bge _0211F3E4
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0xe8]
	orr r1, r1, #0x200
	orr r0, r0, #0x20
	str r1, [r9, #0xe8]
	strh r0, [r9, #0xb4]
_0211F3E4:
	ldr r0, [r9, #0xe8]
	tst r0, #0x200
	beq _0211F418
	mov r0, r9
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	bl FUN_ov52_0211d6fc
	movs r1, r0
	beq _0211F414
	mov r0, r9
	bl FUN_ov52_02120cb4
_0211F414:
	b _0211F4F4
_0211F418:
	tst r0, #0x100
	beq _0211F500
	mov r0, r9
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	bl FUN_ov52_0211d764
	movs r1, r0
	beq _0211F444
	mov r0, r9
	bl FUN_ov52_02120cb4
_0211F444:
	b _0211F4F4
_0211F448:
	ldr r1, [r9, #0x144]
	ldr r0, [r9, #0x148]
	cmp r1, r0
	blt _0211F470
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0xe8]
	orr r1, r1, #0x100
	orr r0, r0, #0x10
	str r1, [r9, #0xe8]
	strh r0, [r9, #0xb4]
_0211F470:
	ldr r0, [r9, #0x144]
	cmp r0, #0
	bge _0211F494
	ldrsh r0, [r9, #0xb4]
	ldr r1, [r9, #0xe8]
	orr r1, r1, #0x200
	orr r0, r0, #0x20
	str r1, [r9, #0xe8]
	strh r0, [r9, #0xb4]
_0211F494:
	ldr r0, [r9, #0xe8]
	tst r0, #0x200
	beq _0211F4C8
	mov r0, r9
	bl FUN_ov52_0211b8a0
	add r0, r0, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211e320
	movs r1, r0
	beq _0211F4C4
	mov r0, r9
	bl FUN_ov52_02120ed8
_0211F4C4:
	b _0211F4F4
_0211F4C8:
	tst r0, #0x100
	beq _0211F500
	mov r0, r9
	bl FUN_ov52_0211b8a0
	add r0, r0, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211e380
	movs r1, r0
	beq _0211F4F4
	mov r0, r9
	bl FUN_ov52_02120ed8
_0211F4F4:
	ldrsh r0, [r9, #0xb4]
	orr r0, r0, #4
	strh r0, [r9, #0xb4]
_0211F500:
	ldr r0, [r9, #0x144]
	cmp r6, r0
	ldreq r0, [r9, #0x14c]
	cmpeq r5, r0
	ldrnesh r0, [r9, #0xb4]
	orrne r0, r0, #4
	strneh r0, [r9, #0xb4]
	ldrsh r0, [r9, #0xb4]
	tst r0, #5
	beq _0211F534
	ldr r0, _0211F594 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211F534:
	ldr r1, [r9, #0xec]
	mov r4, #0
	tst r1, #0x400
	addne sp, sp, #0x1c
	ldr r0, _0211F58C ; =0x02099EB4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r4, [r9, #0x1b4]
	str r4, [r9, #0x1b8]
	ldr r0, [r0]
	mov r1, #0x3f
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	strb r4, [r0, #0xe]
	bl FUN_ov16_0210e69c
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211F58C: .word unk_02099EB4
_0211F590: .word unk_02099EEC
_0211F594: .word gL5Sound
	arm_func_end FUN_ov52_0211ef84

	arm_func_start FUN_ov52_0211f598
FUN_ov52_0211f598: ; 0x0211F598
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #0xe8]
	str r2, [r4, #0xec]
	tst r1, #0x200
	beq _0211F5C0
	ldr r0, _0211F5E0 ; =0x02099EB4
	mov r1, #0x3c
	ldr r0, [r0]
	bl FUN_ov16_0210efac
_0211F5C0:
	ldr r0, [r4, #0xe8]
	tst r0, #0x100
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211F5E0 ; =0x02099EB4
	mov r1, #0x3d
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r4, pc}
_0211F5E0: .word unk_02099EB4
	arm_func_end FUN_ov52_0211f598

	arm_func_start FUN_ov52_0211f5e4
FUN_ov52_0211f5e4: ; 0x0211F5E4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	movs r5, r3
	mov r7, r0
	mov r6, r1
	addeq sp, sp, #0x6c
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	cmp r2, #5
	addls pc, pc, r2, lsl #2
	b _0211F92C
_0211F610: ; jump table
	b _0211F92C ; case 0
	b _0211F684 ; case 1
	b _0211F628 ; case 2
	b _0211F898 ; case 3
	b _0211F898 ; case 4
	b _0211F898 ; case 5
_0211F628:
	cmp r5, #0x3c
	beq _0211F638
	cmp r5, #0x3d
	bne _0211F65C
_0211F638:
	cmp r5, #0x3c
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x200
	streq r0, [r7, #0xe8]
	beq _0211F65C
	cmp r5, #0x3d
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x100
	streq r0, [r7, #0xe8]
_0211F65C:
	cmp r5, #0x3e
	ldreq r0, [r7, #0xe8]
	add sp, sp, #0x6c
	orreq r0, r0, #2
	streq r0, [r7, #0xe8]
	cmp r5, #0x4b
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x800
	streq r0, [r7, #0xe8]
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F684:
	cmp r5, #0x3f
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x400
	streq r0, [r7, #0xe8]
	beq _0211F6BC
	cmp r5, #0x40
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x20
	streq r0, [r7, #0xe8]
	beq _0211F6BC
	cmp r5, #0x41
	ldreq r0, [r7, #0xe8]
	orreq r0, r0, #0x10
	streq r0, [r7, #0xe8]
_0211F6BC:
	ldr r0, [r7, #0x158]
	cmp r0, #0
	bne _0211F738
	cmp r5, #0x31
	blt _0211F7D8
	cmp r5, #0x3b
	bgt _0211F7D8
	ldr lr, _0211F934 ; =0x02123DD4
	add r12, sp, #0x44
	ldmia lr!, {r0, r1, r2, r3}
	mov r4, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia r12, {r0, r1}
	mov r0, #1
	strb r0, [r7, #0x13c]
	sub r0, r5, #0x31
	ldr r1, [r4, r0, lsl #2]
	mov r0, r7
	str r1, [r7, #0x14c]
	bl FUN_ov52_02120be0
	str r0, [r7, #0x14c]
	ldr r0, _0211F938 ; =gL5Sound
	mov r1, #8
	bl _ZN7L5Sound12FUN_0202cf6cEm
	ldrsh r0, [r7, #0xb4]
	orr r0, r0, #4
	strh r0, [r7, #0xb4]
	b _0211F7D8
_0211F738:
	cmp r5, #0x31
	blt _0211F7D8
	cmp r5, #0x3b
	bgt _0211F7D8
	ldr lr, _0211F93C ; =0x02123E9C
	add r12, sp, #0x18
	ldmia lr!, {r0, r1, r2, r3}
	mov r4, r12
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	mov r2, #0
	b _0211F7A0
_0211F774:
	ldr r1, [r7, #0x14c]
	ldr r0, [r4, r2, lsl #2]
	cmp r1, r0
	bge _0211F79C
	sub r0, r2, #1
	ldr r0, [r4, r0, lsl #2]
	add r0, r5, r0
	sub r0, r0, #0x31
	str r0, [r7, #0x14c]
	b _0211F7A8
_0211F79C:
	add r2, r2, #1
_0211F7A0:
	cmp r2, #0xb
	blt _0211F774
_0211F7A8:
	ldr r1, [r7, #0x14c]
	mov r2, #1
	mov r0, r7
	strb r2, [r7, #0x13c]
	bl FUN_ov52_02120be0
	ldrsh r1, [r7, #0xb4]
	str r0, [r7, #0x14c]
	ldr r0, _0211F938 ; =gL5Sound
	orr r2, r1, #4
	mov r1, #8
	strh r2, [r7, #0xb4]
	bl _ZN7L5Sound12FUN_0202cf6cEm
_0211F7D8:
	cmp r5, #0x4a
	bne _0211F858
	ldr r0, [r7, #0xe8]
	tst r0, #0x400
	bne _0211F858
	ldr r0, [r7, #0xec]
	tst r0, #0x400
	bne _0211F858
	ldr r0, _0211F940 ; =0x02099EEC
	ldr r1, [r7, #0x15c]
	ldr r0, [r0]
	bl FUN_0205ad60
	movs r4, r0
	beq _0211F858
	ldrh r2, [r6]
	add r0, sp, #0xc
	mov r1, r4
	str r2, [r7, #0x1ac]
	ldrh r2, [r6, #2]
	str r2, [r7, #0x1b0]
	bl FUN_ov16_020fbeb8
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	str r1, [r7, #0x190]
	ldr r2, [sp, #0x10]
	mov r1, r4
	str r2, [r7, #0x194]
	ldr r2, [sp, #0x14]
	str r2, [r7, #0x198]
	bl FUN_ov16_020fbed0
	ldr r0, [sp]
	str r0, [r7, #0x19c]
_0211F858:
	cmp r5, #0x10
	addlt sp, sp, #0x6c
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0x1a
	addgt sp, sp, #0x6c
	ldmgtfd sp!, {r4, r5, r6, r7, pc}
	ldrsh r1, [r7, #0xb4]
	sub r3, r5, #0x10
	ldr r0, _0211F938 ; =gL5Sound
	orr r2, r1, #1
	mov r1, #8
	strb r3, [r7, #0xb6]
	strh r2, [r7, #0xb4]
	bl _ZN7L5Sound12FUN_0202cf6cEm
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F898:
	cmp r5, #0x3f
	ldreq r1, [r7, #0xec]
	orreq r1, r1, #0x400
	streq r1, [r7, #0xec]
	cmp r5, #0x3e
	cmpne r5, #0x4b
	cmpne r5, #0x3c
	cmpne r5, #0x3d
	bne _0211F8D0
	ldr r0, _0211F944 ; =0x02099EB4
	mov r1, r5, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
_0211F8D0:
	cmp r0, #0
	beq _0211F8DC
	bl FUN_ov16_0210e69c
_0211F8DC:
	cmp r5, #0x4a
	addne sp, sp, #0x6c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xe8]
	tst r0, #0x400
	addne sp, sp, #0x6c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xec]
	tst r0, #0x400
	addne sp, sp, #0x6c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldrh r4, [r6]
	ldr r1, [r7, #0x1ac]
	ldrh r3, [r6, #2]
	ldr r2, [r7, #0x1b0]
	mov r0, r7
	sub r1, r4, r1
	sub r2, r3, r2
	mov r3, #0
	bl FUN_ov52_021215a4
_0211F92C:
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211F934: .word ov52_02123DD4
_0211F938: .word gL5Sound
_0211F93C: .word ov52_02123E9C
_0211F940: .word unk_02099EEC
_0211F944: .word unk_02099EB4
	arm_func_end FUN_ov52_0211f5e4

	arm_func_start FUN_ov52_0211f948
FUN_ov52_0211f948: ; 0x0211F948
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0x144]
	mov r0, #0xa
	mul r2, r1, r0
	ldr r1, [r5, #0xf4]
	sub r4, r1, r2
	cmp r4, #0xa
	movgt r4, r0
	ldrsh r0, [r5, #0xb4]
	tst r0, #8
	beq _0211F99C
	add r0, r5, #0x130
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211F99C
	mov r0, r5
	bl FUN_ov52_02120a84
	ldrsh r0, [r5, #0xb4]
	bic r0, r0, #8
	strh r0, [r5, #0xb4]
_0211F99C:
	ldrsh r0, [r5, #0xb4]
	tst r0, #4
	beq _0211FA04
	bic r1, r0, #4
	mov r0, r5
	strh r1, [r5, #0xb4]
	bl FUN_ov52_02120394
	mov r0, r5
	bl FUN_ov52_02120630
	ldr r1, [r5, #0x144]
	mov r0, r5
	mov r2, r4
	bl FUN_ov52_021200e4
	mov r0, r5
	bl FUN_ov52_021201fc
	add r0, r5, #0x130
	mvn r1, #0
	bl FUN_ov16_020f57b0
	ldr r2, [r5, #0x144]
	mov r1, #0xa
	mul r1, r2, r1
	mov r0, r5
	bl FUN_ov52_021210c0
	ldrsh r0, [r5, #0xb4]
	orr r0, r0, #9
	strh r0, [r5, #0xb4]
_0211FA04:
	ldrsh r0, [r5, #0xb4]
	tst r0, #1
	beq _0211FA3C
	ldr r1, [r5, #0x144]
	bic r3, r0, #1
	mov r0, r5
	mov r2, r4
	strh r3, [r5, #0xb4]
	bl FUN_ov52_0211ff48
	mov r0, r5
	bl FUN_ov52_0211ff04
	ldrsh r0, [r5, #0xb4]
	orr r0, r0, #2
	strh r0, [r5, #0xb4]
_0211FA3C:
	ldr r4, _0211FAFC ; =0x02099EEC
	ldr r0, [r4]
	bl FUN_0205b340
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x168]
	ldr r0, [r4]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x160]
	bl FUN_0205ac70
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov52_0212142c
	ldr r1, _0211FB00 ; =0x0209A110
	ldr r0, [r4]
	ldr r1, [r1]
	bl FUN_0205a60c
	ldr r1, _0211FB04 ; =0x0209A0F0
	ldr r0, _0211FB08 ; =0x0209A0E8
	ldr r2, _0211FB0C ; =0x0209A0F4
	ldrh r1, [r1]
	ldrh r0, [r0]
	ldrh r2, [r2]
	orr r0, r1, r0
	orr r0, r2, r0
	tst r0, #0xf0
	movne r0, #0
	ldreq r0, [r5, #0x1c8]
	addeq r0, r0, #1
	andeq r0, r0, #0x3f
	str r0, [r5, #0x1c8]
	mov r0, r0
	cmp r0, #6
	ldmltfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xb4]
	tst r0, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	bic r1, r0, #2
	mov r0, r5
	strh r1, [r5, #0xb4]
	bl FUN_ov52_0211fb10
	mov r0, r5
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1000
	mov r1, #4
	str r1, [r0, #0x69c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211FAFC: .word unk_02099EEC
_0211FB00: .word unk_0209A110
_0211FB04: .word unk_0209A0F0
_0211FB08: .word unk_0209A0E8
_0211FB0C: .word unk_0209A0F4
	arm_func_end FUN_ov52_0211f948

	arm_func_start FUN_ov52_0211fb10
FUN_ov52_0211fb10: ; 0x0211FB10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x84
	mov r5, #0
	mov r4, r0
	add r0, r4, #0x108
	str r5, [sp, #0x14]
	mov r6, r5
	bl FUN_0206c62c
	add r0, r4, #0x100
	ldr r1, [r4, #0x168]
	strh r5, [r0, #0x6e]
	add r0, r4, r1, lsl #2
	ldr r1, [r0, #0x160]
	cmp r1, #0
	ble _0211FB64
	ldr r0, _0211FEF4 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldr r0, [r4, #0x168]
	add r0, r4, r0, lsl #2
	str r5, [r0, #0x160]
_0211FB64:
	ldrsb r1, [r4, #0xb6]
	ldr r2, [r4, #0x144]
	mov r0, #0xa
	mla r1, r2, r0, r1
	mov r0, r4
	bl FUN_ov52_02120b60
	movs r8, r0
	beq _0211FBD0
	ldrb r0, [r8, #3]
	tst r0, #3
	bne _0211FC10
	ldr r0, [r4, #0x168]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x160]
	cmp r1, #0
	ble _0211FBC4
	ldr r0, _0211FEF4 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldr r0, [r4, #0x168]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	str r6, [r0, #0x160]
_0211FBC4:
	add sp, sp, #0x84
	str r6, [r4, #0x168]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FBD0:
	ldr r0, [r4, #0x168]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r1, [r0, #0x160]
	cmp r1, #0
	ble _0211FC04
	ldr r0, _0211FEF4 ; =0x02099EEC
	ldr r0, [r0]
	bl FUN_0205aa80
	ldr r0, [r4, #0x168]
	eor r0, r0, #1
	add r0, r4, r0, lsl #2
	str r6, [r0, #0x160]
_0211FC04:
	add sp, sp, #0x84
	str r6, [r4, #0x168]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FC10:
	mov r10, #1
	ldr r0, _0211FEF8 ; =0x0209BA20
	mov r1, r10
	bl FUN_0207249c
	mov r7, r0
	ldrh r1, [r7, #0x30]
	add r0, r4, #0x108
	ldrh r6, [r8]
	ldrh r11, [r7, #0x26]
	str r1, [sp, #0x10]
	bl FUN_0206c788
	mov r2, #0
	mov r1, r0
	add r0, r4, #0x108
	mov r3, r2
	str r2, [sp]
	bl FUN_0206c300
	movs r9, r0
	addeq sp, sp, #0x84
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211FEF8 ; =0x0209BA20
	mov r1, r6
	mov r2, r9
	bl FUN_0204bd64
	cmp r0, #0
	beq _0211FD94
	mov r0, r9
	strh r6, [r9, #0x4e]
	bl FUN_0206dcd4
	str r0, [sp, #0xc]
	mov r1, r0
	add r0, sp, #0x18
	bl FUN_0206ed40
	add r0, sp, #0x18
	str r0, [r9, #0x68]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0211FCC0
	mov r0, r9
	bl FUN_0206cd70
	cmp r0, #1
	movne r10, #0xa
	and r0, r10, #0xff
	str r0, [sp, #0x14]
_0211FCC0:
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r6
	bl FUN_0206dd58
	ldrb r10, [r9, #0x4d]
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r10
	bl FUN_0206e4a4
	ldrh r10, [r9, #0x58]
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r10
	bl FUN_0206de90
	mov r0, r9
	bl FUN_0206dcd4
	mov r10, #1
	mov r1, r10
	bl FUN_0206e43c
	ldr r1, [sp, #0x14]
	mov r0, r9
	mov r2, r10
	bl FUN_0206d9cc
	mov r0, r9
	bl FUN_0206dcd4
	mov r1, r10
	bl FUN_0206e7e4
	mov r0, r9
	bl FUN_0206cd70
	cmp r0, #1
	bne _0211FD60
	ldr r0, _0211FEF8 ; =0x0209BA20
	mov r1, r9
	bl FUN_0206fc44
	ldrh r0, [r7, #0x32]
	ldrh r2, [r7, #0x34]
	mov r1, r10
	str r0, [sp, #0x10]
	ldr r0, _0211FEF8 ; =0x0209BA20
	bl FUN_ov16_020ee278
_0211FD60:
	ldr r0, _0211FEF8 ; =0x0209BA20
	mov r7, #1
	ldr r2, [sp, #0x10]
	mov r1, r9
	mov r3, #0
	str r7, [sp]
	bl FUN_ov16_020eea8c
	ldr r1, [sp, #0xc]
	mov r0, r9
	str r1, [r9, #0x68]
	bl FUN_0206dcd4
	add r1, sp, #0x18
	bl FUN_0206ed40
_0211FD94:
	mov r7, #0
	mov r0, r6
	mov r1, r7
	mov r10, r7
	bl FUN_ov16_020efa9c
	movs r9, r0
	beq _0211FDC0
	bl FUN_0206cd70
	cmp r0, #1
	moveq r7, #1
	mov r5, r7
_0211FDC0:
	add r0, r4, #0x100
	ldrh r1, [r0, #0x6e]
	ldr r2, [r4, #0x168]
	cmp r6, r1
	ldreqh r1, [r0, #0x70]
	add r2, r4, r2, lsl #2
	ldr r2, [r2, #0x160]
	cmpeq r11, r1
	ldreqh r0, [r0, #0x72]
	cmpeq r5, r0
	bne _0211FDF8
	cmp r2, #0
	addgt sp, sp, #0x84
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FDF8:
	ldr r0, _0211FEF8 ; =0x0209BA20
	add r2, r4, #0x100
	mov r1, #1
	strh r5, [r2, #0x72]
	strh r6, [r2, #0x6e]
	strh r11, [r2, #0x70]
	mov r5, r1
	bl FUN_0207249c
	ldr r1, [r4, #0x138]
	cmp r1, #0
	cmpne r1, #1
	beq _0211FE30
	cmp r1, #2
	bne _0211FE5C
_0211FE30:
	ldrb r1, [r8, #3]
	tst r1, #2
	ldreq r1, _0211FEFC ; =0x000001DF
	streqh r1, [r0, #0x28]
	beq _0211FE74
	add r1, r4, #0x100
	ldrh r1, [r1, #0x72]
	add r1, r1, #0xe1
	add r1, r1, #0x100
	strh r1, [r0, #0x28]
	b _0211FE74
_0211FE5C:
	add r1, r4, #0x100
	ldrh r2, [r1, #0x70]
	cmp r2, #0
	ldrneh r1, [r1, #0x72]
	addne r1, r2, r1
	strneh r1, [r0, #0x28]
_0211FE74:
	stmia sp, {r5, r10}
	str r5, [sp, #8]
	ldr r6, _0211FEF4 ; =0x02099EEC
	ldr r2, [r4, #0x168]
	ldr r0, [r6]
	mov r1, r9
	mov r3, r5
	bl FUN_0205a87c
	ldr r1, [r4, #0x168]
	mov r7, r0
	add r0, r4, r1, lsl #2
	str r7, [r0, #0x160]
	str r7, [r4, #0x15c]
	ldr r0, [r6]
	ldr r2, _0211FF00 ; =0x000F423F
	mov r1, r7
	mov r3, r10
	bl FUN_0205ab68
	ldr r1, [r4, #0x1a8]
	mov r0, r4
	strb r5, [r4, #0x16c]
	bl FUN_ov52_0212126c
	ldr r0, [r6]
	mov r2, r10
	mov r1, r7
	bl FUN_0205acb0
	ldr r0, [r6]
	mov r1, r7
	mov r2, r5
	bl FUN_0205b3cc
	add sp, sp, #0x84
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211FEF4: .word unk_02099EEC
_0211FEF8: .word gLogicThink
_0211FEFC: .word 0x000001DF
_0211FF00: .word 0x000F423F
	arm_func_end FUN_ov52_0211fb10

	arm_func_start FUN_ov52_0211ff04
FUN_ov52_0211ff04: ; 0x0211FF04
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldrsb r2, [r0, #0xb6]
	ldr r1, _0211FF44 ; =0x0000019A
	mov r12, #0
	add r2, r2, #1
	mov r2, r2, lsl #4
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #3
	mov r2, #0x14
	mov r3, #0x70
	str r12, [sp, #8]
	bl FUN_ov52_0211b910
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0211FF44: .word 0x0000019A
	arm_func_end FUN_ov52_0211ff04

	arm_func_start FUN_ov52_0211ff48
FUN_ov52_0211ff48: ; 0x0211FF48
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldrsb r3, [r10, #0xb6]
	mov r7, r1
	mov r1, #0xa
	mla r1, r7, r1, r3
	mov r9, r2
	mov r5, #0
	bl FUN_ov52_02120b60
	movs r4, r0
	beq _0211FFB4
	ldrh r1, [r4]
	ldr r0, _021200DC ; =0x0209BA20
	bl FUN_0204bc4c
	ldr r6, _021200E0 ; =0x020A0EF8
	mov r1, r0
	mov r0, r6
	bl FUN_02050bdc
	cmp r0, #0
	beq _0211FFB4
	ldrh r1, [r4]
	mov r0, r6
	bl FUN_02050b1c
	ldrb r0, [r4, #3]
	and r0, r0, #0xfb
	strb r0, [r4, #3]
_0211FFB4:
	mov r0, #0xa
	mul r6, r7, r0
	mov r11, #0x32
	mov r8, #0
	mov r4, r11
	b _021200CC
_0211FFCC:
	cmp r8, r9
	bge _02120064
	mov r0, r10
	add r1, r8, r6
	bl FUN_ov52_02120b60
	movs r7, r0
	beq _02120054
	ldrb r0, [r7, #3]
	add r1, r8, #0x10
	tst r0, #3
	mov r0, r10
	beq _02120004
	mov r2, r5
	b _02120008
_02120004:
	mov r2, #0x1f
_02120008:
	bl FUN_ov52_0211bca0
	ldrb r0, [r7, #3]
	add r1, r8, #0x1b
	tst r0, #2
	mov r0, r10
	beq _02120028
	mov r2, #0x1f
	b _0212002C
_02120028:
	mov r2, r5
_0212002C:
	bl FUN_ov52_0211bca0
	ldrb r0, [r7, #3]
	add r1, r8, #0x26
	tst r0, #4
	mov r0, r10
	beq _0212004C
	mov r2, #0x1f
_02120048:
	b _021200C4
_0212004C:
	mov r2, r5
	b _02120048
_02120054:
	mov r0, r8, lsl #4
	add r0, r0, #0x10
	stmia sp, {r0, r4, r5}
	b _02120074
_02120064:
	mov r0, r8, lsl #4
	add r0, r0, #0x10
	stmia sp, {r0, r11}
	str r5, [sp, #8]
_02120074:
	mov r0, r10
	add r1, r8, #5
	mov r2, #0x15
	mov r3, #0x70
	bl FUN_ov52_0211b910
	mov r0, r10
	add r1, r8, #5
	mov r2, r5
	bl FUN_ov52_0211bca0
	mov r0, r10
	add r1, r8, #0x1b
	mov r2, r5
	bl FUN_ov52_0211bca0
	mov r0, r10
	add r1, r8, #0x26
	mov r2, r5
	bl FUN_ov52_0211bca0
	mov r0, r10
	add r1, r8, #0x10
	mov r2, r5
_021200C4:
	bl FUN_ov52_0211bca0
	add r8, r8, #1
_021200CC:
	cmp r8, #0xa
	blt _0211FFCC
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021200DC: .word gLogicThink
_021200E0: .word unk_020A0EF8
	arm_func_end FUN_ov52_0211ff48

	arm_func_start FUN_ov52_021200e4
FUN_ov52_021200e4: ; 0x021200E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r9, r2
	add r5, sp, #0x18
	mov r4, r1
	add r2, sp, #0x1c
	add r3, sp, #0x14
	mov r1, #4
	mov r10, r0
	str r5, [sp]
	bl FUN_ov52_0211bdcc
	mov r6, r0
	cmp r9, #0
	mov r7, #0
	ble _021201D4
	mov r0, #0xa
	mul r8, r4, r0
	mov r11, r0
	mov r5, r0
	mov r4, r7
_02120134:
	mov r0, r10
	add r1, r7, r8
	bl FUN_ov52_02120b60
	cmp r0, #0
	beq _021201C8
	ldrb r1, [r0, #3]
	tst r1, #3
	beq _0212018C
	mov r1, r7, lsl #4
	add r1, r1, #0x13
	str r5, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	add r3, r0, #8
	str r1, [sp, #8]
	ldr r2, [sp, #0x18]
	mov r0, r10
	str r2, [sp, #0xc]
	mov r1, #0xc
	str r4, [sp, #0x10]
	mov r2, r6
	b _021201C4
_0212018C:
	mov r0, r7, lsl #4
	str r11, [sp]
	add r0, r0, #0x13
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r3, _021201F8 ; =0x02124774
	str r1, [sp, #8]
	ldr r2, [sp, #0x18]
	mov r0, r10
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	mov r1, #0xc
	mov r2, r6
_021201C4:
	bl FUN_ov52_0211be3c
_021201C8:
	add r7, r7, #1
	cmp r7, r9
	blt _02120134
_021201D4:
	ldr r4, [sp, #0x1c]
	mov r0, r10
	mov r2, r6
	mov r1, #0xc
	mov r3, #4
	str r4, [sp]
	bl FUN_ov52_0211bf3c
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021201F8: .word ov52_02124774
	arm_func_end FUN_ov52_021200e4

	arm_func_start FUN_ov52_021201fc
FUN_ov52_021201fc: ; 0x021201FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r4, r0
	ldr r1, [r4, #0x138]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02120388
_02120218: ; jump table
	b _02120228 ; case 0
	b _0212023C ; case 1
	b _02120250 ; case 2
	b _021202F0 ; case 3
_02120228:
	mov r1, #0x42
	mov r2, #0
	bl FUN_ov52_0211bca0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0212023C:
	mov r1, #0x42
	mov r2, #0
	bl FUN_ov52_0211bca0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02120250:
	mov r6, #5
	add r5, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x14
	mov r1, r6
	str r5, [sp]
	bl FUN_ov52_0211bdcc
	mov r5, r0
	mov r0, r4
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x38c
	add r0, r0, #0x1000
	bl FUN_ov52_0211d7d0
	mov r3, r0
	mov r0, #0
	stmia sp, {r0, r6}
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	mov r7, #8
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl FUN_ov52_0211be3c
	mov r2, r5
	ldr r5, [sp, #0x1c]
	mov r1, r7
	mov r3, r6
	mov r0, r4
	str r5, [sp]
	bl FUN_ov52_0211bf3c
	mov r0, r4
	mov r1, #0x42
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021202F0:
	mov r8, #1
	ldr r0, _02120390 ; =0x0209BA20
	mov r1, r8
	bl FUN_0207249c
	mov r6, #5
	add r5, sp, #0x18
	mov r7, r0
	add r2, sp, #0x1c
	add r3, sp, #0x14
	mov r0, r4
	mov r1, r6
	str r5, [sp]
	bl FUN_ov52_0211bdcc
	mov r5, r0
	mov r0, #0
	stmia sp, {r0, r6}
	ldr r0, [sp, #0x14]
	mov r3, r7
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	mov r7, #8
	str r1, [sp, #0xc]
	mov r0, r4
	str r8, [sp, #0x10]
	mov r1, r7
	mov r2, r5
	bl FUN_ov52_0211be3c
	mov r2, r5
	ldr r5, [sp, #0x1c]
	mov r1, r7
	mov r3, r6
	mov r0, r4
	str r5, [sp]
	bl FUN_ov52_0211bf3c
	mov r0, r4
	mov r1, #0x42
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
_02120388:
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02120390: .word gLogicThink
	arm_func_end FUN_ov52_021201fc

	arm_func_start FUN_ov52_02120394
FUN_ov52_02120394: ; 0x02120394
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r1, [r4, #0x138]
	mov r6, #0
	mov r7, r6
	cmp r1, #3
	mov r11, r6
	addls pc, pc, r1, lsl #2
	b _021204B0
_021203B8: ; jump table
	b _021203C8 ; case 0
	b _02120468 ; case 1
	b _02120474 ; case 2
	b _02120480 ; case 3
_021203C8:
	mov r5, r6
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r0, #0
	ble _02120420
_021203DC:
	ldr r0, [r4, #0x14c]
	sub r0, r0, #1
	cmp r5, r0
	ldreq r0, [r4, #0x144]
	addeq r6, r6, r0
	beq _02120420
	mov r0, r4
	bl FUN_ov52_0211b8a0
	mov r1, r5
	bl FUN_ov52_0211ad84
	add r6, r6, r0
	mov r0, r4
	add r5, r5, #1
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r5, r0
	blt _021203DC
_02120420:
	mov r0, r4
	mov r5, #0
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r0, #0
	ble _021204B0
_02120438:
	mov r0, r4
	bl FUN_ov52_0211b8a0
	mov r1, r5
	bl FUN_ov52_0211ad84
	add r7, r7, r0
	mov r0, r4
	add r5, r5, #1
	bl FUN_ov52_0211b8a0
	bl FUN_ov52_0211adcc
	cmp r5, r0
	blt _02120438
	b _021204B0
_02120468:
	ldr r7, [r4, #0x148]
	ldr r6, [r4, #0x144]
	b _021204B0
_02120474:
	ldr r6, [r4, #0x144]
	ldr r7, [r4, #0x148]
	b _021204B0
_02120480:
	bl FUN_ov52_0211b8a0
	add r0, r0, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211e3e4
	ldr r1, [r4, #0x144]
	add r6, r0, r1
	mov r0, r4
	bl FUN_ov52_0211b8a0
	add r0, r0, #0xb8
	add r0, r0, #0x1000
	bl FUN_ov52_0211e474
	mov r7, r0
_021204B0:
	mov r8, #1
	mov r9, #0
_021204B8:
	rsb r0, r9, #2
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _02120628 ; =0x40240000
	mov r0, r11
	bl pow
	mov r5, r0
	mov r10, r1
	add r0, r6, #1
	bl _dflt
	mov r2, r5
	mov r3, r10
	bl _ddiv
	bl _dfix
	ldr r1, _0212062C ; =0x66666667
	smull r2, r5, r1, r0
	mov r1, r0, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r5
	subs r5, r0, r2
	movne r8, r11
	cmp r9, #2
	moveq r8, #0
	cmp r8, #0
	mov r0, r4
	beq _02120538
	mov r2, #0
	add r1, r9, #0x43
	bl FUN_ov52_0211bca0
	b _02120554
_02120538:
	add r1, r9, #0x43
	mov r2, #0x1f
	bl FUN_ov52_0211bca0
	mov r2, r5
	mov r0, r4
	add r1, r9, #0x43
	bl FUN_ov52_0211bd80
_02120554:
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
	cmp r9, #3
	blo _021204B8
	mov r6, #0
	ldr r11, _0212062C ; =0x66666667
	mov r9, #1
	mov r8, r6
_02120578:
	rsb r0, r8, #2
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _02120628 ; =0x40240000
	mov r0, r6
	bl pow
	mov r5, r0
	mov r10, r1
	mov r0, r7
	bl _dflt
	mov r2, r5
	mov r3, r10
	bl _ddiv
	bl _dfix
	smull r1, r5, r11, r0
	mov r1, r0, lsr #0x1f
	add r5, r1, r5, asr #2
	mov r1, #0xa
	smull r2, r3, r1, r5
	subs r5, r0, r2
	movne r9, r6
	cmp r8, #2
	moveq r9, #0
	cmp r9, #0
	mov r0, r4
	beq _021205F4
	mov r2, #0
	add r1, r8, #0x46
	bl FUN_ov52_0211bca0
	b _02120610
_021205F4:
	mov r2, #0x1f
	add r1, r8, #0x46
	bl FUN_ov52_0211bca0
	mov r2, r5
	mov r0, r4
	add r1, r8, #0x46
	bl FUN_ov52_0211bd80
_02120610:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	cmp r8, #3
	blo _02120578
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120628: .word 0x40240000
_0212062C: .word 0x66666667
	arm_func_end FUN_ov52_02120394

	arm_func_start FUN_ov52_02120630
FUN_ov52_02120630: ; 0x02120630
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x60
	mov r8, r0
	ldrb r0, [r8, #0x13c]
	mov r6, #2
	mov r5, #1
	cmp r0, #0
	mov r4, #0
	moveq r2, r5
	movne r2, r4
	mov r0, r8
	mov r1, r6
	mov r9, #0x31
	bl FUN_ov52_0211bd80
	ldr r0, [r8, #0x138]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02120A6C
_02120678: ; jump table
	b _02120688 ; case 0
	b _02120994 ; case 1
	b _021209DC ; case 2
	b _02120A28 ; case 3
_02120688:
	mov r6, #0
	ldr r7, _02120A74 ; =0x02099EB4
	b _021206AC
_02120694:
	add r0, r6, #0x31
	mov r1, r0, lsl #0x10
	ldr r0, [r7]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210eab4
	add r6, r6, #1
_021206AC:
	cmp r6, #0xa
	blt _02120694
	ldr r0, [r8, #0x158]
	cmp r0, #0
	bne _021207F0
	ldr r10, _02120A78 ; =0x02123DFC
	add r9, sp, #0x38
	ldmia r10!, {r0, r1, r2, r3}
	mov r6, r9
	stmia r9!, {r0, r1, r2, r3}
	ldmia r10!, {r0, r1, r2, r3}
	stmia r9!, {r0, r1, r2, r3}
	mov r7, #0x1f
	ldmia r10, {r0, r1}
	stmia r9, {r0, r1}
	mov r0, r8
	mov r1, #0x31
	mov r2, r7
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r1, #2
	mov r2, r7
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r1, #0x3c
	mov r2, r7
	bl FUN_ov52_0211bca0
	mov r2, r7
	mov r0, r8
	mov r1, #0x3d
	bl FUN_ov52_0211bca0
	mov r7, #0
	mov r9, #0x31
	b _02120798
_02120734:
	ldr r1, [r8, #0x14c]
	ldr r0, [r6, r7, lsl #2]
	cmp r1, r0
	bge _02120794
	ldrb r0, [r8, #0x13c]
	mov r3, #1
	mov r1, #2
	cmp r0, #0
	movne r3, #0
	mov r0, r8
	mov r2, #0x1b
	bl FUN_ov52_0211bd10
	mov r2, r7, lsl #4
	mov r0, r8
	mov r1, r9
	add r2, r2, #0x18
	mov r3, #0
	bl FUN_ov52_0211bc50
	mov r0, r8
	mov r1, r9
	mov r3, r7
	mov r2, #0x1c
	bl FUN_ov52_0211bd10
	b _021207A0
_02120794:
	add r7, r7, #1
_02120798:
	cmp r7, #0xa
	blt _02120734
_021207A0:
	mov r7, #0
	mov r6, #0x10
	ldr r8, _02120A74 ; =0x02099EB4
	b _021207E0
_021207B0:
	stmia sp, {r4, r6}
	str r6, [sp, #8]
	add r0, r7, #0x31
	mov r2, r0, lsl #0x10
	str r4, [sp, #0xc]
	mov r3, r7, lsl #4
	ldr r0, [r8]
	mov r1, r5
	mov r2, r2, lsr #0x10
	add r3, r3, #0x18
	bl FUN_ov16_0210fba4
	add r7, r7, #1
_021207E0:
	cmp r7, #0xa
	blt _021207B0
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021207F0:
	ldr r7, _02120A7C ; =0x02123E24
	add r5, sp, #0x10
	ldmia r7!, {r0, r1, r2, r3}
	mov r6, r5
	stmia r5!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r7, {r0, r1}
	stmia r5, {r0, r1}
	mov r5, #0x1f
	mov r0, r8
	mov r1, #2
	mov r2, r5
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r1, #0x3c
	mov r2, r5
	bl FUN_ov52_0211bca0
	mov r2, r5
	mov r0, r8
	mov r1, #0x3d
	bl FUN_ov52_0211bca0
	mov r3, #0
	b _02120878
_02120850:
	ldr r1, [r8, #0x14c]
	ldr r0, [r6, r3, lsl #2]
	cmp r1, r0
	bge _02120874
	mov r0, r8
	mov r1, #2
	mov r2, #0x26
	bl FUN_ov52_0211bd10
	b _02120880
_02120874:
	add r3, r3, #1
_02120878:
	cmp r3, #0xa
	blt _02120850
_02120880:
	ldr r0, [r8, #0x14c]
	cmp r0, #1
	blt _0212089C
	cmp r0, #0x14
	suble r3, r0, #1
	movle r2, #0x27
	ble _021208C4
_0212089C:
	ldr r0, [r8, #0x14c]
	cmp r0, #0x15
	blt _021208B8
	cmp r0, #0x26
	suble r3, r0, #0x15
	movle r2, #0x28
	ble _021208C4
_021208B8:
	ldr r0, [r8, #0x14c]
	mov r2, #0x29
	sub r3, r0, #0x27
_021208C4:
	ldr r5, _02120A80 ; =0x66666667
	mov r0, r3, lsr #0x1f
	smull r1, r6, r5, r3
	add r6, r0, r6, asr #1
	mov r5, #5
	smull r0, r1, r5, r6
	sub r6, r3, r0
	mov r1, r6, lsl #4
	ldr r0, [r8, #0x14c]
	add r10, r1, #0x40
	cmp r0, #0x24
	mov r6, #0
	blt _02120908
	cmp r0, #0x26
	addle r10, r10, #0x10
	movle r5, #3
	movle r6, #1
_02120908:
	ldr r0, [r8, #0x14c]
	mov r1, r9
	cmp r0, #0x2c
	mov r0, r8
	addeq r10, r10, #0x20
	moveq r5, #1
	moveq r6, #2
	bl FUN_ov52_0211bd10
	mov r7, #0
	mov r0, r8
	mov r1, r9
	mov r2, r10
	mov r3, r7
	bl FUN_ov52_0211bc50
	mov r10, #0x10
	mov r9, #1
	ldr r8, _02120A74 ; =0x02099EB4
	b _02120984
_02120950:
	stmia sp, {r4, r10}
	str r10, [sp, #8]
	add r1, r7, #0x31
	mov r2, r1, lsl #0x10
	add r0, r7, r6
	mov r3, r0, lsl #4
	str r4, [sp, #0xc]
	ldr r0, [r8]
	mov r1, r9
	mov r2, r2, lsr #0x10
	add r3, r3, #0x40
	bl FUN_ov16_0210fba4
	add r7, r7, #1
_02120984:
	cmp r7, r5
	blt _02120950
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120994:
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x31
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3c
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3d
	bl FUN_ov52_0211bca0
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021209DC:
	mov r4, #0x1f
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r1, #0x31
	mov r2, #0
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3c
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3d
	bl FUN_ov52_0211bca0
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120A28:
	mov r4, #0x1f
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r1, #0x31
	mov r2, #0
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3c
	bl FUN_ov52_0211bca0
	mov r0, r8
	mov r2, r4
	mov r1, #0x3d
	bl FUN_ov52_0211bca0
_02120A6C:
	add sp, sp, #0x60
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120A74: .word unk_02099EB4
_02120A78: .word ov52_02123DFC
_02120A7C: .word ov52_02123E24
_02120A80: .word 0x66666667
	arm_func_end FUN_ov52_02120630

	arm_func_start FUN_ov52_02120a84
FUN_ov52_02120a84: ; 0x02120A84
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r1, [r10, #0x144]
	mov r0, #0xa
	mul r2, r1, r0
	ldr r1, [r10, #0xf4]
	mov r9, #0
	sub r8, r1, r2
	cmp r8, #0xa
	ldr r7, _02120B54 ; =0x000001AE
	movgt r8, r0
	mov r6, r9
	mov r5, #0x7d
	mov r11, #0x1f
	mov r4, #0xa
_02120AC4:
	cmp r9, r8
	bge _02120B40
	ldr r2, [r10, #0x144]
	mov r0, r10
	mla r1, r2, r4, r9
	bl FUN_ov52_02120b60
	cmp r0, #0
	beq _02120B40
	ldrb r1, [r0, #3]
	tst r1, #3
	beq _02120B30
	ldrh r0, [r0]
	add r1, r10, #0x130
	bl FUN_ov16_020f5738
	mov r2, r0
	mov r0, r9, lsl #4
	add r0, r0, #8
	stmia sp, {r0, r7}
	mov r0, r10
	add r1, r9, #5
	mov r3, r5
	str r6, [sp, #8]
	bl FUN_ov52_0211b9c4
	mov r0, r10
	add r1, r9, #5
	mov r2, r11
	b _02120B3C
_02120B30:
	mov r0, r10
	mov r2, #0
	add r1, r9, #5
_02120B3C:
	bl FUN_ov52_0211bca0
_02120B40:
	add r9, r9, #1
	cmp r9, #0xa
	blt _02120AC4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02120B54: .word 0x000001AE
	arm_func_end FUN_ov52_02120a84

	arm_func_start FUN_ov52_02120b58
FUN_ov52_02120b58: ; 0x02120B58
	str r1, [r0, #0x138]
	bx lr
	arm_func_end FUN_ov52_02120b58

	arm_func_start FUN_ov52_02120b60
FUN_ov52_02120b60: ; 0x02120B60
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r5, r0
	bmi _02120BD4
	ldr r0, [r5, #0xf4]
	cmp r4, r0
	bhs _02120BD4
	ldr r0, [r5, #0xf0]
	ldr r6, _02120BDC ; =0x86186187
	add r4, r4, r0
	umull r0, r2, r4, r6
	sub r0, r4, r2
	ldr r3, [r5, #0xfc]
	add r2, r2, r0, lsr #1
	ldr r1, [r5, #0x104]
	add r0, r3, r2, lsr #5
	bl _u32_div_f
	umull r0, r2, r4, r6
	sub r0, r4, r2
	add r2, r2, r0, lsr #1
	ldr r5, [r5, #0xf8]
	mov r2, r2, lsr #5
	mov r3, #0x2a
	umull r0, r2, r3, r2
	sub r2, r4, r0
	ldr r1, [r5, r1, lsl #2]
	mov r0, #0x18
	mla r0, r2, r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_02120BD4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02120BDC: .word 0x86186187
	arm_func_end FUN_ov52_02120b60

	arm_func_start FUN_ov52_02120be0
FUN_ov52_02120be0: ; 0x02120BE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x13c]
	mov r4, #0
	mov r3, #1
	cmp r0, #0
	beq _02120C10
	ldrsh r0, [r5, #0xb4]
	tst r0, #0x10
	bne _02120C10
	tst r0, #0x20
	movne r3, r4
_02120C10:
	ldr r0, _02120CAC ; =0x02099F44
	add r2, r5, #0xf0
	ldr r0, [r0]
	bl FUN_ov131_0213d864
	ldr lr, [r5, #0xf4]
	ldr r12, _02120CB0 ; =0xCCCCCCCD
	mov r3, #0xa
	umull r1, r2, lr, r12
	mov r2, r2, lsr #3
	umull r2, r1, r3, r2
	umull r1, r3, lr, r12
	mov r3, r3, lsr #3
	str r3, [r5, #0x148]
	subs r2, lr, r2
	moveq r3, #0
	ldr r2, [r5, #0x148]
	movne r3, #1
	ldrb r1, [r5, #0x13c]
	add r2, r2, r3
	str r2, [r5, #0x148]
	cmp r1, #0
	beq _02120C8C
	ldrsh r1, [r5, #0xb4]
	tst r1, #0x10
	strne r4, [r5, #0x144]
	bne _02120C90
	tst r1, #0x20
	subne r1, r2, #1
	strne r1, [r5, #0x144]
	streq r4, [r5, #0x144]
	b _02120C90
_02120C8C:
	str r4, [r5, #0x144]
_02120C90:
	ldrsh r1, [r5, #0xb4]
	bic r1, r1, #0x10
	strh r1, [r5, #0xb4]
	ldrsh r1, [r5, #0xb4]
	bic r1, r1, #0x20
	strh r1, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
_02120CAC: .word unk_02099F44
_02120CB0: .word 0xCCCCCCCD
	arm_func_end FUN_ov52_02120be0

	arm_func_start FUN_ov52_02120cb4
FUN_ov52_02120cb4: ; 0x02120CB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r2, _02120E5C ; =0x02099F44
	mov r4, r0
	ldr r0, [r2]
	add r2, r4, #0xf0
	bl FUN_ov131_0213d4fc
	ldr r6, [r4, #0xf4]
	ldr r5, _02120E60 ; =0xCCCCCCCD
	mov r8, r0
	umull r1, r2, r6, r5
	mov r3, #0xa
	mov r2, r2, lsr #3
	umull r2, r1, r3, r2
	umull r1, r3, r6, r5
	mov r3, r3, lsr #3
	str r3, [r4, #0x148]
	subs r2, r6, r2
	moveq r2, #0
	ldr r1, [r4, #0x148]
	movne r2, #1
	add r1, r1, r2
	mov r0, r4
	ldr r5, [r4, #0xf4]
	str r1, [r4, #0x148]
	bl FUN_ov52_0211b8a0
	add r1, r0, #0x1600
	mov r0, r4
	strh r5, [r1, #0xb2]
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1600
	mov r9, #0
	strh r9, [r0, #0xb0]
	ldr r0, [r4, #0xf4]
	cmp r0, #0
	bls _02120DD0
	ldr r6, _02120E64 ; =0x86186187
	mov r5, #0x2a
	mov r7, #0x18
_02120D4C:
	ldr r0, [r4, #0xf0]
	ldr r3, [r4, #0xfc]
	add r10, r9, r0
	umull r0, r2, r10, r6
	sub r0, r10, r2
	add r2, r2, r0, lsr #1
	ldr r1, [r4, #0x104]
	add r0, r3, r2, lsr #5
	bl _u32_div_f
	umull r0, r2, r10, r6
	sub r0, r10, r2
	add r2, r2, r0, lsr #1
	mov r2, r2, lsr #5
	umull r0, r2, r5, r2
	sub r2, r10, r0
	ldr r3, [r4, #0xf8]
	mul r0, r2, r7
	ldr r1, [r3, r1, lsl #2]
	adds r0, r1, r0
	beq _02120DC0
	ldrb r0, [r0, #3]
	tst r0, #3
	beq _02120DC0
	mov r0, r4
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1600
	ldrh r1, [r0, #0xb0]
	add r1, r1, #1
	strh r1, [r0, #0xb0]
_02120DC0:
	ldr r0, [r4, #0xf4]
	add r9, r9, #1
	cmp r9, r0
	blo _02120D4C
_02120DD0:
	mov r0, r4
	bl FUN_ov52_0211b8a0
	add r1, r0, #0x1000
	mov r5, #0
	mov r0, r4
	str r5, [r1, #0x6b8]
	bl FUN_ov52_0211b8a0
	mov r6, r0
	mov r0, r4
	bl FUN_ov52_0211b8a0
	mov r1, r0
	add r0, r6, #0x1000
	ldr r0, [r0, #0x6a0]
	add r1, r1, #0x2a4
	ldr r2, [r0]
	add r1, r1, #0x1400
	ldr r2, [r2, #0x3c]
	blx r2
	ldrsh r0, [r4, #0xb4]
	tst r0, #0x10
	strne r5, [r4, #0x144]
	bne _02120E3C
	tst r0, #0x20
	ldrne r0, [r4, #0x148]
	subne r0, r0, #1
	strne r0, [r4, #0x144]
	streq r5, [r4, #0x144]
_02120E3C:
	ldrsh r1, [r4, #0xb4]
	mov r0, r8
	bic r1, r1, #0x10
	strh r1, [r4, #0xb4]
	ldrsh r1, [r4, #0xb4]
	bic r1, r1, #0x20
	strh r1, [r4, #0xb4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02120E5C: .word unk_02099F44
_02120E60: .word 0xCCCCCCCD
_02120E64: .word 0x86186187
	arm_func_end FUN_ov52_02120cb4

	arm_func_start FUN_ov52_02120e68
FUN_ov52_02120e68: ; 0x02120E68
	stmfd sp!, {r4, lr}
	ldr r1, _02120ED0 ; =0x02099F44
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #0xf0
	bl FUN_ov131_0213d6ac
	ldr r12, [r4, #0xf4]
	ldr r3, _02120ED4 ; =0xCCCCCCCD
	mov r2, #0xa
	umull r0, r1, r12, r3
	mov r1, r1, lsr #3
	umull r1, r0, r2, r1
	umull r0, r2, r12, r3
	mov r2, r2, lsr #3
	str r2, [r4, #0x148]
	mov r3, #0
	ldr r0, [r4, #0x148]
	str r3, [r4, #0x144]
	subs r1, r12, r1
	movne r3, #1
	adds r0, r0, r3
	str r0, [r4, #0x148]
	moveq r0, #1
	streq r0, [r4, #0x148]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02120ED0: .word unk_02099F44
_02120ED4: .word 0xCCCCCCCD
	arm_func_end FUN_ov52_02120e68

	arm_func_start FUN_ov52_02120ed8
FUN_ov52_02120ed8: ; 0x02120ED8
	stmfd sp!, {r4, lr}
	ldr r2, _02120F90 ; =0x02099F44
	mov r4, r0
	ldr r0, [r2]
	add r2, r4, #0xf0
	bl FUN_ov131_0213da70
	ldr r12, [r4, #0xf4]
	ldr r3, _02120F94 ; =0xCCCCCCCD
	mov r2, #0xa
	umull r0, r1, r12, r3
	mov r1, r1, lsr #3
	umull r1, r0, r2, r1
	umull r0, r2, r12, r3
	mov r2, r2, lsr #3
	mov r3, #0
	str r2, [r4, #0x148]
	subs r1, r12, r1
	str r3, [r4, #0x144]
	ldr r1, [r4, #0x148]
	movne r3, #1
	add r1, r1, r3
	mov r0, r4
	str r1, [r4, #0x148]
	bl FUN_ov52_0211b8a0
	add r0, r0, #0x1000
	mov r1, #1
	strb r1, [r0, #0x6bc]
	ldrsh r0, [r4, #0xb4]
	tst r0, #0x10
	movne r0, #0
	strne r0, [r4, #0x144]
	bne _02120F70
	tst r0, #0x20
	ldrne r0, [r4, #0x148]
	subne r0, r0, #1
	strne r0, [r4, #0x144]
	moveq r0, #0
	streq r0, [r4, #0x144]
_02120F70:
	ldrsh r1, [r4, #0xb4]
	mov r0, #1
	bic r1, r1, #0x10
	strh r1, [r4, #0xb4]
	ldrsh r1, [r4, #0xb4]
	bic r1, r1, #0x20
	strh r1, [r4, #0xb4]
	ldmfd sp!, {r4, pc}
_02120F90: .word unk_02099F44
_02120F94: .word 0xCCCCCCCD
	arm_func_end FUN_ov52_02120ed8

	arm_func_start FUN_ov52_02120f98
FUN_ov52_02120f98: ; 0x02120F98
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldr r4, _02120FF8 ; =0x02123E4C
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	ldr r2, [r5, #0x14c]
	mov r1, #0
_02120FD0:
	ldr r0, [r12, r1, lsl #2]
	cmp r2, r0
	addlt sp, sp, #0x28
	ldmltfd sp!, {r3, r4, r5, pc}
	add r1, r1, #1
	cmp r1, #0xa
	blt _02120FD0
	mov r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, pc}
_02120FF8: .word ov52_02123E4C
	arm_func_end FUN_ov52_02120f98

	arm_func_start FUN_ov52_02120ffc
FUN_ov52_02120ffc: ; 0x02120FFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldr r4, _02121094 ; =0x02123E74
	add lr, sp, #0
	mov r5, r0
	mov r12, lr
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	ldr r2, [r5, #0x14c]
	mov r1, #0
_02121034:
	rsb r0, r1, #9
	ldr r0, [r12, r0, lsl #2]
	cmp r2, r0
	bgt _02121048
	bne _02121050
_02121048:
	str r0, [r5, #0x14c]
	b _0212105C
_02121050:
	add r1, r1, #1
	cmp r1, #0xa
	blt _02121034
_0212105C:
	ldr r3, [r5, #0x14c]
	mov r2, #0
	add r1, sp, #0
_02121068:
	rsb r0, r2, #9
	ldr r0, [r1, r0, lsl #2]
	cmp r3, r0
	addgt sp, sp, #0x28
	ldmgtfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #0xa
	blt _02121068
	mov r0, #0x2c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, pc}
_02121094: .word ov52_02123E74
	arm_func_end FUN_ov52_02120ffc

	arm_func_start FUN_ov52_02121098
FUN_ov52_02121098: ; 0x02121098
	ldr r0, [r0, #0x14c]
	add r0, r0, #1
	cmp r0, #0x2c
	movgt r0, #1
	bx lr
	arm_func_end FUN_ov52_02121098

	arm_func_start FUN_ov52_021210ac
FUN_ov52_021210ac: ; 0x021210AC
	ldr r0, [r0, #0x14c]
	sub r0, r0, #1
	cmp r0, #1
	movlt r0, #0x2c
	bx lr
	arm_func_end FUN_ov52_021210ac

	arm_func_start FUN_ov52_021210c0
FUN_ov52_021210c0: ; 0x021210C0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x64
	mov r10, r0
	mov r9, r1
	bl FUN_ov52_0211b8a0
	ldr r0, [r0, #0x10]
	add r5, r10, #0x130
	cmp r0, #0
	cmpne r5, #0
	ldrne r7, [r5]
	str r0, [sp, #0x10]
	mov r0, #1
	cmpne r7, #0
	cmpne r0, #0
	addle sp, sp, #0x64
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, #0
	mov r0, #0xc
	b _02121120
_0212110C:
	mla r2, r3, r0, r7
	ldr r1, [r2, #4]
	add r3, r3, #1
	add r1, r1, #0xa
	str r1, [r2, #4]
_02121120:
	ldr r1, [r5, #4]
	cmp r3, r1
	blt _0212110C
	add r4, sp, #0x1c
	mov r0, r4
	bl FS_InitFile
	ldr r1, _02121264 ; =0x02124780
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0xf4]
	mov r8, #0
	sub r11, r0, r9
	cmp r11, #0xa
	movgt r11, #0xa
	b _0212124C
_02121168:
	mvn r6, #0
	mov r4, #0xc
	mov r1, #0
	mov r3, r6
	mov r2, r4
	b _021211B8
_02121180:
	mla r12, r1, r4, r7
	ldrh r0, [r12, #8]
	cmp r0, #0
	moveq r6, r1
	beq _021211C4
	cmp r6, r3
	beq _021211B0
	ldr r0, [r12, #4]
	mla r12, r6, r2, r7
	ldr r12, [r12, #4]
	cmp r0, r12
	ble _021211B4
_021211B0:
	mov r6, r1
_021211B4:
	add r1, r1, #1
_021211B8:
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _02121180
_021211C4:
	mov r0, r10
	add r1, r8, r9
	bl FUN_ov52_02120b60
	cmp r0, #0
	beq _02121248
	ldrh r4, [r0]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x14
	mov r1, r4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02121248
	ldr r0, _02121268 ; =0x02099F38
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r3}
	str r2, [sp, #0xc]
	ldr r3, _02121264 ; =0x02124780
	add r1, sp, #0x1c
	mov r2, #5
	bl FUN_02058a10
	mov r1, #0xc
	mul r1, r6, r1
	str r4, [r7, r1]
	add r1, r7, r1
	strh r0, [r1, #8]
	mov r0, #0
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
_02121248:
	add r8, r8, #1
_0212124C:
	cmp r8, r11
	blt _02121168
	add r0, sp, #0x1c
	bl FS_CloseFile
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121264: .word ov52_02124780
_02121268: .word unk_02099F38
	arm_func_end FUN_ov52_021210c0

	arm_func_start FUN_ov52_0212126c
FUN_ov52_0212126c: ; 0x0212126C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r6, r0
	add r2, sp, #4
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	str r4, [sp, #4]
	str r2, [sp]
	add r2, r6, #0x100
	mov r5, r1
	ldrh r1, [r2, #0x6e]
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_ov52_02121384
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r0, r6, #0x184
	add r3, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r7, _02121380 ; =0x02099EEC
	ldr r1, [r6, #0x15c]
	ldr r0, [r7]
	ldr r2, [sp, #0x18]
	str r2, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205aefc
	ldr r0, [sp, #4]
	ldr r2, [r6, #0x1a0]
	sub r0, r0, r2
	smull r1, r0, r5, r0
	adds r1, r1, #0x800
	adc r0, r0, r4
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r2, r2, r1
	str r2, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x15c]
	mov r3, r2
	bl FUN_0205af58
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	smull r3, r2, r5, r1
	smull r1, r0, r5, r0
	adds r5, r3, #0x800
	adc r3, r2, r4
	adds r1, r1, #0x800
	mov r2, r5, lsr #0xc
	adc r0, r0, r4
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	ldr r0, [r6, #0x180]
	orr r2, r2, r3, lsl #20
	str r0, [sp]
	ldr r4, [r6, #0x178]
	ldr r3, [r6, #0x17c]
	ldr r0, [r7]
	ldr r1, [r6, #0x15c]
	sub r2, r4, r2
	sub r3, r3, r5
	bl FUN_0205aea0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02121380: .word unk_02099EEC
	arm_func_end FUN_ov52_0212126c

	arm_func_start FUN_ov52_02121384
FUN_ov52_02121384: ; 0x02121384
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r0, r1
	mov r1, r4
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r0, #0x5c]
	ldr r1, [r7, #0x1a4]
	mov r2, #6
	cmp r0, #1
	mov r12, r1, lsl #1
	mov r3, #0x96
	bne _021213FC
	mov r0, #0x1c00
	umull r3, r2, r1, r0
	mla r2, r1, r4, r2
	mov r1, r1, asr #0x1f
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, r4
	mov r12, r3, lsr #0xc
	orr r12, r12, r0, lsl #20
	mov r2, #0xa
	mov r3, #0x78
	b _02121408
_021213FC:
	cmp r0, #2
	moveq r2, #3
	moveq r3, #0x64
_02121408:
	cmp r6, #0
	strne r2, [r6]
	cmp r5, #0
	ldr r0, [sp, #0x18]
	strne r3, [r5]
	cmp r0, #0
	strne r12, [r0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov52_02121384

	arm_func_start FUN_ov52_0212142c
FUN_ov52_0212142c: ; 0x0212142C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r4, _0212159C ; =0x02123CF8
	add r3, sp, #0
	mov r5, r0
	mov r2, #0xc
_02121444:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02121444
	ldrb r0, [r5, #0x16c]
	cmp r0, #0
	ldr r0, [r5, #0x168]
	beq _021214E0
	ldr r6, _021215A0 ; =0x02099EEC
	add r1, r5, r0, lsl #2
	mov r4, #0
	ldr r0, [r6]
	ldr r1, [r1, #0x160]
	add r2, sp, #0
	mov r3, r4
	bl FUN_0205b0e4
	ldr r1, [r5, #0x168]
	ldr r0, [r6]
	add r1, r5, r1, lsl #2
	ldr r1, [r1, #0x160]
	mov r2, #1
	bl FUN_0205acb0
	ldr r0, [r5, #0x168]
	strb r4, [r5, #0x16c]
	eor r0, r0, #1
	str r0, [r5, #0x168]
	add r1, r5, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x160]
	mov r2, r4
	bl FUN_0205acb0
	mov r0, #4
	bl FUN_ov16_020ef8d4
	add r0, r0, #3
	add sp, sp, #0x18
	strb r0, [r5, #0x176]
	ldmfd sp!, {r4, r5, r6, pc}
_021214E0:
	eor r0, r0, #1
	add r1, r5, r0, lsl #2
	ldr r4, _021215A0 ; =0x02099EEC
	ldr r1, [r1, #0x160]
	ldr r0, [r4]
	bl FUN_0205b204
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r5, #0x176]
	cmp r1, #0
	beq _02121540
	ldr r0, [r5, #0x168]
	sub r1, r1, #1
	eor r0, r0, #1
	strb r1, [r5, #0x176]
	add r1, r5, r0, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x160]
	add r2, sp, #0
	mov r3, #0
	bl FUN_0205b0e4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_02121540:
	mov r0, #4
	bl FUN_ov16_020ef8d4
	add r1, r0, #3
	mov r0, #2
	strb r1, [r5, #0x176]
	bl FUN_ov16_020ef8d4
	adds r3, r0, #1
	bmi _02121568
	cmp r3, #3
	blt _0212156C
_02121568:
	mov r3, #0
_0212156C:
	ldr r1, [r5, #0x168]
	ldr r0, _021215A0 ; =0x02099EEC
	eor r1, r1, #1
	add r1, r5, r1, lsl #2
	add r2, sp, #0
	add r2, r2, r3, lsl #3
	ldr r0, [r0]
	ldr r1, [r1, #0x160]
	mov r3, #0
	bl FUN_0205b0e4
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_0212159C: .word ov52_02123CF8
_021215A0: .word unk_02099EEC
	arm_func_end FUN_ov52_0212142c

	arm_func_start FUN_ov52_021215a4
FUN_ov52_021215a4: ; 0x021215A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	movs r4, r3
	mov r7, r0
	movne r0, #0
	mov r6, r1
	strneb r0, [r4]
	mov r1, #0
	mov r5, r2
	add r0, sp, #4
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0x100
	ldrh r1, [r0, #0x6e]
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r7
	bl FUN_ov52_021216b8
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r0, r7, #0x190
	add r3, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [sp, #0x14]
	mov r0, #0x1f4
	mla r0, r6, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r1, [r7, #0x19c]
	mov r0, #0xc8
	mla r0, r5, r0, r1
	str r2, [r7, #0x184]
	ldr r2, [sp, #0x14]
	ldr r1, [r7, #0x1a0]
	str r2, [r7, #0x188]
	ldr r2, [sp, #0x18]
	cmp r0, r1
	str r2, [r7, #0x18c]
	bge _0212166C
	mov r0, r1
	cmp r4, #0
	ldrneb r1, [r4]
	orrne r1, r1, #1
	b _02121688
_0212166C:
	ldr r1, [sp, #4]
	cmp r1, r0
	bge _0212168C
	mov r0, r1
	cmp r4, #0
	ldrneb r1, [r4]
	orrne r1, r1, #2
_02121688:
	strneb r1, [r4]
_0212168C:
	ldr r2, [r7, #0x1a0]
	ldr r1, [sp, #4]
	sub r0, r0, r2
	sub r1, r1, r2
	bl FX_Div
	mov r1, r0
	mov r0, r7
	str r1, [r7, #0x1a8]
	bl FUN_ov52_02121760
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov52_021215a4

	arm_func_start FUN_ov52_021216b8
FUN_ov52_021216b8: ; 0x021216B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, r0
	mov r0, r1
	mov r1, r4
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r0, #0x5c]
	ldr r1, [r7, #0x1a4]
	mov r2, #6
	cmp r0, #1
	mov r12, r1, lsl #1
	mov r3, #0x96
	bne _02121730
	mov r0, #0x1c00
	umull r3, r2, r1, r0
	mla r2, r1, r4, r2
	mov r1, r1, asr #0x1f
	adds r3, r3, #0x800
	mla r2, r1, r0, r2
	adc r0, r2, r4
	mov r12, r3, lsr #0xc
	orr r12, r12, r0, lsl #20
	mov r2, #0xa
	mov r3, #0x78
	b _0212173C
_02121730:
	cmp r0, #2
	moveq r2, #3
	moveq r3, #0x64
_0212173C:
	cmp r6, #0
	strne r2, [r6]
	cmp r5, #0
	ldr r0, [sp, #0x18]
	strne r3, [r5]
	cmp r0, #0
	strne r12, [r0]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov52_021216b8

	arm_func_start FUN_ov52_02121760
FUN_ov52_02121760: ; 0x02121760
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r6, r0
	add r2, sp, #4
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	str r4, [sp, #4]
	str r2, [sp]
	add r2, r6, #0x100
	mov r5, r1
	ldrh r1, [r2, #0x6e]
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_ov52_021216b8
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	add r0, r6, #0x184
	add r3, sp, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r7, _02121874 ; =0x02099EEC
	ldr r1, [r6, #0x15c]
	ldr r0, [r7]
	ldr r2, [sp, #0x18]
	str r2, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205aefc
	ldr r0, [sp, #4]
	ldr r2, [r6, #0x1a0]
	sub r0, r0, r2
	smull r1, r0, r5, r0
	adds r1, r1, #0x800
	adc r0, r0, r4
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r2, r2, r1
	str r2, [sp]
	ldr r0, [r7]
	ldr r1, [r6, #0x15c]
	mov r3, r2
	bl FUN_0205af58
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	smull r3, r2, r5, r1
	smull r1, r0, r5, r0
	adds r5, r3, #0x800
	adc r3, r2, r4
	adds r1, r1, #0x800
	mov r2, r5, lsr #0xc
	adc r0, r0, r4
	mov r5, r1, lsr #0xc
	orr r5, r5, r0, lsl #20
	ldr r0, [r6, #0x180]
	orr r2, r2, r3, lsl #20
	str r0, [sp]
	ldr r4, [r6, #0x178]
	ldr r3, [r6, #0x17c]
	ldr r0, [r7]
	ldr r1, [r6, #0x15c]
	sub r2, r4, r2
	sub r3, r3, r5
	bl FUN_0205aea0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02121874: .word unk_02099EEC
	arm_func_end FUN_ov52_02121760

	arm_func_start FUN_ov52_02121878
FUN_ov52_02121878: ; 0x02121878
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #0x144]
	mov r0, #0xa
	mul r0, r1, r0
	ldrsb r1, [r5, #0xb6]
	adds r1, r1, r0
	bmi _021218A4
	ldr r0, [r5, #0xf4]
	cmp r1, r0
	blo _021218AC
_021218A4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021218AC:
	ldr r0, [r5, #0xf0]
	ldr r6, _02121904 ; =0x86186187
	add r4, r1, r0
	umull r0, r2, r4, r6
	sub r0, r4, r2
	ldr r3, [r5, #0xfc]
	add r2, r2, r0, lsr #1
	ldr r1, [r5, #0x104]
	add r0, r3, r2, lsr #5
	bl _u32_div_f
	umull r0, r2, r4, r6
	sub r0, r4, r2
	add r2, r2, r0, lsr #1
	ldr r5, [r5, #0xf8]
	mov r2, r2, lsr #5
	mov r3, #0x2a
	umull r0, r2, r3, r2
	ldr r1, [r5, r1, lsl #2]
	sub r2, r4, r0
	mov r0, #0x18
	mla r0, r2, r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_02121904: .word 0x86186187
	arm_func_end FUN_ov52_02121878

	arm_func_start FUN_ov52_02121908
FUN_ov52_02121908: ; 0x02121908
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldrh r1, [r5, #0x36]
	mov r0, #0
	mov r4, #1
	str r1, [sp]
	stmib sp, {r0, r4}
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02121954 ; =0x02099ED4
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e570
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02121954: .word unk_02099ED4
	arm_func_end FUN_ov52_02121908

	arm_func_start FUN_ov52_02121958
FUN_ov52_02121958: ; 0x02121958
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldrh r1, [r5, #0x36]
	mov r4, #0
	ldr r0, _021219A0 ; =0x02099ED4
	stmia sp, {r1, r4}
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e570
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_021219A0: .word unk_02099ED4
	arm_func_end FUN_ov52_02121958

	arm_func_start FUN_ov52_021219a4
FUN_ov52_021219a4: ; 0x021219A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov52_02121908
	ldr r4, _021219E4 ; =0x02099ED4
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov52_02121958
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_021219E4: .word unk_02099ED4
	arm_func_end FUN_ov52_021219a4

	arm_func_start FUN_ov52_021219e8
FUN_ov52_021219e8: ; 0x021219E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x108
	bl FUN_0206c110
	add r0, r4, #0xf0
	bl FUN_ov52_02122358
	mov r0, r4
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_021219e8

	arm_func_start FUN_ov52_02121a18
FUN_ov52_02121a18: ; 0x02121A18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121a18

	arm_func_start FUN_ov52_02121a34
FUN_ov52_02121a34: ; 0x02121A34
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121a34

	arm_func_start FUN_ov52_02121a50
FUN_ov52_02121a50: ; 0x02121A50
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121a50

	arm_func_start FUN_ov52_02121a6c
FUN_ov52_02121a6c: ; 0x02121A6C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121a6c

	arm_func_start FUN_ov52_02121a88
FUN_ov52_02121a88: ; 0x02121A88
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121a88

	arm_func_start FUN_ov52_02121aa4
FUN_ov52_02121aa4: ; 0x02121AA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov52_0211b6d0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02121aa4

	arm_func_start FUN_ov52_02121ac0
FUN_ov52_02121ac0: ; 0x02121AC0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r4, r1
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #8
	ldr r1, [r5]
	ldr r0, [r5, #4]
	add r0, r1, r0
	subs r0, r2, r0
	bne _02121B04
	mov r0, r5
	mov r1, #1
	bl FUN_ov52_02121be4
_02121B04:
	ldr r2, [r5, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov52_0212344c
	ldr r1, [sp, #0x10]
	cmp r1, #0
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov52_02121ac0

	arm_func_start FUN_ov52_02121b38
FUN_ov52_02121b38: ; 0x02121B38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _02121B94
	mov r5, r1
_02121B58:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl _ZdlPv
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _02121B58
_02121B94:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x80
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_02121b38

	arm_func_start FUN_ov52_02121ba8
FUN_ov52_02121ba8: ; 0x02121BA8
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #4]
	cmp r1, r12
	bls _02121BC4
	sub r1, r1, r12
	bl FUN_ov52_021220f4
	ldmfd sp!, {r3, pc}
_02121BC4:
	ldmhsfd sp!, {r3, pc}
	mov r2, #0
	sub r3, sp, #4
	strb r2, [r3]
	ldr r2, [r3]
	sub r1, r12, r1
	bl FUN_ov52_0212217c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov52_02121ba8

	arm_func_start FUN_ov52_02121be4
FUN_ov52_02121be4: ; 0x02121BE4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x13c
	mov r10, r0
	tst r1, #0xff
	mov r6, #0
	movne r0, #1
	moveq r0, r6
	add r7, r0, r1, lsr #8
	add r4, sp, #0x28
	b _02121C78
_02121C0C:
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r1
	ldr r5, [r2, r1, lsl #2]
	add r1, r0, #1
	ldr r0, [r10, #0x14]
	str r1, [r10, #0xc]
	cmp r1, r0
	streq r6, [r10, #0xc]
	ldr r1, [r10, #0x10]
	ldr r0, [r10, #0xc]
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r10, #0x14]
	sub r0, r0, #1
	str r2, [r10, #0x10]
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r5, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x28]
	bl FUN_ov52_02122560
	ldr r0, [r10]
	sub r7, r7, #1
	sub r0, r0, #0x100
	str r0, [r10]
_02121C78:
	cmp r7, #0
	beq _02121C8C
	ldr r0, [r10]
	cmp r0, #0x100
	bhs _02121C0C
_02121C8C:
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _021220E4 ; =0x021247E0
	ldr r0, [r1]
	tst r0, #1
	bne _02121CC0
	mov r3, #0x200
	orr r2, r0, #1
	ldr r0, _021220E8 ; =0x02124060
	rsb r3, r3, #0
	str r3, [r0]
	str r2, [r1]
_02121CC0:
	ldr r2, _021220E8 ; =0x02124060
	mov r0, r7, lsl #8
	ldr r1, [r2]
	cmp r1, r7, lsl #8
	blo _02121D1C
	ldr r1, _021220E4 ; =0x021247E0
	ldr r3, [r1]
	tst r3, #1
	moveq r4, #0x200
	orreq r3, r3, #1
	rsbeq r4, r4, #0
	streq r3, [r1]
	streq r4, [r2]
	ldr r2, [r10, #0x10]
	ldr r1, _021220E8 ; =0x02124060
	cmp r2, #0
	ldr r3, [r1]
	moveq r1, #0
	subne r1, r2, #1
	movne r1, r1, lsl #8
	sub r0, r3, r0
	cmp r1, r0
	bls _02121D24
_02121D1C:
	ldr r0, _021220EC ; =0x02124798
	bl FUN_ov52_02122428
_02121D24:
	ldr r0, [r10, #0x14]
	mov r1, #0
	cmp r0, #0
	subne r1, r0, #1
	ldr r0, [r10, #0x10]
	add r0, r7, r0
	cmp r0, r1
	bhi _02121DB8
	cmp r7, #0
	addeq sp, sp, #0x13c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _021220F0 ; =0x02124344
	add r9, sp, #0x24
	mov r5, #0x400
_02121D5C:
	mov r0, r5
	bl _Znwm
	movs r8, r0
	bne _02121D78
	mov r0, r4
	bl printf
	bl abort
_02121D78:
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	ldr r1, [r10, #0x14]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r10, #8]
	add r0, r10, #8
	str r8, [r2, r1, lsl #2]
	mov r1, r9
	str r6, [sp, #0x24]
	bl FUN_ov52_02122560
	subs r7, r7, #1
	bne _02121D5C
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02121DB8:
	movs r1, #0
	add r4, sp, #0x12c
	str r1, [sp, #0x124]
	str r1, [sp, #0x128]
	str r1, [sp, #0xb4]
	str r1, [sp, #0xb8]
	str r1, [sp, #0xbc]
	str r1, [sp, #0xc0]
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r8, sp, #0xb4
	beq _02121DF8
	add r0, r1, r1
	bl _u32_div_f
_02121DF8:
	ldr r5, [r8]
	ldr r2, [r8, #4]
	ldr r0, [r8, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	add r8, r5, r1, lsl #2
	ldrb r1, [sp, #0x10]
	add r0, sp, #0xc4
	str r8, [sp, #0xc4]
	str r5, [sp, #0xc8]
	str r5, [sp, #0xd8]
	str r3, [sp, #0xcc]
	str r2, [sp, #0xd0]
	str r0, [sp, #4]
	add r0, sp, #0xd4
	strb r1, [sp, #8]
	sub r5, sp, #0xc
	str r3, [sp, #0xd4]
	str r3, [sp, #0xdc]
	str r2, [sp, #0xe0]
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r4
	ldmia r5, {r1, r2, r3}
	bl FUN_ov52_021238b0
	add r0, sp, #0xb4
	bl FUN_ov52_021237c4
	ldr r0, [r10, #0x10]
	mov r2, #0
	add r0, r7, r0
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r10, #0x14]
	add r9, sp, #0x12c
	cmp r1, #0
	subne r2, r1, #1
	cmp r0, r2, lsl #1
	addhi r0, sp, #0x1c
	mov r1, r2, lsl #1
	addls r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r1, [r0]
	mov r0, r9
	bl FUN_ov52_02122438
	add r1, sp, #0x18
	mov r0, r9
	str r6, [sp, #0x18]
	bl FUN_ov52_02122560
	cmp r7, #0
	beq _02121F20
	ldr r11, _021220F0 ; =0x02124344
	add r4, sp, #0x14
	mov r5, #0x400
_02121ECC:
	mov r0, r5
	bl _Znwm
	movs r8, r0
	bne _02121EE8
	mov r0, r11
	bl printf
	bl abort
_02121EE8:
	ldr r2, [r9, #4]
	ldr r0, [r9, #8]
	ldr r1, [r9, #0xc]
	add r0, r2, r0
	sub r0, r0, #1
	bl _u32_div_f
	ldr r2, [r9]
	mov r0, r9
	str r8, [r2, r1, lsl #2]
	mov r1, r4
	str r6, [sp, #0x14]
	bl FUN_ov52_02122560
	subs r7, r7, #1
	bne _02121ECC
_02121F20:
	ldr r0, [r10, #0x10]
	mov r5, #0
	cmp r0, #0
	beq _02122088
	ldr r1, [r10, #0x14]
	cmp r1, #0
	moveq r1, r5
	beq _02121F50
	ldr r2, [r10, #0xc]
	ldr r0, [r10, #0x10]
	add r0, r2, r0
	bl _u32_div_f
_02121F50:
	ldr r6, [r10, #8]
	ldr r3, [r10, #0xc]
	add r2, r6, r1, lsl #2
	ldr r0, [r10, #0x14]
	add r4, r6, r3, lsl #2
	add r3, r6, r0, lsl #2
	add r0, sp, #0xa4
	str r2, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r4, [sp, #0xac]
	str r3, [sp, #0xb0]
	mvn r1, #0
	str r2, [sp, #0xe4]
	str r6, [sp, #0xe8]
	str r4, [sp, #0xec]
	str r3, [sp, #0xf0]
	bl FUN_ov52_021237f8
	ldr r1, [r10, #8]
	ldr r7, [sp, #0xa8]
	ldr r6, [sp, #0xac]
	ldr r8, [sp, #0xa4]
	ldr r3, [sp, #0xb0]
	ldr r0, [r10, #0xc]
	ldr r2, [r9]
	add r4, r1, r0, lsl #2
	ldr r0, [r10, #0x14]
	str r7, [sp, #0xf8]
	str r7, [sp, #0x40]
	str r7, [sp, #0x88]
	str r7, [sp, #0x74]
	add r7, r1, r0, lsl #2
	ldr r0, [r9, #4]
	str r6, [sp, #0xfc]
	str r6, [sp, #0x44]
	str r6, [sp, #0x8c]
	str r6, [sp, #0x78]
	add r6, r2, r0, lsl #2
	ldr r0, [r9, #0xc]
	and r5, r5, #0xff
	add r0, r2, r0, lsl #2
	str r3, [sp, #0x100]
	str r1, [sp, #0x108]
	str r3, [sp, #0x48]
	str r1, [sp, #0x30]
	str r3, [sp, #0x90]
	str r3, [sp, #0x7c]
	str r1, [sp, #0x98]
	str r1, [sp, #0x60]
	str r8, [sp, #0x70]
	add r1, sp, #0x4c
	str r2, [sp, #0x118]
	str r2, [sp, #0x50]
	add r2, sp, #0x5c
	str r0, [sp, #0x120]
	str r0, [sp, #0x58]
	add r3, sp, #0x70
	str r7, [sp, #0x68]
	mov r0, r9
	str r4, [sp, #0x5c]
	str r4, [sp, #0x64]
	str r6, [sp, #0x4c]
	str r6, [sp, #0x54]
	str r8, [sp, #0xf4]
	str r4, [sp, #0x104]
	str r4, [sp, #0x10c]
	str r8, [sp, #0x3c]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x34]
	str r8, [sp, #0x84]
	str r4, [sp, #0x94]
	str r4, [sp, #0x9c]
	str r7, [sp, #0x110]
	str r6, [sp, #0x114]
	str r6, [sp, #0x11c]
	str r7, [sp, #0x38]
	str r7, [sp, #0xa0]
	strb r5, [sp]
	bl FUN_ov52_02122928
_02122088:
	ldr r2, [r10, #8]
	ldr r1, [r9]
	add r0, sp, #0x124
	str r1, [r10, #8]
	str r2, [r9]
	ldr r2, [r10, #0xc]
	ldr r1, [r9, #4]
	str r1, [r10, #0xc]
	str r2, [r9, #4]
	ldr r2, [r10, #0x10]
	ldr r1, [r9, #8]
	str r1, [r10, #0x10]
	str r2, [r9, #8]
	ldr r2, [r10, #0x14]
	ldr r1, [r9, #0xc]
	str r1, [r10, #0x14]
	ldr r1, [r9, #8]
	str r2, [r9, #0xc]
	sub r1, r1, r1
	str r1, [r9, #8]
	bl FUN_ov52_0212337c
	add sp, sp, #0x13c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_021220E4: .word ov52_021247E0
_021220E8: .word ov52_02124060
_021220EC: .word ov52_02124798
_021220F0: .word ov52_02124344
	arm_func_end FUN_ov52_02121be4

	arm_func_start FUN_ov52_021220f4
FUN_ov52_021220f4: ; 0x021220F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r5, #0x10]
	ldr r1, [r5]
	cmp r0, #0
	moveq r2, #0
	subne r0, r0, #1
	movne r2, r0, lsl #8
	ldr r0, [r5, #4]
	add r0, r1, r0
	sub r1, r2, r0
	cmp r4, r1
	bls _02122144
	mov r0, r5
	sub r1, r4, r1
	bl FUN_ov52_02121be4
_02122144:
	add r6, sp, #4
	ldr r2, [r5, #4]
	mov r0, r6
	mov r1, r5
	bl FUN_ov52_0212344c
	add r12, r5, #4
	add r0, sp, #0x18
	mov r1, r4
	mov r2, r6
	add r3, r5, #8
	str r12, [sp]
	bl FUN_ov52_02122808
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov52_021220f4

	arm_func_start FUN_ov52_0212217c
FUN_ov52_0212217c: ; 0x0212217C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	ldr r2, [r0, #0x10]
	sub r1, r3, r1
	cmp r2, #0
	moveq r2, #0
	str r1, [r0, #4]
	subne r1, r2, #1
	movne r2, r1, lsl #8
	add r5, r0, #8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r0, r0, r1
	sub r6, r2, r0
	cmp r6, #0x200
	addlo sp, sp, #4
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0
_021221D4:
	ldmib r5, {r0, r1}
	sub r2, r1, #1
	add r0, r0, r2
	ldr r1, [r5, #0xc]
	sub r0, r0, #1
	str r2, [r5, #8]
	bl _u32_div_f
	ldr r7, [r5]
	mov r8, r1
	ldr r0, [r7, r8, lsl #2]
	bl _ZdlPv
	sub r6, r6, #0x100
	str r4, [r7, r8, lsl #2]
	cmp r6, #0x200
	bhs _021221D4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov52_0212217c

	arm_func_start FUN_ov52_02122218
FUN_ov52_02122218: ; 0x02122218
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _021222D4
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _02122258
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r3, r1
_02122258:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _021222D4
_02122298:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021222AC
	bl _ZdlPv
_021222AC:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _02122298
_021222D4:
	add r0, r5, #8
	bl FUN_ov52_021237c4
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov52_02122218

	arm_func_start FUN_ov52_021222e8
FUN_ov52_021222e8: ; 0x021222E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r4, #4]
	cmp r0, #2
	bls _02122344
	mov r5, r1
_02122308:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r1, r0, lsl #2]
	bl _ZdlPv
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r1, #1
	cmp r1, r0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0xc]
	sub r0, r0, #1
	streq r5, [r4, #0xc]
	str r0, [r4, #0x10]
	cmp r0, #2
	bhi _02122308
_02122344:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x15
	strne r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov52_021222e8

	arm_func_start FUN_ov52_02122358
FUN_ov52_02122358: ; 0x02122358
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02122414
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _02122398
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r3, r1
_02122398:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02122414
_021223D8:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021223EC
	bl _ZdlPv
_021223EC:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _021223D8
_02122414:
	add r0, r5, #8
	bl FUN_ov52_021237c4
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov52_02122358

	arm_func_start FUN_ov52_02122428
FUN_ov52_02122428: ; 0x02122428
	stmfd sp!, {r3, lr}
	bl printf
	bl abort
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov52_02122428

	arm_func_start FUN_ov52_02122438
FUN_ov52_02122438: ; 0x02122438
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r1, r0
	addls sp, sp, #0x38
	ldmlsfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	add r0, r6, #0xc
	str r0, [sp, #0x34]
	str r4, [sp, #0x24]
	str r4, [sp, #0x28]
	str r4, [sp, #0x2c]
	str r4, [sp, #0x30]
	sub r0, sp, #4
	strb r4, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov52_02123540
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _021224B0
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl _u32_div_f
	mov r4, r1
_021224B0:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r4, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov52_021236c4
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov52_0212350c
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_02122438

	arm_func_start FUN_ov52_02122560
FUN_ov52_02122560: ; 0x02122560
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x38
	mov r6, r0
	ldr r3, [r6, #8]
	mov r4, r1
	ldr r1, [r6, #0xc]
	add r2, r3, #1
	cmp r2, r1
	bhs _021225B4
	ldr r0, [r6, #4]
	add r0, r0, r3
	bl _u32_div_f
	ldr r0, [r6]
	add sp, sp, #0x38
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [r6, #8]
	add r0, r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_021225B4:
	mov r5, #0
	add r2, r6, #0xc
	mov r1, #1
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	str r5, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r2, [sp, #0x34]
	bl FUN_ov52_021226e4
	mov r1, r0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	add r0, sp, #0x24
	bl FUN_ov52_02123540
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r0, r1, lsl #2
	ldrne r0, [r4]
	strne r0, [r1]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r6, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02122634
	ldr r2, [r6, #4]
	ldr r0, [r6, #8]
	add r0, r2, r0
	bl _u32_div_f
_02122634:
	ldr r2, [r6]
	mov r5, #0
	add r0, r2, r1, lsl #2
	str r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r4, sp, #0x24
	add r1, r2, r0, lsl #2
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	add r0, r2, r0, lsl #2
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r0, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	add r1, sp, #0x14
	add r2, sp, #4
	mov r0, r4
	bl FUN_ov52_021235bc
	str r5, [r6, #8]
	ldr r1, [r6]
	ldr r0, [sp, #0x24]
	add r3, sp, #0x30
	str r0, [r6]
	str r1, [sp, #0x24]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x28]
	mov r0, r4
	str r1, [r6, #4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [r6, #8]
	str r5, [sp, #0x2c]
	ldr r2, [r6, #0xc]
	ldr r1, [r3]
	str r1, [r6, #0xc]
	str r2, [r3]
	bl FUN_ov52_0212350c
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov52_02122560

	arm_func_start FUN_ov52_021226e4
FUN_ov52_021226e4: ; 0x021226E4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r2, _021227E0 ; =0x021247E4
	mov r5, #0
	ldr r3, [r2]
	tst r3, #1
	orreq r3, r3, #1
	ldreq r1, _021227E4 ; =0x02124044
	mvneq r4, #0xc0000001
	streq r3, [r2]
	streq r4, [r1]
	ldr r1, [r0, #0xc]
	ldr r0, _021227E4 ; =0x02124044
	cmp r1, #0
	subne r5, r1, #1
	ldr r4, [r0]
	ldr r1, [sp, #0x1c]
	sub r0, r4, r5
	cmp r1, r0
	bls _0212273C
	bl FUN_ov52_021227f0
_0212273C:
	ldr r0, _021227E8 ; =0xAAAAAAAB
	umull r0, r1, r4, r0
	mov r1, r1, lsr #1
	cmp r5, r1
	bhs _02122790
	add r1, r5, #1
	ldr r0, _021227EC ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x1c]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x1c
	addls r0, sp, #4
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02122790:
	cmp r5, r1, lsl #1
	bhs _021227CC
	ldr r0, [sp, #0x1c]
	add r1, r5, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x1c
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0]
	add sp, sp, #8
	add r0, r5, r0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_021227CC:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_021227E0: .word ov52_021247E4
_021227E4: .word ov52_02124044
_021227E8: .word 0xAAAAAAAB
_021227EC: .word 0xCCCCCCCD
	arm_func_end FUN_ov52_021226e4

	arm_func_start FUN_ov52_021227f0
FUN_ov52_021227f0: ; 0x021227F0
	stmfd sp!, {r3, lr}
	ldr r0, _02122804 ; =0x021247B0
	bl printf
	bl abort
	ldmfd sp!, {r3, pc}
_02122804: .word ov52_021247B0
	arm_func_end FUN_ov52_021227f0

	arm_func_start FUN_ov52_02122808
FUN_ov52_02122808: ; 0x02122808
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r1, [sp, #0x2c]
	mov r10, r0
	mov r9, r2
	cmp r1, #0
	ldr r8, [sp, #0x38]
	beq _021228F0
	ldr r1, [sp, #0x2c]
	add r5, sp, #0x2c
	add r6, sp, #0
	mov r4, #0
_0212283C:
	ldr r2, [r9, #0x10]
	cmp r2, #0
	ldrne r0, [r9]
	ldrne r0, [r0]
	addne r0, r0, #0x400
	moveq r0, r2
	sub r2, r0, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	movhi r0, r6
	str r2, [sp]
	movls r0, r5
	ldr r7, [r0]
	ldr r0, [r9, #0x10]
	mov r1, r4
	mov r2, r7, lsl #2
	bl memset
	ldr r1, [r8]
	sub r0, r7, #1
	add r1, r1, r7
	str r1, [r8]
	ldr r1, [r9, #0x10]
	ldr r2, [r9]
	add r0, r1, r0, lsl #2
	add r1, r0, #4
	str r1, [r9, #0x10]
	ldr r0, [r2]
	add r0, r0, #0x400
	cmp r1, r0
	bne _021228E0
	ldr r0, [r9, #0xc]
	add r1, r2, #4
	cmp r1, r0
	ldreq r0, [r9, #4]
	str r1, [r9]
	streq r0, [r9]
	ldr r0, [r9]
	ldr r0, [r0]
	str r0, [r9, #0x10]
_021228E0:
	ldr r0, [sp, #0x2c]
	subs r1, r0, r7
	str r1, [sp, #0x2c]
	bne _0212283C
_021228F0:
	ldr r0, [r9]
	str r0, [r10]
	ldr r0, [r9, #4]
	str r0, [r10, #4]
	ldr r0, [r9, #8]
	str r0, [r10, #8]
	ldr r0, [r9, #0xc]
	str r0, [r10, #0xc]
	ldr r0, [r9, #0x10]
	str r0, [r10, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov52_02122808

	arm_func_start FUN_ov52_02122928
FUN_ov52_02122928: ; 0x02122928
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b4
	mov r9, r2
	mov r8, r3
	ldrb r2, [r9, #0x10]
	ldrb r7, [r8, #0x10]
	mov r10, r0
	str r1, [sp]
	ldr r0, [r8, #8]
	ldr r1, [r8, #0xc]
	ldr r6, [r9]
	ldr r5, [r9, #4]
	ldr r4, [r9, #8]
	ldr r3, [r9, #0xc]
	ldr r12, [r8]
	ldr r11, [r8, #4]
	str r0, [sp, #0x170]
	str r0, [sp, #0x74]
	str r1, [sp, #0x174]
	str r1, [sp, #0x78]
	add r0, sp, #0x6c
	add r1, sp, #0x58
	str r12, [sp, #0x168]
	str r11, [sp, #0x16c]
	strb r7, [sp, #0x178]
	str r6, [sp, #0x17c]
	str r5, [sp, #0x180]
	strb r2, [sp, #0x18c]
	str r4, [sp, #0x184]
	str r12, [sp, #0x6c]
	str r11, [sp, #0x70]
	strb r7, [sp, #0x7c]
	str r3, [sp, #0x188]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	str r4, [sp, #0x60]
	str r3, [sp, #0x64]
	strb r2, [sp, #0x68]
	bl FUN_ov52_0212383c
	movs r4, r0
	addeq sp, sp, #0x1b4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	ldr r3, [r10]
	ldr r1, [r10, #4]
	ldr r2, [r0]
	add r7, r3, r1, lsl #2
	sub r1, r2, r7
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	cmp r2, r7
	mov r5, r0, asr #2
	ldrlo r0, [r10, #0xc]
	mov r6, #0
	addlo r5, r5, r0
	ldr r0, [r10, #0xc]
	cmp r0, #0
	moveq r0, #0
	subne r0, r0, #1
	cmp r4, r0
	ldrls r2, [r10, #8]
	subls r0, r0, r4
	cmpls r2, r0
	bhi _02122D04
	str r7, [sp, #0x1a4]
	ldr r6, [r10]
	sub r0, r2, r5
	str r0, [sp, #8]
	str r6, [sp, #0x1a8]
	ldr r1, [sp, #8]
	ldr r0, [r10, #4]
	cmp r5, r1
	add r1, r6, r0, lsl #2
	str r1, [sp, #4]
	str r1, [sp, #0x1ac]
	ldr r1, [r10, #0xc]
	add r11, r6, r1, lsl #2
	str r11, [sp, #0x1b0]
	bhs _02122B48
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov52_021237f8
	ldr r0, [r10, #8]
	ldr r3, [sp, #0x1a4]
	ldr r2, [r10]
	add r1, r0, r4
	sub r2, r3, r2
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	stmib r10, {r0, r1}
	cmp r5, #0
	beq _02122C78
	ldr r2, [sp, #0x1b0]
	ldr r10, [sp, #0x1a4]
	ldr r4, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	str r2, [sp, #0x134]
	ldr r2, [sp, #4]
	add r0, sp, #0x48
	mov r1, r5
	str r10, [sp, #0x128]
	str r4, [sp, #0x12c]
	str r3, [sp, #0x130]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	str r2, [sp, #0x50]
	str r11, [sp, #0x54]
	bl FUN_ov52_021237f8
	ldr r2, [r0]
	add r1, sp, #0x148
	str r2, [sp, #0x138]
	ldr r3, [r0, #4]
	add r2, sp, #0x138
	str r3, [sp, #0x13c]
	ldr r4, [r0, #8]
	add r3, sp, #0x128
	str r4, [sp, #0x140]
	ldr r4, [r0, #0xc]
	add r0, sp, #0x158
	str r4, [sp, #0x144]
	ldr r4, [sp, #4]
	str r7, [sp, #0x148]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x150]
	str r11, [sp, #0x154]
	bl FUN_ov52_02123214
	ldr r3, [sp, #0x158]
	ldr r2, [sp, #0x15c]
	ldr r1, [sp, #0x160]
	ldr r0, [sp, #0x164]
	str r3, [sp, #0x1a4]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
	b _02122C78
_02122B48:
	add r2, r2, r4
	cmp r1, #0
	str r2, [r10, #8]
	moveq r1, #0
	beq _02122B64
	add r0, r0, r2
	bl _u32_div_f
_02122B64:
	ldr r5, [r10]
	ldr r2, [r10, #4]
	ldr r0, [r10, #0xc]
	add r3, r5, r2, lsl #2
	add r2, r5, r0, lsl #2
	ldr r0, [sp, #8]
	add r1, r5, r1, lsl #2
	str r1, [sp, #0x1a4]
	str r5, [sp, #0x1a8]
	str r3, [sp, #0x1ac]
	str r2, [sp, #0x1b0]
	cmp r0, #0
	beq _02122C6C
	add r0, sp, #0x28
	str r1, [sp, #0xe8]
	str r1, [sp, #0x28]
	str r5, [sp, #0xec]
	str r3, [sp, #0xf0]
	str r2, [sp, #0xf4]
	str r5, [sp, #0x2c]
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	rsb r1, r4, #0
	bl FUN_ov52_021237f8
	ldr r2, [r0]
	ldr r1, [sp, #8]
	str r2, [sp, #0xf8]
	ldr r2, [r0, #4]
	add r1, r4, r1
	str r2, [sp, #0xfc]
	ldr r2, [r0, #8]
	ldr r6, [sp, #0x1a4]
	str r2, [sp, #0x100]
	ldr r7, [r0, #0xc]
	ldr r5, [sp, #0x1a8]
	ldr r3, [sp, #0x1ac]
	ldr r2, [sp, #0x1b0]
	add r0, sp, #0x38
	str r7, [sp, #0x104]
	str r6, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r3, [sp, #0x40]
	str r2, [sp, #0x44]
	rsb r1, r1, #0
	bl FUN_ov52_021237f8
	ldr r2, [r0]
	add r1, sp, #0x108
	str r2, [sp, #0x108]
	ldr r3, [r0, #4]
	add r2, sp, #0xf8
	str r3, [sp, #0x10c]
	ldr r5, [r0, #8]
	add r3, sp, #0xe8
	str r5, [sp, #0x110]
	ldr r5, [r0, #0xc]
	add r0, sp, #0x118
	str r5, [sp, #0x114]
	bl FUN_ov52_0212308c
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	ldr r1, [sp, #0x120]
	str r0, [sp, #0x1a4]
	ldr r0, [sp, #0x124]
	str r2, [sp, #0x1a8]
	str r1, [sp, #0x1ac]
	str r0, [sp, #0x1b0]
_02122C6C:
	add r0, sp, #0x1a4
	rsb r1, r4, #0
	bl FUN_ov52_021237f8
_02122C78:
	ldrb r0, [r8, #0x10]
	ldr r10, [sp, #0x1a4]
	ldr r7, [sp, #0x1a8]
	ldr r6, [sp, #0x1ac]
	ldr r5, [sp, #0x1b0]
	ldr r4, [r8]
	ldr r3, [r8, #4]
	ldr r2, [r8, #8]
	ldr r1, [r8, #0xc]
	strb r0, [sp, #0xc0]
	str r10, [sp, #0xa0]
	str r7, [sp, #0xa4]
	str r6, [sp, #0xa8]
	str r5, [sp, #0xac]
	str r4, [sp, #0xb0]
	str r3, [sp, #0xb4]
	str r2, [sp, #0xb8]
	str r1, [sp, #0xbc]
	ldr r1, [r9]
	add r0, sp, #0xd8
	str r1, [sp, #0xc4]
	ldr r2, [r9, #4]
	add r1, sp, #0xc4
	str r2, [sp, #0xc8]
	ldr r3, [r9, #8]
	add r2, sp, #0xb0
	str r3, [sp, #0xcc]
	ldr r4, [r9, #0xc]
	add r3, sp, #0xa0
	str r4, [sp, #0xd0]
	ldrb r4, [r9, #0x10]
	strb r4, [sp, #0xd4]
	bl FUN_ov52_02122ec0
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02122D04:
	add r2, r10, #0xc
	mov r0, r10
	mov r1, r4
	str r6, [sp, #0x190]
	str r6, [sp, #0x194]
	str r6, [sp, #0x198]
	str r6, [sp, #0x19c]
	str r2, [sp, #0x1a0]
	bl FUN_ov52_021226e4
	mov r1, r0
	and r2, r6, #0xff
	sub r0, sp, #4
	strb r2, [r0]
	ldr r2, [r0]
	add r0, sp, #0x190
	bl FUN_ov52_02123540
	ldr r0, [sp, #0x190]
	str r5, [sp, #0x194]
	cmp r4, #0
	add r0, r0, r5, lsl #2
	beq _02122DBC
_02122D58:
	ldr r5, [r9]
	ldr r1, [r9, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9, #8]
	str r1, [sp, #0x24]
	ldr r1, [r5]
	cmp r0, #0
	strne r1, [r0]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x20]
	add r1, r1, #1
	str r1, [sp, #0x198]
	ldr r2, [r9]
	ldr r1, [r9, #0xc]
	add r2, r2, #4
	cmp r2, r1
	ldreq r1, [r9, #4]
	str r2, [r9]
	sub r4, r4, #1
	streq r1, [r9]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, r0, #4
	cmp r4, #0
	bne _02122D58
_02122DBC:
	ldr r1, [r10, #0xc]
	cmp r1, #0
	moveq r1, #0
	beq _02122DDC
	ldr r2, [r10, #4]
	ldr r0, [r10, #8]
	add r0, r2, r0
	bl _u32_div_f
_02122DDC:
	ldr r2, [r10]
	add r4, sp, #0x190
	add r0, r2, r1, lsl #2
	str r2, [sp, #0x94]
	str r0, [sp, #0x90]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x98]
	ldr r0, [r10, #0xc]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x9c]
	and r0, r6, #0xff
	strb r0, [r1]
	ldr r3, [r1]
	ldr r1, [sp]
	add r2, sp, #0x90
	mov r0, r4
	bl FUN_ov52_021236c4
	ldr r3, [r10]
	ldr r0, [r10, #4]
	sub r1, sp, #4
	add r0, r3, r0, lsl #2
	str r0, [sp, #0x80]
	str r0, [sp, #0x88]
	str r3, [sp, #0x84]
	ldr r2, [r10, #0xc]
	and r0, r6, #0xff
	add r2, r3, r2, lsl #2
	str r2, [sp, #0x8c]
	strb r0, [r1]
	ldr r3, [r1]
	ldr r2, [sp]
	add r1, sp, #0x80
	mov r0, r4
	bl FUN_ov52_021235bc
	str r6, [r10, #8]
	ldr r1, [r10]
	ldr r0, [sp, #0x190]
	add r3, sp, #0x19c
	str r0, [r10]
	str r1, [sp, #0x190]
	ldr r2, [r10, #4]
	ldr r1, [sp, #0x194]
	mov r0, r4
	str r1, [r10, #4]
	ldr r1, [sp, #0x198]
	str r2, [sp, #0x194]
	str r1, [r10, #8]
	str r6, [sp, #0x198]
	ldr r2, [r10, #0xc]
	ldr r1, [r3]
	str r1, [r10, #0xc]
	str r2, [r3]
	bl FUN_ov52_0212350c
	add sp, sp, #0x1b4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov52_02122928

	arm_func_start FUN_ov52_02122ec0
FUN_ov52_02122ec0: ; 0x02122EC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	mov r6, r1
	ldr r7, [r6]
	ldr r4, [r2]
	mov r11, r0
	mov r5, r3
	cmp r7, r4
	beq _02123064
	mov r0, r2
	bl FUN_ov52_0212383c
	str r0, [sp, #0xc]
_02122EF0:
	ldr r2, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	sub r2, r2, r0
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	cmp r1, r0, asr #2
	addle r0, sp, #0xc
	str r2, [sp, #8]
	addgt r0, sp, #8
	ldr r4, [r0]
	ldr r1, [r6]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r6, #4]
	mov r1, r4
	str r2, [sp, #0x24]
	ldr r2, [r6, #8]
	str r2, [sp, #0x28]
	ldr r2, [r6, #0xc]
	str r2, [sp, #0x2c]
	ldrb r2, [r6, #0x10]
	strb r2, [sp, #0x30]
	bl FUN_ov52_021237f8
	ldrb r12, [sp, #0x30]
	ldr r9, [sp, #0x20]
	ldr r8, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr lr, [sp, #0x2c]
	ldr r10, [r6]
	ldrb r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r2, [r6, #8]
	ldr r1, [r6, #0xc]
	str r3, [sp, #0x4c]
	strb r12, [sp, #0x6c]
	str r9, [sp, #0x5c]
	str r8, [sp, #0x60]
	str r7, [sp, #0x64]
	str r7, [sp, #0x3c]
	str lr, [sp, #0x68]
	str r9, [sp, #0x34]
	str r8, [sp, #0x38]
	str lr, [sp, #0x40]
	strb r12, [sp, #0x44]
	str r10, [sp, #0x48]
	str r2, [sp, #0x50]
	str r1, [sp, #0x54]
	strb r0, [sp, #0x58]
	cmp r10, r9
	ldr r7, [r5]
	add r3, sp, #0x48
	beq _02123010
_02122FC8:
	ldr r8, [r3]
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	add r8, r8, #4
	str r8, [r3]
	cmp r8, r0
	ldr r1, [r3, #8]
	ldr r12, [r10]
	streq r2, [r3]
	str r10, [sp, #0x10]
	ldr r10, [r3]
	str r12, [r7]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r7, r7, #4
	cmp r10, r9
	bne _02122FC8
_02123010:
	ldr r0, [sp, #0xc]
	sub r1, r4, #1
	sub r0, r0, r4
	str r0, [sp, #0xc]
	ldr r2, [r5]
	ldr r0, [r5, #0xc]
	add r1, r2, r1, lsl #2
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [r5, #4]
	str r1, [r5]
	streq r0, [r5]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02123064
	add r0, sp, #0x5c
	ldmia r0, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	ldrb r4, [sp, #0x6c]
	strb r4, [r6, #0x10]
	b _02122EF0
_02123064:
	ldr r0, [r5]
	str r0, [r11]
	ldr r0, [r5, #4]
	str r0, [r11, #4]
	ldr r0, [r5, #8]
	str r0, [r11, #8]
	ldr r0, [r5, #0xc]
	str r0, [r11, #0xc]
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov52_02122ec0

	arm_func_start FUN_ov52_0212308c
FUN_ov52_0212308c: ; 0x0212308C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r8]
	ldr r1, [r9]
	mov r10, r0
	mov r7, r3
	cmp r1, r2
	beq _021231EC
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_021230C0:
	ldr r0, [r8, #4]
	mov r6, r5
	cmp r2, r0
	ldreq r0, [r8, #0xc]
	mov r12, #1
	streq r0, [r8]
	ldr r0, [r8]
	sub r0, r0, #4
	str r0, [r8]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	cmp r1, r0
	ldreq r0, [r7, #0xc]
	ldr r1, [r7, #8]
	streq r0, [r7]
	ldr r0, [r7]
	sub r0, r0, #4
	cmp r0, r1
	ldrlo r1, [r7, #4]
	str r0, [r7]
	sub r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r3, [r9]
	ldr r2, [r9, #8]
	ldr r1, [r8, #8]
	cmp r3, r2
	ldr r2, [r8]
	movlo r6, r11
	cmp r2, r1
	movlo r12, #0
	cmp r6, r12
	bne _02123170
	sub r2, r2, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _02123198
_02123170:
	cmp r2, r1
	ldrlo r1, [r8, #4]
	sub r2, r2, r1
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_02123198:
	ldr r6, [r0]
	ldr r1, [r8]
	add r0, r6, #1
	sub r1, r1, r6, lsl #2
	mov r2, r0, lsl #2
	str r1, [r8]
	ldr r3, [r7]
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	add r3, r3, #4
	mov r2, r0, asr #2
	sub r0, r3, r2, lsl #2
	mov r2, r2, lsl #2
	bl memmove
	ldr r0, [r7]
	sub r0, r0, r6, lsl #2
	str r0, [r7]
	ldr r2, [r8]
	ldr r0, [r9]
	cmp r0, r2
	bne _021230C0
_021231EC:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov52_0212308c

	arm_func_start FUN_ov52_02123214
FUN_ov52_02123214: ; 0x02123214
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r8, r2
	ldr r2, [r9]
	ldr r1, [r8]
	mov r10, r0
	mov r7, r3
	cmp r2, r1
	beq _02123354
	add r4, sp, #8
	mov r11, #0
	mov r5, #1
_02123248:
	ldr r1, [r7, #0xc]
	ldr r0, [r7]
	mov r6, r5
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	str r0, [sp, #8]
	ldr r2, [r9]
	ldr r1, [r9, #8]
	ldr r3, [r8]
	cmp r2, r1
	ldr r1, [r8, #8]
	movlo r6, r11
	cmp r3, r1
	movhs r1, #1
	movlo r1, #0
	cmp r6, r1
	bne _021232B8
	sub r2, r3, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp, #4]
	addge r0, sp, #4
	b _021232DC
_021232B8:
	ldr r1, [r9, #0xc]
	sub r2, r1, r2
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	movlt r0, r4
	str r2, [sp]
	addge r0, sp, #0
_021232DC:
	ldr r6, [r0]
	mov r1, r6, lsl #2
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	ldr r1, [r9]
	ldr r0, [r7]
	bl memmove
	ldr r1, [r9]
	sub r0, r6, #1
	add r1, r1, r0, lsl #2
	add r2, r1, #4
	ldr r1, [r9, #0xc]
	str r2, [r9]
	cmp r2, r1
	ldreq r1, [r9, #4]
	streq r1, [r9]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	add r0, r2, r0, lsl #2
	add r0, r0, #4
	str r0, [r7]
	cmp r0, r1
	ldreq r0, [r7, #4]
	streq r0, [r7]
	ldr r1, [r9]
	ldr r0, [r8]
	cmp r1, r0
	bne _02123248
_02123354:
	ldr r0, [r7]
	str r0, [r10]
	ldr r0, [r7, #4]
	str r0, [r10, #4]
	ldr r0, [r7, #8]
	str r0, [r10, #8]
	ldr r0, [r7, #0xc]
	str r0, [r10, #0xc]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov52_02123214

	arm_func_start FUN_ov52_0212337c
FUN_ov52_0212337c: ; 0x0212337C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r3, #0
	str r3, [r5, #4]
	cmp r0, #0
	beq _02123438
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021233BC
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r3, r1
_021233BC:
	ldr r2, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	add r1, r2, r1, lsl #2
	add r0, r2, r0, lsl #2
	add r4, r2, r3, lsl #2
	str r4, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r4
	beq _02123438
_021233FC:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _02123410
	bl _ZdlPv
_02123410:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	cmp r1, r0
	ldreq r0, [sp, #8]
	str r1, [sp, #4]
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, r4
	bne _021233FC
_02123438:
	add r0, r5, #8
	bl FUN_ov52_021237c4
	mov r0, r5
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov52_0212337c

	arm_func_start FUN_ov52_0212344c
FUN_ov52_0212344c: ; 0x0212344C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r5, r1
	ldr lr, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r1, [r5, #0x14]
	add r12, lr, r3, lsl #2
	ldr r7, [r5]
	add r3, lr, r1, lsl #2
	mov r4, r2
	add r4, r4, r7
	mov r6, r0
	add r0, sp, #0
	str r12, [sp]
	str lr, [sp, #4]
	str r12, [sp, #8]
	str r3, [sp, #0xc]
	mov r1, r4, lsr #8
	str r12, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_ov52_021237f8
	ldr r0, [r5, #0x10]
	ldr r12, [sp]
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	mov r5, #0
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r12, [sp, #0x20]
	mov r0, r4, lsl #0x18
	ldrne r5, [r12]
	ldr r4, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r5, r0, lsr #22
	str r4, [r6]
	str r3, [r6, #4]
	str r2, [r6, #8]
	str r1, [r6, #0xc]
	str r0, [r6, #0x10]
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov52_0212344c

	arm_func_start FUN_ov52_0212350c
FUN_ov52_0212350c: ; 0x0212350C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02123534
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl _ZdlPv
_02123534:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov52_0212350c

	arm_func_start FUN_ov52_02123540
FUN_ov52_02123540: ; 0x02123540
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _021235B0 ; =0x021247E8
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _021235B4 ; =0x02124040
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _021235B4 ; =0x02124040
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _02123580
	bl FUN_ov52_021227f0
_02123580:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl _Znwm
	movs r6, r0
	bne _021235A0
	ldr r0, _021235B8 ; =0x02124344
	bl printf
	bl abort
_021235A0:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_021235B0: .word ov52_021247E8
_021235B4: .word ov52_02124040
_021235B8: .word ov52_02124344
	arm_func_end FUN_ov52_02123540

	arm_func_start FUN_ov52_021235bc
FUN_ov52_021235bc: ; 0x021235BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r3, [r7]
	ldr r0, [r7, #4]
	ldr r2, [r5]
	ldr r1, [r6]
	add r0, r3, r0, lsl #2
	cmp r1, r2
	bhi _02123630
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r3, r2, asr #2
	mov r2, r3, lsl #2
	sub r0, r0, r3, lsl #2
	bl memmove
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	sub r0, r1, r0, asr #2
	stmib r7, {r0, r2}
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02123630:
	ldr r1, [r5, #4]
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r4, r0, r2, lsl #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl memmove
	ldr r1, [r6]
	ldr r0, [r6, #0xc]
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r0, r0, asr #2
	mov r2, r0, lsl #2
	sub r0, r4, r0, lsl #2
	bl memmove
	ldr r1, [r6, #0xc]
	ldr r0, [r6]
	ldr r4, [r5]
	ldr r3, [r5, #4]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	mov r0, r3, asr #1
	add r1, r2, r1, lsr #30
	add r0, r3, r0, lsr #30
	mov r2, r1, asr #2
	ldr r1, [r7, #4]
	add r2, r2, r0, asr #2
	ldr r0, [r7, #8]
	sub r1, r1, r2
	add r0, r0, r2
	str r1, [r7, #4]
	str r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov52_021235bc

	arm_func_start FUN_ov52_021236c4
FUN_ov52_021236c4: ; 0x021236C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r3, [r7, #4]
	ldr r0, [r7, #8]
	mov r6, r1
	ldr r1, [r7, #0xc]
	add r0, r3, r0
	mov r5, r2
	bl _u32_div_f
	ldr r2, [r7]
	ldr r0, [r5]
	add r4, r2, r1, lsl #2
	ldr r1, [r6]
	cmp r1, r0
	bhi _02123740
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r2, r0, asr #2
	mov r0, r4
	mov r2, r2, lsl #2
	bl memmove
	ldr r1, [r5]
	ldr r0, [r6]
	ldr r2, [r7, #8]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r0, r2, r0, asr #2
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02123740:
	ldr r2, [r6, #0xc]
	mov r0, r4
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r8, r2, asr #2
	mov r2, r8, lsl #2
	bl memmove
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r0, r4, r8, lsl #2
	sub r3, r2, r1
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	mov r2, r2, lsl #2
	bl memmove
	ldr r1, [r5]
	ldr r0, [r5, #4]
	ldr r4, [r6, #0xc]
	ldr r3, [r6]
	sub r2, r1, r0
	sub r3, r4, r3
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r1, r1, asr #2
	ldr r2, [r7, #8]
	add r0, r1, r0, asr #2
	add r0, r2, r0
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov52_021236c4

	arm_func_start FUN_ov52_021237c4
FUN_ov52_021237c4: ; 0x021237C4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _021237EC
	ldr r1, [r4, #8]
	sub r1, r1, r1
	str r1, [r4, #8]
	bl _ZdlPv
_021237EC:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov52_021237c4

	arm_func_start FUN_ov52_021237f8
FUN_ov52_021237f8: ; 0x021237F8
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02123830
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02123830:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_021237f8

	arm_func_start FUN_ov52_0212383c
FUN_ov52_0212383c: ; 0x0212383C
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02123888
	cmp r12, lr
	bhs _021238A8
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _021238A8
_02123888:
	cmp r12, lr
	blo _021238A8
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_021238A8:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov52_0212383c

	arm_func_start FUN_ov52_021238b0
FUN_ov52_021238b0: ; 0x021238B0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r1, [sp, #0x4c]
	mov r4, r0
	ldmia r1, {r0, r1, r2, r3}
	add r12, sp, #0x14
	stmia r12, {r0, r1, r2, r3}
	add r6, sp, #0x3c
	add r5, sp, #4
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r12
	mov r1, r5
	bl FUN_ov52_02123c4c
	movs r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r5, #0
	sub r0, sp, #4
	strb r5, [r0]
	ldr r2, [r0]
	mov r0, r4
	bl FUN_ov52_02123b8c
	sub r0, sp, #4
	strb r5, [r0]
	ldr r3, [r0]
	ldr r2, [sp, #0x4c]
	mov r0, r4
	mov r1, r6
	bl FUN_ov52_02123944
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov52_021238b0

	arm_func_start FUN_ov52_02123944
FUN_ov52_02123944: ; 0x02123944
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	mov r7, r0
	ldr r4, [r7]
	mov r6, r1
	cmp r4, #0
	mov r5, r2
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r2, [r7, #4]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r0, r2, r0
	bl _u32_div_f
	add r4, r4, r1, lsl #2
	mov r0, r5
	mov r1, r6
	bl FUN_ov52_02123c4c
	str r0, [sp, #0x18]
	ldr r2, [r7]
	ldr r1, [r7, #0xc]
	ldr r12, [r6]
	add r1, r2, r1, lsl #2
	sub r2, r1, r4
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r2, r1, asr #2
	cmp r0, r1, asr #2
	addlt r1, sp, #0x18
	str r2, [sp, #0x14]
	addge r1, sp, #0x14
	ldr r1, [r1]
	ldr r3, [r6, #8]
	str r1, [sp, #0x14]
	ldr r1, [r7, #8]
	ldr r2, [r6, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	ldr r8, [r6, #4]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x2c
	str r12, [sp, #0x2c]
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	str r8, [sp, #0x30]
	bl FUN_ov52_02123c08
	ldr r8, [r0]
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r8, [sp, #0x4c]
	add r0, sp, #0x4c
	mov r8, sp
	str r3, [sp, #0x50]
	str r2, [sp, #0x54]
	str r1, [sp, #0x58]
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	ldmia r6, {r0, r1, r2, r3}
	bl FUN_ov52_02123abc
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x18]
	addeq sp, sp, #0x5c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, [r6]
	ldr r4, [r6, #4]
	ldr r3, [r6, #8]
	ldr r2, [r6, #0xc]
	add r0, sp, #0x1c
	str r8, [sp, #0x1c]
	str r4, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	bl FUN_ov52_02123c08
	ldmia r0, {r8, lr}
	ldr r12, [r0, #8]
	ldr r6, [r0, #0xc]
	mov r4, sp
	ldmia r5, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r4, [r7]
	str r8, [sp, #0x3c]
	add r0, sp, #0x3c
	str lr, [sp, #0x40]
	str r12, [sp, #0x44]
	str r6, [sp, #0x48]
	ldmia r0, {r0, r1, r2, r3}
	str r4, [sp, #0x10]
	bl FUN_ov52_02123abc
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov52_02123944

	arm_func_start FUN_ov52_02123abc
FUN_ov52_02123abc: ; 0x02123ABC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x38]
	ldr r10, [sp, #0x48]
	cmp r0, r7
	ldr r8, [sp, #0x40]
	beq _02123B7C
	ldr r6, [sp, #0x38]
	mov r11, #1
	add r4, sp, #0x28
_02123AE8:
	ldr r1, [sp, #0x30]
	mov r2, #1
	cmp r0, r1
	movhs r1, r11
	movlo r1, #0
	cmp r7, r8
	movlo r2, #0
	cmp r1, r2
	ldrne r1, [sp, #0x34]
	subeq r2, r6, r0
	subne r2, r1, r0
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	mov r9, r1, asr #2
	ldr r1, [sp, #0x28]
	add r0, r0, r9, lsl #2
	sub r2, r0, r1
	mov r0, r2, asr #1
	add r0, r2, r0, lsr #30
	mov r5, r0, asr #2
	mov r2, r5, lsl #2
	mov r0, r10
	bl memmove
	ldr r1, [r4]
	sub r0, r9, #1
	add r2, r1, r0, lsl #2
	ldr r0, [sp, #0x34]
	add r1, r2, #4
	str r2, [r4]
	cmp r1, r0
	ldreq r0, [sp, #0x2c]
	str r1, [sp, #0x28]
	streq r0, [sp, #0x28]
	ldr r0, [sp, #0x28]
	add r10, r10, r5, lsl #2
	cmp r0, r7
	bne _02123AE8
_02123B7C:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov52_02123abc

	arm_func_start FUN_ov52_02123b8c
FUN_ov52_02123b8c: ; 0x02123B8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02123BFC ; =0x021247E4
	mov r5, r0
	ldr r3, [r2]
	mov r4, r1
	tst r3, #1
	orreq r1, r3, #1
	ldreq r0, _02123C00 ; =0x02124044
	mvneq r3, #0xc0000001
	streq r3, [r0]
	ldr r0, _02123C00 ; =0x02124044
	streq r1, [r2]
	ldr r0, [r0]
	cmp r4, r0
	bls _02123BCC
	bl FUN_ov52_021227f0
_02123BCC:
	add r0, r4, #1
	mov r0, r0, lsl #2
	bl _Znwm
	movs r6, r0
	bne _02123BEC
	ldr r0, _02123C04 ; =0x02124344
	bl printf
	bl abort
_02123BEC:
	add r0, r4, #1
	str r6, [r5]
	str r0, [r5, #0xc]
	ldmfd sp!, {r4, r5, r6, pc}
_02123BFC: .word ov52_021247E4
_02123C00: .word ov52_02124044
_02123C04: .word ov52_02124344
	arm_func_end FUN_ov52_02123b8c

	arm_func_start FUN_ov52_02123c08
FUN_ov52_02123c08: ; 0x02123C08
	stmfd sp!, {r4, lr}
	ldr r3, [r0, #0xc]
	ldmia r0, {r2, r4}
	sub r12, r2, r4
	sub lr, r3, r4
	mov r3, r12, asr #1
	mov r2, lr, asr #1
	add r3, r12, r3, lsr #30
	add r2, lr, r2, lsr #30
	adds r1, r1, r3, asr #2
	addmi r1, r1, r2, asr #2
	bmi _02123C40
	cmp r1, r2, asr #2
	subge r1, r1, r2, asr #2
_02123C40:
	add r1, r4, r1, lsl #2
	str r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov52_02123c08

	arm_func_start FUN_ov52_02123c4c
FUN_ov52_02123c4c: ; 0x02123C4C
	stmfd sp!, {r3, lr}
	ldr r12, [r1]
	ldr r3, [r0]
	ldr lr, [r0, #8]
	sub r2, r3, r12
	mov r1, r2, asr #1
	add r1, r2, r1, lsr #30
	cmp r3, lr
	mov r2, r1, asr #2
	blo _02123C98
	cmp r12, lr
	bhs _02123CB8
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	sub r2, r2, r0, asr #2
	b _02123CB8
_02123C98:
	cmp r12, lr
	blo _02123CB8
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	add r2, r2, r0, asr #2
_02123CB8:
	mov r0, r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov52_02123c4c

	.rodata
	.global ov52_02123CC0
ov52_02123CC0:
	.byte 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00
	.global ov52_02123CC8
ov52_02123CC8:
	.byte 0x0C, 0x10, 0x0C, 0x28, 0x0C, 0x40, 0x0C, 0x58
	.byte 0x0C, 0x70, 0x0C, 0x88, 0x8C, 0x10, 0x8C, 0x28, 0x8C, 0x40, 0x8C, 0x58, 0x8C, 0x70, 0x8C, 0x88
	.global ov52_02123CE0
ov52_02123CE0:
	.word ov52_02124204
	.byte 0x1D, 0x00, 0x00, 0x00
	.word ov52_021240B4
	.byte 0x25, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123CF8
ov52_02123CF8:
	.byte 0x73, 0x74, 0x61, 0x6E, 0x64, 0x31, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x6E, 0x64, 0x32, 0x00, 0x00, 0x73, 0x74, 0x61, 0x6E, 0x64, 0x33, 0x00, 0x00
	.global ov52_02123D10
ov52_02123D10:
	.byte 0x01, 0x04, 0x06, 0x01, 0x04, 0x04, 0x00, 0x02, 0x05, 0x05, 0x01, 0x03, 0x06, 0x06, 0x02, 0x00
	.byte 0x01, 0x01, 0x00, 0x05, 0x02, 0x02, 0x04, 0x06, 0x03, 0x03, 0x05, 0x00
	.global ov52_02123D2C
ov52_02123D2C:
	.word ov52_021241B4
	.byte 0x11, 0x00, 0x00, 0x00
	.word ov52_021240D4
	.byte 0x13, 0x00, 0x00, 0x00
	.word ov52_02124074
	.byte 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123D4C
ov52_02123D4C:
	.word ov52_02124094
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov52_021241F0
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov52_02124114
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123D6C
ov52_02123D6C:
	.word ov52_021240E4
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov52_021242A4
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov52_021242B8
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123D8C
ov52_02123D8C:
	.word ov52_021242F4
	.byte 0x0B, 0x00, 0x00, 0x00
	.word ov52_0212431C
	.byte 0x0C, 0x00, 0x00, 0x00
	.word ov52_02124330
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123DAC
ov52_02123DAC:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00
	.global ov52_02123DD4
ov52_02123DD4:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.global ov52_02123DFC
ov52_02123DFC:
	.byte 0x06, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00
	.global ov52_02123E24
ov52_02123E24:
	.byte 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.global ov52_02123E4C
ov52_02123E4C:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00
	.global ov52_02123E74
ov52_02123E74:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.global ov52_02123E9C
ov52_02123E9C:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.global ov52_02123EC8
ov52_02123EC8:
	.byte 0x05, 0x05, 0x0A, 0x01, 0x06, 0x06, 0x00, 0x02
	.byte 0x07, 0x07, 0x01, 0x03, 0x08, 0x08, 0x02, 0x04, 0x09, 0x09, 0x03, 0x0A, 0x00, 0x00, 0x09, 0x06
	.byte 0x01, 0x01, 0x05, 0x07, 0x02, 0x02, 0x06, 0x08, 0x03, 0x03, 0x07, 0x09, 0x04, 0x04, 0x08, 0x05
	.byte 0x0A, 0x0A, 0x04, 0x00
	.global ov52_02123EF4
ov52_02123EF4:
	.word ov52_02124290
	.byte 0x1E, 0x00, 0x00, 0x00
	.word ov52_02124240
	.byte 0x1F, 0x00, 0x00, 0x00
	.word ov52_02124254
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov52_021240C4
	.byte 0x23, 0x00, 0x00, 0x00
	.word ov52_02124194
	.byte 0x24, 0x00, 0x00, 0x00
	.word ov52_0212427C
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02123F2C
ov52_02123F2C:
	.word ov52_021241A4
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov52_021240F4
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov52_021240A4
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov52_021241DC
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov52_02124218
	.byte 0x0E, 0x00, 0x00, 0x00
	.word ov52_021242CC
	.byte 0x0F, 0x00, 0x00, 0x00
	.word ov52_021242E0
	.byte 0x10, 0x00, 0x00, 0x00
	.word ov52_02124174
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov52_02124184
	.byte 0x24, 0x00, 0x00, 0x00
	.word ov52_02124268
	.byte 0x14, 0x00, 0x00, 0x00
	.word ov52_02124308
	.byte 0x15, 0x00, 0x00, 0x00
	.word ov52_02124104
	.byte 0x16, 0x00, 0x00, 0x00
	.word ov52_02124134
	.byte 0x1A, 0x00, 0x00, 0x00
	.word ov52_02124144
	.byte 0x1B, 0x00, 0x00, 0x00
	.word ov52_02124154
	.byte 0x1C, 0x00, 0x00, 0x00
	.word ov52_02124124
	.byte 0x26, 0x00, 0x00, 0x00
	.word ov52_02124164
	.byte 0x27, 0x00, 0x00, 0x00
	.word ov52_02124084
	.byte 0x28, 0x00, 0x00, 0x00
	.word ov52_02124064
	.byte 0x29, 0x00, 0x00, 0x00
	.word ov52_0212422C
	.byte 0x20, 0x00, 0x00, 0x00
	.word ov52_021241C8
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov52_02123fdc
FUN_ov52_02123fdc: ; 0x02123FDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02124024 ; =0x02124048
	str r0, [r4, #4]
	ldr r0, _02124028 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _0212402C ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02124024: .word ov52_02124048
_02124028: .word 0x00009CCD
_0212402C: .word 0x0000EA3C
	arm_func_end FUN_ov52_02123fdc

	.section .sinit, 4
ov52_02124030:
	.word FUN_ov52_02123fdc

	.data
	.global ov52_02124040
ov52_02124040:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124044
ov52_02124044:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124048
ov52_02124048:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124060
ov52_02124060:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124064
ov52_02124064:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124074
ov52_02124074:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124084
ov52_02124084:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124094
ov52_02124094:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240A4
ov52_021240A4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x69, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240B4
ov52_021240B4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240C4
ov52_021240C4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x37, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240D4
ov52_021240D4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240E4
ov52_021240E4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_021240F4
ov52_021240F4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124104
ov52_02124104:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124114
ov52_02124114:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124124
ov52_02124124:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124134
ov52_02124134:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x66, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124144
ov52_02124144:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124154
ov52_02124154:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124164
ov52_02124164:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63
	.byte 0x5F, 0x00, 0x00, 0x00
	.global ov52_02124174
ov52_02124174:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00
	.global ov52_02124184
ov52_02124184:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00
	.global ov52_02124194
ov52_02124194:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x32, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00
	.global ov52_021241A4
ov52_021241A4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61
	.byte 0x63, 0x5F, 0x00, 0x00
	.global ov52_021241B4
ov52_021241B4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x5F, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021241C8
ov52_021241C8:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x5F, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021241DC
ov52_021241DC:
	.byte 0x63, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x34, 0x5F, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021241F0
ov52_021241F0:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x5F, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124204
ov52_02124204:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x5F, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124218
ov52_02124218:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x5F, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_0212422C
ov52_0212422C:
	.byte 0x63, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x31, 0x5F, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124240
ov52_02124240:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x5F, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124254
ov52_02124254:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x5F, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124268
ov52_02124268:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x5F, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_0212427C
ov52_0212427C:
	.byte 0x63, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x34, 0x5F, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124290
ov52_02124290:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x5F, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_021242A4
ov52_021242A4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31, 0x5F, 0x30, 0x32, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021242B8
ov52_021242B8:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x34
	.byte 0x5F, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021242CC
ov52_021242CC:
	.byte 0x63, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_021242E0
ov52_021242E0:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_021242F4
ov52_021242F4:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x30, 0x31, 0x2E
	.byte 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124308
ov52_02124308:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x5F, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_0212431C
ov52_0212431C:
	.byte 0x63, 0x68, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124330
ov52_02124330:
	.byte 0x63, 0x68, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x5F, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x5F
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov52_02124344
ov52_02124344:
	.byte 0x4D, 0x65, 0x6D, 0x6F, 0x72, 0x79, 0x20, 0x61, 0x6C, 0x6C, 0x6F, 0x63
	.byte 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x75, 0x72, 0x65, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124368
ov52_02124368:
	.word FUN_ov52_02119f50
	.word FUN_ov52_02121a50
	.word FUN_ov52_0211d800
	.word FUN_ov52_0211d888
	.word FUN_ov52_0211b70c
	.word FUN_ov52_0211d88c
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211d8d8
	.word FUN_ov52_0211dc38
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211dcfc
	.word FUN_ov52_0211dd08
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211dd14
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_021243B0
ov52_021243B0:
	.word FUN_ov52_02119f3c
	.word FUN_ov52_02121a6c
	.word FUN_ov52_0211c868
	.word FUN_ov52_0211c8f0
	.word FUN_ov52_0211b70c
	.word FUN_ov52_0211c8f4
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211c940
	.word FUN_ov52_0211cac0
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211cb74
	.word FUN_ov52_0211cb80
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211cb8c
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_021243F8
ov52_021243F8:
	.word FUN_ov52_02119f14
	.word FUN_ov52_02121a88
	.word FUN_ov52_0211c304
	.word FUN_ov52_0211c3fc
	.word FUN_ov52_0211b70c
	.word FUN_ov52_0211c400
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211c44c
	.word FUN_ov52_0211c6f4
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211c7e8
	.word FUN_ov52_0211c7f4
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211c860
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124440
ov52_02124440:
	.word FUN_ov52_02119f00
	.word FUN_ov52_02121aa4
	.word FUN_ov52_0211c1ac
	.word FUN_ov52_0211c1b8
	.word FUN_ov52_0211b70c
	.word FUN_ov52_0211c1bc
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211c2bc
	.word FUN_ov52_0211c2c8
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211c2cc
	.word FUN_ov52_0211c2d0
	.word FUN_ov52_0211c300
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211b898
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124488
ov52_02124488:
	.word FUN_ov52_0211b6b8
	.word FUN_ov52_0211b6bc
	.word FUN_ov52_0211b6d4
	.word FUN_ov52_0211b708
	.word FUN_ov52_0211b70c
	.word FUN_ov52_0211b710
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211b780
	.word FUN_ov52_0211b784
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211b788
	.word FUN_ov52_0211b830
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211b898
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_021244D0
ov52_021244D0:
	.word FUN_ov52_02119f78
	.word FUN_ov52_021219e8
	.word FUN_ov52_0211e4c8
	.word FUN_ov52_0211e70c
	.word FUN_ov52_0211e7e4
	.word FUN_ov52_0211e798
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211e9f4
	.word FUN_ov52_0211ef84
	.word FUN_ov52_0211f598
	.word FUN_ov52_0211f5e4
	.word FUN_ov52_0211f948
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211b898
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124518
ov52_02124518:
	.word FUN_ov52_02119f28
	.word FUN_ov52_02121a18
	.word FUN_ov52_0211dd1c
	.word FUN_ov52_0211df84
	.word FUN_ov52_0211dd28
	.word FUN_ov52_0211df88
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211dfd4
	.word FUN_ov52_0211e25c
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211e300
	.word FUN_ov52_0211e30c
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211e318
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_02124560
ov52_02124560:
	.word FUN_ov52_02119f64
	.word FUN_ov52_02121a34
	.word FUN_ov52_0211cb94
	.word FUN_ov52_0211cbbc
	.word FUN_ov52_0211cbc0
	.word FUN_ov52_0211cc38
	.word FUN_ov52_0211b714
	.word FUN_ov52_0211cc94
	.word FUN_ov52_0211d380
	.word FUN_ov52_0211c1a0
	.word FUN_ov52_0211d54c
	.word FUN_ov52_0211d59c
	.word FUN_ov52_0211b8a8
	.word FUN_ov52_0211c014
	.word FUN_ov52_0211c0ac
	.word FUN_ov52_0211d6ec
	.word FUN_ov52_0211d6f4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov52_021245AC
ov52_021245AC:
	.word FUN_ov52_0211a0ec
	.word FUN_ov52_0211a17c
	.word FUN_ov52_0211a914
	.word FUN_ov52_0211a980
	.word FUN_ov52_0211a214
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov52_0211a660
	.word FUN_ov52_0211aa18
	.word FUN_ov52_0211a4ac
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
	.word FUN_ov52_0211aa80
	.word FUN_ov52_0211aa1c
	.word FUN_ov52_0211add8
	.global ov52_02124624
ov52_02124624:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x42, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x44, 0x61, 0x74, 0x61, 0x5F, 0x4F, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov52_02124644
ov52_02124644:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x42, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x44, 0x61, 0x74, 0x61, 0x5F, 0x41, 0x52
	.byte 0x45, 0x41, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov52_02124668
ov52_02124668:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x62, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x2E, 0x53, 0x50
	.byte 0x4C, 0x00, 0x00, 0x00
	.global ov52_02124684
ov52_02124684:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x68, 0x00, 0x00, 0x00
	.global ov52_0212469C
ov52_0212469C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x62, 0x69, 0x6E, 0x64, 0x65
	.byte 0x72, 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00
	.global ov52_021246B8
ov52_021246B8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x74, 0x65, 0x61, 0x6D, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov52_021246D0
ov52_021246D0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x74
	.byte 0x65, 0x61, 0x6D, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov52_021246E8
ov52_021246E8:
	.byte 0x42, 0x49, 0x4E, 0x44, 0x45, 0x52, 0x5F, 0x4D
	.byte 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00
	.global ov52_021246FC
ov52_021246FC:
	.byte 0x42, 0x49, 0x4E, 0x44
	.byte 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x59, 0x00, 0x00
	.global ov52_02124710
ov52_02124710:
	.byte 0x42, 0x49, 0x4E, 0x44, 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53
	.byte 0x5F, 0x59, 0x00, 0x00
	.global ov52_02124724
ov52_02124724:
	.byte 0x42, 0x49, 0x4E, 0x44, 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C
	.byte 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00
	.global ov52_02124738
ov52_02124738:
	.byte 0x42, 0x49, 0x4E, 0x44, 0x45, 0x52, 0x5F, 0x4D
	.byte 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00
	.global ov52_0212474C
ov52_0212474C:
	.byte 0x42, 0x49, 0x4E, 0x44
	.byte 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x50, 0x4F, 0x53, 0x5F, 0x58, 0x00, 0x00
	.global ov52_02124760
ov52_02124760:
	.byte 0x42, 0x49, 0x4E, 0x44, 0x45, 0x52, 0x5F, 0x4D, 0x4F, 0x44, 0x45, 0x4C, 0x5F, 0x53, 0x43, 0x41
	.byte 0x4C, 0x45, 0x00, 0x00
	.global ov52_02124774
ov52_02124774:
	.byte 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00
	.global ov52_02124780
ov52_02124780:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69
	.byte 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov52_02124798
ov52_02124798:
	.byte 0x64, 0x65, 0x71, 0x75, 0x65, 0x3A, 0x3A, 0x20
	.byte 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x20, 0x65, 0x72, 0x72, 0x6F, 0x72, 0x00, 0x00, 0x00, 0x00
	.global ov52_021247B0
ov52_021247B0:
	.byte 0x63, 0x64, 0x65, 0x71, 0x75, 0x65, 0x20, 0x6C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x20, 0x65, 0x72
	.byte 0x72, 0x6F, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov52_021247E0
ov52_021247E0:
	.space 0x04
	.global ov52_021247E4
ov52_021247E4:
	.space 0x04
	.global ov52_021247E8
ov52_021247E8:
	.space 0x18



	.include "/macros/function.inc"
	.include "/include/overlay24.inc"

	.text
	arm_func_start FUN_ov24_02119f00
FUN_ov24_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _02119F38
	ldr r0, _02119F44 ; =0x02099F38
	mov r1, r2
	ldr r0, [r0]
	mov r2, #1
	bl  FUN_ov16_02112724
	add r1, r5, r4, lsl #2
	str r0, [r1, #0x6c]
_02119F38:
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F44: .word 0x02099F38
	arm_func_end FUN_ov24_02119f00

	arm_func_start FUN_ov24_02119f48
FUN_ov24_02119f48: ; 0x02119F48
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _02119FD4 ; =0x02099F38
	and r3, r3, #0xff
	ldr r0, [r4]
	mov r6, r1
	mov r5, r2
	bl  FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r3, [sp, #0x24]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_0211401c
	ldr r1, [sp, #0x20]
	ldr r0, [r4]
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_021139bc
	mov r1, r6
	mov r2, r5
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl  FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02119FD4: .word 0x02099F38
	arm_func_end FUN_ov24_02119f48

	arm_func_start FUN_ov24_02119fd8
FUN_ov24_02119fd8: ; 0x02119FD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211A010 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_0211A010: .word 0x02099F38
	arm_func_end FUN_ov24_02119fd8

	arm_func_start FUN_ov24_0211a014
FUN_ov24_0211a014: ; 0x0211A014
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _0211A05C ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	mov r1, #0
	str r1, [r0, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
_0211A05C: .word 0x02099F38
	arm_func_end FUN_ov24_0211a014

	arm_func_start FUN_ov24_0211a060
FUN_ov24_0211a060: ; 0x0211A060
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0211A06C:
	mov r0, r5
	mov r1, r4
	bl FUN_ov24_0211a014
	add r4, r4, #1
	cmp r4, #0x15
	blt _0211A06C
	mov r4, #0
_0211A088:
	mov r0, r5
	mov r1, r4
	bl FUN_ov24_02119fd8
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, #2
	blo _0211A088
	add r0, r5, #0xc
	mov r1, #1
	bl  FUN_ov16_020f338c
	add r0, r5, #0xc
	bl  FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x16]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov24_0211a060

	arm_func_start FUN_ov24_0211a0d4
FUN_ov24_0211a0d4: ; 0x0211A0D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldr r0, [r4, #0x7c]
	cmp r0, #6
	bne _0211A10C
	ldr r1, _0211A11C ; =0x0211D7AC
	add r0, r4, #0x90
	bl  FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_0211A10C:
	ldr r1, _0211A120 ; =0x0211D7B4
	add r0, r4, #0x90
	bl  FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
_0211A11C: .word 0x0211D7AC
_0211A120: .word 0x0211D7B4
	arm_func_end FUN_ov24_0211a0d4

	arm_func_start FUN_ov24_0211a124
FUN_ov24_0211a124: ; 0x0211A124
	stmfd sp!, {r3, lr}
	bl FUN_ov24_0211a144
	bl FUN_02006b80
	bl FUN_02006bb8
	bl FUN_02006bcc
	mov r0, #2
	bl  FUN_ov16_020f3f60
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov24_0211a124

	arm_func_start FUN_ov24_0211a144
FUN_ov24_0211a144: ; 0x0211A144
	stmfd sp!, {r3, lr}
	bl FUN_ov24_0211a060
	ldr r0, _0211A174 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211A178 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0d8
	ldr r0, _0211A17C ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123c4
	ldmfd sp!, {r3, pc}
_0211A174: .word 0x02099EB4
_0211A178: .word 0x02099ED4
_0211A17C: .word 0x02099F38
	arm_func_end FUN_ov24_0211a144

	arm_func_start FUN_ov24_0211a180
FUN_ov24_0211a180: ; 0x0211A180
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x84
	mov r6, r0
	mov r5, #0
	mov r1, r5
	add r0, r6, #0xc
	mov r2, #0xc
	bl MI_CpuFill8
	mov r1, r5
	add r0, r6, #0x18
	mov r2, #0x54
	bl MI_CpuFill8
	mov r4, #8
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x6c
	bl MI_CpuFill8
	ldr r0, _0211A20C ; =0x0211D7BC
	add r1, r6, #0xc
	bl  FUN_ov16_020f3054
	ldr lr, _0211A210 ; =0x0211D508
	add r12, sp, #4
_0211A1D8:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0211A1D8
	mov r0, #0
	str r0, [sp]
	ldr r1, [r6, #0xc]
	ldr r0, _0211A214 ; =0x0211D7DC
	add r2, sp, #4
	add r3, r6, #0x18
	bl  FUN_ov16_020f5450
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A20C: .word 0x0211D7BC
_0211A210: .word 0x0211D508
_0211A214: .word 0x0211D7DC
	arm_func_end FUN_ov24_0211a180

	arm_func_start FUN_ov24_0211a218
FUN_ov24_0211a218: ; 0x0211A218
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc4
	mov r7, r0
	mov r6, #0
	mov r1, r6
	add r0, r7, #0xc
	mov r2, #0xc
	bl MI_CpuFill8
	mov r1, r6
	add r0, r7, #0x18
	mov r2, #0x54
	bl MI_CpuFill8
	mov r1, r6
	add r0, r7, #0x6c
	mov r2, #8
	bl MI_CpuFill8
	add r5, sp, #0x44
	ldr r1, _0211A2F0 ; =0x0211D7FC
	ldr r2, _0211A2F4 ; =0x0211D808
	ldr r3, [r7, #0xc4]
	mov r0, r5
	bl FUN_02023c40
	ldr r0, _0211A2F8 ; =0x0211D820
	add r1, r7, #0xc
	bl  FUN_ov16_020f3054
	ldr r4, _0211A2FC ; =0x0211D4D8
	add lr, sp, #0x14
	ldmia r4!, {r0, r1, r2, r3}
	mov r12, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	str r6, [sp]
	ldr r0, _0211A300 ; =0x0211D840
	ldr r1, [r7, #0xc]
	mov r2, r12
	add r3, r7, #0x18
	bl  FUN_ov16_020f5450
	ldr r0, _0211A304 ; =0x02099F38
	mov r2, r5
	ldr r0, [r0]
	mov r1, #5
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r3, #1
	str r6, [sp, #0x10]
	bl FUN_02058800
	str r0, [r7, #0x2c]
	add sp, sp, #0xc4
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A2F0: .word 0x0211D7FC
_0211A2F4: .word 0x0211D808
_0211A2F8: .word 0x0211D820
_0211A2FC: .word 0x0211D4D8
_0211A300: .word 0x0211D840
_0211A304: .word 0x02099F38
	arm_func_end FUN_ov24_0211a218

	arm_func_start FUN_ov24_0211a308
FUN_ov24_0211a308: ; 0x0211A308
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0xd4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, pc}
	ldr r3, _0211A368 ; =0x0209A250
	ldr r1, _0211A36C ; =0x0211D860
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0211A35C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0xd4
	str r12, [sp, #0xc]
	bl FUN_0202eff0
_0211A35C:
	str r0, [r4, #0xd8]
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0211A368: .word 0x0209A250
_0211A36C: .word 0x0211D860
	arm_func_end FUN_ov24_0211a308

	arm_func_start FUN_ov24_0211a370
FUN_ov24_0211a370: ; 0x0211A370
	ldr r1, [r0, #0xd8]
	cmp r1, #0
	movle r0, #0
	bxle lr
	ldr r1, [r0, #0x80]
	ldr r3, [r0, #0x8c]
	sub r2, r1, #0x14
	cmp r3, #1
	addge r2, r2, #0x14
	ldr r1, [r0, #0xd4]
	cmp r3, #2
	addge r2, r2, #0x14
	mov r0, #0x90
	mla r0, r2, r0, r1
	bx lr
	arm_func_end FUN_ov24_0211a370

	arm_func_start FUN_ov24_0211a3ac
FUN_ov24_0211a3ac: ; 0x0211A3AC
	ldr r1, [r0, #0xd8]
	cmp r1, #0
	movle r0, #0
	bxle lr
	ldr r1, [r0, #0x80]
	ldr r3, [r0, #0x8c]
	sub r2, r1, #0x14
	cmp r3, #1
	addge r2, r2, #0x14
	cmp r3, #2
	addge r2, r2, #0x14
	mov r1, #0x90
	mul r1, r2, r1
	ldr r2, [r0, #0xd4]
	add r0, r1, #0x10
	add r0, r2, r0
	bx lr
	arm_func_end FUN_ov24_0211a3ac

	arm_func_start FUN_ov24_0211a3f0
FUN_ov24_0211a3f0: ; 0x0211A3F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0211A440 ; =0x02099EB4
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	mov r7, r2
	mov r6, r3
	mov r5, #0
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x3a
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r0, r7, lsl #2
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A440: .word 0x02099EB4
	arm_func_end FUN_ov24_0211a3f0

	arm_func_start FUN_ov24_0211a444
FUN_ov24_0211a444: ; 0x0211A444
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r7, #0
	mov r1, r7
	mov r2, #0x16
	mov r10, r0
	bl FUN_ov24_02119f00
	mov r6, r0
	str r7, [sp]
	str r7, [sp, #4]
	mov r9, #0x258
	str r9, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x18]
	mov r0, r10
	mov r1, r6
	mov r2, #1
	bl FUN_ov24_02119f48
	mov r0, #0xc8
	str r0, [sp]
	mov r11, #0xa8
	str r11, [sp, #4]
	mov r8, #0x12c
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x1c]
	mov r0, r10
	mov r1, r6
	mov r2, #2
	bl FUN_ov24_02119f48
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r6
	mov r2, #2
	mov r3, #1
	bl FUN_ov24_0211ac10
	mov r5, #0x30
	str r5, [sp]
	mov r0, #0x10
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x20]
	mov r0, r10
	mov r1, r6
	mov r2, #3
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x38
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x20]
	mov r0, r10
	mov r1, r6
	mov r2, #4
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x60
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x20]
	mov r0, r10
	mov r1, r6
	mov r2, #5
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x88
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x28]
	mov r0, r10
	mov r1, r6
	mov r2, #6
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x18
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x24]
	mov r0, r10
	mov r1, r6
	mov r2, #7
	bl FUN_ov24_02119f48
	mov r4, #8
	str r5, [sp]
	mov r0, #0x48
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x24]
	mov r0, r10
	mov r1, r6
	mov r2, r4
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x78
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x24]
	mov r0, r10
	mov r1, r6
	mov r2, #9
	bl FUN_ov24_02119f48
	str r5, [sp]
	stmib sp, {r5, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x20]
	mov r0, r10
	mov r1, r6
	mov r2, #0xa
	bl FUN_ov24_02119f48
	str r5, [sp]
	mov r0, #0x60
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x20]
	mov r1, r6
	mov r0, r10
	mov r2, #0xb
	bl FUN_ov24_02119f48
	mov r0, r10
	mov r1, #1
	mov r2, #0x32
	bl FUN_ov24_02119f00
	mov r6, r0
	str r7, [sp]
	stmib sp, {r7, r9}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x44]
	mov r2, #1
	mov r0, r10
	mov r1, r6
	bl FUN_ov24_02119f48
	str r7, [sp]
	stmib sp, {r7, r9}
	ldr r1, [r10, #0x8c]
	mov r0, r10
	str r1, [sp, #0xc]
	ldr r3, [r10, #0x64]
	mov r1, r6
	mov r2, #2
	bl FUN_ov24_02119f48
	str r7, [sp]
	stmib sp, {r4, r8}
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x68]
	mov r0, r10
	mov r1, r6
	mov r2, #3
	bl FUN_ov24_02119f48
	mov r0, #0xe0
	stmia sp, {r0, r4, r8}
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r3, [r10, #0x68]
	mov r2, #4
	mov r0, r10
	mov r1, r6
	bl FUN_ov24_02119f48
	mov r5, #0x20
	stmia sp, {r5, r7, r8}
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r3, [r10, #0x64]
	mov r0, r10
	mov r1, r6
	mov r2, #5
	bl FUN_ov24_02119f48
	ldr r9, _0211A870 ; =0x02099F38
	str r7, [sp]
	ldr r0, [r9]
	mov r2, #5
	mov r1, r6
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xc8
	stmia sp, {r0, r11}
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x1c]
	mov r2, #6
	mov r0, r10
	mov r1, r6
	bl FUN_ov24_02119f48
	mov r0, #0x90
	stmia sp, {r0, r11}
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x48]
	mov r2, #9
	mov r0, r10
	mov r1, r6
	bl FUN_ov24_02119f48
	stmia sp, {r4, r5}
	mov r0, #0x64
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x60]
	mov r2, #7
	mov r0, r10
	mov r1, r6
	bl FUN_ov24_02119f48
	stmia sp, {r4, r5}
	mov r0, #0xfa
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x58]
	mov r0, r10
	mov r1, r6
	mov r2, r4
	bl FUN_ov24_02119f48
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r4
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0xd
	add r5, r10, r0, lsl #2
	mov r11, r8
	ldr r4, _0211A874 ; =0x66666667
	b _0211A848
_0211A7BC:
	smull r0, r1, r4, r7
	mov r3, r7, lsr #0x1f
	add r1, r3, r1, asr #1
	mov r0, #5
	smull r1, r2, r0, r1
	sub r1, r7, r1
	mov r0, #0x30
	mul r0, r1, r0
	add r8, r0, #8
	smull r0, r1, r4, r7
	add r1, r3, r1, asr #1
	mov r0, r1, lsl #5
	add r9, r0, #0x20
	str r8, [sp]
	stmib sp, {r9, r11}
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x18]
	mov r0, r10
	mov r1, r6
	add r2, r7, #0xa
	bl FUN_ov24_02119f48
	add r0, r8, #0x18
	str r0, [sp]
	add r0, r9, #8
	str r0, [sp, #4]
	mov r0, #0xc8
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r10, #0x5c]
	mov r0, r10
	mov r1, r6
	add r2, r7, #0x1e
	bl FUN_ov24_02119f48
	add r7, r7, #1
_0211A848:
	cmp r7, #0x14
	blt _0211A7BC
	ldr r0, _0211A870 ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, #2
	mov r3, #0
	bl  FUN_ov16_0211329c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A870: .word 0x02099F38
_0211A874: .word 0x66666667
	arm_func_end FUN_ov24_0211a444

	arm_func_start FUN_ov24_0211a878
FUN_ov24_0211a878: ; 0x0211A878
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r1, r4
	mov r2, #0x16
	mov r10, r0
	bl FUN_ov24_02119f00
	mov r8, r0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #0x258
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, [r10, #0x2c]
	mov r0, r10
	mov r1, r8
	mov r2, #0xc
	bl FUN_ov24_02119f48
	mov r0, #0x80
	str r0, [sp]
	mov r7, #0xb0
	str r7, [sp, #4]
	mov r0, #0x1f4
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, [r10, #0x30]
	mov r0, r10
	mov r1, r8
	mov r2, #0xd
	bl FUN_ov24_02119f48
	ldr r0, [r10, #0xcc]
	mov r6, #0x12c
	cmp r0, #0xa
	mov r0, #0xa8
	stmia sp, {r0, r7}
	mov r9, #1
	movle r9, r4
	mov r4, #0x13
	str r6, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	ldr r3, [r10, #0x38]
	mov r0, r10
	mov r1, r8
	mov r2, r4
	bl FUN_ov24_02119f48
	mov r0, #0xe0
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r11, #0x12
	ldr r3, [r10, #0x38]
	mov r0, r10
	mov r1, r8
	mov r2, r11
	bl FUN_ov24_02119f48
	stmia sp, {r5, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r10, #0x40]
	mov r0, r10
	mov r1, r8
	mov r2, #0x16
	bl FUN_ov24_02119f48
	mov r2, r4
	str r5, [sp]
	mov r4, #1
	mov r0, r10
	mov r1, r8
	mov r3, #0xc
	str r4, [sp, #4]
	bl FUN_ov24_0211ac10
	mov r2, r11
	mov r11, #2
	str r11, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r8
	mov r3, #0xb
	bl FUN_ov24_0211ac10
	str r5, [sp]
	mov r2, #0x16
	mov r0, r10
	mov r1, r8
	mov r3, #0xf
	str r4, [sp, #4]
	bl FUN_ov24_0211ac10
	cmp r9, #0
	beq _0211AA6C
	mov r0, #0x98
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r9, #0x15
	ldr r3, [r10, #0x3c]
	mov r0, r10
	mov r1, r8
	mov r2, r9
	bl FUN_ov24_02119f48
	mov r0, #0xf0
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r6, #0x14
	ldr r3, [r10, #0x3c]
	mov r0, r10
	mov r1, r8
	mov r2, r6
	bl FUN_ov24_02119f48
	str r5, [sp]
	str r4, [sp, #4]
	mov r2, r9
	mov r0, r10
	mov r1, r8
	mov r3, #0xe
	bl FUN_ov24_0211ac10
	str r11, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, r6
	mov r0, r10
	mov r1, r8
	mov r3, #0xd
	bl FUN_ov24_0211ac10
_0211AA6C:
	ldr r3, [r10, #0xc4]
	ldr r1, [r10, #0xc8]
	ldr r2, [r10, #0xcc]
	ldr r0, _0211AB88 ; =0x66666667
	sub r1, r3, r1
	add r7, r1, #1
	mov r9, r7, lsr #0x1f
	smull r1, r4, r0, r7
	smull r1, r3, r0, r7
	add r3, r9, r3, asr #2
	mov r1, r2, lsr #0x1f
	smull r5, r6, r0, r2
	smull r11, r5, r0, r2
	add r4, r9, r4, asr #2
	mov r0, #0xa
	add r6, r1, r6, asr #2
	smull r4, r9, r0, r4
	sub r4, r7, r4
	smull r6, r7, r0, r6
	cmp r3, #0
	add r5, r1, r5, asr #2
	sub r6, r2, r6
	mov r9, #0xb0
	ble _0211AAFC
	mov r0, #0xb8
	str r0, [sp]
	mov r0, r9
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [r10, #0x34]
	mov r0, r10
	mov r1, r8
	mov r2, #0xf
	bl FUN_ov24_02119f48
_0211AAFC:
	mov r0, #0xc0
	stmia sp, {r0, r9}
	mov r7, #0x12c
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	ldr r3, [r10, #0x34]
	mov r0, r10
	mov r1, r8
	mov r2, #0xe
	bl FUN_ov24_02119f48
	cmp r5, #0
	ble _0211AB50
	mov r0, #0xd0
	stmia sp, {r0, r9}
	str r7, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [r10, #0x34]
	mov r0, r10
	mov r1, r8
	mov r2, #0x11
	bl FUN_ov24_02119f48
_0211AB50:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0xb0
	str r0, [sp, #4]
	mov r0, #0x12c
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [r10, #0x34]
	mov r0, r10
	mov r1, r8
	mov r2, #0x10
	bl FUN_ov24_02119f48
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AB88: .word 0x66666667
	arm_func_end FUN_ov24_0211a878

	arm_func_start FUN_ov24_0211ab8c
FUN_ov24_0211ab8c: ; 0x0211AB8C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0xc
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _0211ABF0 ; =0x02099F38
	b _0211ABE0
_0211ABB8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211ABDC
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211ABDC:
	add r5, r5, #1
_0211ABE0:
	cmp r5, #0x15
	blt _0211ABB8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211ABF0: .word 0x02099F38
	arm_func_end FUN_ov24_0211ab8c

	arm_func_start FUN_ov24_0211abf4
FUN_ov24_0211abf4: ; 0x0211ABF4
	ldrb r0, [r0, #0x74]
	add r0, r0, #0xee
	and r0, r0, #0xff
	cmp r0, #5
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov24_0211abf4

	arm_func_start FUN_ov24_0211ac10
FUN_ov24_0211ac10: ; 0x0211AC10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	str r2, [sp]
	mov r7, r3
	mov r6, #0
	mov r2, r7, lsl #0x10
	ldr r4, _0211ACD4 ; =0x02099EB4
	str r6, [sp, #4]
	mov r5, #1
	mov r3, r1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r2, lsr #0x10
	bl  FUN_ov16_0210fc74
	mov r1, r7, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strb r6, [r4, #0x10]
	strb r6, [r4, #0xf]
	strh r6, [r4, #0xc]
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3a
	strb r6, [r4, #0x11]
	bl  FUN_ov16_0210e6fc
	ldr r2, [sp, #0x20]
	mov r1, r6
	mov r3, r6
	add r0, r4, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3e
	bl  FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r6
	mov r3, r6
	ldr r2, [sp, #0x24]
	bl  FUN_ov16_0210e720
	mov r0, r4
	bl  FUN_ov16_0210e69c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211ACD4: .word 0x02099EB4
	arm_func_end FUN_ov24_0211ac10

	arm_func_start FUN_ov24_0211acd8
FUN_ov24_0211acd8: ; 0x0211ACD8
	ldr r2, _0211ACE8 ; =0x0211D740
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211ACE8: .word 0x0211D740
	arm_func_end FUN_ov24_0211acd8

	arm_func_start FUN_ov24_0211acec
FUN_ov24_0211acec: ; 0x0211ACEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	bl  FUN_ov16_020f47fc
	mov r6, #2
	mov r0, r6
	bl  FUN_ov16_020f3f60
	mov r5, #1
	mov r7, r4
	mov r0, r5
	mov r1, r7
	mov r2, r5
	bl FUN_020044e0
	ldr r2, _0211AE5C ; =0x04000008
	mov r0, r8
	ldrh r1, [r2]
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	strh r1, [r2, #4]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211AE60 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e980
	ldr r0, _0211AE64 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e0a0
	ldr r0, _0211AE68 ; =0x02099F38
	ldr r0, [r0]
	bl  FUN_ov16_021123b4
	mov r0, #0x4000000
	ldr r1, [r0]
	mov r0, #6
	str r0, [r8, #0x7c]
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	str r0, [r8, #8]
	mov r0, #8
	str r0, [r8, #0x80]
	sub r0, r0, #9
	str r0, [r8, #0xdc]
	str r5, [r8, #0xc4]
	strb r6, [r8, #0x74]
	str r6, [r8, #0x78]
	strb r7, [r8, #0x75]
	str r7, [r8, #0x88]
	str r7, [r8, #0x84]
	str r7, [r8, #0x8c]
	str r7, [r8, #0xe0]
	strb r7, [r8, #0xe4]
	mov r0, #0xc
	b _0211ADE8
_0211ADCC:
	mla r1, r7, r0, r8
	str r4, [r1, #0xc]
	str r4, [r1, #0x10]
	strb r4, [r1, #0x14]
	strb r4, [r1, #0x15]
	strb r4, [r1, #0x16]
	add r7, r7, #1
_0211ADE8:
	cmp r7, #1
	blt _0211ADCC
	mov r1, #0
	b _0211AE04
_0211ADF8:
	add r0, r8, r1, lsl #2
	str r4, [r0, #0x18]
	add r1, r1, #1
_0211AE04:
	cmp r1, #0x15
	blt _0211ADF8
	mov r5, #0x3000
	sub r2, r4, #1
	mov r0, r5
	str r4, [r8, #0xd4]
	mov r1, #1
	strb r4, [r8, #0xe8]
	strb r4, [r8, #0xe9]
	str r2, [r8, #0xec]
	str r4, [r8, #0xf0]
	str r4, [r8, #0xd8]
	bl FUN_020866d8
	str r0, [r8, #0xd4]
	cmp r0, #0
	beq _0211AE50
	mov r1, r4
	mov r2, r5
	bl MI_CpuFill8
_0211AE50:
	mov r0, r8
	bl FUN_ov24_0211a308
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AE5C: .word 0x04000008
_0211AE60: .word 0x02099EB4
_0211AE64: .word 0x02099ED4
_0211AE68: .word 0x02099F38
	arm_func_end FUN_ov24_0211acec

	arm_func_start FUN_ov24_0211ae6c
FUN_ov24_0211ae6c: ; 0x0211AE6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r1, _0211BD3C ; =0x0209A110
	ldr r10, _0211BD40 ; =0x02099ED4
	mov r5, r0
	ldr r0, [r10]
	ldr r1, [r1]
	mov r8, #8
	ldr r6, _0211BD44 ; =0x02099F38
	mov r9, #2
	mov r7, #1
	mov r4, #0
	bl  FUN_ov16_0210e10c
	mov r0, r5
	bl FUN_ov24_0211ab8c
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10]
	mov r11, #4
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r5, #0x74]
	cmp r0, #0x20
	addls pc, pc, r0, lsl #2
	b _0211BFE8
_0211AEDC: ; jump table
	b _0211AF60 ; case 0
	b _0211BFE8 ; case 1
	b _0211AF6C ; case 2
	b _0211AF6C ; case 3
	b _0211AFA4 ; case 4
	b _0211B114 ; case 5
	b _0211BD2C ; case 6
	b _0211BD2C ; case 7
	b _0211BD2C ; case 8
	b _0211B288 ; case 9
	b _0211B3C8 ; case 10
	b _0211B500 ; case 11
	b _0211B640 ; case 12
	b _0211B78C ; case 13
	b _0211B8F0 ; case 14
	b _0211BA40 ; case 15
	b _0211BBA8 ; case 16
	b _0211BC9C ; case 17
	b _0211BFE8 ; case 18
	b _0211BFE8 ; case 19
	b _0211BFE8 ; case 20
	b _0211BFE8 ; case 21
	b _0211BFE8 ; case 22
	b _0211BDF8 ; case 23
	b _0211BE10 ; case 24
	b _0211BE48 ; case 25
	b _0211BE70 ; case 26
	b _0211BE88 ; case 27
	b _0211BEE8 ; case 28
	b _0211BF00 ; case 29
	b _0211BF14 ; case 30
	b _0211BF74 ; case 31
	b _0211BF9C ; case 32
_0211AF60:
	add sp, sp, #8
	strb r9, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AF6C:
	mov r0, r5
	mov r4, #5
	bl FUN_ov24_0211a180
	ldrb r0, [r5, #0x74]
	cmp r0, #2
	addeq sp, sp, #8
	streqb r11, [r5, #0x74]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #0x78]
	add sp, sp, #8
	cmp r0, #5
	streqb r11, [r5, #0x74]
	strneb r4, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AFA4:
	mov r0, r5
	mov r6, #6
	bl FUN_ov24_0211a444
	ldr r0, [r5, #0x78]
	ldr r10, [r5, #0x6c]
	cmp r0, #5
	mov r0, r5
	mov r2, #3
	mov r1, r10
	mov r3, r9
	bne _0211B024
	stmia sp, {r4, r9}
	bl FUN_ov24_0211ac10
	mov r2, #3
	str r2, [sp]
	mov r4, #5
	mov r3, r2
	mov r0, r5
	mov r1, r10
	str r4, [sp, #4]
	mov r2, r11
	bl FUN_ov24_0211ac10
	stmia sp, {r6, r8}
	mov r3, r11
	mov r0, r5
	mov r1, r10
	mov r2, r4
	bl FUN_ov24_0211ac10
	stmia sp, {r7, r9}
	mov r2, r6
	mov r3, r4
	b _0211B074
_0211B024:
	stmia sp, {r7, r9}
	bl FUN_ov24_0211ac10
	mov r0, #3
	str r0, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r0, r5
	mov r3, #3
	mov r1, r10
	mov r2, r11
	bl FUN_ov24_0211ac10
	mov r3, r11
	stmia sp, {r6, r8}
	mov r0, r5
	mov r1, r10
	mov r2, #5
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r9}
	mov r2, r6
	mov r3, #5
_0211B074:
	mov r0, r5
	mov r1, r10
	bl FUN_ov24_0211ac10
	mov r7, #0
	ldr r4, _0211BD44 ; =0x02099F38
	str r7, [sp]
	mov r6, #2
	ldr r0, [r4]
	mov r1, r10
	mov r3, r6
	mov r2, #0xa
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r3, r6
	mov r2, #0xb
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, #7
	mov r3, r6
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r2, #8
	mov r3, r6
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r10
	mov r3, r6
	mov r2, #9
	bl  FUN_ov16_02113ec0
	mov r0, #6
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B114:
	mov r0, r5
	bl FUN_ov24_0211a444
	ldr r10, [r5, #0x6c]
	mov r11, #3
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #4
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #6
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xa
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xb
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r9}
	mov r0, r5
	mov r1, r10
	mov r2, #7
	mov r3, r8
	bl FUN_ov24_0211ac10
	str r11, [sp]
	mov r0, #5
	mov r11, #9
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r8
	mov r3, r11
	bl FUN_ov24_0211ac10
	mov r0, #6
	stmia sp, {r0, r8}
	mov r3, #0xa
	mov r0, r5
	mov r1, r10
	mov r2, r11
	bl FUN_ov24_0211ac10
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #7
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113ec0
	ldr r2, [r5, #0x80]
	mov r0, r5
	sub r1, r2, #8
	add r3, r1, r1, lsl #1
	mov r1, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r4
	add r3, r3, #1
	bl FUN_ov24_0211a3f0
	mov r0, #7
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B288:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r3, r9
	mov r2, #3
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	mov r8, #6
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl FUN_ov24_0211ac10
	mov r11, #0xa
	mov r3, r8
	str r11, [sp]
	mov r8, #0xb
	mov r0, r5
	mov r1, r10
	mov r2, r11
	str r8, [sp, #4]
	bl FUN_ov24_0211ac10
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r8
	mov r3, #7
	bl FUN_ov24_0211ac10
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	mov r0, #0x13
	strb r0, [r5, #0x74]
	ldrb r0, [r5, #0x75]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	strb r4, [r5, #0x75]
	bl FUN_ov24_0211d02c
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B3C8:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xa
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xb
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl FUN_ov24_0211ac10
	stmia sp, {r7, r9}
	mov r0, r5
	mov r1, r10
	mov r2, #3
	mov r3, r9
	bl FUN_ov24_0211ac10
	mov r0, #3
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r11
	mov r3, #3
	bl FUN_ov24_0211ac10
	mov r0, #6
	stmia sp, {r0, r8}
	mov r0, r5
	mov r1, r10
	mov r2, #5
	mov r3, r11
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r9}
	mov r0, r5
	mov r1, r10
	mov r2, #6
	mov r3, #5
	bl FUN_ov24_0211ac10
	str r7, [sp]
	ldr r0, [r6]
	mov r2, #3
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r2, #5
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #6
	mov r3, r9
	bl  FUN_ov16_02113ec0
	mov r0, #0x12
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B500:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	str r4, [sp]
	mov r11, #3
	ldr r0, [r6]
	mov r1, r10
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #4
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #6
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl FUN_ov24_0211ac10
	mov r4, #7
	stmia sp, {r7, r9}
	mov r0, r5
	mov r1, r10
	mov r2, r4
	mov r3, r8
	bl FUN_ov24_0211ac10
	str r11, [sp]
	mov r0, #5
	mov r11, #9
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r8
	mov r3, r11
	bl FUN_ov24_0211ac10
	mov r0, #6
	stmia sp, {r0, r8}
	mov r0, r5
	mov r1, r10
	mov r2, r11
	mov r3, #0xa
	bl FUN_ov24_0211ac10
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r4
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r8
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r11
	mov r3, r9
	bl  FUN_ov16_02113ec0
	mov r0, #0x14
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B640:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #7
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #9
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r9}
	mov r0, r5
	mov r1, r10
	mov r2, #3
	mov r3, r9
	bl FUN_ov24_0211ac10
	str r11, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r11
	mov r3, #3
	bl FUN_ov24_0211ac10
	mov r0, #6
	stmia sp, {r0, r8}
	mov r0, r5
	mov r1, r10
	mov r2, #5
	mov r3, r11
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r9}
	mov r0, r5
	mov r1, r10
	mov r2, #6
	mov r3, #5
	bl FUN_ov24_0211ac10
	str r7, [sp]
	ldr r0, [r6]
	mov r2, #3
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r10
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #5
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #6
	mov r3, r9
	bl  FUN_ov16_02113ec0
	mov r0, #0x12
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B78C:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x6c]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r0, [r6]
	mov r1, r10
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_0211329c
	ldr r10, [r5, #0x70]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl  FUN_ov16_0211329c
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, #6
	mov r3, r7
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r7}
	mov r0, r5
	mov r1, r10
	mov r2, #9
	mov r3, #0x10
	bl FUN_ov24_0211ac10
	stmia sp, {r4, r7}
	mov r7, #3
	mov r0, r5
	mov r1, r10
	mov r2, r7
	mov r3, #0x12
	bl FUN_ov24_0211ac10
	str r9, [sp]
	str r7, [sp, #4]
	mov r0, r5
	mov r1, r10
	mov r2, r11
	mov r3, #0x13
	bl FUN_ov24_0211ac10
	str r7, [sp]
	str r7, [sp, #4]
	mov r7, #5
	mov r0, r5
	mov r1, r10
	mov r2, r7
	mov r3, #0x11
	bl FUN_ov24_0211ac10
	str r4, [sp]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r9
	mov r1, r10
	bl  FUN_ov16_02113ec0
	mov r8, r4
	mov r7, #1
	b _0211B8AC
_0211B88C:
	str r8, [sp]
	mov r0, r5
	mov r1, r10
	add r2, r4, #0xa
	add r3, r4, #0x14
	str r7, [sp, #4]
	bl FUN_ov24_0211ac10
	add r4, r4, #1
_0211B8AC:
	cmp r4, #0x14
	blt _0211B88C
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x8c]
	bl FUN_ov24_0211d1f0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #7
	mov r3, #8
	bl  FUN_ov16_02113b78
	mov r0, #0x16
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B8F0:
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r10, [r5, #0x70]
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	ldr r0, [r6]
	mov r1, r10
	mov r2, r9
	mov r3, r4
	bl  FUN_ov16_0211329c
	ldr r10, [r5, #0x6c]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r9
	mov r3, r7
	bl  FUN_ov16_0211329c
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #7
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #9
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xa
	mov r3, r9
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, #0xb
	mov r3, r9
	bl  FUN_ov16_02113ec0
	stmia sp, {r4, r7}
	mov r3, r7
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl FUN_ov24_0211ac10
	mov r6, #3
	stmia sp, {r4, r9}
	mov r0, r5
	mov r1, r10
	mov r2, r6
	mov r3, r9
	bl FUN_ov24_0211ac10
	str r6, [sp]
	mov r3, r6
	mov r6, #5
	mov r0, r5
	mov r1, r10
	mov r2, r11
	str r6, [sp, #4]
	bl FUN_ov24_0211ac10
	mov r0, #7
	str r0, [sp]
	mov r0, r5
	mov r1, r10
	mov r2, r6
	mov r3, r11
	str r8, [sp, #4]
	bl FUN_ov24_0211ac10
	mov r0, r5
	mov r1, r10
	mov r3, r6
	mov r2, #6
	stmia sp, {r4, r9}
	bl FUN_ov24_0211ac10
	mov r0, #0x12
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BA40:
	ldr r1, [r5, #0x80]
	mov r0, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov24_0211a3f0
	ldr r10, [r5, #0x70]
	ldr r2, [r5, #0x48]
	ldr r0, [r6]
	and r3, r2, #0xff
	mov r1, r10
	mov r2, #6
	bl  FUN_ov16_021137dc
	ldr r0, _0211BD48 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211BAB8
	mov r1, r4
	mov r3, r4
	add r0, r8, #0x3a
	mov r2, #3
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r3, r4
	add r0, r8, #0x3e
	mov r2, r11
	bl  FUN_ov16_0210e720
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211BAB8:
	mov r0, r5
	bl FUN_ov24_0211a370
	mov r4, #0
	mov r2, r0
	ldr r0, _0211BD4C ; =0x0209AC44
	mov r1, r4
	mov r3, r4
	bl FUN_0202c3e0
	ldr r0, [r5, #0x80]
	ldr r2, [r5, #0x8c]
	sub r3, r0, #0x14
	mov r1, #0x64
	mla r1, r2, r1, r3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	sub r0, r0, #0x14
	ldr r8, _0211BD50 ; =0x66666667
	str r1, [r5, #0xdc]
	smull r2, r1, r8, r0
	smull r2, r9, r8, r0
	mov r3, r0, lsr #0x1f
	add r9, r3, r9, asr #1
	mov r2, r9, lsl #0x10
	mov r2, r2, asr #0xb
	add r2, r2, #0x20
	mov r2, r2, lsl #0x10
	add r1, r3, r1, asr #1
	mov r2, r2, asr #0x10
	mov r3, #5
	str r2, [sp]
	smull r1, r2, r3, r1
	sub r1, r0, r1
	mov r0, #0x30
	smulbb r0, r1, r0
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	mov r8, #8
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	bl  FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, #2
	bl  FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	mov r3, r4
	bl  FUN_ov16_0211401c
	mov r0, #0x14
	str r0, [r5, #0xe0]
	mov r0, #0x17
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BBA8:
	ldr r10, [r5, #0x70]
	ldr r2, [r5, #0x1c]
	ldr r0, [r6]
	and r3, r2, #0xff
	mov r1, r10
	mov r2, #6
	mov r11, r4
	bl  FUN_ov16_021137dc
	ldr r0, _0211BD48 ; =0x02099EB4
	mov r1, r7
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	movs r8, r0
	beq _0211BC10
	mov r1, r4
	mov r2, r4
	mov r3, r4
	add r0, r8, #0x3a
	bl  FUN_ov16_0210e720
	mov r1, r4
	mov r2, r7
	mov r3, r4
	add r0, r8, #0x3e
	bl  FUN_ov16_0210e720
	mov r0, r8
	bl  FUN_ov16_0210e69c
_0211BC10:
	ldr r0, [r5, #0xdc]
	ldr r4, _0211BD54 ; =0x51EB851F
	mov r3, r0, lsr #0x1f
	smull r1, r2, r4, r0
	ldr r1, [r5, #0x8c]
	add r2, r3, r2, asr #5
	cmp r2, r1
	bne _0211BC58
	smull r2, r1, r4, r0
	add r1, r3, r1, asr #5
	mov r3, #0x64
	smull r1, r2, r3, r1
	sub r1, r0, r1
	mov r2, #0
	mov r0, r5
	mov r3, r2
	add r1, r1, #0x14
	bl FUN_ov24_0211a3f0
_0211BC58:
	str r11, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r3, r9
	mov r2, #8
	bl  FUN_ov16_02113ec0
	sub r3, r9, #3
	ldr r0, _0211BD4C ; =0x0209AC44
	mov r1, r11
	mov r2, r11
	str r3, [r5, #0xdc]
	bl FUN_0202c44c
	mov r0, #0x16
	add sp, sp, #8
	str r11, [r5, #0xe0]
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BC9C:
	ldr r0, [r5, #0xdc]
	ldr r7, _0211BD54 ; =0x51EB851F
	mov r3, r0, lsr #0x1f
	smull r1, r2, r7, r0
	ldr r1, [r5, #0x8c]
	add r2, r3, r2, asr #5
	cmp r2, r1
	ldr r10, [r5, #0x70]
	bne _0211BCE8
	smull r2, r1, r7, r0
	add r1, r3, r1, asr #5
	mov r3, #0x64
	smull r1, r2, r3, r1
	sub r1, r0, r1
	mov r0, r5
	mov r2, r4
	mov r3, r4
	add r1, r1, #0x14
	bl FUN_ov24_0211a3f0
_0211BCE8:
	mov r4, #0
	str r4, [sp]
	ldr r0, [r6]
	mov r1, r10
	mov r3, r9
	mov r2, #8
	bl  FUN_ov16_02113ec0
	sub r3, r9, #3
	ldr r0, _0211BD4C ; =0x0209AC44
	mov r1, r4
	mov r2, r4
	str r3, [r5, #0xdc]
	bl FUN_0202c44c
	mov r0, #0xf
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BD2C:
	mov r7, #0x12
	mov r8, #9
	mov r9, r4
	b _0211BD94
_0211BD3C: .word 0x0209A110
_0211BD40: .word 0x02099ED4
_0211BD44: .word 0x02099F38
_0211BD48: .word 0x02099EB4
_0211BD4C: .word 0x0209AC44
_0211BD50: .word 0x66666667
_0211BD54: .word 0x51EB851F
_0211BD58:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _0211BD90
	ldr r0, [r6]
	bl FUN_02059004
	cmp r0, #0
	bne _0211BD90
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x18]
	ldr r0, [r6]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211BD90:
	add r4, r4, #1
_0211BD94:
	cmp r4, #0x15
	blt _0211BD58
	ldrb r0, [r5, #0x75]
	cmp r0, #0
	bne _0211BDB8
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211BDB8:
	ldrb r0, [r5, #0x74]
	cmp r0, #6
	bne _0211BDDC
	ldrb r0, [r5, #0x75]
	add sp, sp, #8
	cmp r0, #0
	strneb r8, [r5, #0x74]
	streqb r7, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDDC:
	cmp r0, #7
	moveq r0, #0x14
	streqb r0, [r5, #0x74]
	movne r0, #0x15
	add sp, sp, #8
	strneb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BDF8:
	ldr r0, [r5, #0xe0]
	add sp, sp, #8
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r5, #0xe0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE10:
	ldr r0, _0211BD4C ; =0x0209AC44
	mov r1, r7
	bl FUN_0202d00c
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl FUN_ov24_0211a060
	mov r0, r5
	bl FUN_ov24_0211a0d4
	mov r0, #0x19
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE48:
	bl  FUN_ov16_020f2aa4
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r5, #0x90
	bl  FUN_ov16_020f2a74
	mov r0, #0x1a
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE70:
	mov r0, r5
	bl FUN_ov24_0211a124
	add sp, sp, #8
	strb r7, [r5, #0x75]
	strb r4, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BE88:
	mov r0, r5
	bl FUN_ov24_0211a060
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	bl  FUN_ov16_020f47fc
	mov r0, r9
	bl  FUN_ov16_020f3f60
	mov r0, r7
	mov r1, r4
	mov r2, r0
	bl FUN_020044e0
	ldr r2, _0211BFF0 ; =0x04000008
	mov r0, #0x1c
	ldrh r1, [r2]
	add sp, sp, #8
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	strh r1, [r2, #4]
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEE8:
	mov r0, r5
	bl FUN_ov24_0211a218
	mov r0, #0x1d
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF00:
	mov r0, r5
	bl FUN_ov24_0211a878
	add sp, sp, #8
	strb r8, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF14:
	mov r0, r5
	bl FUN_ov24_0211a060
	ldr r0, _0211BD48 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210eb78
	bl  FUN_ov16_020f47fc
	mov r0, r9
	bl  FUN_ov16_020f3f60
	mov r0, r7
	mov r1, r4
	mov r2, r0
	bl FUN_020044e0
	ldr r2, _0211BFF0 ; =0x04000008
	mov r0, #3
	ldrh r1, [r2]
	add sp, sp, #8
	bic r1, r1, #3
	orr r1, r1, #1
	strh r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #3
	strh r1, [r2, #4]
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF74:
	mov r0, r4
	mov r1, r8
	bl  FUN_ov16_020f1560
	mov r1, r8
	mov r0, r7
	bl  FUN_ov16_020f1560
	mov r0, #0x20
	add sp, sp, #8
	strb r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BF9C:
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldreq r0, _0211BFF4 ; =0x020A0640
	ldreqb r0, [r0, #0xaf]
	cmpeq r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x22
	bl FUN_02041eac
	ldr r0, [r5, #4]
	mov r1, r7
	mov r2, #0xa
	bl FUN_02041eac
	strb r4, [r5, #0x74]
_0211BFE8:
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BFF0: .word 0x04000008
_0211BFF4: .word 0x020A0640
	arm_func_end FUN_ov24_0211ae6c

	arm_func_start FUN_ov24_0211bff8
FUN_ov24_0211bff8: ; 0x0211BFF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov24_0211a144
	mov r0, #1
	bl  FUN_ov16_020f3f60
	ldr r0, _0211C034 ; =0x0209A0AC
	bl  FUN_ov16_020efa04
	ldr r1, [r4, #0xd4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C038 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0xd4]
	ldmfd sp!, {r4, pc}
_0211C034: .word 0x0209A0AC
_0211C038: .word 0x0209A250
	arm_func_end FUN_ov24_0211bff8

	arm_func_start FUN_ov24_0211c03c
FUN_ov24_0211c03c: ; 0x0211C03C
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0x74]
	cmp r0, #0x19
	ldmnefd sp!, {r3, pc}
	bl  FUN_ov16_020f2ab4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov24_0211c03c

	arm_func_start FUN_ov24_0211c054
FUN_ov24_0211c054: ; 0x0211C054
	stmfd sp!, {r4, lr}
	mov r4, r0
	tst r1, #0x330
	beq _0211C0C4
	ldrb r2, [r4, #0x74]
	cmp r2, #0x15
	ldmnefd sp!, {r4, pc}
	tst r1, #0x10
	mov r2, #0xb
	beq _0211C088
	mov r1, r2
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, pc}
_0211C088:
	tst r1, #0x20
	beq _0211C09C
	mov r1, #0xc
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, pc}
_0211C09C:
	tst r1, #0x100
	beq _0211C0B0
	mov r1, #0xd
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, pc}
_0211C0B0:
	tst r1, #0x200
	ldmeqfd sp!, {r4, pc}
	mov r1, #0xe
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, pc}
_0211C0C4:
	tst r1, #2
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0211C100 ; =0x02099EB4
	mov r1, #0xf
	ldr r0, [r0]
	bl  FUN_ov16_0210efac
	mov r2, #0x1e
	mov r0, #0
	mov r1, #8
	strb r2, [r4, #0x74]
	bl  FUN_ov16_020f1560
	ldr r0, _0211C104 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211C100: .word 0x02099EB4
_0211C104: .word 0x0209AC44
	arm_func_end FUN_ov24_0211c054

	arm_func_start FUN_ov24_0211c108
FUN_ov24_0211c108: ; 0x0211C108
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldrb r0, [r4, #0x74]
	mov r8, r1
	mov r7, r2
	cmp r0, #0x19
	mov r6, #0
	mov r5, #8
	bne _0211C13C
	tst r8, #1
	beq _0211C13C
	ldr r0, _0211C590 ; =0x0209A8A0
	bl FUN_0202e958
_0211C13C:
	mov r0, r4
	bl FUN_ov24_0211abf4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _0211C594 ; =0x02099EB4
	ldr r0, [r9]
	bl  FUN_ov16_0210f468
	cmp r0, #0
	beq _0211C17C
	ldr r0, [r9]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, r8
	strh r6, [r0, #0x38]
_0211C17C:
	tst r8, #4
	beq _0211C194
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_0211C194:
	ldr r0, _0211C598 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r4, #0x74]
	cmp r0, #0x15
	bne _0211C1C8
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov24_0211c054
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C1C8:
	tst r8, #1
	beq _0211C1DC
	mov r0, r4
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C1DC:
	tst r8, #2
	beq _0211C1F0
	mov r0, r4
	bl FUN_ov24_0211ce74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C1F0:
	tst r8, #0x300
	beq _0211C2F4
	cmp r0, #0x16
	beq _0211C208
	cmp r0, #0x17
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C208:
	ldr r1, [r4, #0x8c]
	tst r8, #0x200
	subne r0, r1, #1
	strne r0, [r4, #0x8c]
	bne _0211C228
	tst r8, #0x100
	addne r0, r1, #1
	strne r0, [r4, #0x8c]
_0211C228:
	ldr r0, [r4, #0x8c]
	cmp r0, #0
	movlt r0, #2
	strlt r0, [r4, #0x8c]
	blt _0211C244
	cmp r0, #2
	strgt r6, [r4, #0x8c]
_0211C244:
	ldr r0, [r4, #0x8c]
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #0x30
	mul r1, r6, r0
	mov r0, r6, lsl #5
	add r0, r0, #0x20
	add r1, r1, #8
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r1, [r4, #0x70]
	str r6, [r4, #0x84]
	str r6, [r4, #0x88]
	str r3, [sp]
	ldr r0, _0211C59C ; =0x02099F38
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r2, #7
	bl  FUN_ov16_02113b78
	ldr r0, [r4, #0x88]
	ldr r1, [r4, #0x84]
	add r0, r0, r0, lsl #2
	add r0, r1, r0
	add r2, r0, #0x14
	ldr r1, [r4, #0x8c]
	mov r0, r4
	str r2, [r4, #0x80]
	bl FUN_ov24_0211d1f0
	ldr r0, _0211C594 ; =0x02099EB4
	mov r1, #0x12
	tst r8, #0x100
	movne r1, #0x13
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	mov r0, r4
	mov r1, #1
	bl FUN_ov24_0211d1b8
	ldr r0, _0211C5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C2F4:
	tst r8, #0xf0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0x12
	bne _0211C360
	tst r8, #0x40
	ldrne r0, [r4, #0x78]
	subne r0, r0, #1
	strne r0, [r4, #0x78]
	bne _0211C328
	tst r8, #0x80
	ldrne r0, [r4, #0x78]
	addne r0, r0, #1
	strne r0, [r4, #0x78]
_0211C328:
	ldr r0, [r4, #0x78]
	cmp r0, #2
	movlt r0, #5
	strlt r0, [r4, #0x78]
	ldr r0, [r4, #0x78]
	cmp r0, #5
	movgt r0, #2
	strgt r0, [r4, #0x78]
	mov r0, r4
	bl FUN_ov24_0211d02c
	ldr r0, _0211C5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C360:
	cmp r0, #0x13
	bne _0211C3C4
	tst r8, #0x40
	ldrne r0, [r4, #0x7c]
	subne r0, r0, #1
	strne r0, [r4, #0x7c]
	bne _0211C38C
	tst r8, #0x80
	ldrne r0, [r4, #0x7c]
	addne r0, r0, #1
	strne r0, [r4, #0x7c]
_0211C38C:
	ldr r0, [r4, #0x7c]
	cmp r0, #6
	movlt r0, #7
	strlt r0, [r4, #0x7c]
	ldr r0, [r4, #0x7c]
	cmp r0, #7
	movgt r0, #6
	strgt r0, [r4, #0x7c]
	mov r0, r4
	bl FUN_ov24_0211d02c
	ldr r0, _0211C5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C3C4:
	cmp r0, #0x14
	bne _0211C424
	tst r8, #0x40
	ldrne r0, [r4, #0x80]
	subne r0, r0, #1
	strne r0, [r4, #0x80]
	bne _0211C3F0
	tst r8, #0x80
	ldrne r0, [r4, #0x80]
	addne r0, r0, #1
	strne r0, [r4, #0x80]
_0211C3F0:
	ldr r0, [r4, #0x80]
	cmp r0, #8
	movlt r0, #0xa
	strlt r0, [r4, #0x80]
	ldr r0, [r4, #0x80]
	cmp r0, #0xa
	mov r0, r4
	strgt r5, [r4, #0x80]
	bl FUN_ov24_0211d02c
	ldr r0, _0211C5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C424:
	cmp r0, #0x16
	beq _0211C434
	cmp r0, #0x17
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C434:
	ldr r5, [r4, #0x88]
	tst r8, #0x40
	subne r0, r5, #1
	ldr r7, [r4, #0x84]
	strne r0, [r4, #0x88]
	bne _0211C478
	tst r8, #0x80
	addne r0, r5, #1
	strne r0, [r4, #0x88]
	bne _0211C478
	tst r8, #0x10
	addne r0, r7, #1
	strne r0, [r4, #0x84]
	bne _0211C478
	tst r8, #0x20
	subne r0, r7, #1
	strne r0, [r4, #0x84]
_0211C478:
	ldr r1, [r4, #0x8c]
	mov r0, #0x14
	cmp r1, #0
	ldr r2, _0211C5A4 ; =0x66666667
	sub r3, r0, #1
	cmpne r1, #1
	smull r1, r8, r2, r3
	ldr r2, [r4, #0x88]
	mov r1, r3, lsr #0x1f
	add r8, r1, r8, asr #1
	cmp r2, #0
	strlt r8, [r4, #0x88]
	ldr r1, [r4, #0x88]
	cmp r1, r8
	strgt r6, [r4, #0x88]
	ldr r1, [r4, #0x88]
	cmp r8, r1
	mov r1, #4
	bne _0211C4E4
	sub r8, r0, #1
	ldr r3, _0211C5A4 ; =0x66666667
	mov r0, r8, lsr #0x1f
	smull r2, r1, r3, r8
	add r1, r0, r1, asr #1
	mov r2, #5
	smull r0, r1, r2, r1
	sub r1, r8, r0
_0211C4E4:
	ldr r0, [r4, #0x84]
	cmp r0, r1
	ble _0211C500
	ldr r0, [r4, #0x88]
	str r6, [r4, #0x84]
	cmp r5, r0
	strne r1, [r4, #0x84]
_0211C500:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	strlt r1, [r4, #0x84]
	ldr r1, [r4, #0x84]
	mov r0, #0x30
	mul r2, r1, r0
	ldr r0, [r4, #0x88]
	add r1, r2, #8
	mov r0, r0, lsl #5
	add r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r1, [r4, #0x70]
	ldr r0, _0211C59C ; =0x02099F38
	str r3, [sp]
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r2, #7
	bl  FUN_ov16_02113b78
	ldr r0, [r4, #0x88]
	ldr r2, [r4, #0x84]
	add r1, r0, r0, lsl #2
	add r1, r2, r1
	add r1, r1, #0x14
	cmp r5, r0
	str r1, [r4, #0x80]
	cmpeq r7, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_ov24_0211d1b8
	ldr r0, _0211C5A0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C590: .word 0x0209A8A0
_0211C594: .word 0x02099EB4
_0211C598: .word 0x02099ED4
_0211C59C: .word 0x02099F38
_0211C5A0: .word 0x0209AC44
_0211C5A4: .word 0x66666667
	arm_func_end FUN_ov24_0211c108

	arm_func_start FUN_ov24_0211c5a8
FUN_ov24_0211c5a8: ; 0x0211C5A8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211C65C ; =0x02099EB4
	mov r6, r0
	ldr r0, [r4]
	mov r2, #1
	bl  FUN_ov16_0210f20c
	mov r5, r0
	ldr r0, [r4]
	bl  FUN_ov16_0210f484
	mov r1, r0
	cmp r5, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	sub r0, r1, #0xb
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_0211C5E8: ; jump table
	b _0211C5FC ; case 0
	b _0211C608 ; case 1
	b _0211C614 ; case 2
	b _0211C620 ; case 3
	b _0211C62C ; case 4
_0211C5FC:
	mov r0, r6
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, r5, r6, pc}
_0211C608:
	mov r0, r6
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, r5, r6, pc}
_0211C614:
	mov r0, r6
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, r5, r6, pc}
_0211C620:
	mov r0, r6
	bl FUN_ov24_0211cf58
	ldmfd sp!, {r4, r5, r6, pc}
_0211C62C:
	ldr r0, [r4]
	mov r1, #0xf
	bl  FUN_ov16_0210efac
	mov r2, #0x1e
	mov r0, #0
	mov r1, #8
	strb r2, [r6, #0x74]
	bl  FUN_ov16_020f1560
	ldr r0, _0211C660 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, r5, r6, pc}
_0211C65C: .word 0x02099EB4
_0211C660: .word 0x0209AC44
	arm_func_end FUN_ov24_0211c5a8

	arm_func_start FUN_ov24_0211c664
FUN_ov24_0211c664: ; 0x0211C664
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	mov r8, r1
	mov r4, #0
	mov r10, #1
	mov r11, #8
	bl FUN_ov24_0211abf4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _0211CC94 ; =0x02099ED4
	ldr r0, [r0]
	bl  FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x74]
	cmp r0, #0x15
	bne _0211C6B8
	mov r0, r9
	mov r1, r8
	bl FUN_ov24_0211c5a8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C6B8:
	ldr r6, _0211CC98 ; =0x02099EB4
	mov r1, r8
	ldr r0, [r6]
	mov r2, r10
	bl  FUN_ov16_0210f20c
	mov r5, r0
	ldr r0, [r6]
	bl  FUN_ov16_0210f484
	ldrb r1, [r9, #0x74]
	mov r6, r0
	ldr r7, [r9, #0x78]
	cmp r1, #0x13
	ldrb r0, [r9, #0x74]
	ldreq r7, [r9, #0x7c]
	cmp r0, #0x14
	ldreq r7, [r9, #0x80]
	cmp r5, #2
	bne _0211C97C
	ldrb r0, [r9, #0x74]
	cmp r0, #0x12
	bne _0211C76C
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C718: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	b _0211C730 ; case 1
	b _0211C73C ; case 2
	b _0211C748 ; case 3
	b _0211C754 ; case 4
	b _0211C760 ; case 5
_0211C730:
	mov r0, r9
	bl FUN_ov24_0211ce74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C73C:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C748:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C754:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C760:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C76C:
	cmp r0, #0x13
	bne _0211C7B4
	cmp r6, #1
	beq _0211C790
	cmp r6, #6
	beq _0211C79C
	cmp r6, #7
	beq _0211C7A8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C790:
	mov r0, r9
	bl FUN_ov24_0211ce74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C79C:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7A8:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7B4:
	cmp r0, #0x14
	bne _0211C824
	cmp r6, #0xa
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7C8: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	b _0211C7F4 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 7
	b _0211C800 ; case 8
	b _0211C80C ; case 9
	b _0211C818 ; case 10
_0211C7F4:
	mov r0, r9
	bl FUN_ov24_0211ce74
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C800:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C80C:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C818:
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C824:
	cmp r0, #0x16
	beq _0211C834
	cmp r0, #0x17
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C834:
	cmp r6, #1
	bgt _0211C844
	beq _0211C868
	b _0211C948
_0211C844:
	cmp r6, #0x13
	bgt _0211C948
	cmp r6, #0x10
	blt _0211C948
	beq _0211C874
	cmp r6, #0x12
	cmpne r6, #0x13
	beq _0211C880
	b _0211C948
_0211C868:
	mov r0, r9
	bl FUN_ov24_0211ce74
	b _0211C948
_0211C874:
	mov r0, r9
	bl FUN_ov24_0211cca8
	b _0211C948
_0211C880:
	ldr r1, [r9, #0x8c]
	cmp r6, #0x12
	subeq r0, r1, #1
	streq r0, [r9, #0x8c]
	beq _0211C8A0
	cmp r6, #0x13
	addeq r0, r1, #1
	streq r0, [r9, #0x8c]
_0211C8A0:
	ldr r0, [r9, #0x8c]
	cmp r0, #0
	movlt r0, #2
	strlt r0, [r9, #0x8c]
	blt _0211C8BC
	cmp r0, #2
	strgt r4, [r9, #0x8c]
_0211C8BC:
	ldr r0, [r9, #0x8c]
	cmp r1, r0
	beq _0211C948
	mov r0, #0x30
	mul r1, r4, r0
	mov r0, r4, lsl #5
	add r0, r0, #0x20
	add r1, r1, #8
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r1, [r9, #0x70]
	str r4, [r9, #0x84]
	str r4, [r9, #0x88]
	str r3, [sp]
	ldr r0, _0211CC9C ; =0x02099F38
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r2, #7
	bl  FUN_ov16_02113b78
	ldr r0, [r9, #0x88]
	ldr r1, [r9, #0x84]
	add r0, r0, r0, lsl #2
	add r0, r1, r0
	add r2, r0, #0x14
	ldr r1, [r9, #0x8c]
	mov r0, r9
	str r2, [r9, #0x80]
	bl FUN_ov24_0211d1f0
	mov r0, r9
	mov r1, #1
	bl FUN_ov24_0211d1b8
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_0211C948:
	cmp r6, #0x14
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0x28
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x80]
	cmp r6, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0xe4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov24_0211cca8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C97C:
	cmp r5, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r9, #0x74]
	cmp r0, #0x12
	bne _0211C9F8
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _0211C9D4
_0211C99C: ; jump table
	b _0211C9D4 ; case 0
	b _0211C9D4 ; case 1
	b _0211C9B4 ; case 2
	b _0211C9BC ; case 3
	b _0211C9C4 ; case 4
	b _0211C9CC ; case 5
_0211C9B4:
	mov r0, #2
	b _0211C9D0
_0211C9BC:
	mov r0, #3
	b _0211C9D0
_0211C9C4:
	mov r0, #4
	b _0211C9D0
_0211C9CC:
	mov r0, #5
_0211C9D0:
	str r0, [r9, #0x78]
_0211C9D4:
	ldr r0, [r9, #0x78]
	cmp r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov24_0211d02c
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9F8:
	cmp r0, #0x13
	bne _0211CA4C
	cmp r6, #1
	beq _0211CA28
	cmp r6, #6
	beq _0211CA20
	cmp r6, #7
	moveq r0, #7
	streq r0, [r9, #0x7c]
	b _0211CA28
_0211CA20:
	mov r0, #6
	str r0, [r9, #0x7c]
_0211CA28:
	ldr r0, [r9, #0x7c]
	cmp r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov24_0211d02c
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CA4C:
	cmp r0, #0x14
	bne _0211CAC8
	cmp r6, #0xa
	addls pc, pc, r6, lsl #2
	b _0211CAA4
_0211CA60: ; jump table
	b _0211CAA4 ; case 0
	b _0211CAA4 ; case 1
	b _0211CAA4 ; case 2
	b _0211CAA4 ; case 3
	b _0211CAA4 ; case 4
	b _0211CAA4 ; case 5
	b _0211CAA4 ; case 6
	b _0211CAA4 ; case 7
	b _0211CA8C ; case 8
	b _0211CA94 ; case 9
	b _0211CA9C ; case 10
_0211CA8C:
	str r11, [r9, #0x80]
	b _0211CAA4
_0211CA94:
	mov r0, #9
	b _0211CAA0
_0211CA9C:
	mov r0, #0xa
_0211CAA0:
	str r0, [r9, #0x80]
_0211CAA4:
	ldr r0, [r9, #0x80]
	cmp r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl FUN_ov24_0211d02c
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CAC8:
	cmp r0, #0x16
	beq _0211CAD8
	cmp r0, #0x17
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CAD8:
	cmp r6, #1
	cmp r6, #0x14
	blt _0211CBA4
	cmp r6, #0x28
	bge _0211CBA4
	ldr r0, [r9, #0x8c]
	sub r7, r6, #0x14
	cmp r0, #0
	cmpne r0, #1
	ldr r1, [r9, #0x70]
	cmp r7, #0x14
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, _0211CCA4 ; =0x66666667
	mov r0, r7, lsr #0x1f
	smull r3, r5, r2, r7
	add r5, r0, r5, asr #1
	mov r8, #5
	smull r3, r5, r8, r5
	sub r5, r7, r3
	smull r7, r8, r2, r7
	add r8, r0, r8, asr #1
	mov r3, #0x30
	mul r3, r5, r3
	mov r0, r8, lsl #5
	add r0, r0, #0x20
	ldr r7, [r9, #0x80]
	add r2, r3, #8
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	str r6, [r9, #0x80]
	str r8, [r9, #0x88]
	str r5, [r9, #0x84]
	ldr r0, _0211CC9C ; =0x02099F38
	str r3, [sp]
	mov r2, r2, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r2, #7
	bl  FUN_ov16_02113b78
	ldr r0, [r9, #0x80]
	cmp r7, r0
	streqb r10, [r9, #0xe4]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	mov r1, #1
	bl FUN_ov24_0211d1b8
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	strb r4, [r9, #0xe4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CBA4:
	cmp r6, #0x11
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r8, #2]
	ldrh r1, [r8]
	cmp r0, #6
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0x1a
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #0x20
	ldr r2, [r9, #0x8c]
	blo _0211CBDC
	cmp r1, #0x60
	strlo r4, [r9, #0x8c]
	blo _0211CC04
_0211CBDC:
	cmp r1, #0x60
	blo _0211CBF0
	cmp r1, #0xa0
	strlo r10, [r9, #0x8c]
	blo _0211CC04
_0211CBF0:
	cmp r1, #0xa0
	blo _0211CC04
	cmp r1, #0xe0
	movlo r0, #2
	strlo r0, [r9, #0x8c]
_0211CC04:
	ldr r0, [r9, #0x8c]
	cmp r2, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x30
	mul r1, r4, r0
	mov r0, r4, lsl #5
	add r0, r0, #0x20
	add r1, r1, #8
	mov r0, r0, lsl #0x10
	mov r2, r1, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r1, [r9, #0x70]
	str r4, [r9, #0x84]
	str r4, [r9, #0x88]
	str r3, [sp]
	ldr r0, _0211CC9C ; =0x02099F38
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r2, #7
	bl  FUN_ov16_02113b78
	ldr r0, [r9, #0x88]
	ldr r1, [r9, #0x84]
	add r0, r0, r0, lsl #2
	add r0, r1, r0
	add r2, r0, #0x14
	ldr r1, [r9, #0x8c]
	mov r0, r9
	str r2, [r9, #0x80]
	bl FUN_ov24_0211d1f0
	mov r0, r9
	mov r1, #1
	bl FUN_ov24_0211d1b8
	ldr r0, _0211CCA0 ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CC94: .word 0x02099ED4
_0211CC98: .word 0x02099EB4
_0211CC9C: .word 0x02099F38
_0211CCA0: .word 0x0209AC44
_0211CCA4: .word 0x66666667
	arm_func_end FUN_ov24_0211c664

	arm_func_start FUN_ov24_0211cca8
FUN_ov24_0211cca8: ; 0x0211CCA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x74]
	ldr r0, _0211CE6C ; =0x02099EB4
	cmp r1, #0x12
	bne _0211CD78
	ldr r1, [r4, #0x78]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldr r0, [r4, #0x78]
	cmp r0, #2
	moveq r1, #6
	moveq r0, #9
	streq r1, [r4, #0x7c]
	streqb r0, [r4, #0x74]
	beq _0211CE50
	cmp r0, #3
	moveq r1, #8
	moveq r0, #0xb
	streq r1, [r4, #0x80]
	streqb r0, [r4, #0x74]
	beq _0211CE50
	cmp r0, #4
	bne _0211CD3C
	mov r5, #0
	mov r3, #0x14
	mov r2, #0xd
	mov r0, r4
	mov r1, #1
	str r5, [r4, #0x84]
	str r5, [r4, #0x88]
	str r3, [r4, #0x80]
	strb r2, [r4, #0x74]
	bl FUN_ov24_0211d1b8
	b _0211CE50
_0211CD3C:
	cmp r0, #5
	bne _0211CE50
	mov r5, #0x1b
	mov r0, #0
	mov r1, #8
	strb r5, [r4, #0x74]
	bl  FUN_ov16_020f1560
	mov r1, #9
	rsb r2, r5, #0x148
	add r0, r1, #0x12c
_0211CD64:
	str r2, [r4, #0xc4]
	str r2, [r4, #0xc8]
	str r1, [r4, #0xcc]
	str r0, [r4, #0xd0]
	b _0211CE50
_0211CD78:
	cmp r1, #0x13
	bne _0211CD9C
	ldr r1, [r4, #0x7c]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	mov r0, #0x18
	b _0211CE4C
_0211CD9C:
	cmp r1, #0x14
	bne _0211CE18
	ldr r1, [r4, #0x80]
	ldr r0, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	mov r2, #0x1b
	mov r0, #0
	mov r1, #8
	strb r2, [r4, #0x74]
	bl  FUN_ov16_020f1560
	mov r2, #1
	mov r1, #0x28
	ldr r0, [r4, #0x80]
	str r2, [r4, #0xc4]
	str r2, [r4, #0xc8]
	str r1, [r4, #0xcc]
	str r1, [r4, #0xd0]
	cmp r0, #9
	bne _0211CE00
	mov r2, #0x65
	mov r1, #0x1e
	mov r0, #0x82
	b _0211CD64
_0211CE00:
	cmp r0, #0xa
	bne _0211CE50
	mov r2, #0xc9
	mov r1, #0x1e
	mov r0, #0xe6
	b _0211CD64
_0211CE18:
	cmp r1, #0x16
	bne _0211CE34
	ldr r0, [r0]
	mov r1, #0x10
	bl  FUN_ov16_0210efac
	mov r0, #0xf
	b _0211CE4C
_0211CE34:
	cmp r1, #0x17
	bne _0211CE50
	ldr r0, [r0]
	mov r1, #0x10
	bl  FUN_ov16_0210efac
	mov r0, #0x11
_0211CE4C:
	strb r0, [r4, #0x74]
_0211CE50:
	ldrb r0, [r4, #0x74]
	cmp r0, #0x17
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0211CE70 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CE6C: .word 0x02099EB4
_0211CE70: .word 0x0209AC44
	arm_func_end FUN_ov24_0211cca8

	arm_func_start FUN_ov24_0211ce74
FUN_ov24_0211ce74: ; 0x0211CE74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x74]
	mov r5, #1
	ldr r0, _0211CF50 ; =0x02099EB4
	cmp r1, #0x12
	bne _0211CEA8
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r0, #0x1f
	str r5, [r4, #0x78]
	b _0211CF3C
_0211CEA8:
	cmp r1, #0x13
	bne _0211CEC8
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r0, #0xa
	str r5, [r4, #0x7c]
	b _0211CF3C
_0211CEC8:
	cmp r1, #0x14
	bne _0211CEE8
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r0, #0xc
	str r5, [r4, #0x80]
	b _0211CF3C
_0211CEE8:
	cmp r1, #0x16
	bne _0211CF18
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r2, #0xe
	mov r0, r4
	mov r1, #0
	str r5, [r4, #0x80]
	strb r2, [r4, #0x74]
	bl FUN_ov24_0211d1b8
	b _0211CF40
_0211CF18:
	cmp r1, #0x17
	bne _0211CF40
	ldr r1, [r4, #0xe0]
	cmp r1, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r0, [r0]
	mov r1, r5
	bl  FUN_ov16_0210efac
	mov r0, #0x10
_0211CF3C:
	strb r0, [r4, #0x74]
_0211CF40:
	ldr r0, _0211CF54 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_0211CF50: .word 0x02099EB4
_0211CF54: .word 0x0209AC44
	arm_func_end FUN_ov24_0211ce74

	arm_func_start FUN_ov24_0211cf58
FUN_ov24_0211cf58: ; 0x0211CF58
	stmfd sp!, {r4, lr}
	ldr r2, [r0, #0xcc]
	mov r4, r1
	cmp r2, #0xa
	bgt _0211CF78
	cmp r4, #0xd
	cmpne r4, #0xe
	ldmeqfd sp!, {r4, pc}
_0211CF78:
	ldr r1, [r0, #0xc4]
	cmp r4, #0xb
	addeq r2, r1, #1
	streq r2, [r0, #0xc4]
	beq _0211CFB8
	cmp r4, #0xc
	subeq r2, r1, #1
	streq r2, [r0, #0xc4]
	beq _0211CFB8
	cmp r4, #0xd
	addeq r2, r1, #0xa
	streq r2, [r0, #0xc4]
	beq _0211CFB8
	cmp r4, #0xe
	subeq r2, r1, #0xa
	streq r2, [r0, #0xc4]
_0211CFB8:
	ldr r3, [r0, #0xc4]
	ldr r2, [r0, #0xc8]
	cmp r3, r2
	ldrlt r2, [r0, #0xd0]
	strlt r2, [r0, #0xc4]
	ldr r3, [r0, #0xc4]
	ldr r2, [r0, #0xd0]
	cmp r3, r2
	ldrgt r2, [r0, #0xc8]
	strgt r2, [r0, #0xc4]
	ldr r2, [r0, #0xc4]
	cmp r1, r2
	ldmeqfd sp!, {r4, pc}
	mov r1, #0x1b
	strb r1, [r0, #0x74]
	mov r0, #0
	mov r1, #8
	bl  FUN_ov16_020f1560
	ldr r0, _0211D024 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210efac
	ldr r0, _0211D028 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_0211D024: .word 0x02099EB4
_0211D028: .word 0x0209AC44
	arm_func_end FUN_ov24_0211cf58

	arm_func_start FUN_ov24_0211d02c
FUN_ov24_0211d02c: ; 0x0211D02C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x74]
	cmp r1, #0x12
	bne _0211D0E4
	mov r5, #0
	mov r2, r5
	mov r3, r5
	mov r1, #2
	bl FUN_ov24_0211a3f0
	mov r1, #3
	mov r0, r4
	mov r2, r5
	mov r3, r1
	bl FUN_ov24_0211a3f0
	mov r0, r4
	mov r2, r5
	mov r1, #4
	mov r3, #6
	bl FUN_ov24_0211a3f0
	mov r0, r4
	mov r1, #5
	mov r2, r5
	mov r3, r5
	bl FUN_ov24_0211a3f0
	ldr r1, [r4, #0x78]
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #5
	bne _0211D0C0
	mov r1, r1, lsl #0x10
	mov r0, r4
	mov r2, r5
	mov r1, r1, lsr #0x10
	mov r3, #1
	bl FUN_ov24_0211a3f0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D0C0:
	sub r0, r1, #2
	add r3, r0, r0, lsl #1
	mov r1, r1, lsl #0x10
	mov r0, r4
	mov r2, r5
	mov r1, r1, lsr #0x10
	add r3, r3, #1
	bl FUN_ov24_0211a3f0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D0E4:
	cmp r1, #0x13
	bne _0211D144
	mov r5, #0
	mov r2, r5
	mov r1, #6
	mov r3, #9
	bl FUN_ov24_0211a3f0
	mov r0, r4
	mov r2, r5
	mov r1, #7
	mov r3, #0xc
	bl FUN_ov24_0211a3f0
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r1, #6
	add r3, r0, r0, lsl #1
	mov r1, r1, lsl #0x10
	mov r0, r4
	mov r2, r5
	mov r1, r1, lsr #0x10
	add r3, r3, #0xa
	bl FUN_ov24_0211a3f0
	ldmfd sp!, {r3, r4, r5, pc}
_0211D144:
	cmp r1, #0x14
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, r5
	mov r3, r5
	mov r1, #8
	bl FUN_ov24_0211a3f0
	mov r0, r4
	mov r2, r5
	mov r1, #9
	mov r3, #3
	bl FUN_ov24_0211a3f0
	mov r0, r4
	mov r2, r5
	mov r1, #0xa
	mov r3, #6
	bl FUN_ov24_0211a3f0
	ldr r1, [r4, #0x80]
	cmp r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r1, #8
	mov r1, r1, lsl #0x10
	add r3, r0, r0, lsl #1
	mov r0, r4
	mov r2, r5
	mov r1, r1, lsr #0x10
	add r3, r3, #1
	bl FUN_ov24_0211a3f0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov24_0211d02c

	arm_func_start FUN_ov24_0211d1b8
FUN_ov24_0211d1b8: ; 0x0211D1B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x80]
	strb r1, [r4, #0xe8]
	sub r1, r2, #0x13
	str r1, [r4, #0xec]
	bl FUN_ov24_0211a3ac
	str r0, [r4, #0xf0]
	ldr r0, [r4, #4]
	add r1, r4, #0xe8
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov24_0211d1b8

	arm_func_start FUN_ov24_0211d1f0
FUN_ov24_0211d1f0: ; 0x0211D1F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	movs r4, r1
	mov r10, r0
	addmi sp, sp, #0x14
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r4, #2
	addgt sp, sp, #0x14
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, [r10, #0x70]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0x258
	str r1, [sp, #8]
	ldr r1, [r10, #0x8c]
	mov r5, #2
	str r1, [sp, #0xc]
	ldr r3, [r10, #0x64]
	mov r1, r6
	mov r2, r5
	bl FUN_ov24_02119f48
	mov r0, #0
	ldr r1, _0211D4B0 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r1]
	mov r1, r6
	mov r3, r5
	mov r2, #8
	bl  FUN_ov16_02113ec0
	cmp r4, #0
	mov r3, #0xd
	beq _0211D28C
	cmp r4, #1
	beq _0211D288
	cmp r4, #2
	moveq r3, #0xf
	b _0211D28C
_0211D288:
	mov r3, #0xe
_0211D28C:
	ldr r2, [r10, #0xdc]
	ldr r0, _0211D4B4 ; =0x51EB851F
	mov r1, r2, lsr #0x1f
	smull r2, r11, r0, r2
	add r0, r10, r3, lsl #2
	add r11, r1, r11, asr #5
	mov r7, #0
	str r0, [sp, #0x10]
	mov r5, #8
	ldr r4, _0211D4B0 ; =0x02099F38
	b _0211D4A0
_0211D2B8:
	ldr r3, [sp, #0x10]
	ldr r0, [r4]
	ldr r3, [r3, #0x18]
	mov r1, r6
	add r2, r7, #0xa
	and r3, r3, #0xff
	add r8, r7, #0x14
	bl  FUN_ov16_021137dc
	cmp r7, #0x14
	mov r3, #2
	bge _0211D448
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #0xa
	bl  FUN_ov16_02113ec0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #0x1e
	mov r3, #2
	bl  FUN_ov16_02113ec0
	ldr r0, _0211D4B8 ; =0x02099EB4
	mov r1, r8, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0, #0x10]
	ldr r0, [r10, #0x8c]
	mov r9, #0
	cmp r0, r11
	bne _0211D42C
	ldr r1, [r10, #0xdc]
	cmp r1, #0
	blt _0211D42C
	ldr r2, _0211D4B4 ; =0x51EB851F
	smull r3, r0, r2, r1
	mov r2, r1, lsr #0x1f
	add r0, r2, r0, asr #5
	mov r2, #0x64
	smull r0, r3, r2, r0
	sub r0, r1, r0
	add r0, r0, #0x14
	cmp r0, r8
	bne _0211D430
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	sub r1, r0, #0x14
	ldr r0, _0211D4BC ; =0x66666667
	mov r9, #1
	smull r3, r2, r0, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #1
	mov r3, #5
	smull r2, r12, r3, r2
	ldr r3, _0211D4BC ; =0x66666667
	sub r2, r1, r2
	smull r1, r12, r3, r1
	add r12, r0, r12, asr #1
	mov r0, #0x30
	smulbb r0, r2, r0
	add r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r1, r12, lsl #0x10
	mov r3, r0, asr #0x10
	mov r0, r1, asr #0xb
	add r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_02113b78
	mov r0, r9
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0
	bl  FUN_ov16_0211401c
	b _0211D430
_0211D42C:
	mov r9, #0
_0211D430:
	mov r1, r8
	mov r3, r9
	mov r0, r10
	mov r2, #0
	bl FUN_ov24_0211a3f0
	b _0211D49C
_0211D448:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #0xa
	bl  FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #0x1e
	mov r3, #2
	bl  FUN_ov16_02113ec0
	mov r0, r8, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, _0211D4B8 ; =0x02099EB4
	ldr r0, [r0]
	bl  FUN_ov16_0210e7d0
	cmp r0, #0
	movne r1, #1
	strneb r1, [r0, #0x10]
_0211D49C:
	add r7, r7, #1
_0211D4A0:
	cmp r7, #0x14
	blt _0211D2B8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211D4B0: .word 0x02099F38
_0211D4B4: .word 0x51EB851F
_0211D4B8: .word 0x02099EB4
_0211D4BC: .word 0x66666667
	arm_func_end FUN_ov24_0211d1f0

	arm_func_start FUN_ov24_0211d4c0
FUN_ov24_0211d4c0: ; 0x0211D4C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov24_0211d4c0

	arm_func_start FUN_ov24_0211d4d4
FUN_ov24_0211d4d4: ; 0x0211D4D4
	bx lr
	arm_func_end FUN_ov24_0211d4d4
_0211D4D8:
	.byte 0x48, 0xD6, 0x11, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x58, 0xD6, 0x11, 0x02, 0x09, 0x00, 0x00, 0x00, 0xF8, 0xD5, 0x11, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x68, 0xD6, 0x11, 0x02, 0x07, 0x00, 0x00, 0x00, 0x38, 0xD6, 0x11, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB8, 0xD6, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0xD6, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00, 0x78, 0xD6, 0x11, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x18, 0xD6, 0x11, 0x02, 0x03, 0x00, 0x00, 0x00, 0x28, 0xD6, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x28, 0xD7, 0x11, 0x02, 0x0B, 0x00, 0x00, 0x00, 0xD8, 0xD6, 0x11, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0xE8, 0xD6, 0x11, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xF8, 0xD6, 0x11, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0x08, 0xD7, 0x11, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x88, 0xD6, 0x11, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x98, 0xD6, 0x11, 0x02, 0x11, 0x00, 0x00, 0x00, 0xA8, 0xD6, 0x11, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x18, 0xD7, 0x11, 0x02, 0x13, 0x00, 0x00, 0x00, 0xC8, 0xD6, 0x11, 0x02, 0x14, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov24_0211d588
FUN_ov24_0211d588: ; 0x0211D588
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _0211D5CC ; =0x0211D5E0
	str r0, [r4, #0xc]
	ldr r0, _0211D5D0 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0x10]
	ldr r0, _0211D5D4 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D5CC: .word 0x0211D5E0
_0211D5D0: .word 0x00009CCD
_0211D5D4: .word 0x0000EA3C
	arm_func_end FUN_ov24_0211d588

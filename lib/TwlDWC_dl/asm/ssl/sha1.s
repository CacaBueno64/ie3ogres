
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8

	.text
	arm_static_func_start R
R: ; 0x020DAD98
	add r2, r0, #0xd
	add r12, r0, #2
	and r3, r2, #0xf
	eor r2, r0, #8
	and r12, r12, #0xf
	ldr r3, [r1, r3, lsl #2]
	ldr r2, [r1, r2, lsl #2]
	ldr r12, [r1, r12, lsl #2]
	eor r2, r3, r2
	ldr r3, [r1, r0, lsl #2]
	eor r2, r12, r2
	eor r3, r3, r2
	mov r2, r3, lsr #0x1f
	orr r2, r2, r3, lsl #1
	str r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
	arm_func_end R

	arm_static_func_start char_from_long
char_from_long: ; 0x020DADDC
	stmfd sp!, {r3, lr}
	movs r2, r2, lsr #2
	mov lr, #0
	ldmeqfd sp!, {r3, pc}
_020DADEC:
	ldr r12, [r1], #4
	add lr, lr, #1
	mov r3, r12, lsr #0x18
	strb r3, [r0]
	mov r3, r12, lsr #0x10
	strb r3, [r0, #1]
	mov r3, r12, lsr #8
	strb r3, [r0, #2]
	strb r12, [r0, #3]
	cmp lr, r2
	add r0, r0, #4
	blo _020DADEC
	ldmfd sp!, {r3, pc}
	arm_func_end char_from_long

	arm_static_func_start long_from_char
long_from_char: ; 0x020DAE20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r2, #0
	ldmlsfd sp!, {r3, r4, r5, pc}
_020DAE30:
	add r4, r1, r5
	ldrb r3, [r4, #1]
	ldrb r12, [r1, r5]
	ldrb lr, [r4, #2]
	mov r3, r3, lsl #0x10
	orr r3, r3, r12, lsl #24
	ldrb r12, [r4, #3]
	orr r3, r3, lr, lsl #8
	add r5, r5, #4
	orr r3, r12, r3
	cmp r5, r2
	str r3, [r0], #4
	blo _020DAE30
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end long_from_char

	arm_static_func_start CPSi_sha1_block
CPSi_sha1_block: ; 0x020DAE68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	str r0, [sp]
	ldr r3, [sp]
	add r7, sp, #0x10
	mov r0, r7
	mov r2, #0x40
	ldmia r3, {r5, r6, r10}
	ldr r8, [r3, #0xc]
	ldr r9, [r3, #0x10]
	bl long_from_char
	mov r0, #0
	ldr r2, _020DB4CC ; =0x5A827999
	mov r1, r0
_020DAEA0:
	eor r3, r10, r8
	mov r4, r5, lsr #0x1b
	and r3, r6, r3
	orr r4, r4, r5, lsl #5
	eor r3, r8, r3
	mov r11, r6, lsr #2
	orr r11, r11, r6, lsl #30
	add r6, r7, r0, lsl #2
	add r3, r4, r3
	ldr r12, [r7, r0, lsl #2]
	ldr r4, [r6, #4]
	add r3, r12, r3
	add r3, r3, r2
	add r9, r9, r3
	mov r3, r9, lsr #0x1b
	orr r3, r3, r9, lsl #5
	eor r12, r11, r10
	and r12, r5, r12
	eor r12, r10, r12
	add r3, r3, r12
	add r3, r4, r3
	add r3, r3, r2
	add r8, r8, r3
	mov r3, r5, lsr #2
	orr r4, r3, r5, lsl #30
	ldr r5, [r6, #8]
	mov r3, r8, lsr #0x1b
	orr r3, r3, r8, lsl #5
	eor r12, r4, r11
	and r12, r9, r12
	eor r12, r11, r12
	add r3, r3, r12
	add r3, r5, r3
	add r3, r3, r2
	add r3, r10, r3
	mov r5, r9, lsr #2
	orr r9, r5, r9, lsl #30
	ldr r12, [r6, #0xc]
	ldr r10, [r6, #0x10]
	mov r5, r3, lsr #0x1b
	orr r5, r5, r3, lsl #5
	eor r6, r9, r4
	and r6, r8, r6
	eor r6, r4, r6
	add r5, r5, r6
	add r5, r12, r5
	add r5, r5, r2
	add r6, r11, r5
	mov r5, r8, lsr #2
	orr r8, r5, r8, lsl #30
	mov r5, r6, lsr #0x1b
	orr r5, r5, r6, lsl #5
	eor r11, r8, r9
	and r11, r3, r11
	eor r11, r9, r11
	add r5, r5, r11
	add r5, r10, r5
	add r5, r5, r2
	add r5, r4, r5
	mov r4, r3, lsr #2
	orr r10, r4, r3, lsl #30
	add r0, r0, #5
	add r1, r1, #1
	cmp r1, #3
	blt _020DAEA0
	eor r0, r10, r8
	mov r1, r5, lsr #0x1b
	and r0, r6, r0
	orr r3, r1, r5, lsl #5
	eor r1, r8, r0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r3, r1
	ldr r11, [sp, #0x4c]
	mov r2, r6, lsr #2
	ldr r4, _020DB4CC ; =0x5A827999
	add r0, r11, r0
	add r3, r0, r4
	ldr r0, [sp, #4]
	mov r1, r7
	orr r6, r2, r6, lsl #30
	add r9, r9, r3
	bl R
	eor r1, r6, r10
	mov r2, r9, lsr #0x1b
	and r1, r5, r1
	orr r2, r2, r9, lsl #5
	eor r1, r10, r1
	add r1, r2, r1
	add r1, r1, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r1, r4
	add r8, r8, r0
	mov r1, r7
	mov r0, #1
	bl R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r5, r6
	and r1, r9, r1
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r10, r10, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	mov r0, #2
	mov r1, r7
	bl R
	mov r2, r10, lsr #0x1b
	orr r3, r2, r10, lsl #5
	eor r2, r9, r5
	and r2, r8, r2
	eor r2, r5, r2
	add r2, r3, r2
	add r0, r2, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	mov r1, r7
	mov r0, #3
	bl R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r8, r9
	and r1, r10, r1
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r10, lsr #2
	orr r7, r0, r10, lsl #30
	ldr r4, _020DB4D0 ; =0x6ED9EBA1
	mov r10, #4
	add r11, sp, #0x10
_020DB0CC:
	mov r0, r10
	mov r1, r11
	bl R
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl R
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl R
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #4]
	add r10, r10, #3
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _020DB0CC
	mov r0, #0
	ldr r4, _020DB4D4 ; =0x8F1BBCDC
	str r0, [sp, #8]
	add r11, sp, #0x10
_020DB200:
	mov r0, r10
	mov r1, r11
	bl R
	orr r2, r7, r8
	mov r1, r5, lsr #0x1b
	and r3, r6, r2
	and r2, r7, r8
	orr r1, r1, r5, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r1, r1, r0
	mov r0, r6, lsr #2
	add r1, r1, r4
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl R
	orr r2, r6, r7
	mov r1, r9, lsr #0x1b
	and r3, r5, r2
	and r2, r6, r7
	orr r1, r1, r9, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl R
	orr r2, r5, r6
	mov r1, r8, lsr #0x1b
	and r3, r9, r2
	and r2, r5, r6
	orr r1, r1, r8, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl R
	orr r2, r9, r5
	mov r1, r7, lsr #0x1b
	and r3, r8, r2
	and r2, r9, r5
	orr r1, r1, r7, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl R
	orr r2, r8, r9
	mov r1, r6, lsr #0x1b
	and r3, r7, r2
	and r2, r8, r9
	orr r1, r1, r6, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #8]
	add r10, r10, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _020DB200
	mov r0, #0
	ldr r4, _020DB4D8 ; =0xCA62C1D6
	str r0, [sp, #0xc]
	add r11, sp, #0x10
_020DB35C:
	mov r0, r10
	mov r1, r11
	bl R
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl R
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	mov r1, r11
	bl R
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #4
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #0xc]
	add r10, r10, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _020DB35C
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r4, [r2, #8]
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x10]
	add r1, r1, r5
	add r5, r0, r6
	ldr r0, [sp]
	add r4, r4, r7
	stmia r0, {r1, r5}
	add r3, r3, r8
	add r2, r2, r9
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DB4CC: .word 0x5A827999
_020DB4D0: .word 0x6ED9EBA1
_020DB4D4: .word 0x8F1BBCDC
_020DB4D8: .word 0xCA62C1D6
	arm_func_end CPSi_sha1_block

	arm_func_start CPSi_sha1_init
CPSi_sha1_init: ; 0x020DB4DC
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl MI_CpuFill8
	ldr r12, _020DB51C ; =0x67452301
	ldr r3, _020DB520 ; =0xEFCDAB89
	ldr r2, _020DB524 ; =0x98BADCFE
	ldr r1, _020DB528 ; =0x10325476
	ldr r0, _020DB52C ; =0xC3D2E1F0
	str r12, [r4]
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020DB51C: .word 0x67452301
_020DB520: .word 0xEFCDAB89
_020DB524: .word 0x98BADCFE
_020DB528: .word 0x10325476
_020DB52C: .word 0xC3D2E1F0
	arm_func_end CPSi_sha1_init

	arm_func_start CPSi_sha1_calc
CPSi_sha1_calc: ; 0x020DB530
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x18]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x18]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _020DB5CC
	add r1, r8, #0x1c
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x1c
	mov r4, #0
	bl CPSi_sha1_block
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DB5D0
_020DB5AC:
	mov r0, r8
	add r1, r7, r5
	bl CPSi_sha1_block
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DB5AC
	b _020DB5D0
_020DB5CC:
	mov r5, #0
_020DB5D0:
	add r1, r8, #0x1c
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_sha1_calc

	arm_func_start CPSi_sha1_result
CPSi_sha1_result: ; 0x020DB5E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #8
	bl char_from_long
	ldr r0, [r5, #0x18]
	ldr r1, _020DB64C ; =0x020E5C3C
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl CPSi_sha1_calc
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl CPSi_sha1_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl char_from_long
	ldmfd sp!, {r3, r4, r5, pc}
_020DB64C: .word padding
	arm_func_end CPSi_sha1_result

	arm_func_start CPSi_sha1_result_prng
CPSi_sha1_result_prng: ; 0x020DB650
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _020DB67C ; =0x020E5C3D
	mov r5, r0
	mov r2, #0x2c
	bl CPSi_sha1_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl char_from_long
	ldmfd sp!, {r3, r4, r5, pc}
_020DB67C: .word padding+1
	arm_func_end CPSi_sha1_result_prng

	.data
padding:
	.byte 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

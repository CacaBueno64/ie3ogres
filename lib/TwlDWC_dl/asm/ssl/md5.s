
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8

	.text
	arm_static_func_start char_from_long
char_from_long: ; 0x020DA800
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA814 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA814: .word MI_CpuCopy8
	arm_func_end char_from_long

	arm_static_func_start long_from_char
long_from_char: ; 0x020DA818
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA82C ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA82C: .word MI_CpuCopy8
	arm_func_end long_from_char

	arm_static_func_start CPSi_md5_block
CPSi_md5_block: ; 0x020DA830
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	str r0, [sp]
	ldr r3, [sp]
	add r4, sp, #4
	mov r0, r4
	mov r2, #0x40
	ldmia r3, {r5, r6, r7}
	ldr r8, [r3, #0xc]
	bl long_from_char
	mov lr, #0
	ldr r11, _020DAC28 ; =0x020E5B3C
	mov r9, lr
_020DA864:
	ldr r0, _020DAC2C ; =0x020E5ABC
	eor r2, r7, r8
	ldrb r1, [r0, lr]
	and r2, r6, r2
	add r9, r9, #1
	ldr r1, [r4, r1, lsl #2]
	eor r2, r8, r2
	add r1, r2, r1
	ldr r3, [r11, lr, lsl #2]
	add r2, r11, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	add r0, r0, lr
	mov r1, r3, lsr #0x19
	orr r1, r1, r3, lsl #7
	ldrb r3, [r0, #1]
	add r5, r6, r1
	eor r10, r6, r7
	and r10, r5, r10
	ldr r3, [r4, r3, lsl #2]
	eor r10, r7, r10
	add r3, r10, r3
	ldr r1, [r2, #4]
	ldr r12, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x14
	orr r1, r1, r3, lsl #12
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	eor r2, r5, r6
	and r2, r8, r2
	eor r3, r6, r2
	ldrb r2, [r0, #2]
	ldrb r10, [r0, #3]
	eor r0, r8, r5
	ldr r2, [r4, r2, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r2, r3, r2
	add r2, r12, r2
	add r3, r7, r2
	mov r2, r3, lsr #0xf
	orr r2, r2, r3, lsl #17
	add r7, r8, r2
	and r0, r7, r0
	eor r0, r5, r0
	add r0, r0, r10
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xa
	orr r0, r0, r1, lsl #22
	add r6, r7, r0
	add lr, lr, #4
	cmp r9, #4
	blt _020DA864
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DA950:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	eor r1, r6, r7
	and r2, r8, r1
	ldr r1, [r4, r0, lsl #2]
	eor r2, r7, r2
	ldr r0, [r9, lr, lsl #2]
	add r1, r2, r1
	add r0, r0, r1
	add r1, r5, r0
	mov r0, r1, lsr #0x1b
	orr r0, r0, r1, lsl #5
	add r1, r9, lr, lsl #2
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	and r3, r7, r3
	eor r3, r6, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x17
	orr r0, r0, r2, lsl #9
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	and r1, r6, r1
	eor r2, r5, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x12
	orr r1, r1, r2, lsl #14
	add r7, r8, r1
	eor r1, r7, r8
	and r1, r5, r1
	eor r1, r8, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DA950
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DAA38:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	add r1, r9, lr, lsl #2
	eor r2, r6, r7
	eor r2, r8, r2
	ldr r0, [r4, r0, lsl #2]
	ldr r3, [r9, lr, lsl #2]
	add r0, r2, r0
	add r0, r3, r0
	add r2, r5, r0
	mov r0, r2, lsr #0x1c
	orr r0, r0, r2, lsl #4
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	eor r3, r7, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x15
	orr r0, r0, r2, lsl #11
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	eor r2, r6, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x10
	orr r1, r1, r2, lsl #16
	add r7, r8, r1
	eor r1, r7, r8
	eor r1, r5, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #9
	orr r0, r0, r1, lsl #23
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DAA38
	ldr r12, _020DAC28 ; =0x020E5B3C
	mov r10, #0
	add r9, sp, #4
_020DAB0C:
	ldr r0, _020DAC2C ; =0x020E5ABC
	mvn r2, r8
	ldrb r1, [r0, lr]
	orr r2, r6, r2
	add r0, r0, lr
	ldr r1, [r9, r1, lsl #2]
	eor r2, r7, r2
	add r1, r2, r1
	ldr r3, [r12, lr, lsl #2]
	add r2, r12, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	mov r1, r3, lsr #0x1a
	orr r1, r1, r3, lsl #6
	ldrb r3, [r0, #1]
	add r5, r6, r1
	mvn r4, r7
	orr r4, r5, r4
	ldr r3, [r9, r3, lsl #2]
	eor r4, r6, r4
	add r3, r4, r3
	ldr r1, [r2, #4]
	ldr r4, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x16
	orr r1, r1, r3, lsl #10
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	mvn r2, r6
	orr r2, r8, r2
	eor r3, r5, r2
	ldrb r2, [r0, #2]
	ldrb r11, [r0, #3]
	mvn r0, r5
	ldr r2, [r9, r2, lsl #2]
	ldr r11, [r9, r11, lsl #2]
	add r2, r3, r2
	add r2, r4, r2
	add r3, r7, r2
	mov r2, r3, lsr #0x11
	orr r2, r2, r3, lsl #15
	add r7, r8, r2
	orr r0, r7, r0
	eor r0, r8, r0
	add r0, r0, r11
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r10, r10, #1
	add r6, r7, r0
	add lr, lr, #4
	cmp r10, #4
	blt _020DAB0C
	ldr r0, [sp]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r4, r3, r5
	add r3, r2, r6
	ldr r0, [r0, #0xc]
	add r2, r1, r7
	add r1, r0, r8
	ldr r0, [sp]
	str r4, [r0]
	str r3, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DAC28: .word ktab
_020DAC2C: .word itab
	arm_func_end CPSi_md5_block

	arm_func_start CPSi_md5_init
CPSi_md5_init: ; 0x020DAC30
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x58
	mov r4, r0
	bl MI_CpuFill8
	ldr r3, _020DAC68 ; =0x67452301
	ldr r2, _020DAC6C ; =0xEFCDAB89
	ldr r1, _020DAC70 ; =0x98BADCFE
	ldr r0, _020DAC74 ; =0x10325476
	str r3, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020DAC68: .word 0x67452301
_020DAC6C: .word 0xEFCDAB89
_020DAC70: .word 0x98BADCFE
_020DAC74: .word 0x10325476
	arm_func_end CPSi_md5_init

	arm_func_start CPSi_md5_calc
CPSi_md5_calc: ; 0x020DAC78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x10]
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
	blo _020DAD14
	add r1, r8, #0x18
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x18
	mov r4, #0
	bl CPSi_md5_block
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DAD18
_020DACF4:
	mov r0, r8
	add r1, r7, r5
	bl CPSi_md5_block
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DACF4
	b _020DAD18
_020DAD14:
	mov r5, #0
_020DAD18:
	add r1, r8, #0x18
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_md5_calc

	arm_func_start CPSi_md5_result
CPSi_md5_result: ; 0x020DAD30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #8
	bl char_from_long
	ldr r0, [r5, #0x10]
	ldr r1, _020DAD94 ; =0x020E5AFC
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl CPSi_md5_calc
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl CPSi_md5_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl char_from_long
	ldmfd sp!, {r3, r4, r5, pc}
_020DAD94: .word padding
	arm_func_end CPSi_md5_result

	.data
itab:
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x01, 0x06, 0x0B, 0x00
	.byte 0x05, 0x0A, 0x0F, 0x04, 0x09, 0x0E, 0x03, 0x08, 0x0D, 0x02, 0x07, 0x0C, 0x05, 0x08, 0x0B, 0x0E
	.byte 0x01, 0x04, 0x07, 0x0A, 0x0D, 0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x02, 0x00, 0x07, 0x0E, 0x05
	.byte 0x0C, 0x03, 0x0A, 0x01, 0x08, 0x0F, 0x06, 0x0D, 0x04, 0x0B, 0x02, 0x09
padding:
	.byte 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
ktab:
	.byte 0x78, 0xA4, 0x6A, 0xD7
	.byte 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24, 0xEE, 0xCE, 0xBD, 0xC1, 0xAF, 0x0F, 0x7C, 0xF5
	.byte 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8, 0x01, 0x95, 0x46, 0xFD, 0xD8, 0x98, 0x80, 0x69
	.byte 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF, 0xBE, 0xD7, 0x5C, 0x89, 0x22, 0x11, 0x90, 0x6B
	.byte 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6, 0x21, 0x08, 0xB4, 0x49, 0x62, 0x25, 0x1E, 0xF6
	.byte 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26, 0xAA, 0xC7, 0xB6, 0xE9, 0x5D, 0x10, 0x2F, 0xD6
	.byte 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8, 0xC8, 0xFB, 0xD3, 0xE7, 0xE6, 0xCD, 0xE1, 0x21
	.byte 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4, 0xED, 0x14, 0x5A, 0x45, 0x05, 0xE9, 0xE3, 0xA9
	.byte 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67, 0x8A, 0x4C, 0x2A, 0x8D, 0x42, 0x39, 0xFA, 0xFF
	.byte 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D, 0x0C, 0x38, 0xE5, 0xFD, 0x44, 0xEA, 0xBE, 0xA4
	.byte 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6, 0x70, 0xBC, 0xBF, 0xBE, 0xC6, 0x7E, 0x9B, 0x28
	.byte 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4, 0x05, 0x1D, 0x88, 0x04, 0x39, 0xD0, 0xD4, 0xD9
	.byte 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F, 0x65, 0x56, 0xAC, 0xC4, 0x44, 0x22, 0x29, 0xF4
	.byte 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB, 0x39, 0xA0, 0x93, 0xFC, 0xC3, 0x59, 0x5B, 0x65
	.byte 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF, 0xD1, 0x5D, 0x84, 0x85, 0x4F, 0x7E, 0xA8, 0x6F
	.byte 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3, 0xA1, 0x11, 0x08, 0x4E, 0x82, 0x7E, 0x53, 0xF7
	.byte 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A, 0x91, 0xD3, 0x86, 0xEB


	.include "/macros/function.inc"
	.include "/include/calcmap.inc"

    .text
    arm_func_start FUN_020438e8
FUN_020438e8: ; 0x020438E8
	ldr r2, _02043910 ; =0x0209002C
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
_02043910: .word unk_0209002C
	arm_func_end FUN_020438e8

	arm_func_start FUN_02043914
FUN_02043914: ; 0x02043914
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02043938
	ldr r0, _02043954 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #4]
_02043938:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_02043954: .word gAllocator
	arm_func_end FUN_02043914

	arm_func_start FUN_02043958
FUN_02043958: ; 0x02043958
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r5, r2
	mul r1, r6, r5
	mov r7, r0
	ldr r0, [r7, #0x10]
	mov r4, r1, lsl #2
	cmp r0, r1, lsl #2
	bge _020439B0
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _02043990
	ldr r0, _020439C0 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
_02043990:
	ldr r0, _020439C0 ; =gAllocator
	mov r1, r4
	bl _ZN9Allocator8allocateEm
	str r0, [r7, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	str r4, [r7, #0x10]
_020439B0:
	str r6, [r7, #8]
	str r5, [r7, #0xc]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020439C0: .word gAllocator
	arm_func_end FUN_02043958

	arm_func_start FUN_020439c4
FUN_020439c4: ; 0x020439C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r0, [r10, #0xc]
	mov r7, #0
	mov r9, r1
	str r2, [sp]
	mov r11, r7
	cmp r0, #0
	ldr r8, [r10, #4]
	ble _02043A70
_020439EC:
	ldr r2, [r10, #8]
	mov r6, #0
	mov r5, r6
	cmp r2, #0
	ble _02043A58
	smull r1, r0, r7, r7
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r4, r1, lsr #0xc
	cmp r2, #0
	orr r4, r4, r0, lsl #20
	ble _02043A58
_02043A1C:
	smull r1, r0, r6, r6
	adds r1, r1, #0x800
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r4, asr #4
	bl FX_Sqrt
	mov r0, r0, lsl #2
	str r0, [r8], #4
	ldr r0, [r10, #8]
	add r5, r5, #1
	cmp r5, r0
	add r6, r6, r9
	blt _02043A1C
_02043A58:
	ldr r0, [r10, #0xc]
	add r11, r11, #1
	cmp r11, r0
	ldr r0, [sp]
	add r7, r7, r0
	blt _020439EC
_02043A70:
	ldr r0, [sp]
	str r9, [r10, #0x14]
	str r0, [r10, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020439c4

	arm_func_start FUN_02043a80
FUN_02043a80: ; 0x02043A80
	stmfd sp!, {r4, lr}
	ldr r1, _02043AA4 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043AA4: .word unk_0209002C
	arm_func_end FUN_02043a80

	arm_func_start FUN_02043aa8
FUN_02043aa8: ; 0x02043AA8
	stmfd sp!, {r4, lr}
	ldr r1, _02043AC4 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043AC4: .word unk_0209002C
	arm_func_end FUN_02043aa8

	.data
	.global unk_0209000C
unk_0209000C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209002C
unk_0209002C:
	.word FUN_02043aa8
	.word FUN_02043a80

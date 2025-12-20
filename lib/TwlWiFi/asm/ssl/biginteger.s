
	.include "asm/macros/function.inc"
	.public CPSiAlloc
	.public CPSiFree
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public _ll_udiv
	.public memmove

	.text
	arm_static_func_start count_digits
count_digits: ; 0x020DB764
	b _020DB76C
_020DB768:
	sub r1, r1, #1
_020DB76C:
	cmp r1, #0
	beq _020DB784
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #-2]
	cmp r2, #0
	beq _020DB768
_020DB784:
	mov r0, r1
	bx lr
	arm_func_end count_digits

	arm_func_start CPSi_big_sign
CPSi_big_sign: ; 0x020DB78C
	stmfd sp!, {r3, lr}
	sub r2, r1, #1
	mov r2, r2, lsl #1
	ldrh r2, [r0, r2]
	tst r2, #0x8000
	mvnne r0, #0
	ldmnefd sp!, {r3, pc}
	bl count_digits
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_sign

	arm_func_start CPSi_big_add
CPSi_big_add: ; 0x020DB7BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl count_digits
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl count_digits
	cmp r4, r0
	movlt r4, r0
	cmp r4, r5
	addne r4, r4, #1
	mov r12, #0
	mov r3, r12
	cmp r4, #0
	ble _020DB834
_020DB80C:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	cmp r3, r4
	add r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, lsr #0x10
	blt _020DB80C
_020DB834:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_big_add

	arm_static_func_start CPSi_big_add_small
CPSi_big_add_small: ; 0x020DB858
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB88C
_020DB868:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	add r2, r2, r12
	strh r2, [r0, lr]
	movs r2, r2, lsr #0x10
	beq _020DB88C
	add r4, r4, #1
	cmp r4, r3
	blt _020DB868
_020DB88C:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB89C:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB89C
	ldmfd sp!, {r4, pc}
	arm_func_end CPSi_big_add_small

	arm_func_start CPSi_big_negate
CPSi_big_negate: ; 0x020DB8B8
	stmfd sp!, {r3, lr}
	mov r3, r1
	cmp r3, #0
	mov r12, #0
	ble _020DB8E8
_020DB8CC:
	mov r2, r12, lsl #1
	ldrh r1, [r0, r2]
	add r12, r12, #1
	cmp r12, r3
	mvn r1, r1
	strh r1, [r0, r2]
	blt _020DB8CC
_020DB8E8:
	mov r1, r0
	mov r2, #1
	bl CPSi_big_add_small
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_negate

	arm_func_start CPSi_big_sub
CPSi_big_sub: ; 0x020DB8F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl count_digits
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl count_digits
	cmp r4, r0
	movlt r4, r0
	mov r12, #0
	cmp r4, r5
	addne r4, r4, #1
	mov r3, r12
	b _020DB964
_020DB944:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	sub r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, asr #0x10
_020DB964:
	cmp r3, r4
	blt _020DB944
	cmp r3, r5
	bge _020DB97C
	cmp r12, #0
	bne _020DB944
_020DB97C:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_big_sub

	arm_static_func_start CPSi_big_sub_small
CPSi_big_sub_small: ; 0x020DB9A0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB9D8
_020DB9B0:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	sub r12, r12, r2
	mov r2, r12, lsr #0x10
	strh r12, [r0, lr]
	ands r2, r2, #1
	beq _020DB9D8
	add r4, r4, #1
	cmp r4, r3
	blt _020DB9B0
_020DB9D8:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB9E8:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB9E8
	ldmfd sp!, {r4, pc}
	arm_func_end CPSi_big_sub_small

	arm_static_func_start CPSi_big_compare
CPSi_big_compare: ; 0x020DBA04
	subs r12, r2, #1
	bmi _020DBA34
_020DBA0C:
	mov r2, r12, lsl #1
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	cmp r2, r3
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	subs r12, r12, #1
	bpl _020DBA0C
_020DBA34:
	mov r0, #0
	bx lr
	arm_func_end CPSi_big_compare

	arm_static_func_start CPSi_big_add_part
CPSi_big_add_part: ; 0x020DBA3C
	stmfd sp!, {r3, lr}
	b _020DBA5C
_020DBA44:
	mov lr, r2, lsl #1
	ldrh r12, [r0, lr]
	add r2, r2, #1
	add r1, r1, r12
	strh r1, [r0, lr]
	mov r1, r1, lsr #0x10
_020DBA5C:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r3
	blt _020DBA44
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_add_part

	arm_func_start CPSi_big_mult
CPSi_big_mult: ; 0x020DBA70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r3
	mov r9, r2
	mov r5, #0
	mov r10, r1
	mov r1, r5
	mov r2, r8, lsl #1
	str r0, [sp]
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r8
	bl count_digits
	mov r11, r0
	mov r0, r9
	mov r1, r8
	bl count_digits
	str r0, [sp, #4]
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBAC4:
	mov r6, #0
	sub r7, r8, r5
	mov r4, r5, lsl #1
	b _020DBAF8
_020DBAD4:
	mov r0, r6, lsl #1
	ldrh r3, [r10, r0]
	ldrh r1, [r9, r4]
	ldr r0, [sp]
	add r2, r5, r6
	mul r1, r3, r1
	mov r3, r8
	bl CPSi_big_add_part
	add r6, r6, #1
_020DBAF8:
	cmp r6, r11
	bge _020DBB08
	cmp r6, r7
	blt _020DBAD4
_020DBB08:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020DBAC4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end CPSi_big_mult

	arm_static_func_start CPSi_big_mult_small
CPSi_big_mult_small: ; 0x020DBB20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r5, r2
	bl count_digits
	mov r3, #0
	mov r12, r3
	cmp r0, #0
	ble _020DBB70
_020DBB50:
	mov r2, r12, lsl #1
	ldrh r1, [r6, r2]
	add r12, r12, #1
	cmp r12, r0
	mla r1, r5, r1, r3
	strh r1, [r7, r2]
	mov r3, r1, lsr #0x10
	blt _020DBB50
_020DBB70:
	cmp r12, r4
	movlt r0, r12, lsl #1
	addlt r12, r12, #1
	sub r1, r4, r12
	strlth r3, [r7, r0]
	mov r2, r1, lsl #1
	add r0, r7, r12, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CPSi_big_mult_small

	arm_static_func_start CPSi_big_sqr
CPSi_big_sqr: ; 0x020DBB98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, r2
	mov r10, r0
	mov r0, r9
	mov r1, r8
	bl count_digits
	mov r11, r0
	cmp r8, r11, lsl #1
	mov r0, r11, lsl #1
	ble _020DBBD8
	sub r1, r8, r0
	add r0, r10, r0, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
_020DBBD8:
	cmp r11, #0
	mov r4, #0
	ble _020DBC24
	sub r2, r8, #1
_020DBBE8:
	cmp r8, r4, lsl #1
	mov r1, r4, lsl #1
	ble _020DBC24
	ldrh r3, [r9, r1]
	mov r0, r1, lsl #1
	cmp r1, r2
	mul r1, r3, r3
	strh r1, [r10, r0]
	beq _020DBC24
	add r4, r4, #1
	mov r1, r1, lsr #0x10
	add r0, r10, r0
	strh r1, [r0, #2]
	cmp r4, r11
	blt _020DBBE8
_020DBC24:
	mov r5, #0
	cmp r11, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBC30:
	mov r0, r5, lsl #1
	add r6, r5, #1
	str r0, [sp]
	b _020DBC9C
_020DBC40:
	mov r0, r6, lsl #1
	ldrh r1, [r9, r0]
	ldr r0, [sp]
	ldrh r0, [r9, r0]
	mul r7, r1, r0
	ldr r0, _020DBCC0 ; =0x7FFF8000
	cmp r7, r0
	mov r0, r10
	bhi _020DBC74
	mov r2, r4
	mov r3, r8
	mov r1, r7, lsl #1
	b _020DBC94
_020DBC74:
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl CPSi_big_add_part
	mov r1, r7
	mov r2, r4
	mov r0, r10
	mov r3, r8
_020DBC94:
	bl CPSi_big_add_part
	add r6, r6, #1
_020DBC9C:
	cmp r6, r11
	bge _020DBCB0
	add r4, r5, r6
	cmp r4, r8
	blt _020DBC40
_020DBCB0:
	add r5, r5, #1
	cmp r5, r11
	blt _020DBC30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBCC0: .word 0x7FFF8000
	arm_func_end CPSi_big_sqr

	arm_static_func_start get48bits_1
get48bits_1: ; 0x020DBCC4
	ldrh r1, [r0]
	mov r0, #0
	bx lr
	arm_func_end get48bits_1

	arm_static_func_start get48bits_2
get48bits_2: ; 0x020DBCD0
	ldrh r1, [r0]
	ldrh r0, [r0, #-2]
	mov r0, r0, lsl #0x10
	bx lr
	arm_func_end get48bits_2

	arm_static_func_start get48bits_3
get48bits_3: ; 0x020DBCE0
	ldrh r1, [r0]
	ldrh r2, [r0, #-2]
	ldrh r3, [r0, #-4]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end get48bits_3

	arm_static_func_start get64bits
get64bits: ; 0x020DBCF4
	ldrh r2, [r0]
	ldrh r3, [r0, #-2]
	orr r1, r3, r2, lsl #16
	ldrh r2, [r0, #-4]
	ldrh r3, [r0, #-6]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end get64bits

	arm_func_start CPSi_big_div
CPSi_big_div: ; 0x020DBD10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r9, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	str r1, [sp, #4]
	add r6, r8, r9, lsl #1
	str r0, [sp]
	mov r10, r2
	mov r0, r6
	mov r2, r9, lsl #2
	mov r1, #0
	str r3, [sp, #8]
	add r7, r6, r9, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, r9
	bl count_digits
	mov r11, r0
	mov r0, r10
	mov r1, r9
	bl count_digits
	mov r5, r0
	cmp r11, #0
	cmpgt r5, #0
	ble _020DBE94
	sub r0, r9, r11
	add r0, r5, r0
	sub r4, r0, #1
	cmp r4, r9
	blt _020DBD9C
	ldr r0, [sp, #4]
	mov r1, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	b _020DBE94
_020DBD9C:
	ldr r0, [sp, #4]
	add r1, r6, r4, lsl #1
	mov r2, r11, lsl #1
	bl MI_CpuCopy8
	cmp r5, #2
	ble _020DBDC8
	add r0, r10, r5, lsl #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	bl get48bits_3
	b _020DBDE8
_020DBDC8:
	add r0, r10, r5, lsl #1
	cmp r5, #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	ble _020DBDE4
	bl get48bits_2
	b _020DBDE8
_020DBDE4:
	bl get48bits_1
_020DBDE8:
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r4, r9
	bge _020DBE94
	mov r0, r9, lsl #1
	sub r0, r0, #1
	mov r0, r0, lsl #1
	str r0, [sp, #0x14]
_020DBE08:
	ldr r2, [sp, #0x14]
	mov r1, r6
	add r0, r6, #2
	bl memmove
	add r0, r7, r11
	bl get64bits
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	bl _ll_udiv
	mov r5, r0
	ldr r0, _020DBED8 ; =0x0000FFFF
	cmp r5, r0
	movhi r5, r0
_020DBE3C:
	mov r2, r5, lsl #0x10
	mov r0, r8
	mov r1, r10
	mov r2, r2, lsr #0x10
	mov r3, r9
	bl CPSi_big_mult_small
	mov r0, r7
	mov r1, r8
	mov r2, r9
	bl CPSi_big_compare
	cmp r0, #0
	sublt r5, r5, #1
	blt _020DBE3C
	mov r0, r7
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl CPSi_big_sub
	strh r5, [r6]
	add r4, r4, #1
	cmp r4, r9
	blt _020DBE08
_020DBE94:
	ldr r0, [sp]
	cmp r0, #0
	beq _020DBEB0
	ldr r1, [sp]
	mov r0, r6
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
_020DBEB0:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	mov r0, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBED8: .word 0x0000FFFF
	arm_func_end CPSi_big_div

	arm_func_start CPSi_big_power
CPSi_big_power: ; 0x020DBEDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _020DC068 ; =CPSiAlloc
	mov r8, r3
	ldr r3, [r4]
	mov r10, r0
	mov r0, r8, lsl #3
	ldr r7, [sp, #0x30]
	str r1, [sp, #8]
	mov r9, r2
	blx r3
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r1, r8, #1
	add r0, r10, #2
	mov r2, r1, lsl #1
	mov r1, #0
	add r5, r4, r8, lsl #1
	bl MI_CpuFill8
	mov r2, #1
	mov r0, r9
	mov r1, r8
	strh r2, [r10]
	bl count_digits
	sub r0, r8, r0
	mov r6, r0, lsl #4
	cmp r6, r8, lsl #4
	bhs _020DBF90
	mov r2, #0x8000
_020DBF54:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r0, [r0, #-2]
	and r1, r6, #0xf
	tst r0, r2, lsr r1
	beq _020DBF84
	ldr r0, [sp, #8]
	mov r1, r10
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
	add r6, r6, #1
	b _020DBF90
_020DBF84:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF54
_020DBF90:
	cmp r6, r8, lsl #4
	bhs _020DC050
	mov r11, r8, lsl #1
_020DBF9C:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl CPSi_big_sqr
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DBFE0
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl CPSi_big_div
_020DBFE0:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r1, [r0, #-2]
	and r2, r6, #0xf
	mov r0, #0x8000
	tst r1, r0, lsr r2
	beq _020DC044
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r10
	mov r3, r8
	bl CPSi_big_mult
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DC044
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl CPSi_big_div
_020DC044:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF9C
_020DC050:
	ldr r1, _020DC06C ; =CPSiFree
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC068: .word CPSiAlloc
_020DC06C: .word CPSiFree
	arm_func_end CPSi_big_power

	arm_static_func_start CPSi_big_modinv
CPSi_big_modinv: ; 0x020DC070
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r9, [sp, #0x38]
	mov r10, r3
	add r11, r9, r10, lsl #1
	add r4, r11, r10, lsl #1
	add r5, r4, r10, lsl #1
	add r6, r5, r10, lsl #1
	add r7, r6, r10, lsl #1
	str r0, [sp, #8]
	mov r0, r1
	add r1, r7, r10, lsl #1
	str r1, [sp, #0x10]
	mov r8, r10, lsl #1
	str r2, [sp, #0xc]
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, #1
	strh r0, [r4, r8]
	mov r0, r9
	mov r1, r10
	bl CPSi_big_sign
	cmp r0, #0
	ble _020DC180
_020DC0E4:
	ldr r3, [sp, #0x10]
	str r10, [sp]
	str r3, [sp, #4]
	mov r0, r11
	mov r1, r4
	mov r2, r9
	mov r3, r7
	bl CPSi_big_div
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r11
	mov r2, r5
	mov r3, r10
	bl CPSi_big_mult
	mov r0, r7
	mov r1, r6
	mov r2, r7
	mov r3, r10
	bl CPSi_big_sub
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r10
	bl CPSi_big_sign
	cmp r0, #0
	bgt _020DC0E4
_020DC180:
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r6
	mov r3, r10
	bl CPSi_big_add
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	str r10, [sp]
	mov r1, r6
	mov r0, #0
	str r4, [sp, #4]
	bl CPSi_big_div
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end CPSi_big_modinv

	arm_static_func_start CPSi_big_montmult
CPSi_big_montmult: ; 0x020DC1BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r3
	mov r4, r6, lsl #1
	mov r8, r2
	mov r2, r4
	mov r7, r0
	mov r9, r1
	ldr r5, [sp, #0x20]
	bl MI_CpuCopy8
	cmp r8, #1
	bne _020DC1FC
	mov r0, r7
	mov r1, r9
	mov r2, r6
	bl CPSi_big_sqr
	b _020DC218
_020DC1FC:
	cmp r8, #0
	beq _020DC218
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl CPSi_big_mult
_020DC218:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, r5
	bl CPSi_big_mult
	sub r1, r6, r5
	ldr r0, [sp, #0x2c]
	mov r9, r1, lsl #1
	mov r8, #0
	mov r1, r8
	mov r2, r9
	add r0, r0, r5, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl CPSi_big_mult
	mov r0, r7
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl CPSi_big_add
	mov r2, r9
	mov r0, r7
	add r1, r7, r5, lsl #1
	bl memmove
	add r0, r7, r6, lsl #1
	sub r0, r0, r5, lsl #1
	mov r2, r5, lsl #1
	mov r1, r8
	bl MI_CpuFill8
	mov r0, r7
	ldr r1, [sp, #0x24]
	mov r2, r6
	bl CPSi_big_compare
	cmp r0, #0
	beq _020DC2BC
	cmp r0, #1
	beq _020DC2D0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2BC:
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2D0:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r7
	mov r3, r6
	bl CPSi_big_sub
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CPSi_big_montmult

	arm_func_start CPSi_big_montpower
CPSi_big_montpower: ; 0x020DC2E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r3
	mov r3, #0x16
	mul r4, r10, r3
	ldr r3, _020DC4FC ; =CPSiAlloc
	mov r11, r0
	ldr r3, [r3]
	mov r0, r4
	ldr r9, [sp, #0x58]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	blx r3
	str r0, [sp, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, r10
	add r6, r0, r10, lsl #1
	add r0, r6, r10, lsl #1
	add r7, r0, r10, lsl #1
	add r8, r7, r10, lsl #1
	str r0, [sp, #0x28]
	add r0, r8, r10, lsl #1
	str r0, [sp, #0x24]
	add r0, r0, r10, lsl #1
	str r0, [sp, #0x20]
	mov r0, r9
	bl count_digits
	mov r4, r0
	ldr r0, [sp, #0x2c]
	mov r2, r4, lsl #1
	mov r1, #1
	strh r1, [r0, r2]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	mov r0, r6
	mov r2, r9
	mov r3, r10
	bl CPSi_big_modinv
	ldr r1, [sp, #0x2c]
	mov r0, r7
	mov r2, r6
	mov r3, r10
	bl CPSi_big_mult
	mov r2, #1
	mov r0, r6
	mov r1, r7
	mov r3, r10
	bl CPSi_big_sub_small
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl CPSi_big_div
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r3, r10
	bl CPSi_big_mult
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r2, r9
	mov r3, r1
	bl CPSi_big_div
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	mov r0, r5
	mov r2, r9
	mov r3, r11
	bl CPSi_big_div
	movs r0, r4, lsl #4
	str r0, [sp, #0x1c]
	beq _020DC4C0
_020DC448:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r2, #1
	mov r3, r10
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
	ldr r1, [sp, #0x18]
	sub r2, r4, r5, asr #4
	add r1, r1, r2, lsl #1
	ldrh r2, [r1, #-2]
	and r0, r5, #0xf
	mov r1, #0x8000
	tst r2, r1, lsr r0
	beq _020DC4B0
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r0, r11
	mov r3, r10
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
_020DC4B0:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blo _020DC448
_020DC4C0:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r3, r10
	mov r2, #0
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
	ldr r1, _020DC500 ; =CPSiFree
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC4FC: .word CPSiAlloc
_020DC500: .word CPSiFree
	arm_func_end CPSi_big_montpower

	arm_func_start CPSi_big_from_char
CPSi_big_from_char: ; 0x020DC504
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r2, r3, lsl #1
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	sub r0, r5, #1
	cmp r5, #1
	add r6, r6, r0
	ble _020DC550
_020DC530:
	ldrb r1, [r6]
	ldrb r0, [r6, #-1]
	sub r5, r5, #2
	cmp r5, #1
	add r0, r1, r0, lsl #8
	strh r0, [r4], #2
	sub r6, r6, #2
	bgt _020DC530
_020DC550:
	cmp r5, #0
	ldrgtb r0, [r6]
	strgth r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end CPSi_big_from_char

	arm_func_start CPSi_char_from_big
CPSi_char_from_big: ; 0x020DC560
	sub r3, r2, #1
	cmp r2, #1
	add r0, r0, r3
	ble _020DC594
_020DC570:
	ldrh r3, [r1]
	sub r12, r0, #1
	sub r2, r2, #2
	strb r3, [r0], #-2
	ldrh r3, [r1], #2
	cmp r2, #1
	mov r3, r3, asr #8
	strb r3, [r12]
	bgt _020DC570
_020DC594:
	cmp r2, #0
	ldrgth r1, [r1]
	strgtb r1, [r0]
	bx lr
	arm_func_end CPSi_char_from_big
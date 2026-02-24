
	.include "/macros/function.inc"
	.include "/include/distancemap.inc"

    .text
	arm_func_start FUN_02043ac8
FUN_02043ac8: ; 0x02043AC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020438e8
	ldr r1, _02043AE4 ; =0x02090054
	mov r0, r4
	str r1, [r4]
	ldmfd sp!, {r4, pc}
_02043AE4: .word unk_02090054
	arm_func_end FUN_02043ac8

	arm_func_start FUN_02043ae8
FUN_02043ae8: ; 0x02043AE8
	stmfd sp!, {r4, lr}
	ldr r1, _02043B04 ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043B04: .word unk_0209002C
	arm_func_end FUN_02043ae8

	arm_func_start FUN_02043b08
FUN_02043b08: ; 0x02043B08
	stmfd sp!, {r4, lr}
	ldr r1, _02043B2C ; =0x0209002C
	mov r4, r0
	str r1, [r4]
	bl FUN_02043914
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02043B2C: .word unk_0209002C
	arm_func_end FUN_02043b08

	arm_func_start FUN_02043b30
FUN_02043b30: ; 0x02043B30
	mov r1, #0x20
	ldr r12, _02043B40 ; =FUN_02043958
	mov r2, r1
	bx r12
_02043B40: .word FUN_02043958
	arm_func_end FUN_02043b30

	arm_func_start FUN_02043b44
FUN_02043b44: ; 0x02043B44
	mov r1, #0x1000
	ldr r12, _02043B54 ; =FUN_020439c4
	mov r2, r1
	bx r12
_02043B54: .word FUN_020439c4
	arm_func_end FUN_02043b44

	arm_func_start FUN_02043b58
FUN_02043b58: ; 0x02043B58
	ldr r3, [r0, #4]
	add r0, r1, r2, lsl #5
	ldr r0, [r3, r0, lsl #2]
	bx lr
	arm_func_end FUN_02043b58

	arm_func_start FUN_02043b68
FUN_02043b68: ; 0x02043B68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r1, r6, asr #0xc
	orr r3, r1, r5, asr #12
	mov r2, r5, asr #0xc
	bics r3, r3, #0x1f
	mov r4, #0
	beq _02043BA4
_02043B8C:
	mov r1, r1, asr #1
	mov r2, r2, asr #1
	orr r3, r1, r2
	add r4, r4, #1
	bics r3, r3, #0x1f
	bne _02043B8C
_02043BA4:
	bl FUN_02043b58
	cmp r6, r5, lsl #1
	mov r2, #1
	ble _02043BCC
	add r1, r4, #0xc
	mov r1, r2, lsl r1
	sub r1, r1, #1
	and r1, r6, r1
	add r0, r1, r0, lsl r4
	ldmfd sp!, {r4, r5, r6, pc}
_02043BCC:
	add r1, r4, #0xc
	mov r1, r2, lsl r1
	cmp r5, r6, lsl #1
	subgt r1, r1, #1
	andgt r1, r5, r1
	addgt r0, r1, r0, lsl r4
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r3, r1, #1
	and r2, r6, r3
	and r1, r5, r3
	add r1, r2, r1
	mov r2, r1, asr #1
	orr r1, r6, r5
	add r2, r2, r0, lsl r4
	and r0, r3, r1
	add r0, r2, r0, asr #2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02043b68

	arm_func_start FUN_02043c10
FUN_02043c10: ; 0x02043C10
	ldr r12, _02043C28 ; =FUN_02043b68
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r1, #0
	rsblt r1, r1, #0
	bx r12
_02043C28: .word FUN_02043b68
	arm_func_end FUN_02043c10

	arm_func_start FUN_02043c2c
FUN_02043c2c: ; 0x02043C2C
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #4]
	ldr r3, [r2, #4]
	subs r12, r12, r3
	ldr r3, [r1]
	ldr r1, [r2]
	rsbmi r12, r12, #0
	subs r1, r3, r1
	rsbmi r1, r1, #0
	mov r2, r12
	bl FUN_02043b68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02043c2c

	arm_func_start FUN_02043c5c
FUN_02043c5c: ; 0x02043C5C
	ldr r12, _02043C64 ; =FUN_02043c68
	bx r12
_02043C64: .word FUN_02043c68
	arm_func_end FUN_02043c5c

	arm_func_start FUN_02043c68
FUN_02043c68: ; 0x02043C68
	bx lr
	arm_func_end FUN_02043c68

	arm_func_start FUN_02043c6c
FUN_02043c6c: ; 0x02043C6C
	ldr r1, [r1, #0x84]
	ldr r2, [r2, #0x84]
	ldr r12, _02043C7C ; =FUN_02043c2c
	bx r12
_02043C7C: .word FUN_02043c2c
	arm_func_end FUN_02043c6c

	arm_func_start FUN_02043c80
FUN_02043c80: ; 0x02043C80
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, #1
	mov r6, r0
	mov r0, r5
	bl _ZN10FileSystem12SetNextArenaEi
	mov r4, #0
	ldr r1, _02043D6C ; =0x020900CC
	mov r0, r4
	bl _ZN10FileSystem17OpenArchiveDirectEPvPKc
	ldr r7, _02043D70 ; =0x0209A200
	ldr r1, _02043D74 ; =0x020900DC
	str r0, [r7]
	mov r0, r4
	bl _ZN10FileSystem17OpenArchiveDirectEPvPKc
	str r0, [r7, #0x24]
	add r0, r6, #0x324
	add r0, r0, #0x1c00
	bl FUN_02030260
	add r0, r6, #0x6000
	str r5, [r0, #0x20c]
	str r4, [r0, #0x210]
	str r4, [r0, #0x200]
	str r4, [r0, #0x224]
	add r0, r6, #0x1a8
	add r0, r0, #0x6000
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuFill8
	add r1, r6, #0x6000
	strb r4, [r1, #0x1e9]
	add r0, r6, #0x6100
	ldrsb r2, [r0, #0xe9]
	add r0, r6, #0x90
	strb r2, [r1, #0x1e8]
	bl FUN_02047af8
	add r0, r6, #0x90
	mov r1, r4
	mov r2, #2
	mov r3, r4
	str r4, [sp]
	bl FUN_02047f8c
	add r0, r6, #0x22c
	add r0, r0, #0x6000
	ldr r3, _02043D78 ; =gAllocator
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, _02043D7C ; =0x020900EC
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	str r4, [sp]
	mov r2, #4
	stmib sp, {r2, r4}
	add r2, sp, #0x10
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02043D6C: .word unk_020900CC
_02043D70: .word unk_0209A200
_02043D74: .word unk_020900DC
_02043D78: .word gAllocator
_02043D7C: .word unk_020900EC
	arm_func_end FUN_02043c80

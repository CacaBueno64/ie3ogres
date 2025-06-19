
	.include "/macros/function.inc"
	.include "/include/overlay101.inc"

	.text
	arm_func_start FUN_ov101_02124d00
FUN_ov101_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	add r0, r5, #0x10
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r4, sp, #0
	ldr r1, _02124D48 ; =0x0212512C
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	add r1, r5, #0x10
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r5, #8]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, pc}
_02124D48: .word 0x0212512C
	arm_func_end FUN_ov101_02124d00

	arm_func_start FUN_ov101_02124d4c
FUN_ov101_02124d4c: ; 0x02124D4C
	ldr r12, _02124D58 ; = FUN_ov16_020f33fc
	add r0, r0, #0x10
	bx r12
_02124D58: .word  FUN_ov16_020f33fc
	arm_func_end FUN_ov101_02124d4c

	arm_func_start FUN_ov101_02124d5c
FUN_ov101_02124d5c: ; 0x02124D5C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0x10]
	cmp r5, #0
	beq _02124D98
	ldr r0, [r5, #0xc]
	mov r4, #1
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f1138
_02124D98:
	ldr r4, _02124E04 ; =0x020A9440
	mov r6, #0
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _02124E08 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _02124E0C ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02124E04: .word 0x020A9440
_02124E08: .word 0x020A8C40
_02124E0C: .word 0x020A8440
	arm_func_end FUN_ov101_02124d5c

	arm_func_start FUN_ov101_02124e10
FUN_ov101_02124e10: ; 0x02124E10
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_02004f58
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004f58
	mov r1, r4
	bl DC_FlushRange
	ldr r4, [r6, #0x10]
	cmp r4, #0
	beq _02124E74
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r5
	add r0, r4, r0
	bl FUN_020057ec
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r5
	add r0, r4, r0
	b _02124E80
_02124E74:
	ldr r0, _02124F14 ; =0x020A9440
	mov r1, r5
	mov r2, #0x800
_02124E80:
	bl FUN_0200546c
	bl FUN_02004fac
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r5
	bl DC_FlushRange
	mov r4, #0x800
	ldr r0, _02124F18 ; =0x020A8C40
	mov r1, r6
	mov r2, r4
	bl FUN_0200554c
	bl FUN_02004fac
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r5
	bl DC_FlushRange
	mov r2, r4
	ldr r0, _02124F1C ; =0x020A8440
	mov r1, r6
	bl FUN_0200562c
	mov r1, r6
	ldr r0, _02124F20 ; =0x0209A144
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	ldr r2, [r3, #0x18]
	add r0, r3, r0
	bl FUN_020059ac
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_02124F14: .word 0x020A9440
_02124F18: .word 0x020A8C40
_02124F1C: .word 0x020A8440
_02124F20: .word 0x0209A144
	arm_func_end FUN_ov101_02124e10

	arm_func_start FUN_ov101_02124f24
FUN_ov101_02124f24: ; 0x02124F24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #0xc
	bl MIi_CpuClearFast
	mov r0, r5
	str r4, [r5, #8]
	bl FUN_ov101_02124d00
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov101_02124f24

	arm_func_start FUN_ov101_02124f50
FUN_ov101_02124f50: ; 0x02124F50
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x10
	mov r1, #1
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov101_02124d5c
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov101_02124f50

	arm_func_start FUN_ov101_02124f8c
FUN_ov101_02124f8c: ; 0x02124F8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _02124FAC
	cmp r1, #3
	beq _02124FCC
	ldmfd sp!, {r3, r4, r5, pc}
_02124FAC:
	bl FUN_ov101_02124e10
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02124FCC:
	ldr r5, _02124FF4 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	ldmfd sp!, {r3, r4, r5, pc}
_02124FF4: .word 0x020A8440
	arm_func_end FUN_ov101_02124f8c

	arm_func_start FUN_ov101_02124ff8
FUN_ov101_02124ff8: ; 0x02124FF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	mov r1, #1
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov101_02124d4c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov101_02124ff8

	arm_func_start FUN_ov101_02125018
FUN_ov101_02125018: ; 0x02125018
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov101_02125018

	arm_func_start FUN_ov101_0212502c
FUN_ov101_0212502c: ; 0x0212502C
	bx lr
	arm_func_end FUN_ov101_0212502c

	arm_func_start FUN_ov101_02125030
FUN_ov101_02125030: ; 0x02125030
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02125078 ; =0x021250A0
	str r0, [r4, #0x14]
	ldr r0, _0212507C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02125080 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02125078: .word 0x021250A0
_0212507C: .word 0x00009CCD
_02125080: .word 0x0000EA3C
	arm_func_end FUN_ov101_02125030
	; 0x02125084


	.rodata
	.incbin "/incbin/overlay101_rodata.bin"

	.bss
	.space 0x0

	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public DWCi_AC_CloseNetwork
	.public DWCi_AC_GetError

	.text
	arm_func_start DWCi_AC_Error
DWCi_AC_Error: ; 0x020C49E0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	add r0, r0, #0xa
	bl DWCi_AC_CloseNetwork
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_AC_Error

	arm_func_start DWCi_AC_GetResult
DWCi_AC_GetResult: ; 0x020C4A04
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWCi_AC_GetError
	cmp r0, #4
	bge _020C4A28
	bl GetProgramaError
	ldmfd sp!, {r4, pc}
_020C4A28:
	cmp r0, #5
	bge _020C4A38
	bl GetIrregularError
	ldmfd sp!, {r4, pc}
_020C4A38:
	bne _020C4A48
	mov r0, r4
	bl GetNotFoundAP
	ldmfd sp!, {r4, pc}
_020C4A48:
	cmp r0, #7
	ldreq r0, _020C4A6C ; =0xFFFF3A59
	ldmeqfd sp!, {r4, pc}
	cmp r0, #8
	ldreq r0, _020C4A70 ; =0xFFFF39F5
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl GetNotFoundInet
	ldmfd sp!, {r4, pc}
_020C4A6C: .word 0xFFFF3A59
_020C4A70: .word 0xFFFF39F5
	arm_func_end DWCi_AC_GetResult

	arm_static_func_start GetProgramaError
GetProgramaError: ; 0x020C4A74
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C4AB0
_020C4A80: ; jump table
	b _020C4A98 ; case 0
	b _020C4A90 ; case 1
	b _020C4AA0 ; case 2
	b _020C4AA8 ; case 3
_020C4A90:
	mvn r0, #8
	bx lr
_020C4A98:
	mvn r0, #9
	bx lr
_020C4AA0:
	mvn r0, #7
	bx lr
_020C4AA8:
	mvn r0, #6
	bx lr
_020C4AB0:
	mov r0, #0
	bx lr
	arm_func_end GetProgramaError

	arm_static_func_start GetIrregularError
GetIrregularError: ; 0x020C4AB8
	mvn r0, #5
	bx lr
	arm_func_end GetIrregularError

	arm_static_func_start GetNotFoundAP
GetNotFoundAP: ; 0x020C4AC0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	ldreq r0, _020C4AD8 ; =0xFFFF3C4D
	ldrne r0, _020C4ADC ; =0xFFFF3865
	bx lr
_020C4AD8: .word 0xFFFF3C4D
_020C4ADC: .word 0xFFFF3865
	arm_func_end GetNotFoundAP

	arm_static_func_start GetNotFoundInet
GetNotFoundInet: ; 0x020C4AE0
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldreqb r1, [r0, #0x15]
	cmp r2, #0xa
	and r1, r1, #0xff
	bhs _020C4B2C
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _020C4BE8 ; =0xFFFF3864
	subeq r3, r0, r1
	beq _020C4BE0
	cmp r0, #4
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r3, r0, r1
	ldrne r0, _020C4BEC ; =0xFFFF379C
	subne r3, r0, r1
	b _020C4BE0
_020C4B2C:
	cmp r2, #0xd
	ldrlo r0, _020C4BF0 ; =0xFFFF34E0
	sublo r3, r0, r1
	blo _020C4BE0
	ldr r3, [r0, #0x10]
	cmp r3, #0
	ldreq r0, _020C4BF4 ; =0xFFFF3CB0
	subeq r3, r0, r1
	beq _020C4BE0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	ldreq r0, _020C4BF8 ; =0xFFFF3224
	subeq r3, r0, r1
	beq _020C4BE0
	mvn r2, #0
	cmp r3, r2
	ldreq r0, _020C4BFC ; =0xFFFF347C
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #1
	cmp r3, r0
	ldreq r0, _020C4C00 ; =0xFFFF3418
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #2
	cmp r3, r0
	ldreq r0, _020C4C04 ; =0xFFFF33B4
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #3
	cmp r3, r0
	ldreq r0, _020C4C08 ; =0xFFFF30F8
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #4
	cmp r3, r0
	ldreq r0, _020C4C0C ; =0xFFFF3094
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #5
	cmp r3, r0
	ldreq r0, _020C4C10 ; =0xFFFF3030
	subeq r3, r0, r1
_020C4BE0:
	mov r0, r3
	bx lr
_020C4BE8: .word 0xFFFF3864
_020C4BEC: .word 0xFFFF379C
_020C4BF0: .word 0xFFFF34E0
_020C4BF4: .word 0xFFFF3CB0
_020C4BF8: .word 0xFFFF3224
_020C4BFC: .word 0xFFFF347C
_020C4C00: .word 0xFFFF3418
_020C4C04: .word 0xFFFF33B4
_020C4C08: .word 0xFFFF30F8
_020C4C0C: .word 0xFFFF3094
_020C4C10: .word 0xFFFF3030
	arm_func_end GetNotFoundInet
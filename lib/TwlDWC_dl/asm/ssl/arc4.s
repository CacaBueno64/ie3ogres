
	.include "asm/macros/function.inc"

	.text
	arm_func_start CPSi_rc4_init
CPSi_rc4_init: ; 0x020DB680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	add r4, r0, #2
_020DB694:
	strb r3, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020DB694
	mov r6, #0
	mov r5, r6
	mov r7, r6
	mov r0, r6
_020DB6B4:
	ldrb lr, [r4, r7]
	ldrb r12, [r1, r6]
	add r3, r6, #1
	and r6, r3, #0xff
	add r3, lr, r12
	and r3, r3, #0xff
	add r3, r5, r3
	and r5, r3, #0xff
	ldrb r3, [r4, r5]
	cmp r6, r2
	movge r6, r0
	strb r3, [r4, r7]
	add r7, r7, #1
	strb lr, [r4, r5]
	cmp r7, #0x100
	blt _020DB6B4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CPSi_rc4_init

	arm_func_start CPSi_rc4_crypt
CPSi_rc4_crypt: ; 0x020DB6F8
	stmfd sp!, {r4, r5, r6, lr}
	cmp r2, #0
	add r4, r0, #2
	ldrb r12, [r0]
	ldrb lr, [r0, #1]
	mov r3, #0
	ble _020DB758
_020DB714:
	add r5, r12, #1
	and r12, r5, #0xff
	ldrb r6, [r4, r12]
	add r5, lr, r6
	and lr, r5, #0xff
	ldrb r5, [r4, lr]
	strb r5, [r4, r12]
	add r5, r6, r5
	strb r6, [r4, lr]
	and r5, r5, #0xff
	ldrb r6, [r1, r3]
	ldrb r5, [r4, r5]
	eor r5, r6, r5
	strb r5, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	blt _020DB714
_020DB758:
	strb r12, [r0]
	strb lr, [r0, #1]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end CPSi_rc4_crypt

	.include "asm/macros/function.inc"
	.public DWC_Auth_SetCustomNas

	.text
	arm_func_start DWCi_Auth_InitInterface
DWCi_Auth_InitInterface: ; 0x020C7978
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020C7998
	cmp r0, #1
	beq _020C79AC
	cmp r0, #2
	beq _020C79A4
	b _020C79B4
_020C7998:
	ldr r0, _020C79C4 ; =0x020E44E8
_020C799C:
	bl DWC_Auth_SetCustomNas
	b _020C79BC
_020C79A4:
	ldr r0, _020C79C8 ; =0x020E4510
	b _020C799C
_020C79AC:
	ldr r0, _020C79CC ; =0x020E4534
	b _020C799C
_020C79B4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020C79BC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C79C4: .word ov15_020E44E8
_020C79C8: .word ov15_020E4510
_020C79CC: .word ov15_020E4534
	arm_func_end DWCi_Auth_InitInterface

	.data
ov15_020E44E8:
	.asciz "https://nas.test.nintendowifi.net/ac"
	.balign 4, 0
ov15_020E4510:
	.asciz "https://nas.dev.nintendowifi.net/ac"
	.balign 4, 0
ov15_020E4534:
	.asciz "https://nas.nintendowifi.net/ac"
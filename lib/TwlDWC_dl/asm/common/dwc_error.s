
	.include "asm/macros/function.inc"

	.text
	arm_func_start DWC_GetLastError
DWC_GetLastError: ; 0x020CC180
	cmp r0, #0
	ldrne r1, _020CC19C ; =stDwcLastError
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _020CC19C ; =stDwcLastError
	ldr r0, [r0]
	bx lr
_020CC19C: .word stDwcLastError
	arm_func_end DWC_GetLastError

	arm_func_start DWC_GetLastErrorEx
DWC_GetLastErrorEx: ; 0x020CC1A0
	cmp r0, #0
	ldrne r2, _020CC278 ; =stDwcLastError
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _020CC26C
	ldr r0, _020CC278 ; =stDwcLastError
	ldr r0, [r0]
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020CC264
_020CC1CC: ; jump table
	b _020CC264 ; case 0
	b _020CC244 ; case 1
	b _020CC224 ; case 2
	b _020CC224 ; case 3
	b _020CC224 ; case 4
	b _020CC224 ; case 5
	b _020CC228 ; case 6
	b _020CC234 ; case 7
	b _020CC224 ; case 8
	b _020CC244 ; case 9
	b _020CC23C ; case 10
	b _020CC23C ; case 11
	b _020CC23C ; case 12
	b _020CC24C ; case 13
	b _020CC254 ; case 14
	b _020CC25C ; case 15
	b _020CC254 ; case 16
	b _020CC25C ; case 17
	b _020CC254 ; case 18
	b _020CC25C ; case 19
	b _020CC23C ; case 20
	b _020CC230 ; case 21
_020CC224:
	b _020CC254
_020CC228:
	mov r0, #3
	b _020CC268
_020CC230:
	b _020CC25C
_020CC234:
	mov r0, #4
	b _020CC268
_020CC23C:
	mov r0, #1
	b _020CC268
_020CC244:
	mov r0, #7
	b _020CC268
_020CC24C:
	mov r0, #5
	b _020CC268
_020CC254:
	mov r0, #6
	b _020CC268
_020CC25C:
	mov r0, #2
	b _020CC268
_020CC264:
	mov r0, #0
_020CC268:
	str r0, [r1]
_020CC26C:
	ldr r0, _020CC278 ; =stDwcLastError
	ldr r0, [r0]
	bx lr
_020CC278: .word stDwcLastError
	arm_func_end DWC_GetLastErrorEx

	arm_func_start DWC_ClearError
DWC_ClearError: ; 0x020CC27C
	ldr r0, _020CC298 ; =stDwcLastError
	ldr r1, [r0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
_020CC298: .word stDwcLastError
	arm_func_end DWC_ClearError

	arm_func_start DWCi_IsError
DWCi_IsError: ; 0x020CC29C
	ldr r0, _020CC2B4 ; =stDwcLastError
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020CC2B4: .word stDwcLastError
	arm_func_end DWCi_IsError

	arm_func_start DWCi_SetError
DWCi_SetError: ; 0x020CC2B8
	ldr r2, _020CC2CC ; =stDwcLastError
	ldr r3, [r2]
	cmp r3, #9
	stmneia r2, {r0, r1}
	bx lr
_020CC2CC: .word stDwcLastError
	arm_func_end DWCi_SetError

	.bss
	.global stDwcLastError
stDwcLastError:
	.space 0x04
	.global stDwcErrorCode
stDwcErrorCode:
	.space 0x04
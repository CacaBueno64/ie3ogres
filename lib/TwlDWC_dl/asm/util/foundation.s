
	.include "asm/macros/function.inc"

	.text
	arm_func_start DWCi_InputCoord
DWCi_InputCoord: ; 0x0210DC7C
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	arm_func_end DWCi_InputCoord

	arm_func_start DWCi_InputRect
DWCi_InputRect: ; 0x0210DC88
	ldr r12, [sp]
	strh r0, [r12]
	strh r1, [r12, #2]
	strh r2, [r12, #4]
	strh r3, [r12, #6]
	bx lr
	arm_func_end DWCi_InputRect

	arm_func_start DWCi_Coord2Rect
DWCi_Coord2Rect: ; 0x0210DCA0
	stmfd sp!, {r3, lr}
	ldrh lr, [r0]
	ldrh r12, [r0, #2]
	ldrh r3, [r1]
	ldrh r0, [r1, #2]
	strh lr, [r2]
	add r1, lr, r3
	add r0, r12, r0
	strh r12, [r2, #2]
	strh r1, [r2, #4]
	strh r0, [r2, #6]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_Coord2Rect

	.rodata
	.global DWCi_R_SCR
DWCi_R_SCR:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00

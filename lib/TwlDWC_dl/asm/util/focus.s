
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_

	.text
	arm_func_start DWCi_FOCUSlInit
DWCi_FOCUSlInit: ; 0x020F5094
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F50B0 ; =0x021161B0
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F50B0: .word MemFocus
	arm_func_end DWCi_FOCUSlInit

	arm_func_start DWCi_FOCUSlEnd
DWCi_FOCUSlEnd: ; 0x020F50B4
	stmfd sp!, {r3, lr}
	bl DWCi_FOCUSlDelete
	ldr r0, _020F50C8 ; =0x021161B0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_020F50C8: .word MemFocus
	arm_func_end DWCi_FOCUSlEnd

	arm_func_start DWCi_FOCUSlDisp
DWCi_FOCUSlDisp: ; 0x020F50CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	mov r11, r1
	str r2, [sp]
	mov r10, r3
	bl DWCi_FOCUSlDelete
	ldr r0, _020F5170 ; =0x02111D00
	mov r9, #0
	add r7, r0, r4, lsl #1
	ldr r4, _020F5174 ; =0x021161B0
	mov r8, r9
	mov r6, #1
	mvn r5, #0
_020F5100:
	ldrb r1, [r9, r7]
	mov r0, r8
	mov r2, r6
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, r9, lsl #2]
	ldr r0, [r4]
	mov r2, r6
	ldr r0, [r0, r9, lsl #2]
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, #2
	blt _020F5100
	ldr r4, _020F5174 ; =0x021161B0
	mov r1, r5
	ldr r0, [r4]
	mov r2, r11
	ldr r0, [r0]
	mov r3, r10
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	ldr r2, [sp]
	ldr r0, [r0, #4]
	mov r1, r5
	mov r3, r10
	bl DWCi_CELLlSetPosition
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5170: .word CELL_IDX
_020F5174: .word MemFocus
	arm_func_end DWCi_FOCUSlDisp

	arm_func_start DWCi_FOCUSlDisp4
DWCi_FOCUSlDisp4: ; 0x020F5178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r11, r1
	str r2, [sp]
	str r3, [sp, #4]
	mov r8, #6
	bl DWCi_FOCUSlDelete
	mov r9, #0
	ldr r4, _020F5254 ; =0x021161B0
	mov r7, r9
	mov r6, #1
	mvn r5, #0
_020F51AC:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, r9, lsl #2]
	ldr r0, [r4]
	mov r2, r6
	ldr r0, [r0, r9, lsl #2]
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, #4
	add r8, r8, #1
	blt _020F51AC
	ldr r4, _020F5254 ; =0x021161B0
	ldr r3, [sp]
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0]
	mov r2, r10
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	ldr r3, [sp]
	ldr r0, [r0, #4]
	mov r1, r5
	mov r2, r11
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	ldr r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r10
	mov r1, r5
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	ldr r3, [sp, #4]
	ldr r0, [r0, #0xc]
	mov r1, r5
	mov r2, r11
	bl DWCi_CELLlSetPosition
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5254: .word MemFocus
	arm_func_end DWCi_FOCUSlDisp4

	arm_func_start DWCi_FOCUSlDelete
DWCi_FOCUSlDelete: ; 0x020F5258
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _020F5294 ; =0x021161B0
	mov r5, r6
_020F5268:
	ldr r0, [r4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _020F5284
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	str r5, [r0, r6, lsl #2]
_020F5284:
	add r6, r6, #1
	cmp r6, #4
	blt _020F5268
	ldmfd sp!, {r4, r5, r6, pc}
_020F5294: .word MemFocus
	arm_func_end DWCi_FOCUSlDelete

	.rodata
CELL_IDX:
	.byte 0x0A, 0x0B, 0x04, 0x05, 0x02, 0x03, 0x0C, 0x0D

	.bss
MemFocus:
	.space 0x04

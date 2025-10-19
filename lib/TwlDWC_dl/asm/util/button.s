
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlGetPosition
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_Coord2Rect
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlChangeFunc
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm

	.text
	arm_func_start DWCi_BTNlInit
DWCi_BTNlInit: ; 0x020F4694
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #4
	mov r4, r0
	ldr r2, _020F4784 ; =BUTTON_NUM
	mov r1, r5
	mov r0, #0x1c
	ldrb r7, [r2, r4]
	bl DWCi_HEAPlAllocEx
	ldr r9, _020F4788 ; =MemBtn
	sub r1, r5, #6
	str r0, [r9]
	strb r1, [r0, #0x16]
	ldr r0, [r9]
	cmp r7, #0
	strb r4, [r0, #0x17]
	mov r8, #0
	ble _020F4724
	ldr r0, _020F478C ; =CELL_BUTTON
	mov r6, r8
	add r5, r0, r4, lsl #1
	mov r4, #1
	mvn r10, #0
_020F46EC:
	ldrb r1, [r8, r5]
	mov r0, r6
	mov r2, r4
	bl DWCi_CEINlSetExCell
	ldr r2, [r9]
	mov r1, r10
	str r0, [r2, r8, lsl #2]
	ldr r0, [r9]
	mov r2, r4
	ldr r0, [r0, r8, lsl #2]
	bl DWCi_CELLlSetPriority
	add r8, r8, #1
	cmp r8, r7
	blt _020F46EC
_020F4724:
	mov r5, #1
	mov r6, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl DWCi_CEINlSetExCell
	ldr r4, _020F4788 ; =MemBtn
	mov r2, r5
	ldr r3, [r4]
	sub r1, r5, #2
	str r0, [r3, #8]
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl DWCi_CELLlSetPriority
	mov r0, #0xc0
	bl disp
	mov r0, r6
	mov r2, r6
	ldr r1, _020F4790 ; =taskStart
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4784: .word BUTTON_NUM
_020F4788: .word MemBtn
_020F478C: .word CELL_BUTTON
_020F4790: .word taskStart
	arm_func_end DWCi_BTNlInit

	arm_func_start DWCi_BTNlEnd
DWCi_BTNlEnd: ; 0x020F4794
	ldr r0, _020F47B8 ; =MemBtn
	mov r3, #1
	ldr r2, [r0]
	ldr r1, _020F47BC ; =taskEnd
	strb r3, [r2, #0x19]
	ldr r0, [r0]
	ldr r12, _020F47C0 ; =DWCi_TSKlChangeFunc
	ldr r0, [r0, #0xc]
	bx r12
_020F47B8: .word MemBtn
_020F47BC: .word taskEnd
_020F47C0: .word DWCi_TSKlChangeFunc
	arm_func_end DWCi_BTNlEnd

	arm_func_start DWCi_BTNlGet
DWCi_BTNlGet: ; 0x020F47C4
	ldr r0, _020F47D4 ; =MemBtn
	ldr r0, [r0]
	ldrsb r0, [r0, #0x16]
	bx lr
_020F47D4: .word MemBtn
	arm_func_end DWCi_BTNlGet

	arm_func_start DWCi_BTNlSet
DWCi_BTNlSet: ; 0x020F47D8
	ldr r1, _020F47F0 ; =MemBtn
	ldr r2, [r1]
	ldrsb r1, [r2, #0x16]
	cmn r1, #1
	streqb r0, [r2, #0x16]
	bx lr
_020F47F0: .word MemBtn
	arm_func_end DWCi_BTNlSet

	arm_func_start DWCi_BTNlSetForce
DWCi_BTNlSetForce: ; 0x020F47F4
	ldr r1, _020F4804 ; =MemBtn
	ldr r1, [r1]
	strb r0, [r1, #0x16]
	bx lr
_020F4804: .word MemBtn
	arm_func_end DWCi_BTNlSetForce

	arm_func_start DWCi_BTNlIsEnd
DWCi_BTNlIsEnd: ; 0x020F4808
	ldr r0, _020F4830 ; =MemBtn
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F4830: .word MemBtn
	arm_func_end DWCi_BTNlIsEnd

	arm_func_start DWCi_BTNlEnable
DWCi_BTNlEnable: ; 0x020F4834
	ldr r0, _020F4848 ; =MemBtn
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4848: .word MemBtn
	arm_func_end DWCi_BTNlEnable

	arm_func_start DWCi_BTNlDisable
DWCi_BTNlDisable: ; 0x020F484C
	ldr r0, _020F4860 ; =MemBtn
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4860: .word MemBtn
	arm_func_end DWCi_BTNlDisable

	arm_static_func_start disp
disp: ; 0x020F4864
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r9, _020F48E4 ; =MemBtn
	mov r8, r0
	ldr r2, [r9]
	ldr r0, _020F48E8 ; =BUTTON_NUM
	ldrb r1, [r2, #0x17]
	mvn r5, #0
	mov r7, #0
	ldrb r6, [r0, r1]
	ldr r0, [r2, #8]
	mov r1, r5
	mov r2, r7
	mov r3, r8
	bl DWCi_CELLlSetPosition
	cmp r6, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _020F48EC ; =POS_TBL
	ldr r10, _020F48F0 ; =C_BUTTON
_020F48AC:
	ldr r0, [r9]
	mov r1, r5
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r7, lsl #2]
	add r3, r8, #4
	add r2, r4, r2, lsl #1
	ldrb r2, [r7, r2]
	mov r2, r2, lsl #2
	ldrh r2, [r10, r2]
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, r6
	blt _020F48AC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F48E4: .word MemBtn
_020F48E8: .word BUTTON_NUM
_020F48EC: .word POS_TBL
_020F48F0: .word C_BUTTON
	arm_func_end disp

	arm_static_func_start taskStart
taskStart: ; 0x020F48F4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4958 ; =MemBtn
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	sub r0, r0, #4
	str r0, [sp]
	bl disp
	ldr r0, [sp]
	cmp r0, #0xa8
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, pc}
	mov r0, #0xa8
	bl disp
	ldr r1, _020F495C ; =taskStart1
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4958: .word MemBtn
_020F495C: .word taskStart1
	arm_func_end taskStart

	arm_static_func_start taskStart1
taskStart1: ; 0x020F4960
	stmfd sp!, {r3, lr}
	ldr r1, _020F49A8 ; =MemBtn
	mvn r3, #0
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r3, [r1]
	ldrh r2, [r3, #0x14]
	add r2, r2, #1
	strh r2, [r3, #0x14]
	ldr r3, [r1]
	ldrh r1, [r3, #0x14]
	cmp r1, #4
	ldmlofd sp!, {r3, pc}
	ldr r1, _020F49AC ; =taskMain
	mov r2, #0
	strh r2, [r3, #0x14]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, pc}
_020F49A8: .word MemBtn
_020F49AC: .word taskMain
	arm_func_end taskStart1

	arm_static_func_start taskMain
taskMain: ; 0x020F49B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r5, _020F4B0C ; =MemBtn
	ldr r1, _020F4B10 ; =BUTTON_NUM
	ldr r3, [r5]
	ldrb r2, [r3, #0x17]
	ldrb r0, [r3, #0x18]
	ldrb r4, [r1, r2]
	cmp r0, #0
	bne _020F4AF4
	ldrsb r0, [r3, #0x16]
	cmn r0, #1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r4, #0
	mov r8, #0
	ble _020F4AF4
	ldr r7, _020F4B14 ; =C_BUTTON
	ldr r6, _020F4B18 ; =POS_TBL
	ldr r10, _020F4B1C ; =S_BUTTON
	add r9, sp, #0
_020F4A04:
	ldr r0, [r5]
	mov r1, r10
	ldrb r0, [r0, #0x17]
	mov r2, r9
	add r0, r6, r0, lsl #1
	ldrb r0, [r8, r0]
	add r0, r7, r0, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r9
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F4AE8
	ldr r9, _020F4B0C ; =MemBtn
	ldr r2, [r9]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _020F4AF4
	ldrb r1, [r2, #0x17]
	ldr r0, _020F4B20 ; =CELL_BUTTON
	mov r5, #0
	add r0, r0, r1, lsl #1
	ldrb r4, [r8, r0]
	ldr r0, [r2, r8, lsl #2]
	mov r1, r5
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r5
	add r1, r4, #1
	bl DWCi_CEINlSet
	ldr r0, [r9]
	ldr r3, _020F4B24 ; =0x02111C8E
	ldrb r2, [r0, #0x17]
	sub r4, r5, #1
	ldr r0, [r0, r8, lsl #2]
	add r2, r6, r2, lsl #1
	ldrb r2, [r8, r2]
	mov r1, r4
	mov r6, r2, lsl #2
	ldrh r2, [r7, r6]
	ldrh r3, [r3, r6]
	bl DWCi_CELLlSetPosition
	ldr r0, [r9]
	mov r1, r4
	ldr r0, [r0, r8, lsl #2]
	mov r2, #1
	bl DWCi_CELLlSetPriority
	ldr r1, _020F4B28 ; =taskRelease
	mov r0, r5
	mov r2, r5
	mov r3, #0x6e
	bl DWCi_TSKlForm
	ldr r1, [r9]
	add sp, sp, #8
	str r0, [r1, #0x10]
	ldr r0, [r9]
	strb r8, [r0, #0x16]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4AE8:
	add r8, r8, #1
	cmp r8, r4
	blt _020F4A04
_020F4AF4:
	ldr r0, _020F4B0C ; =MemBtn
	mvn r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x16]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4B0C: .word MemBtn
_020F4B10: .word BUTTON_NUM
_020F4B14: .word C_BUTTON
_020F4B18: .word POS_TBL
_020F4B1C: .word S_BUTTON
_020F4B20: .word CELL_BUTTON
_020F4B24: .word C_BUTTON+2
_020F4B28: .word taskRelease
	arm_func_end taskMain

	arm_static_func_start taskEnd
taskEnd: ; 0x020F4B2C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4B88 ; =MemBtn
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	bl disp
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, pc}
	ldr r1, _020F4B8C ; =taskEnd1
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4B88: .word MemBtn
_020F4B8C: .word taskEnd1
	arm_func_end taskEnd

	arm_static_func_start taskEnd1
taskEnd1: ; 0x020F4B90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl DWCi_TSKlDelete
	ldr r0, _020F4C04 ; =MemBtn
	ldr r0, [r0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020F4BC0
	mov r0, r4
	bl DWCi_TSKlDelete
_020F4BC0:
	ldr r4, _020F4C04 ; =MemBtn
	mov r5, #0
_020F4BC8:
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _020F4BDC
	bl DWCi_CELLlDelete
_020F4BDC:
	add r5, r5, #1
	cmp r5, #2
	blt _020F4BC8
	ldr r0, _020F4C04 ; =MemBtn
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl DWCi_CELLlDelete
	ldr r0, _020F4C08 ; =MemBtn
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_020F4C04: .word MemBtn
_020F4C08: .word MemBtn
	arm_func_end taskEnd1

	arm_static_func_start taskRelease
taskRelease: ; 0x020F4C0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020F4CF0 ; =MemBtn
	str r0, [sp]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x10
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r1, #0x17]
	ldr r0, _020F4CF4 ; =BUTTON_NUM
	mov r9, #0
	ldrb r8, [r0, r1]
	cmp r8, #0
	ble _020F4CAC
	ldr r7, _020F4CF8 ; =CELL_BUTTON
	mov r6, r9
	mvn r5, #0
	mov r11, #1
_020F4C60:
	ldr r0, [r4]
	mov r1, r6
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r9, lsl #2]
	add r2, r7, r2, lsl #1
	ldrb r10, [r9, r2]
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r6
	mov r1, r10
	bl DWCi_CEINlSet
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, r9, lsl #2]
	mov r2, r11
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, r8
	blt _020F4C60
_020F4CAC:
	mov r0, #0xa8
	bl disp
	ldr r1, _020F4CF0 ; =MemBtn
	mov r0, #0
	ldr r2, [r1]
	sub r3, r0, #1
	strh r0, [r2, #0x14]
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r2, [r1]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	str r0, [r2, #0x10]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F4CF0: .word MemBtn
_020F4CF4: .word BUTTON_NUM
_020F4CF8: .word CELL_BUTTON
	arm_func_end taskRelease

	.rodata
C_BUTTON_BACK:
	.byte 0x00, 0x00, 0xA8, 0x00
S_BUTTON:
	.byte 0x78, 0x00, 0x10, 0x00
BUTTON_NUM:
	.byte 0x02, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x00
C_BUTTON:
	.byte 0x08, 0x00, 0xAC, 0x00, 0x84, 0x00, 0xAC, 0x00
CELL_BUTTON:
	.byte 0x27, 0x1F, 0x25, 0x00, 0x27, 0x00, 0x23, 0x1D, 0x21, 0x00, 0x59, 0x00, 0x27, 0x21
POS_TBL:
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01

	.bss
MemBtn:
	.space 0x04

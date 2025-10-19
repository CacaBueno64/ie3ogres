
	.include "asm/macros/function.inc"
	.public DWCiMsgCmn
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlForm
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlGetObjNum
	.public DWCi_CELLlGetPosition
	.public DWCi_CELLlSetEffect
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_CMNlFontFlag
	.public DWCi_Coord2Rect
	.public DWCi_FNTlDrawRect
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_MSGlGetEx
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlChangeFunc
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public DWCi_FNTlFormEx
	.public DWCi_FNTlDelete
	.public DWCi_FNTlDisp
	.public DWCi_InputRect
	.public DWCi_GXlSetWndPosition
	.public DWCi_GXlSetWndPlane
	.public DWCi_IPTlCheckTrigger
	.public G2x_ChangeBlendBrightness_
	.public G2x_SetBlendBrightness_

	.text
	arm_func_start DWCi_WINlInitEx
DWCi_WINlInitEx: ; 0x02108E9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r5, _02109188 ; =0x021126D4
	ldr r4, _0210918C ; =DWCiMsgCmn
	ldrb r10, [r5]
	ldrb r9, [r5, #1]
	ldrb r8, [r5, #2]
	ldrb r7, [r5, #3]
	ldrb r6, [r5, #4]
	ldrb r5, [r5, #5]
	strb r10, [sp, #0x1c]
	mov r11, r0
	str r2, [sp, #0x10]
	mov r2, r3
	mov r10, r1
	ldr r0, [r4]
	ldr r3, [sp, #0x48]
	mov r1, r11
	strb r9, [sp, #0x1d]
	strb r8, [sp, #0x1e]
	strb r7, [sp, #0x1f]
	strb r6, [sp, #0x20]
	strb r5, [sp, #0x21]
	bl DWCi_MSGlGetEx
	mov r4, #4
	str r0, [sp, #0x14]
	mov r1, r4
	mov r0, #0x20
	bl DWCi_HEAPlAllocEx
	sub r3, r4, #6
	ldr r4, _02109190 ; =0x021162B8
	mov r9, #0
	str r0, [r4]
	strb r10, [r0, #0x1c]
	ldr r2, [r4]
	ldr r0, _02109194 ; =0x04000050
	strb r3, [r2, #0x1b]
	ldr r3, [r4]
	ldr r2, [sp, #0x10]
	mov r1, #0x1f
	strb r2, [r3, #0x1e]
	mov r2, r9
	bl G2x_SetBlendBrightness_
	ldr r1, _02109198 ; =0x0211261C
	mov r0, r9
	ldrb r1, [r1, r10]
	mov r2, r9
	bl DWCi_CEINlSetExCell
	ldr r1, [r4]
	sub r8, r9, #1
	str r0, [r1]
	ldr r0, [r4]
	mov r1, r8
	ldr r0, [r0]
	mov r2, #0x100
	mov r3, r9
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	mov r1, r8
	ldr r0, [r0]
	mov r2, r9
	bl DWCi_CELLlSetPriority
	ldr r1, _0210919C ; =0x02112622
	ldrb r0, [r1, r10]
	cmp r0, #0
	ble _02109014
	ldr r0, _021091A0 ; =0x02112644
	ldrb r5, [r1, r10]
	add r6, r0, r10, lsl #1
	mov r7, r9
	mov r11, #0x100
_02108FB8:
	ldrb r1, [r9, r6]
	mov r0, r7
	mov r2, r7
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r8
	add r2, r2, r9, lsl #2
	str r0, [r2, #8]
	ldr r0, [r4]
	mov r2, r11
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	mov r3, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	mov r1, r8
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	mov r2, r7
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, r5
	blt _02108FB8
_02109014:
	add r0, sp, #0x18
	mov r4, #1
	mov r5, #0
	str r0, [sp]
	mov r0, r5
	mov r3, r4
	mov r1, #0x20
	mov r2, #0xc
	str r5, [sp, #4]
	bl DWCi_FNTlFormEx
	ldr r6, _02109190 ; =0x021162B8
	mov r2, r5
	ldr r1, [r6]
	str r0, [r1, #0x10]
	ldr r1, [sp, #0x18]
	mov r0, r5
	bl DWCi_CELLlForm
	ldr r1, [r6]
	str r0, [r1, #4]
	bl DWCi_CMNlFontFlag
	ldr r1, _021091A4 ; =0x02112664
	mov r8, r10, lsl #2
	ldrh r7, [r1, r8]
	mov r3, #2
	mov r1, r5
	str r7, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, _021091A8 ; =0x02112662
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldrh r3, [r3, r8]
	ldr r0, [r0, #0x10]
	mov r2, r5
	bl DWCi_FNTlDrawRect
	ldr r2, [r6]
	mov r1, #0x100
	str r5, [sp]
	ldr r0, [r2, #0x10]
	ldr r3, [r2, #4]
	mov r2, r5
	bl DWCi_FNTlDisp
	mov r8, #0x1f
	mov r0, r5
	mov r1, r5
	mov r2, r8
	mov r3, r5
	bl DWCi_GXlSetWndPlane
	ldr r7, [r6]
	add r3, sp, #0x1c
	ldrb r7, [r7, #0x1c]
	mov r0, r5
	mov r1, r4
	ldrb r3, [r3, r7]
	mov r2, r8
	bl DWCi_GXlSetWndPlane
	mov r2, r8
	mov r0, r5
	mov r1, #3
	mov r3, r4
	bl DWCi_GXlSetWndPlane
	ldr r2, _021091AC ; =0x02112628
	mov r0, r5
	mov r1, r4
	bl DWCi_GXlSetWndPosition
	mov r0, #0xc0
	bl disp
	mov r2, #0x4000000
	ldr r0, [sp, #0x10]
	ldr r1, [r2]
	cmp r0, #0
	bic r0, r1, #0xe000
	orr r0, r0, #0x6000
	str r0, [r2]
	mov r3, #0x78
	beq _02109168
	ldr r1, _021091B0 ; =taskV
	mov r0, r4
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r6]
	add sp, sp, #0x24
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109168:
	ldr r1, _021091B4 ; =taskMove
	mov r0, r4
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r6]
	str r0, [r1, #0x14]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109188: .word ov17_021126D4
_0210918C: .word DWCiMsgCmn
_02109190: .word MemWin
_02109194: .word 0x04000050
_02109198: .word CELL_WINDOW
_0210919C: .word BUTTON_NUM
_021091A0: .word CELL_BUTTON
_021091A4: .word S_CHAR+2
_021091A8: .word S_CHAR
_021091AC: .word R_WIN1
_021091B0: .word taskV
_021091B4: .word taskMove
	arm_func_end DWCi_WINlInitEx

	arm_func_start DWCi_WINlEnd
DWCi_WINlEnd: ; 0x021091B8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _021091F4 ; =0x021162B8
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r1, [r1, #0x14]
	bl DWCi_TSKlDelete
	ldr r1, _021091F8 ; =taskEnd
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021091F4: .word MemWin
_021091F8: .word taskEnd
	arm_func_end DWCi_WINlEnd

	arm_func_start DWCi_WINlGet
DWCi_WINlGet: ; 0x021091FC
	ldr r0, _0210920C ; =0x021162B8
	ldr r0, [r0]
	ldrsb r0, [r0, #0x1b]
	bx lr
_0210920C: .word MemWin
	arm_func_end DWCi_WINlGet

	arm_func_start DWCi_WINlIsInit
DWCi_WINlIsInit: ; 0x02109210
	ldr r0, _02109228 ; =0x021162B8
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02109228: .word MemWin
	arm_func_end DWCi_WINlIsInit

	arm_static_func_start taskV
taskV: ; 0x0210922C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02109278 ; =0x021162B8
	mov r4, r0
	ldr r2, [r5]
	ldr r0, _0210927C ; =0x04000050
	ldrsb r1, [r2, #0x1a]
	sub r1, r1, #1
	strb r1, [r2, #0x1a]
	ldr r1, [r5]
	ldrsb r1, [r1, #0x1a]
	bl G2x_ChangeBlendBrightness_
	ldr r0, [r5]
	ldrsb r0, [r0, #0x1a]
	cmn r0, #0xc
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r1, _02109280 ; =taskMove
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, r4, r5, pc}
_02109278: .word MemWin
_0210927C: .word 0x04000050
_02109280: .word taskMove
	arm_func_end taskV

	arm_static_func_start taskMove
taskMove: ; 0x02109284
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r6, _02109334 ; =0x021162B8
	mov r4, #0
	ldr r1, [r6]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	ldr r1, [r6]
	sub r0, r0, #0xc
	str r0, [sp]
	ldrb r2, [r1, #0x1c]
	ldr r1, _02109338 ; =0x0211267C
	mov r2, r2, lsl #2
	ldrh r1, [r1, r2]
	cmp r0, r1
	ble _021092E4
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021092E4:
	mov r0, r1
	bl disp
	ldr r0, [r6]
	mov r3, #0x78
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	bne _02109308
	ldr r1, _0210933C ; =taskMain1
	b _0210930C
_02109308:
	ldr r1, _02109340 ; =taskMain
_0210930C:
	mov r0, r4
	mov r2, r4
	bl DWCi_TSKlForm
	ldr r1, [r6]
	str r0, [r1, #0x14]
	mov r1, r5
	mov r0, #1
	bl DWCi_TSKlDelete
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02109334: .word MemWin
_02109338: .word C_WIN+2
_0210933C: .word taskMain1
_02109340: .word taskMain
	arm_func_end taskMove

	arm_static_func_start taskMain
taskMain: ; 0x02109344
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r4, _02109474 ; =0x021162B8
	ldr r9, _02109478 ; =0x02112622
	ldr r0, [r4]
	mov r10, #0
	ldrb r1, [r0, #0x1c]
	ldrb r0, [r9, r1]
	cmp r0, #0
	ble _021093CC
	ldr r8, _0210947C ; =0x021126AA
	ldr r7, _02109480 ; =0x02112630
	ldr r6, _02109484 ; =0x0211264E
	add r5, sp, #0
_0210937C:
	add r0, r7, r1, lsl #1
	ldrb r0, [r10, r0]
	add r3, r8, r1, lsl #3
	mov r2, r5
	add r0, r3, r0, lsl #2
	add r1, r6, r1, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	ldrne r0, _02109474 ; =0x021162B8
	ldrne r0, [r0]
	strneb r10, [r0, #0x1b]
	bne _021093CC
	ldr r0, [r4]
	add r10, r10, #1
	ldrb r1, [r0, #0x1c]
	ldrb r0, [r9, r1]
	cmp r10, r0
	blt _0210937C
_021093CC:
	mov r0, #1
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _021093F4
	ldr r2, [r4]
	ldr r0, _02109488 ; =0x0211263A
	ldrb r1, [r2, #0x1c]
	mov r1, r1, lsl #1
	ldrsb r0, [r0, r1]
	strb r0, [r2, #0x1b]
_021093F4:
	mov r0, #2
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _0210941C
	ldr r2, [r4]
	ldr r0, _0210948C ; =0x0211263B
	ldrb r1, [r2, #0x1c]
	mov r1, r1, lsl #1
	ldrsb r0, [r0, r1]
	strb r0, [r2, #0x1b]
_0210941C:
	ldr r4, [r4]
	ldr r2, _02109478 ; =0x02112622
	ldrb r1, [r4, #0x1c]
	mov r0, #0
	ldrb r1, [r2, r1]
	cmp r1, #0
	ble _02109464
	ldrsb r3, [r4, #0x1b]
_0210943C:
	cmp r0, r3
	bne _02109450
	bl pushButton
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02109450:
	ldrb r1, [r4, #0x1c]
	add r0, r0, #1
	ldrb r1, [r2, r1]
	cmp r0, r1
	blt _0210943C
_02109464:
	mvn r0, #0
	strb r0, [r4, #0x1b]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02109474: .word MemWin
_02109478: .word BUTTON_NUM
_0210947C: .word C_BUTTON
_02109480: .word POS_TBL
_02109484: .word S_BUTTON
_02109488: .word IPT_KEY
_0210948C: .word IPT_KEY+1
	arm_func_end taskMain

	arm_static_func_start taskMain1
taskMain1: ; 0x02109490
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _021094F4 ; =0x021162B8
	mvn r3, #0
	ldr r2, [r4]
	mov r1, r0
	strb r3, [r2, #0x1b]
	ldr r2, [r4]
	ldrh r0, [r2, #0x18]
	add r0, r0, #1
	strh r0, [r2, #0x18]
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x78
	ldmlofd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r0, r5
	bl DWCi_TSKlDelete
	ldr r1, _021094F8 ; =taskEnd
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021094F4: .word MemWin
_021094F8: .word taskEnd
	arm_func_end taskMain1

	arm_static_func_start disp
disp: ; 0x021094FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _0210966C ; =0x021162B8
	mov r10, r0
	ldr r0, [r4]
	mvn r8, #0
	ldrb r1, [r0, #0x1c]
	ldr r7, _02109670 ; =0x0211267A
	ldr r0, [r0]
	mov r1, r1, lsl #2
	ldrh r2, [r7, r1]
	mov r1, r8
	mov r3, r10
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	mov r1, r8
	ldrb r2, [r0, #0x1c]
	ldr r0, [r0, #4]
	add r3, r10, #8
	mov r2, r2, lsl #2
	ldrh r2, [r7, r2]
	add r2, r2, #8
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	mov r1, r10
	ldr r0, [r0]
	bl dispCell
	ldr r0, [r4]
	mov r1, r10
	ldr r0, [r0, #4]
	bl dispCell
	ldr r0, [r4]
	mov r9, #0
	ldrb r0, [r0, #0x1c]
	ldr r6, _02109674 ; =0x02112622
	ldrb r1, [r6, r0]
	cmp r1, #0
	ble _02109608
	ldr r5, _02109678 ; =0x02112630
	ldr r11, _0210967C ; =0x021126AA
_0210959C:
	add r1, r5, r0, lsl #1
	ldrb r12, [r9, r1]
	add r2, r11, r0, lsl #3
	add r3, r7, r0, lsl #2
	add r0, r2, r12, lsl #2
	ldr r1, [r4]
	mov r12, r12, lsl #2
	ldrh r2, [r12, r2]
	ldrh r0, [r0, #2]
	add r1, r1, r9, lsl #2
	ldrh r3, [r3, #2]
	add r12, r10, r0
	ldr r0, [r1, #8]
	mov r1, r8
	sub r3, r12, r3
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	mov r1, r10
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	bl dispCell
	ldr r0, [r4]
	add r9, r9, #1
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r6, r0]
	cmp r9, r1
	blt _0210959C
_02109608:
	and r1, r10, #0xff
	cmp r1, #0xc0
	movge r3, #0
	movge r1, r3
	ldrlt r2, _02109680 ; =0x02112694
	movlt r3, r0, lsl #2
	ldrlth r2, [r2, r3]
	ldr r4, _02109670 ; =0x0211267A
	mov r5, r0, lsl #2
	addlt r3, r1, r2
	ldr r2, _02109684 ; =0x02112692
	ldrh r0, [r4, r5]
	ldrh r2, [r2, r5]
	cmp r3, #0xc0
	add r4, sp, #4
	movgt r3, #0xc0
	add r2, r0, r2
	str r4, [sp]
	bl DWCi_InputRect
	mov r0, #0
	mov r1, r0
	mov r2, r4
	bl DWCi_GXlSetWndPosition
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210966C: .word MemWin
_02109670: .word C_WIN
_02109674: .word BUTTON_NUM
_02109678: .word POS_TBL
_0210967C: .word C_BUTTON
_02109680: .word S_WIN+2
_02109684: .word S_WIN
	arm_func_end disp

	arm_static_func_start dispCell
dispCell: ; 0x02109688
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, r1
	bl DWCi_CELLlGetObjNum
	mov r7, r0
	cmp r7, #0
	mov r8, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0x200
	mov r4, r8
	add r6, sp, #4
	add r5, sp, #0
_021096C0:
	mov r0, r10
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	cmp r0, r9
	blt _021096EC
	cmp r0, #0xc0
	movlt r2, r4
	blt _021096F0
_021096EC:
	mov r2, r11
_021096F0:
	mov r0, r10
	mov r1, r8
	mov r3, #0
	bl DWCi_CELLlSetEffect
	add r8, r8, #1
	cmp r8, r7
	blt _021096C0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dispCell

	arm_static_func_start pushButton
pushButton: ; 0x02109714
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _021097BC ; =0x021162B8
	mov r5, #0
	ldr r1, [r7]
	mov r6, r0
	add r0, r1, r6, lsl #2
	ldr r0, [r0, #8]
	mov r1, r5
	bl DWCi_CELLlGetObj
	ldr r2, [r7]
	ldr r1, _021097C0 ; =0x02112644
	ldrb r3, [r2, #0x1c]
	mov r2, r0
	mov r0, r5
	add r1, r1, r3, lsl #1
	ldrb r1, [r6, r1]
	add r1, r1, #1
	bl DWCi_CEINlSet
	ldr r0, [r7]
	ldr r1, _021097C4 ; =0x02112630
	ldrb r2, [r0, #0x1c]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #8]
	add r1, r1, r2, lsl #1
	ldrb r3, [r6, r1]
	sub r4, r5, #1
	mov r1, r4
	mov lr, r3, lsl #2
	ldr r12, _021097C8 ; =0x021126AA
	ldr r3, _021097CC ; =0x021126AC
	add r12, r12, r2, lsl #3
	add r3, r3, r2, lsl #3
	ldrh r2, [lr, r12]
	ldrh r3, [lr, r3]
	bl DWCi_CELLlSetPosition
	ldr r0, [r7]
	mov r1, r4
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #8]
	mov r2, r5
	bl DWCi_CELLlSetPriority
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021097BC: .word MemWin
_021097C0: .word CELL_BUTTON
_021097C4: .word POS_TBL
_021097C8: .word C_BUTTON
_021097CC: .word C_BUTTON+2
	arm_func_end pushButton

	arm_static_func_start taskEnd
taskEnd: ; 0x021097D0
	stmfd sp!, {r3, lr}
	ldr r1, _02109804 ; =0x021162B8
	ldr r3, [r1]
	ldrb r2, [r3, #0x1d]
	add r2, r2, #1
	strb r2, [r3, #0x1d]
	ldr r1, [r1]
	ldrb r1, [r1, #0x1d]
	cmp r1, #8
	ldmlofd sp!, {r3, pc}
	ldr r1, _02109808 ; =taskEnd1
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, pc}
_02109804: .word MemWin
_02109808: .word taskEnd1
	arm_func_end taskEnd

	arm_static_func_start taskEnd1
taskEnd1: ; 0x0210980C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _0210988C ; =0x021162B8
	mov r5, r0
	ldr r0, [r4]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	add r0, r0, #0xc
	str r0, [sp]
	bl disp
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _02109878
	ldr r1, _02109890 ; =taskEnd2
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02109878:
	ldr r1, _02109894 ; =taskEnd3
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210988C: .word MemWin
_02109890: .word taskEnd2
_02109894: .word taskEnd3
	arm_func_end taskEnd1

	arm_static_func_start taskEnd2
taskEnd2: ; 0x02109898
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _021098E4 ; =0x021162B8
	mov r4, r0
	ldr r2, [r5]
	ldr r0, _021098E8 ; =0x04000050
	ldrsb r1, [r2, #0x1a]
	add r1, r1, #1
	strb r1, [r2, #0x1a]
	ldr r1, [r5]
	ldrsb r1, [r1, #0x1a]
	bl G2x_ChangeBlendBrightness_
	ldr r0, [r5]
	ldrsb r0, [r0, #0x1a]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _021098EC ; =taskEnd3
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, r4, r5, pc}
_021098E4: .word MemWin
_021098E8: .word 0x04000050
_021098EC: .word taskEnd3
	arm_func_end taskEnd2

	arm_static_func_start taskEnd3
taskEnd3: ; 0x021098F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r7, _0210998C ; =0x021162B8
	bic r1, r1, #0xe000
	str r1, [r2]
	ldr r1, [r7]
	mov r6, r0
	ldr r0, [r1]
	bl DWCi_CELLlDelete
	ldr r0, [r7]
	ldr r0, [r0, #4]
	bl DWCi_CELLlDelete
	ldr r1, [r7]
	ldr r4, _02109990 ; =0x02112622
	ldrb r0, [r1, #0x1c]
	mov r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _0210996C
_02109940:
	add r0, r1, r5, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02109954
	bl DWCi_CELLlDelete
_02109954:
	ldr r1, [r7]
	add r5, r5, #1
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r5, r0
	blt _02109940
_0210996C:
	ldr r0, [r1, #0x10]
	bl DWCi_FNTlDelete
	mov r1, r6
	mov r0, #1
	bl DWCi_TSKlDelete
	ldr r0, _02109994 ; =0x021162B8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210998C: .word MemWin
_02109990: .word BUTTON_NUM
_02109994: .word MemWin
	arm_func_end taskEnd3

	.rodata
C_CHAR:
	.byte 0x08, 0x00, 0x08, 0x00
CELL_WINDOW:
	.byte 0x00, 0x00, 0x46, 0x46
	.byte 0x4F, 0x2F
BUTTON_NUM:
	.byte 0x02, 0x01, 0x02, 0x01, 0x02, 0x00
R_WIN1:
	.byte 0x04, 0x00, 0x1D, 0x00, 0xFC, 0x00, 0x44, 0x00
POS_TBL:
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01
IPT_KEY:
	.byte 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x01, 0x00
CELL_BUTTON:
	.byte 0x1B, 0x19, 0x57, 0x00, 0x23, 0x1D, 0x59, 0x00, 0x23, 0x1D
S_BUTTON:
	.byte 0x6C, 0x00, 0x10, 0x00, 0x6C, 0x00, 0x10, 0x00, 0x78, 0x00, 0x10, 0x00, 0x78, 0x00, 0x10, 0x00
	.byte 0x78, 0x00, 0x10, 0x00
S_CHAR:
	.byte 0xD8, 0x00, 0x50, 0x00, 0xD8, 0x00, 0x50, 0x00, 0xE6, 0x00, 0x4F, 0x00, 0xE6, 0x00
	.byte 0x4F, 0x00, 0xE6, 0x00, 0x48, 0x00, 0xDA, 0x00, 0x5C, 0x00
C_WIN:
	.byte 0x0B, 0x00, 0x27, 0x00, 0x0B, 0x00
	.byte 0x27, 0x00, 0x04, 0x00, 0x4C, 0x00, 0x04, 0x00, 0x4C, 0x00, 0x04, 0x00, 0x54, 0x00, 0x0B, 0x00
	.byte 0x27, 0x00
S_WIN:
	.byte 0xEA, 0x00, 0x72, 0x00, 0xEA, 0x00, 0x72, 0x00, 0xF8, 0x00, 0x70, 0x00, 0xF8, 0x00
	.byte 0x70, 0x00, 0x64, 0x00, 0x70, 0x00, 0xEA, 0x00, 0x72, 0x00
C_BUTTON:
	.byte 0x10, 0x00, 0x84, 0x00, 0x84, 0x00
	.byte 0x84, 0x00, 0x10, 0x00, 0x84, 0x00, 0x84, 0x00, 0x84, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00
	.byte 0xA7, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00, 0xA7, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00
	.byte 0xA7, 0x00, 0x00, 0x00
ov17_021126D4:
	.byte 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

	.bss
MemWin:
	.space 0x04

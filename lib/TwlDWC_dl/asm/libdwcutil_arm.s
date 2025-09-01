
	.include "asm/macros/function.inc"
	.include "libdwcutil_arm.inc"

	.text
	arm_func_start DWCi_ANIMElInitEx
DWCi_ANIMElInitEx: ; 0x020F44D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0xc
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _020F458C ; =dwcutil_MemAni
	mov r4, #0
	str r0, [r5]
	strb r6, [r0, #8]
	mov r0, r4
	mov r1, #0x47
	bl DWCi_CEINlSetExObj
	ldr r2, [r5]
	ldr r1, _020F4590 ; =dwcutil_PLT_ANIME
	str r0, [r2, #4]
	ldr r0, [r5]
	ldrb lr, [r1, r6]
	ldr r6, [r0, #4]
	ldr r12, _020F4594 ; =0xFE00FF00
	mov r2, r4
	ldrh r3, [r6, #4]
	mov r0, #1
	ldr r1, _020F4598 ; =dwcutil_taskAnime
	bic r3, r3, #0xc00
	orr r3, r3, #0x400
	strh r3, [r6, #4]
	ldr r4, [r5]
	mov r3, #0x78
	ldr r6, [r4, #4]
	ldr r4, [r6]
	bic r4, r4, #0xc00
	str r4, [r6]
	ldrh r4, [r6, #4]
	bic r4, r4, #0xf000
	orr r4, r4, lr, lsl #12
	strh r4, [r6, #4]
	ldr r4, [r5]
	ldr lr, [r4, #4]
	ldr r4, [lr]
	and r4, r4, r12
	orr r4, r4, #0x8b
	orr r4, r4, #0xe60000
	str r4, [lr]
	bl DWCi_TSKlForm
	ldr r1, [r5]
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, pc}
_020F458C: .word dwcutil_MemAni
_020F4590: .word dwcutil_PLT_ANIME
_020F4594: .word 0xFE00FF00
_020F4598: .word dwcutil_taskAnime
	arm_func_end DWCi_ANIMElInitEx

	arm_func_start DWCi_ANIMElEnd
DWCi_ANIMElEnd: ; 0x020F459C
	stmfd sp!, {r4, lr}
	ldr r4, _020F45CC ; =dwcutil_MemAni
	mov r0, #1
	ldr r1, [r4]
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	ldr r0, _020F45D0 ; =dwcutil_MemAni
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F45CC: .word dwcutil_MemAni
_020F45D0: .word dwcutil_MemAni
	arm_func_end DWCi_ANIMElEnd

	arm_func_start dwcutil_taskAnime
dwcutil_taskAnime: ; 0x020F45D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F4688 ; =dwcutil_MemAni
	mov r1, #0x28
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	add r0, r0, #1
	bl FX_ModS32
	ldr r2, [r4]
	mov r1, #5
	strb r0, [r2, #9]
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	bl FX_DivS32
	ldr r2, [r4]
	add r1, r0, #0x47
	ldr r2, [r2, #4]
	mov r0, #0
	bl DWCi_CEINlSet
	ldr r0, [r4]
	ldr r3, _020F468C ; =dwcutil_PLT_ANIME
	ldr r2, [r0, #4]
	ldr r0, _020F4690 ; =0xFE00FF00
	ldrh r1, [r2, #4]
	bic r1, r1, #0xc00
	orr r1, r1, #0x400
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldrb r12, [r1, #8]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	ldrb r3, [r3, r12]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x8b
	orr r0, r0, #0xe60000
	str r0, [r2]
	ldmfd sp!, {r4, pc}
_020F4688: .word dwcutil_MemAni
_020F468C: .word dwcutil_PLT_ANIME
_020F4690: .word 0xFE00FF00
	arm_func_end dwcutil_taskAnime

	arm_func_start DWCi_BTNlInit
DWCi_BTNlInit: ; 0x020F4694
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #4
	mov r4, r0
	ldr r2, _020F4784 ; =dwcutil_BUTTON_NUM
	mov r1, r5
	mov r0, #0x1c
	ldrb r7, [r2, r4]
	bl DWCi_HEAPlAllocEx
	ldr r9, _020F4788 ; =dwcutil_MemBtn
	sub r1, r5, #6
	str r0, [r9]
	strb r1, [r0, #0x16]
	ldr r0, [r9]
	cmp r7, #0
	strb r4, [r0, #0x17]
	mov r8, #0
	ble _020F4724
	ldr r0, _020F478C ; =dwcutil_CELL_BUTTON
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
	ldr r4, _020F4788 ; =dwcutil_MemBtn
	mov r2, r5
	ldr r3, [r4]
	sub r1, r5, #2
	str r0, [r3, #8]
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl DWCi_CELLlSetPriority
	mov r0, #0xc0
	bl dwcutil_disp
	mov r0, r6
	mov r2, r6
	ldr r1, _020F4790 ; =dwcutil_taskStart
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4784: .word dwcutil_BUTTON_NUM
_020F4788: .word dwcutil_MemBtn
_020F478C: .word dwcutil_CELL_BUTTON
_020F4790: .word dwcutil_taskStart
	arm_func_end DWCi_BTNlInit

	arm_func_start DWCi_BTNlEnd
DWCi_BTNlEnd: ; 0x020F4794
	ldr r0, _020F47B8 ; =dwcutil_MemBtn
	mov r3, #1
	ldr r2, [r0]
	ldr r1, _020F47BC ; =dwcutil_taskEnd
	strb r3, [r2, #0x19]
	ldr r0, [r0]
	ldr r12, _020F47C0 ; =DWCi_TSKlChangeFunc
	ldr r0, [r0, #0xc]
	bx r12
_020F47B8: .word dwcutil_MemBtn
_020F47BC: .word dwcutil_taskEnd
_020F47C0: .word DWCi_TSKlChangeFunc
	arm_func_end DWCi_BTNlEnd

	arm_func_start DWCi_BTNlGet
DWCi_BTNlGet: ; 0x020F47C4
	ldr r0, _020F47D4 ; =dwcutil_MemBtn
	ldr r0, [r0]
	ldrsb r0, [r0, #0x16]
	bx lr
_020F47D4: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlGet

	arm_func_start DWCi_BTNlSet
DWCi_BTNlSet: ; 0x020F47D8
	ldr r1, _020F47F0 ; =dwcutil_MemBtn
	ldr r2, [r1]
	ldrsb r1, [r2, #0x16]
	cmn r1, #1
	streqb r0, [r2, #0x16]
	bx lr
_020F47F0: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlSet

	arm_func_start DWCi_BTNlSetForce
DWCi_BTNlSetForce: ; 0x020F47F4
	ldr r1, _020F4804 ; =dwcutil_MemBtn
	ldr r1, [r1]
	strb r0, [r1, #0x16]
	bx lr
_020F4804: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlSetForce

	arm_func_start DWCi_BTNlIsEnd
DWCi_BTNlIsEnd: ; 0x020F4808
	ldr r0, _020F4830 ; =dwcutil_MemBtn
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F4830: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlIsEnd

	arm_func_start DWCi_BTNlEnable
DWCi_BTNlEnable: ; 0x020F4834
	ldr r0, _020F4848 ; =dwcutil_MemBtn
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4848: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlEnable

	arm_func_start DWCi_BTNlDisable
DWCi_BTNlDisable: ; 0x020F484C
	ldr r0, _020F4860 ; =dwcutil_MemBtn
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4860: .word dwcutil_MemBtn
	arm_func_end DWCi_BTNlDisable

	arm_func_start dwcutil_disp
dwcutil_disp: ; 0x020F4864
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r9, _020F48E4 ; =dwcutil_MemBtn
	mov r8, r0
	ldr r2, [r9]
	ldr r0, _020F48E8 ; =dwcutil_BUTTON_NUM
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
	ldr r4, _020F48EC ; =dwcutil_POS_TBL
	ldr r10, _020F48F0 ; =dwcutil_C_BUTTON
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
_020F48E4: .word dwcutil_MemBtn
_020F48E8: .word dwcutil_BUTTON_NUM
_020F48EC: .word dwcutil_POS_TBL
_020F48F0: .word dwcutil_C_BUTTON
	arm_func_end dwcutil_disp

	arm_func_start dwcutil_taskStart
dwcutil_taskStart: ; 0x020F48F4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4958 ; =dwcutil_MemBtn
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
	bl dwcutil_disp
	ldr r0, [sp]
	cmp r0, #0xa8
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, pc}
	mov r0, #0xa8
	bl dwcutil_disp
	ldr r1, _020F495C ; =dwcutil_taskStart1
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4958: .word dwcutil_MemBtn
_020F495C: .word dwcutil_taskStart1
	arm_func_end dwcutil_taskStart

	arm_func_start dwcutil_taskStart1
dwcutil_taskStart1: ; 0x020F4960
	stmfd sp!, {r3, lr}
	ldr r1, _020F49A8 ; =dwcutil_MemBtn
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
	ldr r1, _020F49AC ; =dwcutil_taskMain
	mov r2, #0
	strh r2, [r3, #0x14]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, pc}
_020F49A8: .word dwcutil_MemBtn
_020F49AC: .word dwcutil_taskMain
	arm_func_end dwcutil_taskStart1

	arm_func_start dwcutil_taskMain
dwcutil_taskMain: ; 0x020F49B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r5, _020F4B0C ; =dwcutil_MemBtn
	ldr r1, _020F4B10 ; =dwcutil_BUTTON_NUM
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
	ldr r7, _020F4B14 ; =dwcutil_C_BUTTON
	ldr r6, _020F4B18 ; =dwcutil_POS_TBL
	ldr r10, _020F4B1C ; =dwcutil_S_BUTTON
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
	ldr r9, _020F4B0C ; =dwcutil_MemBtn
	ldr r2, [r9]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _020F4AF4
	ldrb r1, [r2, #0x17]
	ldr r0, _020F4B20 ; =dwcutil_CELL_BUTTON
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
	ldr r1, _020F4B28 ; =dwcutil_taskRelease
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
	ldr r0, _020F4B0C ; =dwcutil_MemBtn
	mvn r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x16]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4B0C: .word dwcutil_MemBtn
_020F4B10: .word dwcutil_BUTTON_NUM
_020F4B14: .word dwcutil_C_BUTTON
_020F4B18: .word dwcutil_POS_TBL
_020F4B1C: .word dwcutil_S_BUTTON
_020F4B20: .word dwcutil_CELL_BUTTON
_020F4B24: .word ov17_02111C8E
_020F4B28: .word dwcutil_taskRelease
	arm_func_end dwcutil_taskMain

	arm_func_start dwcutil_taskEnd
dwcutil_taskEnd: ; 0x020F4B2C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4B88 ; =dwcutil_MemBtn
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
	bl dwcutil_disp
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, pc}
	ldr r1, _020F4B8C ; =dwcutil_taskEnd1
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4B88: .word dwcutil_MemBtn
_020F4B8C: .word dwcutil_taskEnd1
	arm_func_end dwcutil_taskEnd

	arm_func_start dwcutil_taskEnd1
dwcutil_taskEnd1: ; 0x020F4B90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl DWCi_TSKlDelete
	ldr r0, _020F4C04 ; =dwcutil_MemBtn
	ldr r0, [r0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020F4BC0
	mov r0, r4
	bl DWCi_TSKlDelete
_020F4BC0:
	ldr r4, _020F4C04 ; =dwcutil_MemBtn
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
	ldr r0, _020F4C04 ; =dwcutil_MemBtn
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl DWCi_CELLlDelete
	ldr r0, _020F4C08 ; =dwcutil_MemBtn
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_020F4C04: .word dwcutil_MemBtn
_020F4C08: .word dwcutil_MemBtn
	arm_func_end dwcutil_taskEnd1

	arm_func_start dwcutil_taskRelease
dwcutil_taskRelease: ; 0x020F4C0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020F4CF0 ; =dwcutil_MemBtn
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
	ldr r0, _020F4CF4 ; =dwcutil_BUTTON_NUM
	mov r9, #0
	ldrb r8, [r0, r1]
	cmp r8, #0
	ble _020F4CAC
	ldr r7, _020F4CF8 ; =dwcutil_CELL_BUTTON
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
	bl dwcutil_disp
	ldr r1, _020F4CF0 ; =dwcutil_MemBtn
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
_020F4CF0: .word dwcutil_MemBtn
_020F4CF4: .word dwcutil_BUTTON_NUM
_020F4CF8: .word dwcutil_CELL_BUTTON
	arm_func_end dwcutil_taskRelease

	arm_func_start DWCi_COMMENTlInit
DWCi_COMMENTlInit: ; 0x020F4CFC
	ldr r0, _020F4D0C ; =dwcutil_Flag
	mov r1, #0
	strb r1, [r0]
	bx lr
_020F4D0C: .word dwcutil_Flag
	arm_func_end DWCi_COMMENTlInit

	arm_func_start DWCi_COMMENTlDispEx
DWCi_COMMENTlDispEx: ; 0x020F4D10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r4, _020F4DD0 ; =dwcutil_Flag
	mov r9, r0
	ldrb r0, [r4]
	mov r8, r1
	mov r5, r2
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020F4DD4 ; =0x02112890
	ldr r1, _020F4DD8 ; =0x0200546C
	bl DWCi_CMNlLoadResource
	mov r7, #1
	mov r6, #0
	ldr r3, _020F4DDC ; =0x01920000
	ldr r2, _020F4DE0 ; =0x04001010
	mov r0, r7
	mov r1, r6
	str r3, [r2]
	bl DWCi_FNTlFormBgEx
	mov r1, r9
	mov r2, r8
	mov r3, r5
	mov r5, r0
	ldr r0, _020F4DE4 ; =DWCiMsgCmn
	ldr r0, [r0]
	bl DWCi_MSGlGetEx
	mov r8, r0
	bl DWCi_CMNlFontFlag
	mov r2, r6
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r5
	mov r1, #0x14
	mov r3, #0xd8
	bl DWCi_FNTlDrawRect
	mov r0, r5
	bl DWCi_FNTlRenewBg
	strb r7, [r4]
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F4DD0: .word dwcutil_Flag
_020F4DD4: .word ov17_02112890
_020F4DD8: .word GXS_LoadBG0Scr
_020F4DDC: .word 0x01920000
_020F4DE0: .word 0x04001010
_020F4DE4: .word DWCiMsgCmn
	arm_func_end DWCi_COMMENTlDispEx

	arm_func_start DWCi_COMMENTlDelete
DWCi_COMMENTlDelete: ; 0x020F4DE8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E1C ; =dwcutil_Flag
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	mov r0, r5
	bl DWCi_FNTlDeleteBgLcd
	mov r1, #0
	mov r0, r5
	strb r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E1C: .word dwcutil_Flag
	arm_func_end DWCi_COMMENTlDelete

	arm_func_start DWCi_Char
DWCi_Char: ; 0x020F4E20
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E7C ; =dwcutilcommon_file
	mov r5, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x3f
	bl strncpy
	ldrb r0, [r5, #5]
	cmp r0, #0x78
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_Language
	ldrb r1, [r5, #5]
	cmp r1, #0x79
	bne _020F4E68
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
_020F4E68:
	ldr r1, _020F4E80 ; =0x02111CC0
	ldrb r1, [r1, r0]
	ldr r0, _020F4E7C ; =dwcutilcommon_file
	strb r1, [r0, #5]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E7C: .word dwcutilcommon_file
_020F4E80: .word dwcutil_LANG_TBL
	arm_func_end DWCi_Char

	arm_func_start DWCi_CMNlLoadResource
DWCi_CMNlLoadResource: ; 0x020F4E84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl DWCi_Char
	add r1, sp, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, [sp]
	mov r4, r0
	bl DC_FlushRange
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	blx r5
	mov r0, r4
	bl DWCi_ARClRelease
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_CMNlLoadResource

	arm_func_start DWCi_CMNlStep
DWCi_CMNlStep: ; 0x020F4EC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam_
	ldr r0, [sp]
	cmp r0, #1
	bne _020F4EF8
	mov r0, r4
	bl DWCi_STEPlBegin
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F4EF8:
	cmp r0, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl DWCi_STEPlChange
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end DWCi_CMNlStep

	arm_func_start DWCi_CMNlButton
DWCi_CMNlButton: ; 0x020F4F14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam_
	ldr r0, [sp]
	cmp r0, #1
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl DWCi_BTNlInit
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end DWCi_CMNlButton

	arm_func_start DWCi_CMNlMsgDraw
DWCi_CMNlMsgDraw: ; 0x020F4F4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl DWCi_FNTlFormBgEx
	ldr r1, _020F4FBC ; =DWCiMsgCmn
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl DWCi_MSGlGet
	mov r4, r0
	bl DWCi_CMNlFontFlag
	mov r1, #0x70
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x28
	mov r3, #0xe6
	bl DWCi_FNTlDrawRect
	mov r0, r5
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020F4FBC: .word DWCiMsgCmn
	arm_func_end DWCi_CMNlMsgDraw

	arm_func_start DWCi_CMNlMsgNameDraw
DWCi_CMNlMsgNameDraw: ; 0x020F4FC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0
	mov r6, r1
	mov r1, r0
	bl DWCi_FNTlFormBgEx
	ldr r1, _020F5070 ; =DWCiMsgCmn
	mov r4, r0
	ldr r0, [r1]
	mov r1, r6
	bl DWCi_MSGlGet
	mov r6, r0
	bl DWCi_CMNlFontFlag
	mov r1, #0x5e
	str r1, [sp]
	mov r8, #2
	str r8, [sp, #4]
	str r0, [sp, #8]
	mov r7, #0xd
	mov r0, r4
	mov r1, r7
	mov r2, #0x3c
	mov r3, #0xe6
	str r6, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	bl DWCi_Language
	mov r6, r0
	bl DWCi_Language
	add r1, r7, #0x1fc
	stmia sp, {r1, r5}
	mov r5, r0, lsl #2
	ldr r2, _020F5074 ; =C_MESSAGE_U + 2
	ldr r1, _020F5078 ; =C_MESSAGE_U
	mov r12, r6, lsl #2
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r5]
	mov r3, r8
	mov r0, r4
	bl DWCi_FNTlDraw
	mov r0, r4
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5070: .word DWCiMsgCmn
_020F5074: .word C_MESSAGE_U + 2
_020F5078: .word C_MESSAGE_U
	arm_func_end DWCi_CMNlMsgNameDraw

	arm_func_start DWCi_CMNlFontFlag
DWCi_CMNlFontFlag: ; 0x020F507C
	stmfd sp!, {r3, lr}
	bl DWCi_Language
	ldr r1, _020F5090 ; =FONT_FLAG
	ldr r0, [r1, r0, lsl #2]
	ldmfd sp!, {r3, pc}
_020F5090: .word FONT_FLAG
	arm_func_end DWCi_CMNlFontFlag

	arm_func_start FUN_ov17_020f5094
FUN_ov17_020f5094: ; 0x020F5094
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F50B0 ; =0x021161B0
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F50B0: .word ov17_021161B0
	arm_func_end FUN_ov17_020f5094

	arm_func_start FUN_ov17_020f50b4
FUN_ov17_020f50b4: ; 0x020F50B4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5258
	ldr r0, _020F50C8 ; =0x021161B0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_020F50C8: .word ov17_021161B0
	arm_func_end FUN_ov17_020f50b4

	arm_func_start FUN_ov17_020f50cc
FUN_ov17_020f50cc: ; 0x020F50CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	mov r11, r1
	str r2, [sp]
	mov r10, r3
	bl FUN_ov17_020f5258
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
_020F5170: .word ov17_02111D00
_020F5174: .word ov17_021161B0
	arm_func_end FUN_ov17_020f50cc

	arm_func_start FUN_ov17_020f5178
FUN_ov17_020f5178: ; 0x020F5178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r11, r1
	str r2, [sp]
	str r3, [sp, #4]
	mov r8, #6
	bl FUN_ov17_020f5258
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
_020F5254: .word ov17_021161B0
	arm_func_end FUN_ov17_020f5178

	arm_func_start FUN_ov17_020f5258
FUN_ov17_020f5258: ; 0x020F5258
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
_020F5294: .word ov17_021161B0
	arm_func_end FUN_ov17_020f5258

	arm_func_start FUN_ov17_020f5298
FUN_ov17_020f5298: ; 0x020F5298
	stmfd sp!, {r3, lr}
	mov r0, #0xc0
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r2, _020F52FC ; =0x021161B4
	ldr r1, _020F5300 ; =GX_LoadBG1Char
	str r0, [r2]
	ldr r0, _020F5304 ; =0x02112AC4
	bl DWCi_CMNlLoadResource
	bl DWCi_Entry
	cmp r0, #0
	beq _020F52D4
	cmp r0, #1
	beq _020F52E8
	ldmfd sp!, {r3, pc}
_020F52D4:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =GX_LoadBG1Scr
	ldr r0, [r0]
	bl DWCi_CMNlLoadResource
	ldmfd sp!, {r3, pc}
_020F52E8:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =GX_LoadBG1Scr
	ldr r0, [r0, #4]
	bl DWCi_CMNlLoadResource
	ldmfd sp!, {r3, pc}
_020F52FC: .word ov17_021161B4
_020F5300: .word GX_LoadBG1Char
_020F5304: .word ov17_02112AC4
_020F5308: .word ov17_02112A74
_020F530C: .word GX_LoadBG1Scr
	arm_func_end FUN_ov17_020f5298

	arm_func_start FUN_ov17_020f5310
FUN_ov17_020f5310: ; 0x020F5310
	ldr r0, _020F531C ; =0x021161B4
	ldr r12, _020F5320 ; =DWCi_HEAPlFree_
	bx r12
_020F531C: .word ov17_021161B4
_020F5320: .word DWCi_HEAPlFree_
	arm_func_end FUN_ov17_020f5310

	arm_func_start FUN_ov17_020f5324
FUN_ov17_020f5324: ; 0x020F5324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F5378 ; =0x02112A74
	ldr r0, [r1, r0, lsl #2]
	bl DWCi_Char
	mov r5, #0
	mov r1, r5
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _020F537C ; =0x021161B4
	mov r4, r0
	ldr r1, [r1]
	mov r2, #0xc0
	bl MIi_CpuCopyFast
	mov r0, r4
	bl DWCi_ARClRelease
	mov r2, r5
	mov r0, #1
	ldr r1, _020F5380 ; =FUN_ov17_020f53b4
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldmfd sp!, {r3, r4, r5, pc}
_020F5378: .word ov17_02112A74
_020F537C: .word ov17_021161B4
_020F5380: .word FUN_ov17_020f53b4
	arm_func_end FUN_ov17_020f5324

	arm_func_start FUN_ov17_020f5384
FUN_ov17_020f5384: ; 0x020F5384
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	add r0, r0, #5
	bl FUN_ov17_020f5324
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f5384

	arm_func_start FUN_ov17_020f539c
FUN_ov17_020f539c: ; 0x020F539C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	add r0, r0, #2
	bl FUN_ov17_020f5324
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f539c

	arm_func_start FUN_ov17_020f53b4
FUN_ov17_020f53b4: ; 0x020F53B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F53F0 ; =0x021161B4
	mov r6, r0
	mov r5, #0xc0
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4]
	mov r2, r5
	mov r1, #0
	bl GX_LoadBG1Scr
	mov r1, r6
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_020F53F0: .word ov17_021161B4
	arm_func_end FUN_ov17_020f53b4

	arm_func_start FUN_ov17_020f53f4
FUN_ov17_020f53f4: ; 0x020F53F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F5494 ; =0x021161B8
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #0xc
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F5498 ; =0x02111D0C
	str r0, [r4]
	ldrb r1, [r1, r5, lsl #2]
	mov r6, #0
	strb r5, [r0, #8]
	mov r0, r6
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	ldr r12, _020F549C ; =0xFE00FF00
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, _020F54A0 ; =FUN_ov17_020f54e4
	ldr r5, [r0]
	mov r0, r6
	mov r2, r6
	ldr lr, [r5]
	mov r3, #0x78
	and r12, lr, r12
	orr r12, r12, #0x26
	orr r12, r12, #0xe50000
	str r12, [r5]
	ldr r12, [r4]
	ldr lr, [r12]
	ldrh r12, [lr, #4]
	bic r12, r12, #0xc00
	orr r12, r12, #0x800
	strh r12, [lr, #4]
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5494: .word ov17_021161B8
_020F5498: .word ov17_02111D0C
_020F549C: .word 0xFE00FF00
_020F54A0: .word FUN_ov17_020f54e4
	arm_func_end FUN_ov17_020f53f4

	arm_func_start FUN_ov17_020f54a4
FUN_ov17_020f54a4: ; 0x020F54A4
	stmfd sp!, {r4, lr}
	ldr r4, _020F54DC ; =0x021161B8
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #4]
	mov r0, #0
	bl DWCi_TSKlDeleteEx
	ldr r0, [r4]
	ldr r0, [r0]
	bl DWCi_OBJlDelete
	ldr r0, _020F54E0 ; =0x021161B8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F54DC: .word ov17_021161B8
_020F54E0: .word ov17_021161B8
	arm_func_end FUN_ov17_020f54a4

	arm_func_start FUN_ov17_020f54e4
FUN_ov17_020f54e4: ; 0x020F54E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020F5578 ; =0x04000208
	mov r4, #0
	ldrh r6, [r0]
	strh r4, [r0]
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	beq _020F550C
	bl WM_GetLinkLevel
	mov r4, r0
_020F550C:
	ldr r2, _020F5578 ; =0x04000208
	ldr r5, _020F557C ; =0x021161B8
	ldrh r0, [r2]
	ldr r1, _020F5580 ; =0x02111D0C
	mov r0, #0
	strh r6, [r2]
	ldr r2, [r5]
	ldrsb r3, [r2, #8]
	ldr r2, [r2]
	add r1, r1, r3, lsl #2
	ldrb r1, [r4, r1]
	bl DWCi_CEINlSet
	ldr r1, [r5]
	ldr r0, _020F5584 ; =0xFE00FF00
	ldr r2, [r1]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x26
	orr r0, r0, #0xe50000
	str r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0x800
	strh r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5578: .word 0x04000208
_020F557C: .word ov17_021161B8
_020F5580: .word ov17_02111D0C
_020F5584: .word 0xFE00FF00
	arm_func_end FUN_ov17_020f54e4

	arm_func_start FUN_ov17_020f5588
FUN_ov17_020f5588: ; 0x020F5588
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	add r4, sp, #0x18
	mov r5, #0
	strh r5, [r4, #4]
	mov r3, #0x11
	strh r5, [r4, #6]
	mov r2, #0x12
	mov r0, #0x128
	mov r1, #4
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl DWCi_HEAPlAllocEx
	ldr r8, _020F58BC ; =0x021161BC
	mov r1, #0xff
	str r0, [r8]
	strb r1, [r0, #0x11c]
	ldr r0, [r8]
	mov r1, #1
	strb r5, [r0, #0x121]
	ldr r0, [r8]
	ldr r7, _020F58C0 ; =0xC1FFFCFF
	strb r1, [r0, #0x123]
	ldr r0, [r8]
	mov r6, r5
	strb r1, [r0, #0x124]
	mov r4, #0x34
_020F55FC:
	mov r0, r6
	mov r1, r4
	bl DWCi_CEINlSetExObj
	ldr r1, [r8]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x30]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x30]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, #0x2f
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F55FC
	ldr r4, _020F58C4 ; =0x02111D1D
	ldr r7, _020F58BC ; =0x021161BC
	ldr r5, _020F58C0 ; =0xC1FFFCFF
	mov r9, #0
_020F5668:
	ldrb r1, [r4, r6]
	mov r0, r9
	bl DWCi_CEINlSetExObj
	ldr r1, [r7]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0xec]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	ldr r0, [r1]
	and r0, r0, r5
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #4
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F5668
	ldr r8, _020F58C8 ; =0x02111D18
	ldr r4, _020F58BC ; =0x021161BC
	mov r10, #0
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov r11, #3
_020F56E0:
	ldrb r1, [r8, r9]
	mov r0, r10
	mov r2, r7
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r9, lsl #2
	str r0, [r2, #0xfc]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0xfc]
	mov r3, r10
	bl DWCi_CELLlSetEffect
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, r11
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, #2
	blt _020F56E0
	ldr r4, _020F58BC ; =0x021161BC
	strh r10, [sp, #0x12]
_020F5744:
	ldr r6, _020F58CC ; =0x02112AE4
	mov r9, #0
	mov r11, #2
_020F5750:
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	mov r1, #0x1c
	mov r2, #2
	mov r3, r0
	str r0, [sp, #4]
	bl FUN_ov17_0210d5e4
	mov r1, #0
	strh r1, [sp, #0x18]
	ldr r1, [r4]
	mov r2, r9, lsl #2
	add r1, r1, r10, lsl #4
	str r0, [r1, r9, lsl #2]
	mov r0, #0xc
	mul r7, r9, r0
	mov r8, #0
	add r5, r2, r10, lsl #4
_020F5798:
	ldr r1, [r6, r10, lsl #2]
	mov r0, r7, lsl #1
	ldrh r2, [r1, r0]
	ldrh r0, [sp, #0x1e]
	ldrh r1, [sp, #0x18]
	strh r2, [sp, #0x10]
	stmia sp, {r0, r11}
	mov r0, #0x480
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldrh r2, [sp, #0x1a]
	ldrh r3, [sp, #0x1c]
	ldr r0, [r0, r5]
	bl DWCi_FNTlDrawRect
	ldrh r0, [sp, #0x18]
	add r8, r8, #1
	cmp r8, #0xc
	add r0, r0, #0x12
	add r7, r7, #1
	strh r0, [sp, #0x18]
	blt _020F5798
	cmp r10, #0
	bne _020F5818
	ldr r1, [sp, #0x14]
	mov r0, #0
	mov r2, #1
	bl DWCi_CELLlForm
	ldr r1, [r4]
	add r1, r1, r9, lsl #2
	str r0, [r1, #0x104]
_020F5818:
	add r9, r9, #1
	cmp r9, #4
	blt _020F5750
	add r10, r10, #1
	cmp r10, #3
	ldr r6, _020F58BC ; =0x021161BC
	mov r5, #0
	blt _020F5744
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0x40
	bl DWCi_CEINlSetExCell
	ldr r1, [r6]
	sub r4, r4, #2
	str r0, [r1, #0x114]
	ldr r0, [r6]
	mov r1, r4
	ldr r0, [r0, #0x114]
	mov r3, r5
	mov r2, #0x200
	bl DWCi_CELLlSetEffect
	ldr r0, [r6]
	mov r1, r4
	ldr r0, [r0, #0x114]
	mov r2, #2
	bl DWCi_CELLlSetPriority
	ldr r1, _020F58D0 ; =FUN_ov17_020f595c
	mov r0, r5
	mov r2, r5
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r3, [r6]
	mov r1, r5
	str r0, [r3, #0x118]
	ldr r0, [r6]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl FUN_ov17_020f64f4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F58BC: .word ov17_021161BC
_020F58C0: .word 0xC1FFFCFF
_020F58C4: .word ov17_02111D1D
_020F58C8: .word ov17_02111D18
_020F58CC: .word ov17_02112AE4
_020F58D0: .word FUN_ov17_020f595c
	arm_func_end FUN_ov17_020f5588

	arm_func_start FUN_ov17_020f58d4
FUN_ov17_020f58d4: ; 0x020F58D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F58FC ; =0x021161BC
	ldr r0, [r4]
	ldr r0, [r0, #0x114]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r1, _020F5900 ; =FUN_ov17_020f6d88
	ldr r0, [r0, #0x118]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r4, pc}
_020F58FC: .word ov17_021161BC
_020F5900: .word FUN_ov17_020f6d88
	arm_func_end FUN_ov17_020f58d4

	arm_func_start FUN_ov17_020f5904
FUN_ov17_020f5904: ; 0x020F5904
	ldr r0, _020F5914 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11c]
	bx lr
_020F5914: .word ov17_021161BC
	arm_func_end FUN_ov17_020f5904

	arm_func_start FUN_ov17_020f5918
FUN_ov17_020f5918: ; 0x020F5918
	ldr r1, _020F5928 ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x123]
	bx lr
_020F5928: .word ov17_021161BC
	arm_func_end FUN_ov17_020f5918

	arm_func_start FUN_ov17_020f592c
FUN_ov17_020f592c: ; 0x020F592C
	ldr r1, _020F593C ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x124]
	bx lr
_020F593C: .word ov17_021161BC
	arm_func_end FUN_ov17_020f592c

	arm_func_start FUN_ov17_020f5940
FUN_ov17_020f5940: ; 0x020F5940
	ldr r0, _020F5958 ; =0x021161BC
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F5958: .word ov17_021161BC
	arm_func_end FUN_ov17_020f5940

	arm_func_start FUN_ov17_020f595c
FUN_ov17_020f595c: ; 0x020F595C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F59CC ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x30]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x51
	mov r1, #0
	ble _020F599C
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F599C:
	mov r2, #0x51
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #1
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F59D0 ; =FUN_ov17_020f59d4
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F59CC: .word ov17_021161BC
_020F59D0: .word FUN_ov17_020f59d4
	arm_func_end FUN_ov17_020f595c

	arm_func_start FUN_ov17_020f59d4
FUN_ov17_020f59d4: ; 0x020F59D4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5A44 ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x67
	mov r1, #1
	ble _020F5A14
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A14:
	mov r2, #0x67
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #2
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5A48 ; =FUN_ov17_020f5a4c
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A44: .word ov17_021161BC
_020F5A48: .word FUN_ov17_020f5a4c
	arm_func_end FUN_ov17_020f59d4

	arm_func_start FUN_ov17_020f5a4c
FUN_ov17_020f5a4c: ; 0x020F5A4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5ABC ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x90]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x7d
	mov r1, #2
	ble _020F5A8C
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A8C:
	mov r2, #0x7d
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #3
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5AC0 ; =FUN_ov17_020f5ac4
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5ABC: .word ov17_021161BC
_020F5AC0: .word FUN_ov17_020f5ac4
	arm_func_end FUN_ov17_020f5a4c

	arm_func_start FUN_ov17_020f5ac4
FUN_ov17_020f5ac4: ; 0x020F5AC4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5B34 ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0xc0]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x93
	mov r1, #3
	ble _020F5B04
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B04:
	mov r2, #0x93
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #4
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5B38 ; =FUN_ov17_020f5b3c
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B34: .word ov17_021161BC
_020F5B38: .word FUN_ov17_020f5b3c
	arm_func_end FUN_ov17_020f5ac4

	arm_func_start FUN_ov17_020f5b3c
FUN_ov17_020f5b3c: ; 0x020F5B3C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5BB0 ; =0x021161BC
	mov r5, r0
	ldr r0, [r4]
	add r2, sp, #4
	ldr r0, [r0, #0xfc]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	mov r1, #4
	sub r2, r0, #0xc
	ldr r0, [r4]
	str r2, [sp]
	cmp r2, #0xaa
	ldrb r0, [r0, #0x11d]
	ble _020F5B90
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B90:
	mov r2, #0xaa
	bl FUN_ov17_020f64f4
	bl FUN_ov17_020f68d0
	ldr r1, _020F5BB4 ; =FUN_ov17_020f5bb8
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5BB0: .word ov17_021161BC
_020F5BB4: .word FUN_ov17_020f5bb8
	arm_func_end FUN_ov17_020f5b3c

	arm_func_start FUN_ov17_020f5bb8
FUN_ov17_020f5bb8: ; 0x020F5BB8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5bd0
	bl FUN_ov17_020f5d88
	bl FUN_ov17_020f6094
	bl FUN_ov17_020f62c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f5bb8

	arm_func_start FUN_ov17_020f5bd0
FUN_ov17_020f5bd0: ; 0x020F5BD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _020F5D64 ; =0x021126F8
	ldr r5, _020F5D68 ; =0x021161BC
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mvn r1, #0
	ldr r8, _020F5D6C ; =0x02111D74
	ldr r7, _020F5D70 ; =0x02111D2A
	strb r1, [r0, #0x11e]
	mov r4, #0
	add r6, sp, #0
_020F5C0C:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F5C64
	ldr r0, [r5]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _020F5C4C
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C4C:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add sp, sp, #8
	strb r4, [r0, #0x11e]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C64:
	add r4, r4, #1
	cmp r4, #0x2f
	blt _020F5C0C
	ldr r8, _020F5D74 ; =0x02111D3C
	ldr r7, _020F5D78 ; =0x02111D4C
	mov r4, #0
	add r6, sp, #0
_020F5C80:
	mov r2, r6
	add r0, r8, r4, lsl #2
	add r1, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F5CF8
	cmp r4, #3
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x123]
	cmpeq r0, #0
	beq _020F5CC8
	cmp r4, #2
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x124]
	cmpeq r0, #0
	bne _020F5CD8
_020F5CC8:
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5CD8:
	ldr r0, _020F5D7C ; =0x02112AF0
	ldr r0, [r0, r4, lsl #2]
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r4, #0x2f
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5CF8:
	add r4, r4, #1
	cmp r4, #4
	blt _020F5C80
	ldr r7, _020F5D80 ; =0x02111D34
	ldr r6, _020F5D84 ; =0x02111D26
	mov r8, #0
	add r4, sp, #0
_020F5D14:
	mov r1, r6
	mov r2, r4
	add r0, r7, r8, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F5D50
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r8, #0x33
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5D50:
	add r8, r8, #1
	cmp r8, #2
	blt _020F5D14
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5D64: .word ov17_021126F8
_020F5D68: .word ov17_021161BC
_020F5D6C: .word ov17_02111D74
_020F5D70: .word ov17_02111D2A
_020F5D74: .word ov17_02111D3C
_020F5D78: .word ov17_02111D4C
_020F5D7C: .word ov17_02112AF0
_020F5D80: .word ov17_02111D34
_020F5D84: .word ov17_02111D26
	arm_func_end FUN_ov17_020f5bd0

	arm_func_start FUN_ov17_020f5d88
FUN_ov17_020f5d88: ; 0x020F5D88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _020F6000 ; =0x021161BC
	ldr r0, _020F6004 ; =0x021126F8
	ldr r1, [r1]
	mov r5, #0
	strb r5, [r1, #0x11c]
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020F6000 ; =0x021161BC
	ldr r8, _020F6008 ; =0x02111D74
	ldr r7, _020F600C ; =0x02111D2A
	add r6, sp, #0
_020F5DC4:
	mov r1, r7
	mov r2, r6
	add r0, r8, r5, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5E3C
	ldr r2, [r4]
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r5
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r2, #0x11d]
	ldr r0, _020F6010 ; =0x02112AD8
	ldr r0, [r0, r1, lsl #2]
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F5E28
	mov r0, #0
	bl FUN_ov17_020f6784
_020F5E28:
	ldr r0, [r4]
	strb r5, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5E3C:
	add r5, r5, #1
	cmp r5, #0x2f
	blt _020F5DC4
	ldr r8, _020F6014 ; =0x02111D3C
	ldr r7, _020F6018 ; =0x02111D4C
	mov r5, #2
	add r6, sp, #0
_020F5E58:
	mov r2, r6
	add r0, r8, r5, lsl #2
	add r1, r7, r5, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5ED0
	ldr r2, [r4]
	add r1, r5, #0x2f
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020F601C ; =0x02111D2E
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F5EB8
	mov r0, #0
	bl FUN_ov17_020f6784
_020F5EB8:
	ldr r0, [r4]
	add r1, r5, #0x2f
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5ED0:
	add r5, r5, #1
	cmp r5, #4
	blt _020F5E58
	ldr r8, _020F6020 ; =0x02111D34
	ldr r7, _020F6024 ; =0x02111D26
	mov r5, #0
	add r6, sp, #0
_020F5EEC:
	mov r1, r7
	mov r2, r6
	add r0, r8, r5, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5F48
	ldr r2, [r4]
	add r1, r5, #0x33
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020F6028 ; =0x02111D1A
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5F48:
	add r5, r5, #1
	cmp r5, #2
	blt _020F5EEC
	ldr r0, _020F6014 ; =0x02111D3C
	ldr r1, _020F6018 ; =0x02111D4C
	mov r2, r6
	bl DWCi_Coord2Rect
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5FA8
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_020f6034
	ldr r0, [r4]
	mov r1, #0x2f
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5FA8:
	ldr r0, _020F602C ; =0x02111D40
	ldr r1, _020F6030 ; =0x02111D50
	mov r2, r6
	bl DWCi_Coord2Rect
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x30
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_020f6064
	ldr r0, [r4]
	mov r1, #0x30
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F6000: .word ov17_021161BC
_020F6004: .word ov17_021126F8
_020F6008: .word ov17_02111D74
_020F600C: .word ov17_02111D2A
_020F6010: .word ov17_02112AD8
_020F6014: .word ov17_02111D3C
_020F6018: .word ov17_02111D4C
_020F601C: .word ov17_02111D2E
_020F6020: .word ov17_02111D34
_020F6024: .word ov17_02111D26
_020F6028: .word ov17_02111D1A
_020F602C: .word ov17_02111D40
_020F6030: .word ov17_02111D50
	arm_func_end FUN_ov17_020f5d88

	arm_func_start FUN_ov17_020f6034
FUN_ov17_020f6034: ; 0x020F6034
	stmfd sp!, {r3, lr}
	ldr r0, _020F6060 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #2
	moveq r0, #0
	movne r0, #2
	bl FUN_ov17_020f6784
	mov r0, #1
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6060: .word ov17_021161BC
	arm_func_end FUN_ov17_020f6034

	arm_func_start FUN_ov17_020f6064
FUN_ov17_020f6064: ; 0x020F6064
	stmfd sp!, {r3, lr}
	ldr r0, _020F6090 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_020f6784
	mov r0, #1
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6090: .word ov17_021161BC
	arm_func_end FUN_ov17_020f6064

	arm_func_start FUN_ov17_020f6094
FUN_ov17_020f6094: ; 0x020F6094
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F625C ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F623C
	ldr r7, _020F6260 ; =0x02111D74
	ldr r6, _020F6264 ; =0x02111D2A
	mov r4, #0
	add r5, sp, #0
_020F60BC:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F60FC
	ldr r0, _020F6268 ; =0x021161BC
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r4
	bne _020F623C
	mov r0, r4
	b _020F6240
_020F60FC:
	add r4, r4, #1
	cmp r4, #0x2f
	blt _020F60BC
	ldr r7, _020F626C ; =0x02111D3C
	ldr r6, _020F6270 ; =0x02111D4C
	mov r4, #2
	add r5, sp, #0
_020F6118:
	mov r2, r5
	add r0, r7, r4, lsl #2
	add r1, r6, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F61D4
	ldr r5, _020F6268 ; =0x021161BC
	add r0, r4, #0x2f
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _020F623C
	bl FUN_ov17_020f627c
	cmp r4, #3
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5]
	ldrb r0, [r1, #0x122]
	add r0, r0, #1
	strb r0, [r1, #0x122]
	ldr r1, [r5]
	ldrb r0, [r1, #0x122]
	cmp r0, #0x28
	addlo sp, sp, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _020F61B4
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	sub r1, r4, #0xa
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F61B4:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	ldr r1, [r5]
	add sp, sp, #8
	ldrb r0, [r1, #0x122]
	sub r0, r0, #7
	strb r0, [r1, #0x122]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F61D4:
	add r4, r4, #1
	cmp r4, #4
	blt _020F6118
	ldr r6, _020F6274 ; =0x02111D34
	ldr r5, _020F6278 ; =0x02111D26
	mov r7, #0
	add r4, sp, #0
_020F61F0:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F6230
	ldr r1, _020F6268 ; =0x021161BC
	add r0, r7, #0x33
	ldr r1, [r1]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _020F623C
	b _020F6240
_020F6230:
	add r7, r7, #1
	cmp r7, #2
	blt _020F61F0
_020F623C:
	mvn r0, #0
_020F6240:
	bl FUN_ov17_020f627c
	ldr r0, _020F6268 ; =0x021161BC
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x122]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F625C: .word ov17_021126F8
_020F6260: .word ov17_02111D74
_020F6264: .word ov17_02111D2A
_020F6268: .word ov17_021161BC
_020F626C: .word ov17_02111D3C
_020F6270: .word ov17_02111D4C
_020F6274: .word ov17_02111D34
_020F6278: .word ov17_02111D26
	arm_func_end FUN_ov17_020f6094

	arm_func_start FUN_ov17_020f627c
FUN_ov17_020f627c: ; 0x020F627C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F62C4 ; =0x021161BC
	mov r4, r0
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1f]
	cmp r4, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl FUN_ov17_020f6808
	ldr r0, [r5]
	mov r1, #0
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1f]
	bl FUN_ov17_020f6808
	ldr r0, [r5]
	strb r4, [r0, #0x11f]
	ldmfd sp!, {r3, r4, r5, pc}
_020F62C4: .word ov17_021161BC
	arm_func_end FUN_ov17_020f627c

	arm_func_start FUN_ov17_020f62c8
FUN_ov17_020f62c8: ; 0x020F62C8
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F62E4
	mov r0, #0
	bl FUN_ov17_020f69ac
_020F62E4:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F62FC
	mov r0, #1
	bl FUN_ov17_020f69ac
_020F62FC:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F6314
	mov r0, #2
	bl FUN_ov17_020f69ac
_020F6314:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F632C
	mov r0, #3
	bl FUN_ov17_020f69ac
_020F632C:
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F6444
	ldr r2, _020F64E4 ; =0x021161BC
	ldr r0, [r2]
	add r1, r0, #0x100
	ldrsb r4, [r1, #0x21]
	cmp r4, #0x2f
	bge _020F639C
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _020F636C
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F636C:
	ldrb r3, [r0, #0x11d]
	ldr r1, _020F64E8 ; =0x02112AD8
	ldr r1, [r1, r3, lsl #2]
	ldrb r1, [r1, r4]
	strb r1, [r0, #0x11c]
	ldr r0, [r2]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f6784
	ldmfd sp!, {r4, pc}
_020F639C:
	sub r1, r4, #0x2f
	cmp r1, #4
	bge _020F6434
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020F6404
_020F63B4: ; jump table
	b _020F63C4 ; case 0
	b _020F63CC ; case 1
	b _020F63D4 ; case 2
	b _020F63EC ; case 3
_020F63C4:
	bl FUN_ov17_020f6034
	ldmfd sp!, {r4, pc}
_020F63CC:
	bl FUN_ov17_020f6064
	ldmfd sp!, {r4, pc}
_020F63D4:
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F63EC:
	ldrb r1, [r0, #0x123]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F6404:
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F6418
	mov r0, #0
	bl FUN_ov17_020f6784
_020F6418:
	ldr r1, _020F64EC ; =0x02111D2E
	sub r2, r4, #0x2f
	ldr r0, _020F64E4 ; =0x021161BC
	ldrb r1, [r1, r2]
	ldr r0, [r0]
	strb r1, [r0, #0x11c]
	ldmfd sp!, {r4, pc}
_020F6434:
	ldr r1, _020F64F0 ; =0x02111D1A
	sub r2, r4, #0x33
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x11c]
_020F6444:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F649C
	ldr r4, _020F64E4 ; =0x021161BC
	ldr r1, [r4]
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _020F6490
	ldrb r0, [r1, #0x125]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0x125]
	ldmfd sp!, {r4, pc}
_020F6490:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	b _020F64B8
_020F649C:
	mov r0, r4
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, _020F64E4 ; =0x021161BC
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x125]
_020F64B8:
	mov r0, #0x400
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F64CC
	bl FUN_ov17_020f6034
_020F64CC:
	mov r0, #0x800
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f6064
	ldmfd sp!, {r4, pc}
_020F64E4: .word ov17_021161BC
_020F64E8: .word ov17_02112AD8
_020F64EC: .word ov17_02111D2E
_020F64F0: .word ov17_02111D1A
	arm_func_end FUN_ov17_020f62c8

	arm_func_start FUN_ov17_020f64f4
FUN_ov17_020f64f4: ; 0x020F64F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, _020F6760 ; =0x02111D64
	ldr lr, _020F6764 ; =0x02111D6C
	ldrb r5, [r4, #4]
	ldrb r9, [r4]
	ldrb r8, [r4, #1]
	strb r5, [sp, #0x16]
	mov r5, r1
	mov r1, #0xc
	mul r1, r5, r1
	ldrb r7, [r4, #2]
	ldrb r6, [r4, #3]
	strb r9, [sp, #0x12]
	str r1, [sp, #4]
	ldrb r12, [lr]
	ldrb r11, [lr, #1]
	ldrb r4, [lr, #2]
	ldrb r10, [lr, #3]
	ldrb r9, [lr, #4]
	ldr r3, _020F6768 ; =0x02111D5C
	strb r8, [sp, #0x13]
	strb r7, [sp, #0x14]
	strb r6, [sp, #0x15]
	add r1, sp, #0x12
	ldrb lr, [r3]
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r3, [r3, #4]
	ldrb r1, [r1, r5]
	strb r12, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb lr, [sp, #8]
	strb r11, [sp, #0xe]
	mov r4, r2
	ldr r12, [sp, #4]
	strb r10, [sp, #0x10]
	strb r9, [sp, #0x11]
	strb r8, [sp, #9]
	strb r7, [sp, #0xa]
	strb r6, [sp, #0xb]
	strb r3, [sp, #0xc]
	cmp r1, #0
	mov lr, #0
	ble _020F661C
	add r1, sp, #0x12
	ldrb r9, [r1, r5]
	ldr r1, _020F676C ; =0x02111D74
	ldr r8, _020F6770 ; =0x021161BC
	ldr r11, _020F6774 ; =0xC1FFFCFF
	ldr r7, _020F6778 ; =0xFE00FF00
	and r6, r4, #0xff
_020F65C8:
	ldr r2, [r8]
	mov r3, r12, lsl #2
	add r2, r2, r12, lsl #2
	ldr r2, [r2, #0x30]
	ldrh r3, [r1, r3]
	ldr r10, [r2]
	add lr, lr, #1
	and r10, r10, r11
	str r10, [r2]
	mov r2, r3, lsl #0x17
	cmp lr, r9
	ldr r3, [r8]
	add r3, r3, r12, lsl #2
	ldr r3, [r3, #0x30]
	add r12, r12, #1
	ldr r10, [r3]
	and r10, r10, r7
	orr r10, r10, r6
	orr r2, r10, r2, lsr #7
	str r2, [r3]
	blt _020F65C8
_020F661C:
	cmp r5, #4
	bge _020F665C
	ldr r1, _020F6770 ; =0x021161BC
	ldr r3, _020F676C ; =0x02111D74
	ldr r6, [r1]
	ldr r1, [sp, #4]
	mov r2, #2
	mov r1, r1, lsl #2
	str r2, [sp]
	add r0, r6, r0, lsl #4
	add r2, r6, r5, lsl #2
	ldrh r1, [r3, r1]
	ldr r3, [r2, #0x104]
	ldr r0, [r0, r5, lsl #2]
	mov r2, r4
	bl FUN_ov17_0210dbbc
_020F665C:
	add r0, r5, #3
	mov r1, #4
	bl FX_ModS32
	add r7, sp, #0xd
	ldrb r1, [r7, r5]
	mov r6, #0
	cmp r1, #0
	ble _020F66E4
	ldr r2, _020F677C ; =0x02111D3C
	mov r1, r0, lsl #2
	ldrh r0, [r2, r1]
	ldrb r10, [r7, r5]
	ldr r9, _020F6770 ; =0x021161BC
	ldr r7, _020F6774 ; =0xC1FFFCFF
	ldr r8, _020F6778 ; =0xFE00FF00
	and r3, r4, #0xff
	mov r2, r0, lsl #0x17
_020F66A0:
	ldr r0, [r9]
	add r6, r6, #1
	add r0, r1, r0
	ldr r11, [r0, #0xec]
	cmp r6, r10
	ldr r0, [r11]
	and r0, r0, r7
	str r0, [r11]
	ldr r0, [r9]
	add r0, r1, r0
	ldr r0, [r0, #0xec]
	ldr r11, [r0]
	and r11, r11, r8
	orr r11, r11, r3
	orr r11, r11, r2, lsr #7
	str r11, [r0]
	blt _020F66A0
_020F66E4:
	add r1, sp, #8
	ldrb r0, [r1, r5]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020F6780 ; =0x02111D34
	ldr r8, _020F6770 ; =0x021161BC
	mov r9, r0
	mvn r6, #0
	mov r5, r7
_020F6710:
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, r5
	mov r3, r5
	bl DWCi_CELLlSetEffect
	ldr r0, [r8]
	mov r1, r7, lsl #2
	add r0, r0, r7, lsl #2
	ldrh r2, [r10, r1]
	ldr r0, [r0, #0xfc]
	mov r1, r6
	mov r3, r4
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, r9
	blt _020F6710
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6760: .word ov17_02111D64
_020F6764: .word ov17_02111D6C
_020F6768: .word ov17_02111D5C
_020F676C: .word ov17_02111D74
_020F6770: .word ov17_021161BC
_020F6774: .word 0xC1FFFCFF
_020F6778: .word 0xFE00FF00
_020F677C: .word ov17_02111D3C
_020F6780: .word ov17_02111D34
	arm_func_end FUN_ov17_020f64f4

	arm_func_start FUN_ov17_020f6784
FUN_ov17_020f6784: ; 0x020F6784
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020F6800 ; =0x021161BC
	mov r5, #0
	ldr r1, [r1]
	mov r7, r0
	ldr r9, _020F6804 ; =0x02111D74
	mov r6, r5
	mov r4, r5
	strb r7, [r1, #0x11d]
	mov r8, #0xc
_020F67AC:
	mul r0, r4, r8
	add r0, r9, r0, lsl #2
	ldrh r2, [r0, #2]
	mov r0, r7
	mov r1, r4
	bl FUN_ov17_020f64f4
	add r4, r4, #1
	cmp r4, #4
	blt _020F67AC
	cmp r7, #2
	moveq r5, #1
	beq _020F67E4
	cmp r7, #1
	moveq r6, #1
_020F67E4:
	mov r1, r5
	mov r0, #0x2f
	bl FUN_ov17_020f6808
	mov r1, r6
	mov r0, #0x30
	bl FUN_ov17_020f6808
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F6800: .word ov17_021161BC
_020F6804: .word ov17_02111D74
	arm_func_end FUN_ov17_020f6784

	arm_func_start FUN_ov17_020f6808
FUN_ov17_020f6808: ; 0x020F6808
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltfd sp!, {r3, pc}
	cmp r0, #0x2f
	bge _020F6854
	ldr r2, _020F68C4 ; =0x021161BC
	ldr r3, _020F68C8 ; =0x02111D14
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x30]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F6854:
	sub r12, r0, #0x2f
	cmp r12, #4
	bge _020F6898
	ldr r0, _020F68C4 ; =0x021161BC
	ldr r2, _020F68C8 ; =0x02111D14
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, r12, lsl #2
	ldr r2, [r1, #0xec]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F6898:
	ldr r2, _020F68C4 ; =0x021161BC
	ldr r3, _020F68CC ; =0x02111D16
	ldr r2, [r2]
	sub r0, r0, #0x33
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0xfc]
	mvn r1, #0
	mov r2, #0
	bl DWCi_CELLlSetPalette
	ldmfd sp!, {r3, pc}
_020F68C4: .word ov17_021161BC
_020F68C8: .word ov17_02111D14
_020F68CC: .word ov17_02111D16
	arm_func_end FUN_ov17_020f6808

	arm_func_start FUN_ov17_020f68d0
FUN_ov17_020f68d0: ; 0x020F68D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020F69A0 ; =0x021161BC
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x21]
	sub r0, r0, #0x2f
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020F6930
_020F68F4: ; jump table
	b _020F690C ; case 0
	b _020F6914 ; case 1
	b _020F691C ; case 2
	b _020F6924 ; case 3
	b _020F6928 ; case 4
	b _020F6928 ; case 5
_020F690C:
	mov r4, #0x42
	b _020F6934
_020F6914:
	mov r4, #0x41
	b _020F6934
_020F691C:
	mov r4, #0x43
	b _020F6934
_020F6924:
	b _020F6914
_020F6928:
	mov r4, #0x45
	b _020F6934
_020F6930:
	mov r4, #0x40
_020F6934:
	mov r5, #0
	ldr r0, [r1, #0x114]
	mov r1, r5
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl DWCi_CEINlSet
	ldr r4, _020F69A0 ; =0x021161BC
	sub r5, r5, #1
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, #0x114]
	mov r2, #2
	bl DWCi_CELLlSetPriority
	ldr r2, [r4]
	mov r1, r5
	add r0, r2, #0x100
	ldrsb r3, [r0, #0x21]
	ldr r0, [r2, #0x114]
	ldr r2, _020F69A4 ; =0x02111E30
	mov r4, r3, lsl #2
	ldrh r2, [r2, r4]
	ldr r3, _020F69A8 ; =0x02111E32
	ldrh r3, [r3, r4]
	bl DWCi_CELLlSetPosition
	ldmfd sp!, {r3, r4, r5, pc}
_020F69A0: .word ov17_021161BC
_020F69A4: .word ov17_02111E30
_020F69A8: .word ov17_02111E32
	arm_func_end FUN_ov17_020f68d0

	arm_func_start FUN_ov17_020f69ac
FUN_ov17_020f69ac: ; 0x020F69AC
	stmfd sp!, {r3, lr}
	ldr r2, _020F6D80 ; =0x021161BC
	ldr r3, _020F6D84 ; =0x02111F04
	ldr r12, [r2]
	add r1, r12, #0x100
	ldrsb lr, [r1, #0x21]
	add r1, r3, lr, lsl #2
	ldrsb r1, [r0, r1]
	strb r1, [r12, #0x121]
	ldr r1, [r2]
	add r2, r1, #0x100
	ldrsb r3, [r2, #0x21]
	cmp r3, #0x2e
	cmpeq r0, #3
	streqb lr, [r1, #0x120]
	beq _020F6D70
	cmp r3, #0x33
	bne _020F6A04
	cmp r0, #1
	cmpne r0, #3
	streqb lr, [r1, #0x120]
	beq _020F6D70
_020F6A04:
	cmp r3, #0x34
	bne _020F6A28
	cmp r0, #1
	beq _020F6A1C
	cmp r0, #3
	bne _020F6A28
_020F6A1C:
	cmp lr, #0x2e
	strneb lr, [r1, #0x120]
	b _020F6D70
_020F6A28:
	mvn r2, #0
	cmp r3, r2
	bne _020F6A58
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	cmpne r0, #0x32
	moveq r0, #0x23
	streqb r0, [r1, #0x121]
	movne r0, #0x22
	strneb r0, [r1, #0x121]
	b _020F6D70
_020F6A58:
	sub r0, r2, #1
	cmp r3, r0
	bne _020F6B00
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _020F6AB0
	bge _020F6AE0
	cmp r0, #5
	bgt _020F6AA4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6AF8
_020F6A8C: ; jump table
	b _020F6AD0 ; case 0
	b _020F6AD8 ; case 1
	b _020F6AF8 ; case 2
	b _020F6AE0 ; case 3
	b _020F6AE8 ; case 4
	b _020F6AF0 ; case 5
_020F6AA4:
	cmp r0, #0x24
	beq _020F6AD8
	b _020F6AF8
_020F6AB0:
	cmp r0, #0x28
	bgt _020F6AC8
	bge _020F6AF0
	cmp r0, #0x27
	beq _020F6AE8
	b _020F6AF8
_020F6AC8:
	cmp r0, #0x31
	bne _020F6AF8
_020F6AD0:
	mov r0, #0x31
	b _020F6D6C
_020F6AD8:
	mov r0, #0x24
	b _020F6D6C
_020F6AE0:
	mov r0, #0x26
	b _020F6D6C
_020F6AE8:
	mov r0, #0x27
	b _020F6D6C
_020F6AF0:
	mov r0, #0x28
	b _020F6D6C
_020F6AF8:
	mov r0, #0x25
	b _020F6D6C
_020F6B00:
	sub r0, r2, #2
	cmp r3, r0
	bne _020F6BE0
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _020F6B70
	bge _020F6BD0
	cmp r0, #0xb
	bgt _020F6B64
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6BD8
_020F6B34: ; jump table
	b _020F6BD8 ; case 0
	b _020F6BD8 ; case 1
	b _020F6BD8 ; case 2
	b _020F6BD8 ; case 3
	b _020F6BD8 ; case 4
	b _020F6BD8 ; case 5
	b _020F6BB0 ; case 6
	b _020F6BB8 ; case 7
	b _020F6BD8 ; case 8
	b _020F6BC0 ; case 9
	b _020F6BC8 ; case 10
	b _020F6BD0 ; case 11
_020F6B64:
	cmp r0, #0x22
	beq _020F6BD0
	b _020F6BD8
_020F6B70:
	cmp r0, #0x2a
	bgt _020F6B88
	bge _020F6BB8
	cmp r0, #0x29
	beq _020F6BB0
	b _020F6BD8
_020F6B88:
	cmp r0, #0x32
	bgt _020F6BD8
	cmp r0, #0x2c
	blt _020F6BD8
	beq _020F6BC0
	cmp r0, #0x2d
	beq _020F6BC8
	cmp r0, #0x32
	beq _020F6BD0
	b _020F6BD8
_020F6BB0:
	mov r0, #0x29
	b _020F6D6C
_020F6BB8:
	mov r0, #0x2a
	b _020F6D6C
_020F6BC0:
	mov r0, #0x2c
	b _020F6D6C
_020F6BC8:
	mov r0, #0x2d
	b _020F6D6C
_020F6BD0:
	mov r0, #0x2e
	b _020F6D6C
_020F6BD8:
	mov r0, #0x2b
	b _020F6D6C
_020F6BE0:
	sub r0, r2, #3
	cmp r3, r0
	bne _020F6C88
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _020F6C38
	bge _020F6C68
	cmp r0, #5
	bgt _020F6C2C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6C80
_020F6C14: ; jump table
	b _020F6C58 ; case 0
	b _020F6C60 ; case 1
	b _020F6C80 ; case 2
	b _020F6C68 ; case 3
	b _020F6C70 ; case 4
	b _020F6C78 ; case 5
_020F6C2C:
	cmp r0, #0x24
	beq _020F6C60
	b _020F6C80
_020F6C38:
	cmp r0, #0x28
	bgt _020F6C50
	bge _020F6C78
	cmp r0, #0x27
	beq _020F6C70
	b _020F6C80
_020F6C50:
	cmp r0, #0x31
	bne _020F6C80
_020F6C58:
	mov r0, #0
	b _020F6D6C
_020F6C60:
	mov r0, #1
	b _020F6D6C
_020F6C68:
	mov r0, #3
	b _020F6D6C
_020F6C70:
	mov r0, #4
	b _020F6D6C
_020F6C78:
	mov r0, #5
	b _020F6D6C
_020F6C80:
	mov r0, #2
	b _020F6D6C
_020F6C88:
	sub r0, r2, #4
	cmp r3, r0
	bne _020F6D70
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _020F6CF8
	bge _020F6D60
	cmp r0, #0xb
	bgt _020F6CEC
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6D68
_020F6CBC: ; jump table
	b _020F6D68 ; case 0
	b _020F6D68 ; case 1
	b _020F6D68 ; case 2
	b _020F6D68 ; case 3
	b _020F6D68 ; case 4
	b _020F6D68 ; case 5
	b _020F6D38 ; case 6
	b _020F6D40 ; case 7
	b _020F6D68 ; case 8
	b _020F6D48 ; case 9
	b _020F6D50 ; case 10
	b _020F6D58 ; case 11
_020F6CEC:
	cmp r0, #0x22
	beq _020F6D58
	b _020F6D68
_020F6CF8:
	cmp r0, #0x2a
	bgt _020F6D10
	bge _020F6D40
	cmp r0, #0x29
	beq _020F6D38
	b _020F6D68
_020F6D10:
	cmp r0, #0x32
	bgt _020F6D68
	cmp r0, #0x2c
	blt _020F6D68
	beq _020F6D48
	cmp r0, #0x2d
	beq _020F6D50
	cmp r0, #0x32
	beq _020F6D60
	b _020F6D68
_020F6D38:
	mov r0, #6
	b _020F6D6C
_020F6D40:
	mov r0, #7
	b _020F6D6C
_020F6D48:
	mov r0, #9
	b _020F6D6C
_020F6D50:
	mov r0, #0xa
	b _020F6D6C
_020F6D58:
	mov r0, #0xb
	b _020F6D6C
_020F6D60:
	mov r0, #0x32
	b _020F6D6C
_020F6D68:
	mov r0, #8
_020F6D6C:
	strb r0, [r1, #0x121]
_020F6D70:
	bl FUN_ov17_020f68d0
	mov r0, #8
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6D80: .word ov17_021161BC
_020F6D84: .word ov17_02111F04
	arm_func_end FUN_ov17_020f69ac

	arm_func_start FUN_ov17_020f6d88
FUN_ov17_020f6d88: ; 0x020F6D88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F6DE8 ; =0x021161BC
	mov r5, r0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xfc]
	bl DWCi_CELLlGetObj
	ldr r1, [r0]
	ldr r0, [r4]
	and r1, r1, #0xff
	add r4, r1, #0xc
	ldrb r0, [r0, #0x11d]
	mov r2, r4
	mov r1, #4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6DEC ; =FUN_ov17_020f6df0
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6DE8: .word ov17_021161BC
_020F6DEC: .word FUN_ov17_020f6df0
	arm_func_end FUN_ov17_020f6d88

	arm_func_start FUN_ov17_020f6df0
FUN_ov17_020f6df0: ; 0x020F6DF0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6E44 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #3
	ldr r2, [r0, #0xc0]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6E48 ; =FUN_ov17_020f6e4c
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6E44: .word ov17_021161BC
_020F6E48: .word FUN_ov17_020f6e4c
	arm_func_end FUN_ov17_020f6df0

	arm_func_start FUN_ov17_020f6e4c
FUN_ov17_020f6e4c: ; 0x020F6E4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6EA0 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #2
	ldr r2, [r0, #0x90]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6EA4 ; =FUN_ov17_020f6ea8
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EA0: .word ov17_021161BC
_020F6EA4: .word FUN_ov17_020f6ea8
	arm_func_end FUN_ov17_020f6e4c

	arm_func_start FUN_ov17_020f6ea8
FUN_ov17_020f6ea8: ; 0x020F6EA8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6EFC ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #1
	ldr r2, [r0, #0x60]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F00 ; =FUN_ov17_020f6f04
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EFC: .word ov17_021161BC
_020F6F00: .word FUN_ov17_020f6f04
	arm_func_end FUN_ov17_020f6ea8

	arm_func_start FUN_ov17_020f6f04
FUN_ov17_020f6f04: ; 0x020F6F04
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6F58 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r2, [r0, #0x30]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F5C ; =FUN_ov17_020f6f60
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6F58: .word ov17_021161BC
_020F6F5C: .word FUN_ov17_020f6f60
	arm_func_end FUN_ov17_020f6f04

	arm_func_start FUN_ov17_020f6f60
FUN_ov17_020f6f60: ; 0x020F6F60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r4, r5
	bl DWCi_TSKlDelete
	ldr r7, _020F7038 ; =0x021161BC
_020F6F7C:
	mov r6, r4
_020F6F80:
	ldr r0, [r7]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, r6, lsl #2]
	bl FUN_ov17_0210d6c0
	cmp r5, #0
	bne _020F6FA8
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x104]
	bl DWCi_CELLlDelete
_020F6FA8:
	add r6, r6, #1
	cmp r6, #4
	blt _020F6F80
	add r5, r5, #1
	cmp r5, #3
	blt _020F6F7C
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F6FC8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xfc]
	bl DWCi_CELLlDelete
	add r5, r5, #1
	cmp r5, #2
	blt _020F6FC8
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F6FEC:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xec]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #4
	blt _020F6FEC
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F7010:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x30]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #0x2f
	blt _020F7010
	ldr r0, _020F703C ; =0x021161BC
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7038: .word ov17_021161BC
_020F703C: .word ov17_021161BC
	arm_func_end FUN_ov17_020f6f60

	arm_func_start FUN_ov17_020f7040
FUN_ov17_020f7040: ; 0x020F7040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r0, _020F7344 ; =0x021120DC
	mov r3, #0x1c
	ldrh r5, [r0]
	ldrh r4, [r0, #2]
	mov r2, #0x14
	mov r0, #0x6c
	mov r1, #4
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl DWCi_HEAPlAllocEx
	ldr r8, _020F7348 ; =0x021161C0
	mov r5, #0
	mov r1, #0x1f
	str r0, [r8]
	strb r1, [r0, #0x60]
	ldr r0, [r8]
	mov r1, #1
	strb r5, [r0, #0x63]
	ldr r0, [r8]
	ldr r7, _020F734C ; =0xC1FFFCFF
	strb r1, [r0, #0x66]
	ldr r0, [r8]
	mov r6, r5
	strb r1, [r0, #0x67]
	ldr r0, [r8]
	mov r4, #0x36
	strb r1, [r0, #0x68]
_020F70BC:
	mov r0, r6
	mov r1, r4
	bl DWCi_CEINlSetExObj
	ldr r1, [r8]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, #0xa
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F70BC
	ldr r4, _020F7350 ; =0x02111FDA
	ldr r7, _020F7348 ; =0x021161C0
	ldr r5, _020F734C ; =0xC1FFFCFF
	mov r9, #0
_020F7128:
	ldrb r1, [r4, r6]
	mov r0, r9
	bl DWCi_CEINlSetExObj
	ldr r1, [r7]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x38]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	ldr r0, [r1]
	and r0, r0, r5
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #2
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F7128
	ldr r8, _020F7354 ; =0x02111FDC
	ldr r4, _020F7348 ; =0x021161C0
	mov r10, #0
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov r11, #3
_020F71A0:
	ldrb r1, [r8, r9]
	mov r0, r10
	mov r2, r7
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x40]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r3, r10
	bl DWCi_CELLlSetEffect
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r11
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, #2
	blt _020F71A0
	ldr r4, _020F7348 ; =0x021161C0
	strh r10, [sp, #0x12]
_020F7204:
	add r0, sp, #0x14
	mov r9, #0
	str r0, [sp]
	mov r0, r9
	mov r3, r9
	mov r1, #0xc
	mov r2, #4
	str r9, [sp, #4]
	bl FUN_ov17_0210d5e4
	ldr r1, [r4]
	ldr r7, _020F7358 ; =0x02112012
	strh r9, [sp, #0x18]
	str r0, [r1, r10, lsl #2]
	add r8, r10, r10, lsl #1
	mov r6, #2
	mov r5, #0x480
	add r11, sp, #0x10
_020F7248:
	mov r0, r8, lsl #1
	ldrh r2, [r7, r0]
	ldrh r0, [sp, #0x1e]
	ldrh r1, [sp, #0x18]
	strh r2, [sp, #0x10]
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r11, [sp, #0xc]
	ldr r0, [r4]
	ldrh r2, [sp, #0x1a]
	ldrh r3, [sp, #0x1c]
	ldr r0, [r0, r10, lsl #2]
	bl DWCi_FNTlDrawRect
	ldrh r0, [sp, #0x18]
	add r9, r9, #1
	cmp r9, #3
	add r0, r0, #0x20
	strh r0, [sp, #0x18]
	add r8, r8, #1
	blt _020F7248
	mov r5, #0
	ldr r1, [sp, #0x14]
	mov r0, r5
	mov r2, r5
	bl DWCi_CELLlForm
	ldr r7, _020F7348 ; =0x021161C0
	ldr r1, [r7]
	add r1, r1, r10, lsl #2
	add r10, r10, #1
	str r0, [r1, #0x48]
	cmp r10, #4
	blt _020F7204
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0x44
	bl DWCi_CEINlSetExCell
	ldr r1, [r7]
	sub r4, r4, #2
	str r0, [r1, #0x58]
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r3, r5
	mov r2, #0x200
	bl DWCi_CELLlSetEffect
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r2, r6
	bl DWCi_CELLlSetPriority
	mov r0, r5
	ldr r1, _020F735C ; =FUN_ov17_020f73fc
	mov r2, r5
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r2, [r7]
	mov r1, #0xc0
	str r0, [r2, #0x5c]
	mov r0, r5
	bl FUN_ov17_020f7d58
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7344: .word ov17_021120DC
_020F7348: .word ov17_021161C0
_020F734C: .word 0xC1FFFCFF
_020F7350: .word ov17_02111FDA
_020F7354: .word ov17_02111FDC
_020F7358: .word ov17_02112012
_020F735C: .word FUN_ov17_020f73fc
	arm_func_end FUN_ov17_020f7040

	arm_func_start FUN_ov17_020f7360
FUN_ov17_020f7360: ; 0x020F7360
	stmfd sp!, {r4, lr}
	ldr r4, _020F7388 ; =0x021161C0
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r1, _020F738C ; =FUN_ov17_020f81d8
	ldr r0, [r0, #0x5c]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r4, pc}
_020F7388: .word ov17_021161C0
_020F738C: .word FUN_ov17_020f81d8
	arm_func_end FUN_ov17_020f7360

	arm_func_start FUN_ov17_020f7390
FUN_ov17_020f7390: ; 0x020F7390
	ldr r0, _020F73A0 ; =0x021161C0
	ldr r0, [r0]
	ldrb r0, [r0, #0x60]
	bx lr
_020F73A0: .word ov17_021161C0
	arm_func_end FUN_ov17_020f7390

	arm_func_start FUN_ov17_020f73a4
FUN_ov17_020f73a4: ; 0x020F73A4
	ldr r1, _020F73B4 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x66]
	bx lr
_020F73B4: .word ov17_021161C0
	arm_func_end FUN_ov17_020f73a4

	arm_func_start FUN_ov17_020f73b8
FUN_ov17_020f73b8: ; 0x020F73B8
	ldr r1, _020F73C8 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x67]
	bx lr
_020F73C8: .word ov17_021161C0
	arm_func_end FUN_ov17_020f73b8

	arm_func_start FUN_ov17_020f73cc
FUN_ov17_020f73cc: ; 0x020F73CC
	ldr r1, _020F73DC ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x68]
	bx lr
_020F73DC: .word ov17_021161C0
	arm_func_end FUN_ov17_020f73cc

	arm_func_start FUN_ov17_020f73e0
FUN_ov17_020f73e0: ; 0x020F73E0
	ldr r0, _020F73F8 ; =0x021161C0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F73F8: .word ov17_021161C0
	arm_func_end FUN_ov17_020f73e0

	arm_func_start FUN_ov17_020f73fc
FUN_ov17_020f73fc: ; 0x020F73FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7460 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x4c
	mov r0, #0
	ble _020F7438
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7438:
	mov r1, #0x4c
	bl FUN_ov17_020f7d58
	mov r0, #1
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F7464 ; =FUN_ov17_020f7468
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7460: .word ov17_021161C0
_020F7464: .word FUN_ov17_020f7468
	arm_func_end FUN_ov17_020f73fc

	arm_func_start FUN_ov17_020f7468
FUN_ov17_020f7468: ; 0x020F7468
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F74CC ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x63
	mov r0, #1
	ble _020F74A4
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74A4:
	mov r1, #0x63
	bl FUN_ov17_020f7d58
	mov r0, #2
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F74D0 ; =FUN_ov17_020f74d4
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74CC: .word ov17_021161C0
_020F74D0: .word FUN_ov17_020f74d4
	arm_func_end FUN_ov17_020f7468

	arm_func_start FUN_ov17_020f74d4
FUN_ov17_020f74d4: ; 0x020F74D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7538 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x28]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x7a
	mov r0, #2
	ble _020F7510
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7510:
	mov r1, #0x7a
	bl FUN_ov17_020f7d58
	mov r0, #3
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F753C ; =FUN_ov17_020f7540
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7538: .word ov17_021161C0
_020F753C: .word FUN_ov17_020f7540
	arm_func_end FUN_ov17_020f74d4

	arm_func_start FUN_ov17_020f7540
FUN_ov17_020f7540: ; 0x020F7540
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F75A4 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x91
	mov r0, #3
	ble _020F757C
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F757C:
	mov r1, #0x91
	bl FUN_ov17_020f7d58
	mov r0, #4
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F75A8 ; =FUN_ov17_020f75ac
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75A4: .word ov17_021161C0
_020F75A8: .word FUN_ov17_020f75ac
	arm_func_end FUN_ov17_020f7540

	arm_func_start FUN_ov17_020f75ac
FUN_ov17_020f75ac: ; 0x020F75AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7618 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #0x40]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	sub r1, r0, #0xc
	str r1, [sp]
	cmp r1, #0xaa
	mov r0, #4
	ble _020F75F8
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75F8:
	mov r1, #0xaa
	bl FUN_ov17_020f7d58
	bl FUN_ov17_020f80a0
	ldr r1, _020F761C ; =FUN_ov17_020f7620
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7618: .word ov17_021161C0
_020F761C: .word FUN_ov17_020f7620
	arm_func_end FUN_ov17_020f75ac

	arm_func_start FUN_ov17_020f7620
FUN_ov17_020f7620: ; 0x020F7620
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f7638
	bl FUN_ov17_020f77e8
	bl FUN_ov17_020f79a8
	bl FUN_ov17_020f7bc4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f7620

	arm_func_start FUN_ov17_020f7638
FUN_ov17_020f7638: ; 0x020F7638
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _020F77C8 ; =0x021126F8
	ldr r5, _020F77CC ; =0x021161C0
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mvn r1, #0
	ldr r8, _020F77D0 ; =0x0211202C
	ldr r7, _020F77D4 ; =0x02111FE6
	strb r1, [r0, #0x61]
	mov r4, #0
	add r6, sp, #0
_020F7674:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F76CC
	ldr r0, [r5]
	ldrb r0, [r0, #0x67]
	cmp r0, #0
	bne _020F76B4
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76B4:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add sp, sp, #8
	strb r4, [r0, #0x61]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76CC:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7674
	ldr r8, _020F77D8 ; =0x02111FF6
	ldr r7, _020F77DC ; =0x02111FEE
	mov r4, #0
	add r6, sp, #0
_020F76E8:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F775C
	cmp r4, #0
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x66]
	cmpeq r0, #0
	beq _020F7730
	cmp r4, #1
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x68]
	cmpeq r0, #0
	bne _020F7740
_020F7730:
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F7740:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r4, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F775C:
	add r4, r4, #1
	cmp r4, #2
	blt _020F76E8
	ldr r7, _020F77E0 ; =0x02111FFE
	ldr r6, _020F77E4 ; =0x02111FF2
	mov r8, #0
	add r4, sp, #0
_020F7778:
	mov r1, r6
	mov r2, r4
	add r0, r7, r8, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F77B4
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r8, #0xc
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77B4:
	add r8, r8, #1
	cmp r8, #2
	blt _020F7778
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77C8: .word ov17_021126F8
_020F77CC: .word ov17_021161C0
_020F77D0: .word ov17_0211202C
_020F77D4: .word ov17_02111FE6
_020F77D8: .word ov17_02111FF6
_020F77DC: .word ov17_02111FEE
_020F77E0: .word ov17_02111FFE
_020F77E4: .word ov17_02111FF2
	arm_func_end FUN_ov17_020f7638

	arm_func_start FUN_ov17_020f77e8
FUN_ov17_020f77e8: ; 0x020F77E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _020F797C ; =0x021161C0
	ldr r0, _020F7980 ; =0x021126F8
	ldr r1, [r1]
	mov r4, #0
	strb r4, [r1, #0x60]
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020F7984 ; =0x0211202C
	ldr r6, _020F7988 ; =0x02111FE6
	add r5, sp, #0
_020F7820:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F7878
	ldr r0, _020F797C ; =0x021161C0
	ldr r2, [r0]
	ldrsb r1, [r2, #0x61]
	cmp r1, r4
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F798C ; =0x02112006
	ldrb r1, [r1, r4]
	strb r1, [r2, #0x60]
	ldr r0, [r0]
	strb r4, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7878:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7820
	ldr r7, _020F7990 ; =0x02111FF6
	ldr r6, _020F7994 ; =0x02111FEE
	mov r4, #0
	add r5, sp, #0
_020F7894:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F78F0
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xa
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F7998 ; =0x02111FE3
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F78F0:
	add r4, r4, #1
	cmp r4, #2
	blt _020F7894
	ldr r7, _020F799C ; =0x02111FFE
	ldr r6, _020F79A0 ; =0x02111FF2
	mov r4, #0
	add r5, sp, #0
_020F790C:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F7968
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xc
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F79A4 ; =0x02111FE0
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7968:
	add r4, r4, #1
	cmp r4, #2
	blt _020F790C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F797C: .word ov17_021161C0
_020F7980: .word ov17_021126F8
_020F7984: .word ov17_0211202C
_020F7988: .word ov17_02111FE6
_020F798C: .word ov17_02112006
_020F7990: .word ov17_02111FF6
_020F7994: .word ov17_02111FEE
_020F7998: .word ov17_02111FE3
_020F799C: .word ov17_02111FFE
_020F79A0: .word ov17_02111FF2
_020F79A4: .word ov17_02111FE0
	arm_func_end FUN_ov17_020f77e8

	arm_func_start FUN_ov17_020f79a8
FUN_ov17_020f79a8: ; 0x020F79A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F7B60 ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7B40
	ldr r6, _020F7B64 ; =0x0211202C
	ldr r5, _020F7B68 ; =0x02111FE6
	mov r7, #0
	add r4, sp, #0
_020F79D0:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7A0C
	ldr r0, _020F7B6C ; =0x021161C0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x61]
	cmp r0, r7
	bne _020F7B40
	mov r0, r7
	b _020F7B44
_020F7A0C:
	add r7, r7, #1
	cmp r7, #0xa
	blt _020F79D0
	ldr r6, _020F7B70 ; =0x02111FF6
	ldr r5, _020F7B74 ; =0x02111FEE
	mov r7, #0
	add r4, sp, #0
_020F7A28:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7ADC
	ldr r4, _020F7B6C ; =0x021161C0
	add r0, r7, #0xa
	ldr r1, [r4]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	bl FUN_ov17_020f7b80
	cmp r7, #0
	bne _020F7B48
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	add r0, r0, #1
	strb r0, [r1, #0x65]
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	cmp r0, #0x28
	addlo sp, sp, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7ABC
	mov r5, #9
	mov r0, r5
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	sub r1, r5, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ABC:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldr r1, [r4]
	add sp, sp, #8
	ldrb r0, [r1, #0x65]
	sub r0, r0, #7
	strb r0, [r1, #0x65]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ADC:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7A28
	ldr r6, _020F7B78 ; =0x02111FFE
	ldr r5, _020F7B7C ; =0x02111FF2
	mov r7, #0
	add r4, sp, #0
_020F7AF8:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7B34
	ldr r1, _020F7B6C ; =0x021161C0
	add r0, r7, #0xc
	ldr r1, [r1]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	b _020F7B44
_020F7B34:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7AF8
_020F7B40:
	mvn r0, #0
_020F7B44:
	bl FUN_ov17_020f7b80
_020F7B48:
	ldr r0, _020F7B6C ; =0x021161C0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x65]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7B60: .word ov17_021126F8
_020F7B64: .word ov17_0211202C
_020F7B68: .word ov17_02111FE6
_020F7B6C: .word ov17_021161C0
_020F7B70: .word ov17_02111FF6
_020F7B74: .word ov17_02111FEE
_020F7B78: .word ov17_02111FFE
_020F7B7C: .word ov17_02111FF2
	arm_func_end FUN_ov17_020f79a8

	arm_func_start FUN_ov17_020f7b80
FUN_ov17_020f7b80: ; 0x020F7B80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F7BC0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r4]
	ldrsb r1, [r1, #0x62]
	cmp r5, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl FUN_ov17_020f7fd8
	ldr r0, [r4]
	mov r1, #0
	ldrsb r0, [r0, #0x62]
	bl FUN_ov17_020f7fd8
	ldr r0, [r4]
	strb r5, [r0, #0x62]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7BC0: .word ov17_021161C0
	arm_func_end FUN_ov17_020f7b80

	arm_func_start FUN_ov17_020f7bc4
FUN_ov17_020f7bc4: ; 0x020F7BC4
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7BE0
	mov r0, #0
	bl FUN_ov17_020f8130
_020F7BE0:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7BF8
	mov r0, #1
	bl FUN_ov17_020f8130
_020F7BF8:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7C10
	mov r0, #2
	bl FUN_ov17_020f8130
_020F7C10:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7C28
	mov r0, #3
	bl FUN_ov17_020f8130
_020F7C28:
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F7CD0
	ldr r0, _020F7D48 ; =0x021161C0
	ldr r0, [r0]
	ldrsb r2, [r0, #0x63]
	cmp r2, #0xa
	bge _020F7C70
	ldrb r1, [r0, #0x67]
	cmp r1, #0
	ldrne r1, _020F7D4C ; =0x02112006
	ldrneb r1, [r1, r2]
	strneb r1, [r0, #0x60]
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F7C70:
	sub r1, r2, #0xa
	cmp r1, #2
	bge _020F7CC0
	cmp r1, #0
	ldreqb r1, [r0, #0x66]
	cmpeq r1, #0
	beq _020F7CA0
	sub r1, r2, #0xa
	cmp r1, #1
	ldreqb r1, [r0, #0x68]
	cmpeq r1, #0
	bne _020F7CAC
_020F7CA0:
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F7CAC:
	ldr r1, _020F7D50 ; =0x02111FE3
	sub r2, r2, #0xa
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	ldmfd sp!, {r4, pc}
_020F7CC0:
	ldr r1, _020F7D54 ; =0x02111FE0
	sub r2, r2, #0xc
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
_020F7CD0:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7D28
	ldr r4, _020F7D48 ; =0x021161C0
	ldr r1, [r4]
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7D1C
	ldrb r0, [r1, #0x69]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D1C:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F7D28:
	mov r0, r4
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, _020F7D48 ; =0x021161C0
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D48: .word ov17_021161C0
_020F7D4C: .word ov17_02112006
_020F7D50: .word ov17_02111FE3
_020F7D54: .word ov17_02111FE0
	arm_func_end FUN_ov17_020f7bc4

	arm_func_start FUN_ov17_020f7d58
FUN_ov17_020f7d58: ; 0x020F7D58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r3, _020F7FB4 ; =0x021120CC
	ldr r2, _020F7FB8 ; =0x021120C4
	ldr r11, _020F7FBC ; =0x021120D4
	ldrb r10, [r3]
	ldrb r9, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	mov r4, r0
	ldrb r0, [r2]
	ldrb r3, [r11, #3]
	strb r9, [sp, #0x17]
	strb r8, [sp, #0x18]
	strb r7, [sp, #0x19]
	add r7, r4, r4, lsl #1
	strb r6, [sp, #0x1a]
	ldrb r5, [r11]
	ldrb lr, [r11, #1]
	ldrb r12, [r11, #2]
	ldrb r11, [r11, #4]
	str r0, [sp, #8]
	ldrb r0, [r2, #1]
	ldrb r9, [r2, #2]
	ldrb r8, [r2, #3]
	ldrb r2, [r2, #4]
	strb r3, [sp, #0x14]
	ldr r3, [sp, #8]
	strb r5, [sp, #0x11]
	strb r10, [sp, #0x16]
	add r6, sp, #0x16
	str r7, [sp, #4]
	ldrb r7, [r6, r4]
	mov r5, r1
	strb lr, [sp, #0x12]
	cmp r7, #0
	ldr r1, [sp, #4]
	strb r12, [sp, #0x13]
	strb r11, [sp, #0x15]
	strb r3, [sp, #0xc]
	strb r0, [sp, #0xd]
	strb r9, [sp, #0xe]
	strb r8, [sp, #0xf]
	strb r2, [sp, #0x10]
	mov r7, #0
	ble _020F7E80
	ldrb r11, [r6, r4]
	ldr r0, _020F7FC0 ; =0x0211202C
	ldr r10, _020F7FC4 ; =0x021161C0
	ldr r6, _020F7FC8 ; =0xC1FFFCFF
	ldr r9, _020F7FCC ; =0xFE00FF00
	and r8, r5, #0xff
_020F7E2C:
	ldr r2, [r10]
	mov r3, r1, lsl #2
	add r2, r2, r1, lsl #2
	ldr r2, [r2, #0x10]
	ldrh r3, [r0, r3]
	ldr r12, [r2]
	add r7, r7, #1
	and r12, r12, r6
	str r12, [r2]
	ldr r12, [r10]
	mov r2, r3, lsl #0x17
	add r3, r12, r1, lsl #2
	ldr r3, [r3, #0x10]
	cmp r7, r11
	ldr r12, [r3]
	add r1, r1, #1
	and r12, r12, r9
	orr r12, r12, r8
	orr r2, r12, r2, lsr #7
	str r2, [r3]
	blt _020F7E2C
_020F7E80:
	cmp r4, #4
	bge _020F7EBC
	ldr r0, _020F7FC4 ; =0x021161C0
	ldr r1, _020F7FC0 ; =0x0211202C
	ldr r3, [r0]
	ldr r0, [sp, #4]
	mov r2, #2
	mov r0, r0, lsl #2
	str r2, [sp]
	ldrh r1, [r1, r0]
	add r2, r3, r4, lsl #2
	ldr r0, [r3, r4, lsl #2]
	ldr r3, [r2, #0x48]
	mov r2, r5
	bl FUN_ov17_0210dbbc
_020F7EBC:
	add r1, sp, #0x11
	ldrb r0, [r1, r4]
	mov r6, #0
	cmp r0, #0
	ble _020F7F38
	mov r10, r0
	ldr r0, _020F7FD0 ; =0x02111FF6
	ldr r9, _020F7FC4 ; =0x021161C0
	ldr r7, _020F7FC8 ; =0xC1FFFCFF
	ldr r8, _020F7FCC ; =0xFE00FF00
	and r3, r5, #0xff
_020F7EE8:
	ldr r1, [r9]
	mov r2, r6, lsl #2
	add r1, r1, r6, lsl #2
	ldr r11, [r1, #0x38]
	ldrh r1, [r0, r2]
	ldr r2, [r11]
	and r2, r2, r7
	str r2, [r11]
	ldr r2, [r9]
	mov r1, r1, lsl #0x17
	add r2, r2, r6, lsl #2
	ldr r2, [r2, #0x38]
	add r6, r6, #1
	ldr r11, [r2]
	cmp r6, r10
	and r11, r11, r8
	orr r11, r11, r3
	orr r1, r11, r1, lsr #7
	str r1, [r2]
	blt _020F7EE8
_020F7F38:
	add r1, sp, #0xc
	ldrb r0, [r1, r4]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020F7FD4 ; =0x02111FFE
	ldr r8, _020F7FC4 ; =0x021161C0
	mov r9, r0
	mvn r6, #0
	mov r4, r7
_020F7F64:
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r4
	mov r3, r4
	bl DWCi_CELLlSetEffect
	ldr r0, [r8]
	mov r1, r7, lsl #2
	add r0, r0, r7, lsl #2
	ldrh r2, [r10, r1]
	ldr r0, [r0, #0x40]
	mov r1, r6
	mov r3, r5
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, r9
	blt _020F7F64
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7FB4: .word ov17_021120CC
_020F7FB8: .word ov17_021120C4
_020F7FBC: .word ov17_021120D4
_020F7FC0: .word ov17_0211202C
_020F7FC4: .word ov17_021161C0
_020F7FC8: .word 0xC1FFFCFF
_020F7FCC: .word 0xFE00FF00
_020F7FD0: .word ov17_02111FF6
_020F7FD4: .word ov17_02111FFE
	arm_func_end FUN_ov17_020f7d58

	arm_func_start FUN_ov17_020f7fd8
FUN_ov17_020f7fd8: ; 0x020F7FD8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltfd sp!, {r3, pc}
	cmp r0, #0xa
	bge _020F8024
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F8098 ; =0x02111FDE
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8024:
	sub r12, r0, #0xa
	cmp r12, #2
	bge _020F8068
	ldr r0, _020F8094 ; =0x021161C0
	ldr r2, _020F8098 ; =0x02111FDE
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, r12, lsl #2
	ldr r2, [r1, #0x38]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8068:
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F809C ; =0x02111FD8
	ldr r2, [r2]
	sub r0, r0, #0xc
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0x40]
	mvn r1, #0
	mov r2, #0
	bl DWCi_CELLlSetPalette
	ldmfd sp!, {r3, pc}
_020F8094: .word ov17_021161C0
_020F8098: .word ov17_02111FDE
_020F809C: .word ov17_02111FD8
	arm_func_end FUN_ov17_020f7fd8

	arm_func_start FUN_ov17_020f80a0
FUN_ov17_020f80a0: ; 0x020F80A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020F8124 ; =0x021161C0
	mov r4, #0x44
	ldr r1, [r0]
	mov r5, #0
	ldrsb r0, [r1, #0x63]
	cmp r0, #0xb
	ldr r0, [r1, #0x58]
	movgt r4, #0x45
	mov r1, r5
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl DWCi_CEINlSet
	ldr r4, _020F8124 ; =0x021161C0
	sub r5, r5, #1
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, #0x58]
	mov r2, #2
	bl DWCi_CELLlSetPriority
	ldr r0, [r4]
	ldr r2, _020F8128 ; =0x02112054
	ldrsb r3, [r0, #0x63]
	ldr r0, [r0, #0x58]
	mov r1, r5
	mov r4, r3, lsl #2
	ldr r3, _020F812C ; =0x02112056
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl DWCi_CELLlSetPosition
	ldmfd sp!, {r3, r4, r5, pc}
_020F8124: .word ov17_021161C0
_020F8128: .word ov17_02112054
_020F812C: .word ov17_02112056
	arm_func_end FUN_ov17_020f80a0

	arm_func_start FUN_ov17_020f8130
FUN_ov17_020f8130: ; 0x020F8130
	stmfd sp!, {r3, lr}
	ldr r1, _020F81D0 ; =0x021161C0
	ldr r2, _020F81D4 ; =0x0211208C
	ldr r3, [r1]
	ldrsb r12, [r3, #0x63]
	add r2, r2, r12, lsl #2
	ldrsb r2, [r0, r2]
	strb r2, [r3, #0x63]
	ldr r2, [r1]
	ldrsb r1, [r2, #0x63]
	cmp r1, #0xd
	bne _020F8170
	cmp r0, #1
	cmpne r0, #3
	streqb r12, [r2, #0x64]
	beq _020F81C0
_020F8170:
	mvn r0, #0
	cmp r1, r0
	bne _020F8198
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #0xa
	streqb r0, [r2, #0x63]
	movne r0, #0xb
	b _020F81BC
_020F8198:
	sub r0, r0, #1
	cmp r1, r0
	bne _020F81C0
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #1
	streqb r0, [r2, #0x63]
	movne r0, #2
_020F81BC:
	strneb r0, [r2, #0x63]
_020F81C0:
	bl FUN_ov17_020f80a0
	mov r0, #8
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F81D0: .word ov17_021161C0
_020F81D4: .word ov17_0211208C
	arm_func_end FUN_ov17_020f8130

	arm_func_start FUN_ov17_020f81d8
FUN_ov17_020f81d8: ; 0x020F81D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8230 ; =0x021161C0
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl DWCi_CELLlGetObj
	ldr r1, [r0]
	mov r0, #4
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8234 ; =FUN_ov17_020f8238
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8230: .word ov17_021161C0
_020F8234: .word FUN_ov17_020f8238
	arm_func_end FUN_ov17_020f81d8

	arm_func_start FUN_ov17_020f8238
FUN_ov17_020f8238: ; 0x020F8238
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8288 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #3
	ldr r1, [r1, #0x34]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F828C ; =FUN_ov17_020f8290
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8288: .word ov17_021161C0
_020F828C: .word FUN_ov17_020f8290
	arm_func_end FUN_ov17_020f8238

	arm_func_start FUN_ov17_020f8290
FUN_ov17_020f8290: ; 0x020F8290
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F82E0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #2
	ldr r1, [r1, #0x28]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F82E4 ; =FUN_ov17_020f82e8
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F82E0: .word ov17_021161C0
_020F82E4: .word FUN_ov17_020f82e8
	arm_func_end FUN_ov17_020f8290

	arm_func_start FUN_ov17_020f82e8
FUN_ov17_020f82e8: ; 0x020F82E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8338 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #1
	ldr r1, [r1, #0x1c]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F833C ; =FUN_ov17_020f8340
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8338: .word ov17_021161C0
_020F833C: .word FUN_ov17_020f8340
	arm_func_end FUN_ov17_020f82e8

	arm_func_start FUN_ov17_020f8340
FUN_ov17_020f8340: ; 0x020F8340
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8390 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #0
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8394 ; =FUN_ov17_020f8398
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8390: .word ov17_021161C0
_020F8394: .word FUN_ov17_020f8398
	arm_func_end FUN_ov17_020f8340

	arm_func_start FUN_ov17_020f8398
FUN_ov17_020f8398: ; 0x020F8398
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r1, r0
	mov r0, r5
	bl DWCi_TSKlDelete
	ldr r4, _020F8450 ; =0x021161C0
_020F83B0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x48]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	bl FUN_ov17_0210d6c0
	add r5, r5, #1
	cmp r5, #4
	blt _020F83B0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F83E0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x40]
	bl DWCi_CELLlDelete
	add r5, r5, #1
	cmp r5, #2
	blt _020F83E0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8404:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x38]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #2
	blt _020F8404
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8428:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #0xa
	blt _020F8428
	ldr r0, _020F8454 ; =0x021161C0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_020F8450: .word ov17_021161C0
_020F8454: .word ov17_021161C0
	arm_func_end FUN_ov17_020f8398

	arm_func_start FUN_ov17_020f8458
FUN_ov17_020f8458: ; 0x020F8458
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x104
	mov r0, #0x26c
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _020F8550 ; =0x021161C4
	add r4, sp, #0
	str r0, [r5, #4]
	mov r0, #0
	mov r1, r4
	mov r2, #0x104
	strb r0, [r5]
	bl MIi_CpuClear16
	mov r3, #0x50
	mov r2, #0xc
	ldr r0, _020F8554 ; =0x021120E4
	add r1, sp, #4
	strb r3, [sp]
	strh r2, [sp, #2]
	bl MI_CpuCopy8
	ldr r0, [r5, #4]
	mov r1, #3
	strh r1, [r0]
	ldr r5, [r5, #4]
	mov r2, #0x41
	add r3, r5, #2
_020F84C0:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F84C0
	ldr r1, _020F8550 ; =0x021161C4
	mov r3, #1
	add r0, r5, #0x100
	strh r3, [r0, #6]
	ldr r0, [r1, #4]
	sub r2, r3, #2
	add r0, r0, #0x100
	strh r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0xa]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xe]
	ldr r0, [r1, #4]
	add r0, r0, #0x110
	bl OS_GetMacAddress
	ldr r0, _020F8558 ; =FUN_ov17_020f8604
	ldr r1, _020F855C ; =FUN_ov17_020f8614
	blx AOSSi_InitLocal
	cmp r0, #0
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r4, r5, pc}
	bl OS_Terminate
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, pc}
_020F8550: .word ov17_021161C4
_020F8554: .word ov17_021120E4
_020F8558: .word FUN_ov17_020f8604
_020F855C: .word FUN_ov17_020f8614
	arm_func_end FUN_ov17_020f8458

	arm_func_start FUN_ov17_020f8560
FUN_ov17_020f8560: ; 0x020F8560
	stmfd sp!, {r4, lr}
	mov r4, r0
	blx AOSSi_EndLocal
	cmp r4, #0
	beq _020F859C
	ldr r0, _020F85A8 ; =0x021161C4
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x116]
	cmp r1, #0
	ldreqb r0, [r0]
	cmpeq r0, #1
	bne _020F859C
	add r0, r2, #0x17
	add r0, r0, #0x100
	bl FUN_ov17_02107750
_020F859C:
	ldr r0, _020F85AC ; =0x021161C8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F85A8: .word ov17_021161C4
_020F85AC: .word ov17_021161C8
	arm_func_end FUN_ov17_020f8560

	arm_func_start FUN_ov17_020f85b0
FUN_ov17_020f85b0: ; 0x020F85B0
	stmfd sp!, {r4, lr}
	ldr r4, _020F8600 ; =0x021161C4
	ldr r0, [r4, #4]
	blx AOSSi_Init
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4]
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x116]
	cmp r0, #1
	beq _020F85F0
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _020F85F8
_020F85F0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020F85F8:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020F8600: .word ov17_021161C4
	arm_func_end FUN_ov17_020f85b0

	arm_func_start FUN_ov17_020f8604
FUN_ov17_020f8604: ; 0x020F8604
	ldr r12, _020F8610 ; =DWCi_HEAPlAllocEx
	mov r1, #0x20
	bx r12
_020F8610: .word DWCi_HEAPlAllocEx
	arm_func_end FUN_ov17_020f8604

	arm_func_start FUN_ov17_020f8614
FUN_ov17_020f8614: ; 0x020F8614
	ldr r12, _020F861C ; =FUN_ov17_0210e110
	bx r12
_020F861C: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_020f8614

	arm_func_start DWC_StartUtility
DWC_StartUtility: ; 0x020F8620
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F86B4 ; =dwc_Language
	str r0, [r4, #4]
	mov r0, r1
	mov r1, r2
	bl dwcutil_checkParam
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWC_Auth_GetCustomNas
	mov r6, r0
	ldr r0, _020F86B8 ; =0x02112CBC
	bl DWC_Auth_SetCustomNas
	mov r0, #0
	strb r0, [r4, #1]
	bl dwcutil_initGame
	bl dwcutil_initGraph
	bl DWCi_SNDlInit
	ldr r0, _020F86BC ; =DWCi_SceneInit
	bl DWCi_ChangeScene
	mov r5, #0
_020F8674:
	bl DWCi_IPTlRead
	ldr r0, [r4, #0xc]
	blx r0
	mov r0, r5
	bl DWCi_TSKlAct
	bl DWCi_IPTlCheckFold
	bl DWCi_SetLedWireless
	bl OS_WaitVBlankIntr
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _020F8674
	bl dwcutil_procEnd
	mov r0, r6
	bl DWC_Auth_SetCustomNas
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020F86B4: .word dwc_Language
_020F86B8: .word ov17_02112CBC
_020F86BC: .word DWCi_SceneInit
	arm_func_end DWC_StartUtility

	arm_func_start dwcutil_checkParam
dwcutil_checkParam: ; 0x020F86C0
	ldr r2, _020F8738 ; =dwc_Language
	cmp r0, #0
	strb r0, [r2]
	str r1, [r2, #8]
	blt _020F86DC
	cmp r0, #6
	ble _020F86E4
_020F86DC:
	mov r0, #0
	bx lr
_020F86E4:
	mov r2, r1, lsl #0x1c
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	movhi r0, #0
	bxhi lr
	mov r1, r1, lsr #4
	tst r1, #2
	movne r0, #0
	bxne lr
	cmp r0, #0
	beq _020F871C
	tst r1, #1
	movne r0, #0
	bxne lr
_020F871C:
	cmp r0, #0
	bne _020F8730
	tst r1, #1
	moveq r0, #0
	bxeq lr
_020F8730:
	mov r0, #1
	bx lr
_020F8738: .word dwc_Language
	arm_func_end dwcutil_checkParam

	arm_func_start dwcutil_initGame
dwcutil_initGame: ; 0x020F873C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020F8804 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	bl GX_DispOff
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _020F8778
	bl OS_Terminate
_020F8778:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _020F8788
	bl OS_Terminate
_020F8788:
	mov r4, #0
	mov r0, r4
	bl GX_VBlankIntr
	bl FX_Init
	sub r0, r4, #1
	bl FS_Init
	bl TP_Init
	bl RTC_Init
	bl GX_DispOff
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl DWCi_ClearVram
	ldr r0, _020F880C ; =dwc_Language
	ldr r0, [r0, #4]
	bl DWCi_HEAPlInit
	bl DWCi_ITRlIntr
	bl DWCi_TSKlInit
	bl DWCi_ARClInit
	bl DWCi_IPTlInit
	bl DWCi_EFFlInit
	mov r0, #0x700
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	str r0, [sp]
	bl DWC_BM_Init
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F8804: .word 0x04000208
_020F8808: .word 0x04001000
_020F880C: .word dwc_Language
	arm_func_end dwcutil_initGame

	arm_func_start dwcutil_initGraph
dwcutil_initGraph: ; 0x020F8810
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0
	bl GX_VBlankIntr
	mov r0, #1
	bl GX_SetBankForBG
	mov r0, #2
	bl GX_SetBankForOBJ
	mov r1, #0
	mov r0, #1
	mov r2, r1
	bl GX_SetGraphicsMode
	mov r10, #0x4000000
	ldr r1, [r10]
	add r0, r10, #0x6c
	bic r1, r1, #0x1f00
	str r1, [r10]
	ldr r2, [r10]
	mov r1, #0
	bic r2, r2, #0xe000
	str r2, [r10]
	bl GXx_SetMasterBrightness_
	ldr r1, [r10]
	ldr r4, _020F8A6C ; =0xFFCFFFEF
	ldr r11, _020F8A70 ; =0x0000FFBF
	and r1, r1, r4
	orr r1, r1, #0x10
	orr r1, r1, #0x200000
	str r1, [r10]
	ldrh r1, [r10, #8]
	ldr r0, _020F8A74 ; =0x00200010
	and r1, r1, r11
	strh r1, [r10, #8]
	ldrh r2, [r10, #0xa]
	add r5, r0, #0x3e00000
	add r0, r10, #0x50
	and r2, r2, r11
	strh r2, [r10, #0xa]
	ldrh r3, [r10, #0xc]
	mov r1, #0x3f
	mov r2, #0x10
	and r3, r3, r11
	strh r3, [r10, #0xc]
	ldrh r3, [r10, #0xe]
	and r3, r3, r11
	strh r3, [r10, #0xe]
	mov r3, #0
	str r3, [r5]
	str r3, [r10, #0x14]
	str r3, [r10, #0x18]
	str r3, [r10, #0x1c]
	bl G2x_SetBlendBrightness_
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #0x100
	bl GX_SetBankForSubOBJ
	mov r0, #0
	bl GXS_SetGraphicsMode
	add r9, r10, #0x1000
	ldr r0, [r9]
	ldr r8, _020F8A78 ; =0x0400106C
	bic r0, r0, #0x1f00
	str r0, [r9]
	ldr r1, [r9]
	mov r0, r8
	bic r1, r1, #0xe000
	str r1, [r9]
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, [r9]
	sub r7, r8, #0x64
	and r0, r0, r4
	orr r0, r0, #0x10
	str r0, [r9]
	ldrh r0, [r7]
	sub r6, r8, #0x62
	sub r5, r8, #0x60
	and r0, r0, r11
	strh r0, [r7]
	ldrh r0, [r6]
	sub r4, r8, #0x5e
	mov r1, #0x3f
	and r0, r0, r11
	strh r0, [r6]
	ldrh r3, [r5]
	mov r2, #0x10
	sub r0, r8, #0x1c
	and r3, r3, r11
	strh r3, [r5]
	ldrh r3, [r4]
	and r3, r3, r11
	strh r3, [r4]
	mov r3, #0
	str r3, [r8, #-0x5c]
	str r3, [r8, #-0x58]
	str r3, [r8, #-0x54]
	str r3, [r8, #-0x50]
	bl G2x_SetBlendBrightness_
	ldrh r0, [r10, #8]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r10, #8]
	ldrh r0, [r10, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0xc00
	strh r0, [r10, #0xa]
	ldrh r0, [r10, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r10, #0xc]
	ldrh r0, [r10, #0xe]
	and r0, r0, #0x43
	orr r0, r0, #0xf10
	strh r0, [r10, #0xe]
	ldrh r0, [r7]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r7]
	ldrh r0, [r6]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r6]
	ldrh r0, [r5]
	and r0, r0, #0x43
	orr r0, r0, #0xe00
	strh r0, [r5]
	ldrh r0, [r4]
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r4]
	ldr r0, [r10]
	add r1, r10, #0x304
	bic r0, r0, #0x38000000
	str r0, [r10]
	ldr r0, [r10]
	bic r0, r0, #0x7000000
	str r0, [r10]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl DWCi_FNTlInit
	bl DWCi_OBJlInit
	bl DWCi_OVRlInit
	bl DWCi_CELLlInit
	bl GX_DispOn
	ldr r1, [r9]
	mov r0, #1
	orr r1, r1, #0x10000
	str r1, [r9]
	bl GX_VBlankIntr
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8A6C: .word 0xFFCFFFEF
_020F8A70: .word 0x0000FFBF
_020F8A74: .word 0x00200010
_020F8A78: .word 0x0400106C
	arm_func_end dwcutil_initGraph

	arm_func_start dwcutil_procEnd
dwcutil_procEnd: ; 0x020F8A7C
	stmfd sp!, {r3, lr}
	bl GX_DispOff
	ldr r1, _020F8AD0 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl DWCi_SetLedNormal
	mov r0, #1
	bl PM_SetLCDPower
	bl DWCi_IPTlEnd
	bl DWCi_ITRlEnd
	bl DWCi_SNDlEnd
	bl DWCi_CELLlEnd
	bl DWCi_OBJlEnd
	bl DWCi_FNTlEnd
	bl DWCi_EFFlEnd
	bl DWCi_ARClEnd
	bl DWCi_TSKlEnd
	bl DWCi_HEAPlEnd
	bl DWCi_RepairVram
	ldmfd sp!, {r3, pc}
_020F8AD0: .word 0x04001000
	arm_func_end dwcutil_procEnd

	arm_func_start DWCi_ChangeScene
DWCi_ChangeScene: ; 0x020F8AD4
	ldr r1, _020F8AE0 ; =dwc_Language
	str r0, [r1, #0xc]
	bx lr
_020F8AE0: .word dwc_Language
	arm_func_end DWCi_ChangeScene

	arm_func_start DWCi_SetParam_
DWCi_SetParam_: ; 0x020F8AE4
	ldr r2, _020F8AF4 ; =dwc_Language
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bx lr
_020F8AF4: .word dwc_Language
	arm_func_end DWCi_SetParam_

	arm_func_start DWCi_GetParam_
DWCi_GetParam_: ; 0x020F8AF8
	cmp r0, #0
	ldrne r2, _020F8B1C ; =dwc_Language
	ldrne r2, [r2, #0x10]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B1C ; =dwc_Language
	ldrne r0, [r0, #0x14]
	strne r0, [r1]
	bx lr
_020F8B1C: .word dwc_Language
	arm_func_end DWCi_GetParam_

	arm_func_start DWCi_SetParam2_
DWCi_SetParam2_: ; 0x020F8B20
	ldr r2, _020F8B30 ; =dwc_Language
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	bx lr
_020F8B30: .word dwc_Language
	arm_func_end DWCi_SetParam2_

	arm_func_start DWCi_GetParam2_
DWCi_GetParam2_: ; 0x020F8B34
	cmp r0, #0
	ldrne r2, _020F8B58 ; =dwc_Language
	ldrne r2, [r2, #0x18]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B58 ; =dwc_Language
	ldrne r0, [r0, #0x1c]
	strne r0, [r1]
	bx lr
_020F8B58: .word dwc_Language
	arm_func_end DWCi_GetParam2_

	arm_func_start DWCi_Language
DWCi_Language: ; 0x020F8B5C
	ldr r0, _020F8B68 ; =dwc_Language
	ldrb r0, [r0]
	bx lr
_020F8B68: .word dwc_Language
	arm_func_end DWCi_Language

	arm_func_start DWCi_Entry
DWCi_Entry: ; 0x020F8B6C
	ldr r0, _020F8B80 ; =dwc_Language
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
_020F8B80: .word dwc_Language
	arm_func_end DWCi_Entry

	arm_func_start DWCi_Flag
DWCi_Flag: ; 0x020F8B84
	ldr r1, _020F8B9C ; =dwc_Language
	ldr r1, [r1, #8]
	tst r0, r1, lsr #4
	movne r0, #1
	moveq r0, #0
	bx lr
_020F8B9C: .word dwc_Language
	arm_func_end DWCi_Flag

	arm_func_start DWCi_EndUtility
DWCi_EndUtility: ; 0x020F8BA0
	ldr r0, _020F8BB0 ; =dwc_Language
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
_020F8BB0: .word dwc_Language
	arm_func_end DWCi_EndUtility

	arm_func_start kDWCi_Language
kDWCi_Language: ; 0x020F8BB4
	ldr r0, _020F8BF0 ; =dwc_Language
	ldrb r1, [r0]
	cmp r1, #6
	moveq r0, #0x38
	bxeq lr
	cmp r1, #1
	bne _020F8BE4
	ldr r0, [r0, #8]
	mov r0, r0, lsr #4
	tst r0, #2
	moveq r0, #0x37
	bxeq lr
_020F8BE4:
	add r0, r1, #0x31
	and r0, r0, #0xff
	bx lr
_020F8BF0: .word dwc_Language
	arm_func_end kDWCi_Language

	arm_func_start FUN_ov17_020f8bf4
FUN_ov17_020f8bf4: ; 0x020F8BF4
	stmfd sp!, {r4, lr}
	mov r0, #0x64
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r1, r0
	ldr r4, _020F8C28 ; =0x021161EC
	mov r0, #8
	str r1, [r4]
	mov r2, #0xc
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	str r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F8C28: .word ov17_021161EC
	arm_func_end FUN_ov17_020f8bf4

	arm_func_start FUN_ov17_020f8c2c
FUN_ov17_020f8c2c: ; 0x020F8C2C
	ldr r0, _020F8C38 ; =0x021161EC
	ldr r12, _020F8C3C ; =DWCi_HEAPlFree_
	bx r12
_020F8C38: .word ov17_021161EC
_020F8C3C: .word DWCi_HEAPlFree_
	arm_func_end FUN_ov17_020f8c2c

	arm_func_start FUN_ov17_020f8c40
FUN_ov17_020f8c40: ; 0x020F8C40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F8C94 ; =0x021161EC
	mov r5, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x60]
	bl DWCi_QUElPopBack
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	mov r2, #4
	bl DWCi_ARClReadEx
	add r2, r0, #0x20
	str r0, [r4, #8]
	add r0, r2, #0x10
	str r0, [r4]
	ldr r1, [r2, #4]
	mov r0, r4
	add r1, r2, r1
	add r1, r1, #8
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F8C94: .word ov17_021161EC
	arm_func_end FUN_ov17_020f8c40

	arm_func_start FUN_ov17_020f8c98
FUN_ov17_020f8c98: ; 0x020F8C98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl DWCi_ARClRelease
	ldr r0, _020F8CC0 ; =0x021161EC
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r4, pc}
_020F8CC0: .word ov17_021161EC
	arm_func_end FUN_ov17_020f8c98

	arm_func_start DWCi_MSGlGet
DWCi_MSGlGet: ; 0x020F8CC4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r2, r3}
	ldr r0, [r2, r1, lsl #2]
	add r0, r3, r0
	bx lr
	arm_func_end DWCi_MSGlGet

	arm_func_start DWCi_MSGlGetEx
DWCi_MSGlGetEx: ; 0x020F8CDC
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r12, lr}
	ldr r0, [r12, r1, lsl #2]
	cmp r2, #0
	add r0, lr, r0
	addge r3, r3, #0x30
	movge r1, r2, lsl #1
	strgeh r3, [r0, r1]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MSGlGetEx

	arm_func_start FUN_ov17_020f8d08
FUN_ov17_020f8d08: ; 0x020F8D08
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _020F8DDC ; =0x0001E2A4
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	ldr r5, _020F8DE0 ; =0x021161F0
	add r1, r0, #0x1e000
	str r0, [r5]
	str r4, [r1, #0x298]
	ldr r0, [r5]
	mov r12, #0
	add r0, r0, #0x1e000
	strb r12, [r0, #0x2a0]
	ldr r0, [r5]
	add r4, sp, #0
	add r0, r0, #0x1e000
	ldr lr, _020F8DE4 ; =0x02112D20
	strb r12, [r0, #0x2a1]
	mov r6, r4
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r4, _020F8DE8 ; =DWCiMsgCmn
	mov r1, r12
	ldr r0, [r4]
	bl DWCi_MSGlGet
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #1
	bl DWCi_MSGlGet
	str r0, [sp, #8]
	bl kDWCi_Language
	strb r0, [sp, #0x18]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov17_0210b7ac
	bl FUN_ov17_0210b9d8
	cmp r0, #0
	bne _020F8DB0
	bl OS_Terminate
_020F8DB0:
	mov r0, #0
	ldr r1, _020F8DEC ; =FUN_ov17_020f8ea4
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, _020F8DE0 ; =0x021161F0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x29c]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8DDC: .word 0x0001E2A4
_020F8DE0: .word ov17_021161F0
_020F8DE4: .word ov17_02112D20
_020F8DE8: .word DWCiMsgCmn
_020F8DEC: .word FUN_ov17_020f8ea4
	arm_func_end FUN_ov17_020f8d08

	arm_func_start FUN_ov17_020f8df0
FUN_ov17_020f8df0: ; 0x020F8DF0
	mov r0, #0
	ldr r1, _020F8E08 ; =FUN_ov17_020f8e10
	ldr r12, _020F8E0C ; =DWCi_TSKlForm
	mov r2, r0
	mov r3, #0x78
	bx r12
_020F8E08: .word FUN_ov17_020f8e10
_020F8E0C: .word DWCi_TSKlForm
	arm_func_end FUN_ov17_020f8df0

	arm_func_start FUN_ov17_020f8e10
FUN_ov17_020f8e10: ; 0x020F8E10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_0210b88c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F8E48 ; =0x021161F0
	mov r1, r4
	ldr r0, [r0]
	mov r3, #1
	add r2, r0, #0x1e000
	mov r0, #0
	strb r3, [r2, #0x2a1]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, pc}
_020F8E48: .word ov17_021161F0
	arm_func_end FUN_ov17_020f8e10

	arm_func_start FUN_ov17_020f8e4c
FUN_ov17_020f8e4c: ; 0x020F8E4C
	ldr r0, _020F8E64 ; =0x021161F0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F8E64: .word ov17_021161F0
	arm_func_end FUN_ov17_020f8e4c

	arm_func_start FUN_ov17_020f8e68
FUN_ov17_020f8e68: ; 0x020F8E68
	ldr r1, _020F8E7C ; =0x021161F0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x298]
	bx lr
_020F8E7C: .word ov17_021161F0
	arm_func_end FUN_ov17_020f8e68

	arm_func_start FUN_ov17_020f8e80
FUN_ov17_020f8e80: ; 0x020F8E80
	ldr r12, _020F8E88 ; =FUN_ov17_0210ba20
	bx r12
_020F8E88: .word FUN_ov17_0210ba20
	arm_func_end FUN_ov17_020f8e80

	arm_func_start FUN_ov17_020f8e8c
FUN_ov17_020f8e8c: ; 0x020F8E8C
	ldr r0, _020F8EA0 ; =0x021161F0
	ldr r0, [r0]
	add r0, r0, #0x2280
	add r0, r0, #0x1c000
	bx lr
_020F8EA0: .word ov17_021161F0
	arm_func_end FUN_ov17_020f8e8c

	arm_func_start FUN_ov17_020f8ea4
FUN_ov17_020f8ea4: ; 0x020F8EA4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, #1
	bl FUN_ov17_0210ba54
	ldr r6, _020F9114 ; =0x021161F0
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldrb r1, [r0, #0x2a0]
	cmp r1, #0
	beq _020F8EFC
	ldrb r1, [r0, #0x2a1]
	cmp r1, #0
	bne _020F8EFC
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8EFC:
	add r0, sp, #1
	add r1, sp, #0
	bl FUN_ov17_0210bd88
	ldrb r0, [sp, #1]
	cmp r0, #0x1a
	bgt _020F8F90
	bge _020F9080
	cmp r0, #0x14
	bgt _020F8F80
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F910C
_020F8F2C: ; jump table
	b _020F910C ; case 0
	b _020F910C ; case 1
	b _020F910C ; case 2
	b _020F910C ; case 3
	b _020F910C ; case 4
	b _020F8FB4 ; case 5
	b _020F910C ; case 6
	b _020F910C ; case 7
	b _020F910C ; case 8
	b _020F910C ; case 9
	b _020F910C ; case 10
	b _020F910C ; case 11
	b _020F90BC ; case 12
	b _020F9008 ; case 13
	b _020F910C ; case 14
	b _020F910C ; case 15
	b _020F910C ; case 16
	b _020F910C ; case 17
	b _020F910C ; case 18
	b _020F910C ; case 19
	b _020F9044 ; case 20
_020F8F80:
	cmp r0, #0x17
	beq _020F9044
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8F90:
	cmp r0, #0x1d
	bgt _020F8FA4
	beq _020F9080
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8FA4:
	cmp r0, #0x22
	beq _020F90F8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8FB4:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r5, r0, #0x2280
	bl FUN_ov17_0210bdcc
	add r1, r5, #0x1c000
	mov r2, #0x16
	bl MIi_CpuCopy16
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9008:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9044:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #3
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9080:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #4
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F90BC:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #2
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F90F8:
	mov r1, r5
	mov r0, #0
	bl DWCi_TSKlDelete
	ldr r0, _020F9118 ; =0x021161F0
	bl DWCi_HEAPlFree_
_020F910C:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9114: .word ov17_021161F0
_020F9118: .word ov17_021161F0
	arm_func_end FUN_ov17_020f8ea4

	arm_func_start FUN_ov17_020f911c
FUN_ov17_020f911c: ; 0x020F911C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, #0xc
	sub r1, r0, #0x10
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F9178 ; =0x021161F4
	ldr r12, _020F917C ; =FUN_ov17_020f92b8
	str r0, [r1]
	ldr r2, _020F9180 ; =FUN_ov17_020f9290
	ldr r3, _020F9184 ; =FUN_ov17_020f92a8
	str r12, [sp]
	mov r12, #0x800
	mov r0, #0xf
	mov r1, #0x40
	str r12, [sp, #4]
	blx ATERMi_ApConfigStart
	cmp r0, #1
	beq _020F9168
	bl OS_Terminate
_020F9168:
	mov r0, #0xa
	bl OS_Sleep
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F9178: .word ov17_021161F4
_020F917C: .word FUN_ov17_020f92b8
_020F9180: .word FUN_ov17_020f9290
_020F9184: .word FUN_ov17_020f92a8
	arm_func_end FUN_ov17_020f911c

	arm_func_start FUN_ov17_020f9188
FUN_ov17_020f9188: ; 0x020F9188
	stmfd sp!, {r3, lr}
	blx ATERMi_ApConfigEnd
	cmp r0, #1
	beq _020F919C
	bl OS_Terminate
_020F919C:
	ldr r0, _020F91A8 ; =0x021161F4
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_020F91A8: .word ov17_021161F4
	arm_func_end FUN_ov17_020f9188

	arm_func_start FUN_ov17_020f91ac
FUN_ov17_020f91ac: ; 0x020F91AC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	ldr r1, _020F9260 ; =0x021161F4
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _020F9258
_020F91CC: ; jump table
	b _020F91EC ; case 0
	b _020F91EC ; case 1
	b _020F91F8 ; case 2
	b _020F91EC ; case 3
	b _020F9204 ; case 4
	b _020F91EC ; case 5
	b _020F9210 ; case 6
	b _020F9254 ; case 7
_020F91EC:
	add sp, sp, #0xe8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020F91F8:
	add sp, sp, #0xe8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020F9204:
	add sp, sp, #0xe8
	mov r0, #2
	ldmfd sp!, {r3, pc}
_020F9210:
	add r0, sp, #0
	blx ATERMi_ApConfigGetResult
	cmp r0, #1
	beq _020F9224
	bl OS_Terminate
_020F9224:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	blt _020F9248
	cmp r0, #3
	ldrle r0, [sp, #0x24]
	cmple r0, #1
	addeq sp, sp, #0xe8
	moveq r0, #3
	ldmeqfd sp!, {r3, pc}
_020F9248:
	add sp, sp, #0xe8
	mov r0, #5
	ldmfd sp!, {r3, pc}
_020F9254:
	mov r0, #4
_020F9258:
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
_020F9260: .word ov17_021161F4
	arm_func_end FUN_ov17_020f91ac

	arm_func_start FUN_ov17_020f9264
FUN_ov17_020f9264: ; 0x020F9264
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	add r0, sp, #0
	blx ATERMi_ApConfigGetResult
	cmp r0, #1
	beq _020F9280
	bl OS_Terminate
_020F9280:
	add r0, sp, #0
	bl FUN_ov17_02107650
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9264

	arm_func_start FUN_ov17_020f9290
FUN_ov17_020f9290: ; 0x020F9290
	ldr r3, _020F92A4 ; =0x021161F4
	ldmia r0, {r0, r1, r2}
	ldr r3, [r3]
	stmia r3, {r0, r1, r2}
	bx lr
_020F92A4: .word ov17_021161F4
	arm_func_end FUN_ov17_020f9290

	arm_func_start FUN_ov17_020f92a8
FUN_ov17_020f92a8: ; 0x020F92A8
	ldr r12, _020F92B4 ; =DWCi_HEAPlAllocEx
	mov r1, #0x20
	bx r12
_020F92B4: .word DWCi_HEAPlAllocEx
	arm_func_end FUN_ov17_020f92a8

	arm_func_start FUN_ov17_020f92b8
FUN_ov17_020f92b8: ; 0x020F92B8
	ldr r12, _020F92C0 ; =FUN_ov17_0210e110
	bx r12
_020F92C0: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_020f92b8

	arm_func_start FUN_ov17_020f92c4
FUN_ov17_020f92c4: ; 0x020F92C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x14
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020F9308 ; =FUN_ov17_020f930c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9308: .word FUN_ov17_020f930c
	arm_func_end FUN_ov17_020f92c4

	arm_func_start FUN_ov17_020f930c
FUN_ov17_020f930c: ; 0x020F930C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210f428
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210f428
	mov r0, r5
	bl DWCi_CEINlRelease
	mov r0, r4
	bl DWCi_CEINlRelease
	bl FUN_ov17_020f5310
	bl FUN_ov17_020f50b4
	ldr r0, _020F9384 ; =DWCiMsgCmn
	ldr r0, [r0]
	bl FUN_ov17_020f8c98
	bl FUN_ov17_020f8c2c
	bl FUN_ov17_02107084
	bl DWCi_EndUtility
	ldmfd sp!, {r3, r4, r5, pc}
_020F9384: .word DWCiMsgCmn
	arm_func_end FUN_ov17_020f930c

	arm_func_start DWCi_SceneInit
DWCi_SceneInit: ; 0x020F9388
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107044
	bl FUN_ov17_020f8bf4
	bl FUN_ov17_020f5094
	bl FUN_ov17_020f5298
	bl DWCi_COMMENTlInit
	bl DWCi_Language
	cmp r0, #1
	bne _020F93C4
	mov r0, #2
	bl DWCi_Flag
	cmp r0, #0
	beq _020F93C4
	ldr r0, _020F94F0 ; =0x02112DC8
	b _020F93D0
_020F93C4:
	bl DWCi_Language
	ldr r1, _020F94F4 ; =0x02112DAC
	ldr r0, [r1, r0, lsl #2]
_020F93D0:
	bl FUN_ov17_020f8c40
	ldr r1, _020F94F8 ; =DWCiMsgCmn
	str r0, [r1]
	ldr r0, _020F94FC ; =0x02112DD8
	bl DWCi_Char
	mov r1, r0
	mov r0, #1
	bl DWCi_CEINlRead
	ldr r0, _020F9500 ; =0x02112DEC
	bl DWCi_Char
	mov r1, r0
	mov r0, #0
	bl DWCi_CEINlRead
	ldr r0, _020F9504 ; =0x02112E00
	ldr r1, _020F9508 ; =GXS_LoadBG1Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F950C ; =0x02112E14
	ldr r1, _020F9510 ; =GXS_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9514 ; =0x02112E28
	ldr r1, _020F9518 ; =GXS_LoadOBJ
	bl DWCi_CMNlLoadResource
	ldr r0, _020F951C ; =0x02112E40
	ldr r1, _020F9520 ; =GXS_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9524 ; =0x02112E58
	ldr r1, _020F9528 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F952C ; =0x02112E70
	ldr r1, _020F9530 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9534 ; =0x02112E88
	ldr r1, _020F9538 ; =GX_LoadOBJ
	bl DWCi_CMNlLoadResource
	ldr r0, _020F953C ; =0x02112EA0
	ldr r1, _020F9540 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	bl DWCi_Entry
	cmp r0, #0
	beq _020F947C
	cmp r0, #1
	beq _020F9484
	b _020F9490
_020F947C:
	ldr r0, _020F9544 ; =0x02112EB8
	b _020F9488
_020F9484:
	ldr r0, _020F9548 ; =0x02112ECC
_020F9488:
	ldr r1, _020F954C ; =GXS_LoadBG1Scr
	bl DWCi_CMNlLoadResource
_020F9490:
	ldr r2, _020F9550 ; =0x0400100A
	mov r4, #2
	ldrh r0, [r2]
	sub r3, r2, #0x1000
	mov r1, r4
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r2, [r3]
	mov r0, #1
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	bl FUN_ov17_0210dcd0
	mov r1, r4
	mov r0, #0
	bl FUN_ov17_0210dcd0
	ldr r0, _020F9554 ; =FUN_ov17_020f9558
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F94F0: .word ov17_02112DC8
_020F94F4: .word ov17_02112DAC
_020F94F8: .word DWCiMsgCmn
_020F94FC: .word ov17_02112DD8
_020F9500: .word ov17_02112DEC
_020F9504: .word ov17_02112E00
_020F9508: .word GXS_LoadBG1Char
_020F950C: .word ov17_02112E14
_020F9510: .word GXS_LoadBGPltt
_020F9514: .word ov17_02112E28
_020F9518: .word GXS_LoadOBJ
_020F951C: .word ov17_02112E40
_020F9520: .word GXS_LoadOBJPltt
_020F9524: .word ov17_02112E58
_020F9528: .word GX_LoadBG2Char
_020F952C: .word ov17_02112E70
_020F9530: .word GX_LoadBGPltt
_020F9534: .word ov17_02112E88
_020F9538: .word GX_LoadOBJ
_020F953C: .word ov17_02112EA0
_020F9540: .word GX_LoadOBJPltt
_020F9544: .word ov17_02112EB8
_020F9548: .word ov17_02112ECC
_020F954C: .word GXS_LoadBG1Scr
_020F9550: .word 0x0400100A
_020F9554: .word FUN_ov17_020f9558
	arm_func_end DWCi_SceneInit

	arm_func_start FUN_ov17_020f9558
FUN_ov17_020f9558: ; 0x020F9558
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #2
	mov r4, #0x14
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020F9598 ; =FUN_ov17_020f959c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F9598: .word FUN_ov17_020f959c
	arm_func_end FUN_ov17_020f9558

	arm_func_start FUN_ov17_020f959c
FUN_ov17_020f959c: ; 0x020F959C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_Entry
	cmp r0, #0
	beq _020F95E0
	cmp r0, #1
	beq _020F95F8
	ldmfd sp!, {r3, r4, r5, pc}
_020F95E0:
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9610 ; =FUN_ov17_020f9618
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F95F8:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9614 ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020F9610: .word FUN_ov17_020f9618
_020F9614: .word FUN_ov17_02103924
	arm_func_end FUN_ov17_020f959c

	arm_func_start FUN_ov17_020f9618
FUN_ov17_020f9618: ; 0x020F9618
	stmfd sp!, {r4, lr}
	bl FUN_ov17_020f9698
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_020f5324
	mov r0, #0x2e
	mov r2, r4
	sub r1, r0, #0x2f
	bl DWCi_COMMENTlDispEx
	mov r0, #4
	bl FUN_ov17_02108744
	ldr r0, _020F9680 ; =0x021161FC
	ldr r3, _020F9684 ; =0x02112104
	ldrb r0, [r0]
	ldr r1, _020F9688 ; =0x02112108
	ldr r2, _020F968C ; =0x02112106
	mov r12, r0, lsl #3
	ldrh r0, [r3, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldr r3, _020F9690 ; =0x0211210A
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldr r0, _020F9694 ; =FUN_ov17_020f977c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9680: .word ov17_021161FC
_020F9684: .word ov17_02112104
_020F9688: .word ov17_02112108
_020F968C: .word ov17_02112106
_020F9690: .word ov17_0211210A
_020F9694: .word FUN_ov17_020f977c
	arm_func_end FUN_ov17_020f9618

	arm_func_start FUN_ov17_020f9698
FUN_ov17_020f9698: ; 0x020F9698
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _020F9754 ; =0x02112114
	add r3, sp, #0
	mov r2, #0xb
_020F96AC:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020F96AC
	ldr r0, _020F9758 ; =0x02112EE0
	ldr r1, _020F975C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9760 ; =0x02112EF8
	ldr r1, _020F9764 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020F9768 ; =0x02112F10
	ldr r1, _020F976C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _020F9770 ; =0x021161FC
	ldr r2, _020F9774 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _020F9778 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_020F9754: .word ov17_02112114
_020F9758: .word ov17_02112EE0
_020F975C: .word GX_LoadBG2Char
_020F9760: .word ov17_02112EF8
_020F9764: .word GX_LoadBGPltt
_020F9768: .word ov17_02112F10
_020F976C: .word GX_LoadBG2Scr
_020F9770: .word ov17_021161FC
_020F9774: .word 0x04001008
_020F9778: .word 0x0400000A
	arm_func_end FUN_ov17_020f9698

	arm_func_start FUN_ov17_020f977c
FUN_ov17_020f977c: ; 0x020F977C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020F97E0 ; =FUN_ov17_020f97e4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F97E0: .word FUN_ov17_020f97e4
	arm_func_end FUN_ov17_020f977c

	arm_func_start FUN_ov17_020f97e4
FUN_ov17_020f97e4: ; 0x020F97E4
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020F9820 ; =FUN_ov17_020f9824
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9820: .word FUN_ov17_020f9824
	arm_func_end FUN_ov17_020f97e4

	arm_func_start FUN_ov17_020f9824
FUN_ov17_020f9824: ; 0x020F9824
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020F9844 ; =FUN_ov17_020f9848
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9844: .word FUN_ov17_020f9848
	arm_func_end FUN_ov17_020f9824

	arm_func_start FUN_ov17_020f9848
FUN_ov17_020f9848: ; 0x020F9848
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f985c
	bl FUN_ov17_020f998c
	bl FUN_ov17_020f9990
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9848

	arm_func_start FUN_ov17_020f985c
FUN_ov17_020f985c: ; 0x020F985C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F9974 ; =0x021120F4
	mov r4, #0
_020F9868:
	add r0, r5, r4, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F98B8
	mov r0, #1
	bl DWCi_BTNlSet
	and r1, r4, #0xff
	mov r5, r1, lsl #3
	ldr r0, _020F9978 ; =0x02112104
	ldr r1, _020F997C ; =0x02112108
	ldr r2, _020F9980 ; =0x02112106
	ldr r3, _020F9984 ; =0x0211210A
	ldr r12, _020F9988 ; =0x021161FC
	ldrh r0, [r0, r5]
	ldrh r1, [r1, r5]
	ldrh r2, [r2, r5]
	ldrh r3, [r3, r5]
	strb r4, [r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, pc}
_020F98B8:
	add r4, r4, #1
	cmp r4, #2
	blo _020F9868
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F98E4
	mov r0, r5
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020F98E4:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F9904
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020F9904:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F9920
	mov r0, r5
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9920:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F993C
	mov r0, #3
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F993C:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F9958
	mov r0, #0
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9958:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9974: .word ov17_021120F4
_020F9978: .word ov17_02112104
_020F997C: .word ov17_02112108
_020F9980: .word ov17_02112106
_020F9984: .word ov17_0211210A
_020F9988: .word ov17_021161FC
	arm_func_end FUN_ov17_020f985c

	arm_func_start FUN_ov17_020f998c
FUN_ov17_020f998c: ; 0x020F998C
	bx lr
	arm_func_end FUN_ov17_020f998c

	arm_func_start FUN_ov17_020f9990
FUN_ov17_020f9990: ; 0x020F9990
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020F99AC
	cmp r0, #1
	beq _020F99C0
	ldmfd sp!, {r3, pc}
_020F99AC:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020F99D8 ; =FUN_ov17_020f92c4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99C0:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f9b70
	ldr r0, _020F99DC ; =FUN_ov17_020f99e0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99D8: .word FUN_ov17_020f92c4
_020F99DC: .word FUN_ov17_020f99e0
	arm_func_end FUN_ov17_020f9990

	arm_func_start FUN_ov17_020f99e0
FUN_ov17_020f99e0: ; 0x020F99E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020F99FC ; =FUN_ov17_020f9a00
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F99FC: .word FUN_ov17_020f9a00
	arm_func_end FUN_ov17_020f99e0

	arm_func_start FUN_ov17_020f9a00
FUN_ov17_020f9a00: ; 0x020F9A00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x16
	bl FUN_ov17_0210d238
	ldr r0, _020F9A54 ; =FUN_ov17_020f9a58
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9A54: .word FUN_ov17_020f9a58
	arm_func_end FUN_ov17_020f9a00

	arm_func_start FUN_ov17_020f9a58
FUN_ov17_020f9a58: ; 0x020F9A58
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f5258
	bl DWCi_COMMENTlDelete
	ldr r4, _020F9AF8 ; =0x021161FC
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4]
	cmp r0, #0
	beq _020F9AC8
	cmp r0, #1
	beq _020F9AE0
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AC8:
	mov r0, r6
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9AFC ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AE0:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020F9B00 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AF8: .word ov17_021161FC
_020F9AFC: .word FUN_ov17_02103924
_020F9B00: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020f9a58

	arm_func_start FUN_ov17_020f9b04
FUN_ov17_020f9b04: ; 0x020F9B04
	stmfd sp!, {r4, lr}
	cmp r0, #1
	cmpne r0, #3
	ldmeqfd sp!, {r4, pc}
	ldr r4, _020F9B5C ; =0x021161FC
	mov r0, #8
	ldrb r1, [r4]
	eor r1, r1, #1
	strb r1, [r4]
	bl FUN_ov17_02107c40
	ldrb r2, [r4]
	ldr r0, _020F9B60 ; =0x02112104
	ldr r1, _020F9B64 ; =0x02112108
	mov r4, r2, lsl #3
	ldr r2, _020F9B68 ; =0x02112106
	ldr r3, _020F9B6C ; =0x0211210A
	ldrh r0, [r0, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, pc}
_020F9B5C: .word ov17_021161FC
_020F9B60: .word ov17_02112104
_020F9B64: .word ov17_02112108
_020F9B68: .word ov17_02112106
_020F9B6C: .word ov17_0211210A
	arm_func_end FUN_ov17_020f9b04

	arm_func_start FUN_ov17_020f9b70
FUN_ov17_020f9b70: ; 0x020F9B70
	stmfd sp!, {r3, lr}
	ldr r1, _020F9BA8 ; =0x021120F0
	ldr r0, _020F9BAC ; =0x021161FC
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb r1, [r0]
	add r12, sp, #0
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r1, [r12, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl FUN_ov17_02106444
	ldmfd sp!, {r3, pc}
_020F9BA8: .word ov17_021120F0
_020F9BAC: .word ov17_021161FC
	arm_func_end FUN_ov17_020f9b70

	arm_func_start FUN_ov17_020f9bb0
FUN_ov17_020f9bb0: ; 0x020F9BB0
	stmfd sp!, {r4, lr}
	ldr r0, _020F9BF0 ; =0x02116204
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020f9bf8
	mov r0, #0x12
	bl FUN_ov17_020f5324
	mov r0, #0x3b
	mov r2, r4
	sub r1, r0, #0x3c
	bl DWCi_COMMENTlDispEx
	mov r0, #0x17
	bl DWCi_CMNlMsgDraw
	ldr r0, _020F9BF4 ; =FUN_ov17_020f9c78
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9BF0: .word ov17_02116204
_020F9BF4: .word FUN_ov17_020f9c78
	arm_func_end FUN_ov17_020f9bb0

	arm_func_start FUN_ov17_020f9bf8
FUN_ov17_020f9bf8: ; 0x020F9BF8
	stmfd sp!, {r3, lr}
	ldr r0, _020F9C68 ; =0x02112F24
	ldr r1, _020F9C6C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020F9C70 ; =0x04001008
	ldr r1, _020F9C74 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020F9C68: .word ov17_02112F24
_020F9C6C: .word GX_LoadBG2Scr
_020F9C70: .word 0x04001008
_020F9C74: .word 0x0400000A
	arm_func_end FUN_ov17_020f9bf8

	arm_func_start FUN_ov17_020f9c78
FUN_ov17_020f9c78: ; 0x020F9C78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020F9CDC ; =FUN_ov17_020f9ce0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F9CDC: .word FUN_ov17_020f9ce0
	arm_func_end FUN_ov17_020f9c78

	arm_func_start FUN_ov17_020f9ce0
FUN_ov17_020f9ce0: ; 0x020F9CE0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_CMNlButton
	ldr r0, _020F9D18 ; =FUN_ov17_020f9d1c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9D18: .word FUN_ov17_020f9d1c
	arm_func_end FUN_ov17_020f9ce0

	arm_func_start FUN_ov17_020f9d1c
FUN_ov17_020f9d1c: ; 0x020F9D1C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020F9D3C ; =FUN_ov17_020f9d40
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9D3C: .word FUN_ov17_020f9d40
	arm_func_end FUN_ov17_020f9d1c

	arm_func_start FUN_ov17_020f9d40
FUN_ov17_020f9d40: ; 0x020F9D40
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f9d54
	bl FUN_ov17_020f9d90
	bl FUN_ov17_020f9d94
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9d40

	arm_func_start FUN_ov17_020f9d54
FUN_ov17_020f9d54: ; 0x020F9D54
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F9D74
	mov r0, r4
	bl DWCi_BTNlSet
_020F9D74:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020f9d54

	arm_func_start FUN_ov17_020f9d90
FUN_ov17_020f9d90: ; 0x020F9D90
	bx lr
	arm_func_end FUN_ov17_020f9d90

	arm_func_start FUN_ov17_020f9d94
FUN_ov17_020f9d94: ; 0x020F9D94
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020F9DB0
	cmp r0, #1
	beq _020F9DC4
	ldmfd sp!, {r3, pc}
_020F9DB0:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020F9DF4 ; =FUN_ov17_020f9dfc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9DC4:
	mov r0, #6
	bl FUN_ov17_02107c40
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x18
	str r1, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _020F9DF8 ; =FUN_ov17_020f9f40
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9DF4: .word FUN_ov17_020f9dfc
_020F9DF8: .word FUN_ov17_020f9f40
	arm_func_end FUN_ov17_020f9d94

	arm_func_start FUN_ov17_020f9dfc
FUN_ov17_020f9dfc: ; 0x020F9DFC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020F9E18 ; =FUN_ov17_020f9e1c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9E18: .word FUN_ov17_020f9e1c
	arm_func_end FUN_ov17_020f9dfc

	arm_func_start FUN_ov17_020f9e1c
FUN_ov17_020f9e1c: ; 0x020F9E1C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020F9E7C ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9E5C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020F9E5C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020F9E80 ; =FUN_ov17_020f9e84
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9E7C: .word ov17_02116204
_020F9E80: .word FUN_ov17_020f9e84
	arm_func_end FUN_ov17_020f9e1c

	arm_func_start FUN_ov17_020f9e84
FUN_ov17_020f9e84: ; 0x020F9E84
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EB8
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020F9EB8:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EEC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020F9EEC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020F9F34 ; =0x02116204
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020F9F24
	bl DWCi_SetParam_
	ldr r0, _020F9F38 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9F24:
	bl DWCi_SetParam_
	ldr r0, _020F9F3C ; =FUN_ov17_020f9fb0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020F9F34: .word ov17_02116204
_020F9F38: .word FUN_ov17_020fa6d0
_020F9F3C: .word FUN_ov17_020f9fb0
	arm_func_end FUN_ov17_020f9e84

	arm_func_start FUN_ov17_020f9f40
FUN_ov17_020f9f40: ; 0x020F9F40
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _020F9F70
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	mov r0, #0xe
	bl FUN_ov17_02107c40
	ldr r0, _020F9F88 ; =0x02116204
	mov r1, #1
	strb r1, [r0]
	b _020F9F78
_020F9F70:
	mov r0, #7
	bl FUN_ov17_02107c40
_020F9F78:
	bl FUN_ov17_021091b8
	ldr r0, _020F9F8C ; =FUN_ov17_020f9f90
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9F88: .word ov17_02116204
_020F9F8C: .word FUN_ov17_020f9f90
	arm_func_end FUN_ov17_020f9f40

	arm_func_start FUN_ov17_020f9f90
FUN_ov17_020f9f90: ; 0x020F9F90
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F9FAC ; =FUN_ov17_020f9dfc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9FAC: .word FUN_ov17_020f9dfc
	arm_func_end FUN_ov17_020f9f90

	arm_func_start FUN_ov17_020f9fb0
FUN_ov17_020f9fb0: ; 0x020F9FB0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f9fd4
	mov r0, #0x19
	bl DWCi_CMNlMsgDraw
	bl FUN_ov17_021078b4
	ldr r0, _020F9FD0 ; =FUN_ov17_020fa054
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020F9FD0: .word FUN_ov17_020fa054
	arm_func_end FUN_ov17_020f9fb0

	arm_func_start FUN_ov17_020f9fd4
FUN_ov17_020f9fd4: ; 0x020F9FD4
	stmfd sp!, {r3, lr}
	ldr r0, _020FA044 ; =0x02112F38
	ldr r1, _020FA048 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FA04C ; =0x04001008
	ldr r1, _020FA050 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FA044: .word ov17_02112F38
_020FA048: .word GX_LoadBG2Scr
_020FA04C: .word 0x04001008
_020FA050: .word 0x0400000A
	arm_func_end FUN_ov17_020f9fd4

	arm_func_start FUN_ov17_020fa054
FUN_ov17_020fa054: ; 0x020FA054
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA08C ; =FUN_ov17_020fa090
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA08C: .word FUN_ov17_020fa090
	arm_func_end FUN_ov17_020fa054

	arm_func_start FUN_ov17_020fa090
FUN_ov17_020fa090: ; 0x020FA090
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl DWCi_CMNlButton
	ldr r0, _020FA0B8 ; =FUN_ov17_020fa0bc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA0B8: .word FUN_ov17_020fa0bc
	arm_func_end FUN_ov17_020fa090

	arm_func_start FUN_ov17_020fa0bc
FUN_ov17_020fa0bc: ; 0x020FA0BC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA0DC ; =FUN_ov17_020fa0e0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA0DC: .word FUN_ov17_020fa0e0
	arm_func_end FUN_ov17_020fa0bc

	arm_func_start FUN_ov17_020fa0e0
FUN_ov17_020fa0e0: ; 0x020FA0E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa0f4
	bl FUN_ov17_020fa114
	bl FUN_ov17_020fa118
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa0e0

	arm_func_start FUN_ov17_020fa0f4
FUN_ov17_020fa0f4: ; 0x020FA0F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa0f4

	arm_func_start FUN_ov17_020fa114
FUN_ov17_020fa114: ; 0x020FA114
	bx lr
	arm_func_end FUN_ov17_020fa114

	arm_func_start FUN_ov17_020fa118
FUN_ov17_020fa118: ; 0x020FA118
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FA13C ; =FUN_ov17_020fa140
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA13C: .word FUN_ov17_020fa140
	arm_func_end FUN_ov17_020fa118

	arm_func_start FUN_ov17_020fa140
FUN_ov17_020fa140: ; 0x020FA140
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FA15C ; =FUN_ov17_020fa160
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA15C: .word FUN_ov17_020fa160
	arm_func_end FUN_ov17_020fa140

	arm_func_start FUN_ov17_020fa160
FUN_ov17_020fa160: ; 0x020FA160
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x40
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020FA1B8 ; =FUN_ov17_020fa1bc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA1B8: .word FUN_ov17_020fa1bc
	arm_func_end FUN_ov17_020fa160

	arm_func_start FUN_ov17_020fa1bc
FUN_ov17_020fa1bc: ; 0x020FA1BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0x800000
	bl OS_SpinWaitSysCycles
	bl PM_ForceToPowerOff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa1bc

	arm_func_start FUN_ov17_020fa1f0
FUN_ov17_020fa1f0: ; 0x020FA1F0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa224
	mov r0, #0x11
	bl FUN_ov17_020f5324
	mov r0, #0x3a
	sub r1, r0, #0x3b
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	bl FUN_ov17_020fa2a4
	ldr r0, _020FA220 ; =FUN_ov17_020fa4b4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA220: .word FUN_ov17_020fa4b4
	arm_func_end FUN_ov17_020fa1f0

	arm_func_start FUN_ov17_020fa224
FUN_ov17_020fa224: ; 0x020FA224
	stmfd sp!, {r3, lr}
	ldr r0, _020FA294 ; =0x02112F4C
	ldr r1, _020FA298 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FA29C ; =0x04001008
	ldr r1, _020FA2A0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FA294: .word ov17_02112F4C
_020FA298: .word GX_LoadBG2Scr
_020FA29C: .word 0x04001008
_020FA2A0: .word 0x0400000A
	arm_func_end FUN_ov17_020fa224

	arm_func_start FUN_ov17_020fa2a4
FUN_ov17_020fa2a4: ; 0x020FA2A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x7c
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	mov r6, r0
	add r0, sp, #0x14
	bl OS_GetMacAddress
	ldrb r0, [sp, #0x15]
	add r10, sp, #0x1a
	mov r9, #0x14
	str r0, [sp]
	ldrb r1, [sp, #0x16]
	ldr r2, _020FA4A4 ; =0x02112F60
	mov r0, r10
	str r1, [sp, #4]
	ldrb r3, [sp, #0x17]
	mov r1, r9
	str r3, [sp, #8]
	ldrb r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldrb r3, [sp, #0x19]
	str r3, [sp, #0x10]
	ldrb r3, [sp, #0x14]
	bl OS_SNPrintf
	add r8, sp, #0x2e
	mov r1, r10
	mov r0, r8
	mov r2, r9
	bl FUN_ov17_0210eec0
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r6
	mov r1, #8
	mov r2, #0x40
	mov r3, #0xf0
	str r8, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	add r0, sp, #0x68
	bl DWCi_BM_GetWiFiInfo
	ldr r7, [sp, #0x6c]
	ldr r4, [sp, #0x68]
	cmp r7, #0
	cmpeq r4, #0
	beq _020FA440
	mov r8, #0xa
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl _ull_mod
	mov r1, #0x3e8
	umull r9, r1, r0, r1
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	str r9, [sp, #0x64]
	bl _ll_udiv
	ldr r9, _020FA4A8 ; =0x00002710
	mov r4, r0
	mov r7, r1
	mov r8, r5
	add r10, sp, #0x58
_020FA3B8:
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl _ull_mod
	rsb r1, r5, #2
	str r0, [r10, r1, lsl #2]
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl _ll_udiv
	add r5, r5, #1
	mov r4, r0
	mov r7, r1
	cmp r5, #3
	blt _020FA3B8
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	str r1, [sp]
	mov r4, #0x14
	add r5, sp, #0x1a
	str r0, [sp, #4]
	ldr r7, [sp, #0x64]
	ldr r3, [sp, #0x58]
	ldr r2, _020FA4AC ; =0x02112F80
	mov r0, r5
	mov r1, r4
	str r7, [sp, #8]
	bl OS_SNPrintf
	add r0, sp, #0x2e
	mov r1, r5
	mov r2, r4
	b _020FA45C
_020FA440:
	ldr r2, _020FA4B0 ; =0x02112F94
	mov r0, r10
	mov r1, r9
	bl OS_SNPrintf
	mov r0, r8
	mov r1, r10
	mov r2, r9
_020FA45C:
	bl FUN_ov17_0210eec0
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r4, sp, #0x2e
	mov r0, r6
	mov r1, #8
	mov r2, #0x78
	mov r3, #0xf0
	str r4, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r6
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FA4A4: .word ov17_02112F60
_020FA4A8: .word 0x00002710
_020FA4AC: .word ov17_02112F80
_020FA4B0: .word ov17_02112F94
	arm_func_end FUN_ov17_020fa2a4

	arm_func_start FUN_ov17_020fa4b4
FUN_ov17_020fa4b4: ; 0x020FA4B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA518 ; =FUN_ov17_020fa51c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA518: .word FUN_ov17_020fa51c
	arm_func_end FUN_ov17_020fa4b4

	arm_func_start FUN_ov17_020fa51c
FUN_ov17_020fa51c: ; 0x020FA51C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl DWCi_CMNlButton
	ldr r0, _020FA554 ; =FUN_ov17_020fa558
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA554: .word FUN_ov17_020fa558
	arm_func_end FUN_ov17_020fa51c

	arm_func_start FUN_ov17_020fa558
FUN_ov17_020fa558: ; 0x020FA558
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA578 ; =FUN_ov17_020fa57c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA578: .word FUN_ov17_020fa57c
	arm_func_end FUN_ov17_020fa558

	arm_func_start FUN_ov17_020fa57c
FUN_ov17_020fa57c: ; 0x020FA57C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa590
	bl FUN_ov17_020fa5b0
	bl FUN_ov17_020fa5b4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa57c

	arm_func_start FUN_ov17_020fa590
FUN_ov17_020fa590: ; 0x020FA590
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa590

	arm_func_start FUN_ov17_020fa5b0
FUN_ov17_020fa5b0: ; 0x020FA5B0
	bx lr
	arm_func_end FUN_ov17_020fa5b0

	arm_func_start FUN_ov17_020fa5b4
FUN_ov17_020fa5b4: ; 0x020FA5B4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020FA5D8 ; =FUN_ov17_020fa5dc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA5D8: .word FUN_ov17_020fa5dc
	arm_func_end FUN_ov17_020fa5b4

	arm_func_start FUN_ov17_020fa5dc
FUN_ov17_020fa5dc: ; 0x020FA5DC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FA5F8 ; =FUN_ov17_020fa5fc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA5F8: .word FUN_ov17_020fa5fc
	arm_func_end FUN_ov17_020fa5dc

	arm_func_start FUN_ov17_020fa5fc
FUN_ov17_020fa5fc: ; 0x020FA5FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FA654 ; =FUN_ov17_020fa658
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FA654: .word FUN_ov17_020fa658
	arm_func_end FUN_ov17_020fa5fc

	arm_func_start FUN_ov17_020fa658
FUN_ov17_020fa658: ; 0x020FA658
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FA6CC ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA6CC: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020fa658

	arm_func_start FUN_ov17_020fa6d0
FUN_ov17_020fa6d0: ; 0x020FA6D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FA778 ; =0x02116208
	mov r5, #0
	strb r5, [r4, #1]
	bl FUN_ov17_020fa794
	mov r0, #0x10
	bl FUN_ov17_020f5324
	mov r0, #3
	bl FUN_ov17_02108744
	mov r0, #0x39
	sub r1, r0, #0x3a
	mov r2, r5
	bl DWCi_COMMENTlDispEx
	mov r0, r5
	mov r1, #0x5b
	bl DWCi_CEINlSetExObj
	str r0, [r4, #8]
	ldr r2, [r0]
	ldr r1, _020FA77C ; =0xFE00FF00
	ldr r12, _020FA780 ; =0x0211214C
	and r1, r2, r1
	orr r1, r1, #0x84
	orr r1, r1, #0xe00000
	str r1, [r0]
	ldr lr, [r4, #8]
	ldr r1, _020FA784 ; =0x02112150
	ldrh r0, [lr, #4]
	ldr r2, _020FA788 ; =0x0211214E
	ldr r3, _020FA78C ; =0x02112152
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [lr, #4]
	ldrb r0, [r4]
	mov r4, r0, lsl #3
	ldrh r0, [r12, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldr r0, _020FA790 ; =FUN_ov17_020fa928
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FA778: .word ov17_02116208
_020FA77C: .word 0xFE00FF00
_020FA780: .word ov17_0211214C
_020FA784: .word ov17_02112150
_020FA788: .word ov17_0211214E
_020FA78C: .word ov17_02112152
_020FA790: .word FUN_ov17_020fa928
	arm_func_end FUN_ov17_020fa6d0

	arm_func_start FUN_ov17_020fa794
FUN_ov17_020fa794: ; 0x020FA794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r4, _020FA904 ; =0x02112164
	add r3, sp, #0x2b
	mov r2, #0xb
_020FA7A8:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7A8
	ldr r4, _020FA908 ; =0x0211217C
	add r3, sp, #0x14
	mov r2, #0xb
_020FA7CC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7CC
	ldrb r2, [r4]
	ldr r0, _020FA90C ; =0x02112FA8
	ldr r1, _020FA910 ; =GX_LoadBG2Char
	strb r2, [r3]
	bl DWCi_CMNlLoadResource
	ldr r0, _020FA914 ; =0x02112FC0
	ldr r1, _020FA918 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x14
	bl DWCi_Char
	mov r4, #0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, _020FA91C ; =0x02116208
	str r0, [r1, #4]
	add r0, sp, #0x2b
	bl DWCi_Char
	mov r2, r5
	mov r1, r4
	bl DWCi_ARClReadEx
	mov r5, r0
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, #0
	cmpeq r0, #0
	bne _020FA88C
	add r7, r5, #0xc0
	add r8, r5, #0x40
	mov r6, #0x20
_020FA868:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #0x20
	add r8, r8, #0x20
	blt _020FA868
_020FA88C:
	mov r4, #0x200
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl GX_LoadBGPltt
	mov r0, r5
	bl DWCi_ARClRelease
	ldr r2, _020FA920 ; =0x04001008
	ldr r1, _020FA924 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FA904: .word ov17_02112164
_020FA908: .word ov17_0211217C
_020FA90C: .word ov17_02112FA8
_020FA910: .word GX_LoadBG2Char
_020FA914: .word ov17_02112FC0
_020FA918: .word GX_LoadBG2Scr
_020FA91C: .word ov17_02116208
_020FA920: .word 0x04001008
_020FA924: .word 0x0400000A
	arm_func_end FUN_ov17_020fa794

	arm_func_start FUN_ov17_020fa928
FUN_ov17_020fa928: ; 0x020FA928
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA98C ; =FUN_ov17_020fa990
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA98C: .word FUN_ov17_020fa990
	arm_func_end FUN_ov17_020fa928

	arm_func_start FUN_ov17_020fa990
FUN_ov17_020fa990: ; 0x020FA990
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020FA9CC ; =FUN_ov17_020fa9d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FA9CC: .word FUN_ov17_020fa9d0
	arm_func_end FUN_ov17_020fa990

	arm_func_start FUN_ov17_020fa9d0
FUN_ov17_020fa9d0: ; 0x020FA9D0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FA9F0 ; =FUN_ov17_020fa9f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FA9F0: .word FUN_ov17_020fa9f4
	arm_func_end FUN_ov17_020fa9d0

	arm_func_start FUN_ov17_020fa9f4
FUN_ov17_020fa9f4: ; 0x020FA9F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020faa08
	bl FUN_ov17_020faafc
	bl FUN_ov17_020fab00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa9f4

	arm_func_start FUN_ov17_020faa08
FUN_ov17_020faa08: ; 0x020FAA08
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020FAAE4 ; =0x02112134
	mov r4, #0
_020FAA14:
	add r0, r5, r4, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FAA64
	mov r0, #1
	bl DWCi_BTNlSet
	and r1, r4, #0xff
	mov lr, r1, lsl #3
	ldr r0, _020FAAE8 ; =0x0211214C
	ldr r1, _020FAAEC ; =0x02112150
	ldr r2, _020FAAF0 ; =0x0211214E
	ldr r3, _020FAAF4 ; =0x02112152
	ldr r12, _020FAAF8 ; =0x02116208
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA64:
	add r4, r4, #1
	cmp r4, #3
	blo _020FAA14
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FAA90
	mov r0, r4
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA90:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FAAAC
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAAC:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FAAC8
	mov r0, r4
	bl FUN_ov17_020fad40
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAC8:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl FUN_ov17_020fad40
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAE4: .word ov17_02112134
_020FAAE8: .word ov17_0211214C
_020FAAEC: .word ov17_02112150
_020FAAF0: .word ov17_0211214E
_020FAAF4: .word ov17_02112152
_020FAAF8: .word ov17_02116208
	arm_func_end FUN_ov17_020faa08

	arm_func_start FUN_ov17_020faafc
FUN_ov17_020faafc: ; 0x020FAAFC
	bx lr
	arm_func_end FUN_ov17_020faafc

	arm_func_start FUN_ov17_020fab00
FUN_ov17_020fab00: ; 0x020FAB00
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FAB24
	cmp r0, #1
	beq _020FAB30
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB24:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _020FAB90
_020FAB30:
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r0, _020FABA0 ; =0x02116208
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FAB78
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	cmpeq r2, #0
	bne _020FAB78
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	sub r0, r4, #0xa
	bl DWCi_BTNlSetForce
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB78:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fadc4
	ldr r0, _020FABA0 ; =0x02116208
	mov r1, #1
	strb r1, [r0, #1]
_020FAB90:
	ldr r0, _020FABA4 ; =FUN_ov17_020faba8
	bl DWCi_ChangeScene
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FABA0: .word ov17_02116208
_020FABA4: .word FUN_ov17_020faba8
	arm_func_end FUN_ov17_020fab00

	arm_func_start FUN_ov17_020faba8
FUN_ov17_020faba8: ; 0x020FABA8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FABC4 ; =FUN_ov17_020fabc8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FABC4: .word FUN_ov17_020fabc8
	arm_func_end FUN_ov17_020faba8

	arm_func_start FUN_ov17_020fabc8
FUN_ov17_020fabc8: ; 0x020FABC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FAC2C ; =0x02116208
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020FABF0
	bl DWCi_BTNlEnd
_020FABF0:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _020FAC30 ; =FUN_ov17_020fac34
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FAC2C: .word ov17_02116208
_020FAC30: .word FUN_ov17_020fac34
	arm_func_end FUN_ov17_020fabc8

	arm_func_start FUN_ov17_020fac34
FUN_ov17_020fac34: ; 0x020FAC34
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020FAD2C ; =0x02116208
	ldr r0, [r4, #8]
	bl DWCi_OBJlDelete
	bl FUN_ov17_020f5258
	bl DWCi_COMMENTlDelete
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FACC4
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FAD30 ; =FUN_ov17_020f9618
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FACC4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020FACE4
	cmp r0, #1
	beq _020FACFC
	cmp r0, #2
	beq _020FAD14
	ldmfd sp!, {r4, r5, r6, pc}
_020FACE4:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD34 ; =FUN_ov17_020fa1f0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FACFC:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD38 ; =FUN_ov17_020f9bb0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD14:
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam_
	ldr r0, _020FAD3C ; =FUN_ov17_020fb4b8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD2C: .word ov17_02116208
_020FAD30: .word FUN_ov17_020f9618
_020FAD34: .word FUN_ov17_020fa1f0
_020FAD38: .word FUN_ov17_020f9bb0
_020FAD3C: .word FUN_ov17_020fb4b8
	arm_func_end FUN_ov17_020fac34

	arm_func_start FUN_ov17_020fad40
FUN_ov17_020fad40: ; 0x020FAD40
	stmfd sp!, {r4, lr}
	cmp r0, #1
	mov r1, #3
	bne _020FAD60
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #2
	b _020FAD6C
_020FAD60:
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #1
_020FAD6C:
	bl FX_ModS32
	strb r0, [r4]
	mov r0, #8
	bl FUN_ov17_02107c40
	ldr r0, _020FADB0 ; =0x02116208
	ldr r4, _020FADB4 ; =0x0211214C
	ldrb r0, [r0]
	ldr r1, _020FADB8 ; =0x02112150
	ldr r2, _020FADBC ; =0x0211214E
	mov r12, r0, lsl #3
	ldr r3, _020FADC0 ; =0x02112152
	ldrh r0, [r4, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, pc}
_020FADB0: .word ov17_02116208
_020FADB4: .word ov17_0211214C
_020FADB8: .word ov17_02112150
_020FADBC: .word ov17_0211214E
_020FADC0: .word ov17_02112152
	arm_func_end FUN_ov17_020fad40

	arm_func_start FUN_ov17_020fadc4
FUN_ov17_020fadc4: ; 0x020FADC4
	ldr r0, _020FADE4 ; =0x02116208
	ldr r1, _020FADE8 ; =0x0211212C
	ldrb r2, [r0]
	ldr r0, [r0, #4]
	ldr r12, _020FADEC ; =FUN_ov17_02106444
	ldrb r1, [r1, r2]
	mov r2, r1
	bx r12
_020FADE4: .word ov17_02116208
_020FADE8: .word ov17_0211212C
_020FADEC: .word FUN_ov17_02106444
	arm_func_end FUN_ov17_020fadc4

	arm_func_start FUN_ov17_020fadf0
FUN_ov17_020fadf0: ; 0x020FADF0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fae28
	mov r0, #0x1e
	bl DWCi_CMNlMsgDraw
	mov r0, #0
	bl DWCi_ANIMElInitEx
	mov r0, #1
	bl FUN_ov17_020f53f4
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FAE24 ; =FUN_ov17_020faea8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAE24: .word FUN_ov17_020faea8
	arm_func_end FUN_ov17_020fadf0

	arm_func_start FUN_ov17_020fae28
FUN_ov17_020fae28: ; 0x020FAE28
	stmfd sp!, {r3, lr}
	ldr r0, _020FAE98 ; =0x02112FD8
	ldr r1, _020FAE9C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FAEA0 ; =0x04001008
	ldr r1, _020FAEA4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FAE98: .word ov17_02112FD8
_020FAE9C: .word GX_LoadBG2Scr
_020FAEA0: .word 0x04001008
_020FAEA4: .word 0x0400000A
	arm_func_end FUN_ov17_020fae28

	arm_func_start FUN_ov17_020faea8
FUN_ov17_020faea8: ; 0x020FAEA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FAEE0 ; =FUN_ov17_020faee4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FAEE0: .word FUN_ov17_020faee4
	arm_func_end FUN_ov17_020faea8

	arm_func_start FUN_ov17_020faee4
FUN_ov17_020faee4: ; 0x020FAEE4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FAF0C ; =FUN_ov17_020fafec
	bl FUN_ov17_020f8e68
	ldr r0, _020FAF10 ; =FUN_ov17_020faf14
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAF0C: .word FUN_ov17_020fafec
_020FAF10: .word FUN_ov17_020faf14
	arm_func_end FUN_ov17_020faee4

	arm_func_start FUN_ov17_020faf14
FUN_ov17_020faf14: ; 0x020FAF14
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020faf24
	bl FUN_ov17_020faf28
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020faf14

	arm_func_start FUN_ov17_020faf24
FUN_ov17_020faf24: ; 0x020FAF24
	bx lr
	arm_func_end FUN_ov17_020faf24

	arm_func_start FUN_ov17_020faf28
FUN_ov17_020faf28: ; 0x020FAF28
	bx lr
	arm_func_end FUN_ov17_020faf28

	arm_func_start FUN_ov17_020faf2c
FUN_ov17_020faf2c: ; 0x020FAF2C
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FAF50 ; =FUN_ov17_020faf54
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FAF50: .word FUN_ov17_020faf54
	arm_func_end FUN_ov17_020faf2c

	arm_func_start FUN_ov17_020faf54
FUN_ov17_020faf54: ; 0x020FAF54
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f54a4
	bl DWCi_ANIMElEnd
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FAFDC ; =0x02116214
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FAFBC
	ldr r0, _020FAFE0 ; =FUN_ov17_020fba20
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFBC:
	cmp r0, #2
	bne _020FAFD0
	ldr r0, _020FAFE4 ; =FUN_ov17_020fb820
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFD0:
	ldr r0, _020FAFE8 ; =FUN_ov17_020fb060
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FAFDC: .word ov17_02116214
_020FAFE0: .word FUN_ov17_020fba20
_020FAFE4: .word FUN_ov17_020fb820
_020FAFE8: .word FUN_ov17_020fb060
	arm_func_end FUN_ov17_020faf54

	arm_func_start FUN_ov17_020fafec
FUN_ov17_020fafec: ; 0x020FAFEC
	stmfd sp!, {r3, lr}
	cmp r0, #2
	bne _020FB014
	bl FUN_ov17_021078b4
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #1
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x10
	b _020FB03C
_020FB014:
	cmp r0, #3
	bne _020FB028
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #2
	b _020FB030
_020FB028:
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #0
_020FB030:
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
_020FB03C:
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	bl FUN_ov17_020f8df0
	ldr r0, _020FB05C ; =FUN_ov17_020faf2c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB058: .word ov17_02116214
_020FB05C: .word FUN_ov17_020faf2c
	arm_func_end FUN_ov17_020fafec

	arm_func_start FUN_ov17_020fb060
FUN_ov17_020fb060: ; 0x020FB060
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb080
	mov r0, #0x1f
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB07C ; =FUN_ov17_020fb0e8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB07C: .word FUN_ov17_020fb0e8
	arm_func_end FUN_ov17_020fb060

	arm_func_start FUN_ov17_020fb080
FUN_ov17_020fb080: ; 0x020FB080
	ldr r3, _020FB0E0 ; =0x04001008
	ldr r1, _020FB0E4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
_020FB0E0: .word 0x04001008
_020FB0E4: .word 0x0400000A
	arm_func_end FUN_ov17_020fb080

	arm_func_start FUN_ov17_020fb0e8
FUN_ov17_020fb0e8: ; 0x020FB0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB120 ; =FUN_ov17_020fb124
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB120: .word FUN_ov17_020fb124
	arm_func_end FUN_ov17_020fb0e8

	arm_func_start FUN_ov17_020fb124
FUN_ov17_020fb124: ; 0x020FB124
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl DWCi_CMNlButton
	ldr r0, _020FB14C ; =FUN_ov17_020fb150
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB14C: .word FUN_ov17_020fb150
	arm_func_end FUN_ov17_020fb124

	arm_func_start FUN_ov17_020fb150
FUN_ov17_020fb150: ; 0x020FB150
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB170 ; =FUN_ov17_020fb174
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB170: .word FUN_ov17_020fb174
	arm_func_end FUN_ov17_020fb150

	arm_func_start FUN_ov17_020fb174
FUN_ov17_020fb174: ; 0x020FB174
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb188
	bl FUN_ov17_020fb1a8
	bl FUN_ov17_020fb1ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb174

	arm_func_start FUN_ov17_020fb188
FUN_ov17_020fb188: ; 0x020FB188
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb188

	arm_func_start FUN_ov17_020fb1a8
FUN_ov17_020fb1a8: ; 0x020FB1A8
	bx lr
	arm_func_end FUN_ov17_020fb1a8

	arm_func_start FUN_ov17_020fb1ac
FUN_ov17_020fb1ac: ; 0x020FB1AC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB1D0 ; =FUN_ov17_020fb1d4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB1D0: .word FUN_ov17_020fb1d4
	arm_func_end FUN_ov17_020fb1ac

	arm_func_start FUN_ov17_020fb1d4
FUN_ov17_020fb1d4: ; 0x020FB1D4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB1F0 ; =FUN_ov17_020fb1f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB1F0: .word FUN_ov17_020fb1f4
	arm_func_end FUN_ov17_020fb1d4

	arm_func_start FUN_ov17_020fb1f4
FUN_ov17_020fb1f4: ; 0x020FB1F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x40
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020FB24C ; =FUN_ov17_020fb250
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB24C: .word FUN_ov17_020fb250
	arm_func_end FUN_ov17_020fb1f4

	arm_func_start FUN_ov17_020fb250
FUN_ov17_020fb250: ; 0x020FB250
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0x800000
	bl OS_SpinWaitSysCycles
	bl PM_ForceToPowerOff
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb250

	arm_func_start FUN_ov17_020fb284
FUN_ov17_020fb284: ; 0x020FB284
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb2a4
	mov r0, #0x1a
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB2A0 ; =FUN_ov17_020fb30c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB2A0: .word FUN_ov17_020fb30c
	arm_func_end FUN_ov17_020fb284

	arm_func_start FUN_ov17_020fb2a4
FUN_ov17_020fb2a4: ; 0x020FB2A4
	ldr r3, _020FB304 ; =0x04001008
	ldr r1, _020FB308 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
_020FB304: .word 0x04001008
_020FB308: .word 0x0400000A
	arm_func_end FUN_ov17_020fb2a4

	arm_func_start FUN_ov17_020fb30c
FUN_ov17_020fb30c: ; 0x020FB30C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB344 ; =FUN_ov17_020fb348
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB344: .word FUN_ov17_020fb348
	arm_func_end FUN_ov17_020fb30c

	arm_func_start FUN_ov17_020fb348
FUN_ov17_020fb348: ; 0x020FB348
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #4
	bl DWCi_CMNlButton
	ldr r0, _020FB380 ; =FUN_ov17_020fb384
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB380: .word FUN_ov17_020fb384
	arm_func_end FUN_ov17_020fb348

	arm_func_start FUN_ov17_020fb384
FUN_ov17_020fb384: ; 0x020FB384
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB3A4 ; =FUN_ov17_020fb3a8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB3A4: .word FUN_ov17_020fb3a8
	arm_func_end FUN_ov17_020fb384

	arm_func_start FUN_ov17_020fb3a8
FUN_ov17_020fb3a8: ; 0x020FB3A8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb3bc
	bl FUN_ov17_020fb3dc
	bl FUN_ov17_020fb3e0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb3a8

	arm_func_start FUN_ov17_020fb3bc
FUN_ov17_020fb3bc: ; 0x020FB3BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb3bc

	arm_func_start FUN_ov17_020fb3dc
FUN_ov17_020fb3dc: ; 0x020FB3DC
	bx lr
	arm_func_end FUN_ov17_020fb3dc

	arm_func_start FUN_ov17_020fb3e0
FUN_ov17_020fb3e0: ; 0x020FB3E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB404 ; =FUN_ov17_020fb408
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB404: .word FUN_ov17_020fb408
	arm_func_end FUN_ov17_020fb3e0

	arm_func_start FUN_ov17_020fb408
FUN_ov17_020fb408: ; 0x020FB408
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB424 ; =FUN_ov17_020fb428
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB424: .word FUN_ov17_020fb428
	arm_func_end FUN_ov17_020fb408

	arm_func_start FUN_ov17_020fb428
FUN_ov17_020fb428: ; 0x020FB428
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnd
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FB460 ; =FUN_ov17_020fb464
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB460: .word FUN_ov17_020fb464
	arm_func_end FUN_ov17_020fb428

	arm_func_start FUN_ov17_020fb464
FUN_ov17_020fb464: ; 0x020FB464
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FB4B4 ; =FUN_ov17_020fc1a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB4B4: .word FUN_ov17_020fc1a0
	arm_func_end FUN_ov17_020fb464

	arm_func_start FUN_ov17_020fb4b8
FUN_ov17_020fb4b8: ; 0x020FB4B8
	stmfd sp!, {r4, lr}
	ldr r0, _020FB4F8 ; =0x02116218
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020fb500
	mov r0, #0x13
	bl FUN_ov17_020f5324
	mov r0, #0x3c
	mov r2, r4
	sub r1, r0, #0x3d
	bl DWCi_COMMENTlDispEx
	mov r0, #0x1b
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB4FC ; =FUN_ov17_020fb580
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB4F8: .word ov17_02116218
_020FB4FC: .word FUN_ov17_020fb580
	arm_func_end FUN_ov17_020fb4b8

	arm_func_start FUN_ov17_020fb500
FUN_ov17_020fb500: ; 0x020FB500
	stmfd sp!, {r3, lr}
	ldr r0, _020FB570 ; =0x02112FEC
	ldr r1, _020FB574 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FB578 ; =0x04001008
	ldr r1, _020FB57C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FB570: .word ov17_02112FEC
_020FB574: .word GX_LoadBG2Scr
_020FB578: .word 0x04001008
_020FB57C: .word 0x0400000A
	arm_func_end FUN_ov17_020fb500

	arm_func_start FUN_ov17_020fb580
FUN_ov17_020fb580: ; 0x020FB580
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB5E4 ; =FUN_ov17_020fb5e8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FB5E4: .word FUN_ov17_020fb5e8
	arm_func_end FUN_ov17_020fb580

	arm_func_start FUN_ov17_020fb5e8
FUN_ov17_020fb5e8: ; 0x020FB5E8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_CMNlButton
	ldr r0, _020FB610 ; =FUN_ov17_020fb614
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB610: .word FUN_ov17_020fb614
	arm_func_end FUN_ov17_020fb5e8

	arm_func_start FUN_ov17_020fb614
FUN_ov17_020fb614: ; 0x020FB614
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FB634 ; =FUN_ov17_020fb638
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB634: .word FUN_ov17_020fb638
	arm_func_end FUN_ov17_020fb614

	arm_func_start FUN_ov17_020fb638
FUN_ov17_020fb638: ; 0x020FB638
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb64c
	bl FUN_ov17_020fb688
	bl FUN_ov17_020fb68c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb638

	arm_func_start FUN_ov17_020fb64c
FUN_ov17_020fb64c: ; 0x020FB64C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FB66C
	mov r0, r4
	bl DWCi_BTNlSet
_020FB66C:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020fb64c

	arm_func_start FUN_ov17_020fb688
FUN_ov17_020fb688: ; 0x020FB688
	bx lr
	arm_func_end FUN_ov17_020fb688

	arm_func_start FUN_ov17_020fb68c
FUN_ov17_020fb68c: ; 0x020FB68C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FB6A8
	cmp r0, #1
	beq _020FB6B4
	ldmfd sp!, {r3, pc}
_020FB6A8:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _020FB6C8
_020FB6B4:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB6D4 ; =0x02116218
	mov r1, #1
	strb r1, [r0]
_020FB6C8:
	ldr r0, _020FB6D8 ; =FUN_ov17_020fb6dc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB6D4: .word ov17_02116218
_020FB6D8: .word FUN_ov17_020fb6dc
	arm_func_end FUN_ov17_020fb68c

	arm_func_start FUN_ov17_020fb6dc
FUN_ov17_020fb6dc: ; 0x020FB6DC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB6F8 ; =FUN_ov17_020fb6fc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB6F8: .word FUN_ov17_020fb6fc
	arm_func_end FUN_ov17_020fb6dc

	arm_func_start FUN_ov17_020fb6fc
FUN_ov17_020fb6fc: ; 0x020FB6FC
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FB75C ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB73C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FB73C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FB760 ; =FUN_ov17_020fb764
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB75C: .word ov17_02116218
_020FB760: .word FUN_ov17_020fb764
	arm_func_end FUN_ov17_020fb6fc

	arm_func_start FUN_ov17_020fb764
FUN_ov17_020fb764: ; 0x020FB764
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB798
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FB798:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB7CC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FB7CC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FB814 ; =0x02116218
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020FB804
	bl DWCi_SetParam_
	ldr r0, _020FB818 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB804:
	bl DWCi_SetParam_
	ldr r0, _020FB81C ; =FUN_ov17_020fb284
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FB814: .word ov17_02116218
_020FB818: .word FUN_ov17_020fa6d0
_020FB81C: .word FUN_ov17_020fb284
	arm_func_end FUN_ov17_020fb764

	arm_func_start FUN_ov17_020fb820
FUN_ov17_020fb820: ; 0x020FB820
	stmfd sp!, {r3, lr}
	ldr r0, _020FB848 ; =0x0211621C
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_020fb850
	mov r0, #0x21
	bl DWCi_CMNlMsgDraw
	ldr r0, _020FB84C ; =FUN_ov17_020fb8bc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB848: .word ov17_0211621C
_020FB84C: .word FUN_ov17_020fb8bc
	arm_func_end FUN_ov17_020fb820

	arm_func_start FUN_ov17_020fb850
FUN_ov17_020fb850: ; 0x020FB850
	stmfd sp!, {r3, lr}
	ldr r0, _020FB8AC ; =0x02113000
	ldr r1, _020FB8B0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _020FB8B4 ; =0x04001008
	ldr r1, _020FB8B8 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FB8AC: .word ov17_02113000
_020FB8B0: .word GX_LoadBG2Scr
_020FB8B4: .word 0x04001008
_020FB8B8: .word 0x0400000A
	arm_func_end FUN_ov17_020fb850

	arm_func_start FUN_ov17_020fb8bc
FUN_ov17_020fb8bc: ; 0x020FB8BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB8F4 ; =FUN_ov17_020fb8f8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB8F4: .word FUN_ov17_020fb8f8
	arm_func_end FUN_ov17_020fb8bc

	arm_func_start FUN_ov17_020fb8f8
FUN_ov17_020fb8f8: ; 0x020FB8F8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FB924 ; =FUN_ov17_020fb928
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FB924: .word FUN_ov17_020fb928
	arm_func_end FUN_ov17_020fb8f8

	arm_func_start FUN_ov17_020fb928
FUN_ov17_020fb928: ; 0x020FB928
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb9ec
	bl FUN_ov17_020fb938
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb928

	arm_func_start FUN_ov17_020fb938
FUN_ov17_020fb938: ; 0x020FB938
	bx lr
	arm_func_end FUN_ov17_020fb938

	arm_func_start FUN_ov17_020fb93c
FUN_ov17_020fb93c: ; 0x020FB93C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FB97C ; =FUN_ov17_020fb980
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB97C: .word FUN_ov17_020fb980
	arm_func_end FUN_ov17_020fb93c

	arm_func_start FUN_ov17_020fb980
FUN_ov17_020fb980: ; 0x020FB980
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FB9E8 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FB9E8: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020fb980

	arm_func_start FUN_ov17_020fb9ec
FUN_ov17_020fb9ec: ; 0x020FB9EC
	stmfd sp!, {r3, lr}
	ldr r1, _020FBA18 ; =0x0211621C
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FBA1C ; =FUN_ov17_020fb93c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBA18: .word ov17_0211621C
_020FBA1C: .word FUN_ov17_020fb93c
	arm_func_end FUN_ov17_020fb9ec

	arm_func_start FUN_ov17_020fba20
FUN_ov17_020fba20: ; 0x020FBA20
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fba5c
	mov r0, #0x20
	bl DWCi_CMNlMsgDraw
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	ldr r1, _020FBA54 ; =0x02116220
	strb r0, [r1]
	ldr r0, _020FBA58 ; =FUN_ov17_020fbadc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBA54: .word ov17_02116220
_020FBA58: .word FUN_ov17_020fbadc
	arm_func_end FUN_ov17_020fba20

	arm_func_start FUN_ov17_020fba5c
FUN_ov17_020fba5c: ; 0x020FBA5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FBACC ; =0x02113014
	ldr r1, _020FBAD0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FBAD4 ; =0x04001008
	ldr r1, _020FBAD8 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FBACC: .word ov17_02113014
_020FBAD0: .word GX_LoadBG2Scr
_020FBAD4: .word 0x04001008
_020FBAD8: .word 0x0400000A
	arm_func_end FUN_ov17_020fba5c

	arm_func_start FUN_ov17_020fbadc
FUN_ov17_020fbadc: ; 0x020FBADC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FBB50 ; =0x02116220
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FBB44
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dcd0
_020FBB44:
	ldr r0, _020FBB54 ; =FUN_ov17_020fbb58
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBB50: .word ov17_02116220
_020FBB54: .word FUN_ov17_020fbb58
	arm_func_end FUN_ov17_020fbadc

	arm_func_start FUN_ov17_020fbb58
FUN_ov17_020fbb58: ; 0x020FBB58
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_CMNlButton
	ldr r0, _020FBB90 ; =FUN_ov17_020fbb94
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBB90: .word FUN_ov17_020fbb94
	arm_func_end FUN_ov17_020fbb58

	arm_func_start FUN_ov17_020fbb94
FUN_ov17_020fbb94: ; 0x020FBB94
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FBBC0 ; =FUN_ov17_020fbbc4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBBC0: .word FUN_ov17_020fbbc4
	arm_func_end FUN_ov17_020fbb94

	arm_func_start FUN_ov17_020fbbc4
FUN_ov17_020fbbc4: ; 0x020FBBC4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fbbd8
	bl FUN_ov17_020fbc14
	bl FUN_ov17_020fbc18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fbbc4

	arm_func_start FUN_ov17_020fbbd8
FUN_ov17_020fbbd8: ; 0x020FBBD8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FBBF8
	mov r0, r4
	bl DWCi_BTNlSet
_020FBBF8:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020fbbd8

	arm_func_start FUN_ov17_020fbc14
FUN_ov17_020fbc14: ; 0x020FBC14
	bx lr
	arm_func_end FUN_ov17_020fbc14

	arm_func_start FUN_ov17_020fbc18
FUN_ov17_020fbc18: ; 0x020FBC18
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FBC40
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #1
	mov r0, #6
	b _020FBC4C
_020FBC40:
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #0
	mov r0, #7
_020FBC4C:
	strb r2, [r1, #1]
	bl FUN_ov17_02107c40
	ldr r0, _020FBC64 ; =FUN_ov17_020fbc68
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBC60: .word ov17_02116220
_020FBC64: .word FUN_ov17_020fbc68
	arm_func_end FUN_ov17_020fbc18

	arm_func_start FUN_ov17_020fbc68
FUN_ov17_020fbc68: ; 0x020FBC68
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FBC84 ; =FUN_ov17_020fbc88
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBC84: .word FUN_ov17_020fbc88
	arm_func_end FUN_ov17_020fbc68

	arm_func_start FUN_ov17_020fbc88
FUN_ov17_020fbc88: ; 0x020FBC88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FBCE8 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBCC8
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FBCC8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FBCEC ; =FUN_ov17_020fbcf0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FBCE8: .word ov17_02116220
_020FBCEC: .word FUN_ov17_020fbcf0
	arm_func_end FUN_ov17_020fbc88

	arm_func_start FUN_ov17_020fbcf0
FUN_ov17_020fbcf0: ; 0x020FBCF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FBD98 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBD50
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
_020FBD50:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FBD98 ; =0x02116220
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	mov r0, r4
	bne _020FBD88
	bl DWCi_SetParam_
	ldr r0, _020FBD9C ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD88:
	bl DWCi_SetParam_
	ldr r0, _020FBDA0 ; =FUN_ov17_020fc1a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD98: .word ov17_02116220
_020FBD9C: .word FUN_ov17_020fa6d0
_020FBDA0: .word FUN_ov17_020fc1a0
	arm_func_end FUN_ov17_020fbcf0

	arm_func_start FUN_ov17_020fbda4
FUN_ov17_020fbda4: ; 0x020FBDA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	bl FUN_ov17_020f8e8c
	mov r5, #0
	mov r7, r0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r1, _020FBE68 ; =0x02116224
	mov r4, r0
	strb r5, [r1, #1]
	strb r5, [r1]
	bl FUN_ov17_020fbe74
	add r6, sp, #0x10
	mov r0, r5
	mov r2, #0x16
	mov r1, r6
	bl MIi_CpuClear16
	ldrb r2, [r7, #1]
	add r0, r7, #2
	mov r1, r6
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #8
	mov r2, #0x35
	mov r3, #0xf0
	str r6, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r4
	bl DWCi_FNTlRenewBg
	ldr r0, _020FBE6C ; =FUN_ov17_020fc16c
	bl FUN_ov17_020f8e68
	mov r1, #4
	mov r2, r5
	mov r0, #0x1d
	sub r3, r1, #5
	str r5, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FBE70 ; =FUN_ov17_020fbef4
	bl DWCi_ChangeScene
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBE68: .word ov17_02116224
_020FBE6C: .word FUN_ov17_020fc16c
_020FBE70: .word FUN_ov17_020fbef4
	arm_func_end FUN_ov17_020fbda4

	arm_func_start FUN_ov17_020fbe74
FUN_ov17_020fbe74: ; 0x020FBE74
	stmfd sp!, {r3, lr}
	ldr r0, _020FBEE4 ; =0x02113028
	ldr r1, _020FBEE8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FBEEC ; =0x04001008
	ldr r1, _020FBEF0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FBEE4: .word ov17_02113028
_020FBEE8: .word GX_LoadBG2Scr
_020FBEEC: .word 0x04001008
_020FBEF0: .word 0x0400000A
	arm_func_end FUN_ov17_020fbe74

	arm_func_start FUN_ov17_020fbef4
FUN_ov17_020fbef4: ; 0x020FBEF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FBF2C ; =FUN_ov17_020fbf30
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FBF2C: .word FUN_ov17_020fbf30
	arm_func_end FUN_ov17_020fbef4

	arm_func_start FUN_ov17_020fbf30
FUN_ov17_020fbf30: ; 0x020FBF30
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FBF50 ; =FUN_ov17_020fbf54
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBF50: .word FUN_ov17_020fbf54
	arm_func_end FUN_ov17_020fbf30

	arm_func_start FUN_ov17_020fbf54
FUN_ov17_020fbf54: ; 0x020FBF54
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FBF70 ; =FUN_ov17_020fbf74
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBF70: .word FUN_ov17_020fbf74
	arm_func_end FUN_ov17_020fbf54

	arm_func_start FUN_ov17_020fbf74
FUN_ov17_020fbf74: ; 0x020FBF74
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fbfdc
	bl FUN_ov17_020fbfe0
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _020FBF98
	cmp r0, #1
	beq _020FBFA8
	ldmfd sp!, {r3, pc}
_020FBF98:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #0
	mov r0, #7
	b _020FBFB4
_020FBFA8:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #1
	mov r0, #0xe
_020FBFB4:
	strb r2, [r1, #1]
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	bl FUN_ov17_021091b8
	ldr r0, _020FBFD8 ; =FUN_ov17_020fbfe4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FBFD4: .word ov17_02116224
_020FBFD8: .word FUN_ov17_020fbfe4
	arm_func_end FUN_ov17_020fbf74

	arm_func_start FUN_ov17_020fbfdc
FUN_ov17_020fbfdc: ; 0x020FBFDC
	bx lr
	arm_func_end FUN_ov17_020fbfdc

	arm_func_start FUN_ov17_020fbfe0
FUN_ov17_020fbfe0: ; 0x020FBFE0
	bx lr
	arm_func_end FUN_ov17_020fbfe0

	arm_func_start FUN_ov17_020fbfe4
FUN_ov17_020fbfe4: ; 0x020FBFE4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC038 ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC018
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC018:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC03C ; =FUN_ov17_020fc040
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC038: .word ov17_02116224
_020FC03C: .word FUN_ov17_020fc040
	arm_func_end FUN_ov17_020fbfe4

	arm_func_start FUN_ov17_020fc040
FUN_ov17_020fc040: ; 0x020FC040
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC094 ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	ldreqb r0, [r0, #1]
	cmpeq r0, #1
	bne _020FC084
	bl FUN_ov17_020f8e80
	b _020FC088
_020FC084:
	bl FUN_ov17_020f8df0
_020FC088:
	ldr r0, _020FC098 ; =FUN_ov17_020fc09c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC094: .word ov17_02116224
_020FC098: .word FUN_ov17_020fc09c
	arm_func_end FUN_ov17_020fc040

	arm_func_start FUN_ov17_020fc09c
FUN_ov17_020fc09c: ; 0x020FC09C
	stmfd sp!, {r4, lr}
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	bne _020FC0BC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC0C8
_020FC0BC:
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC0C8:
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FC15C ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC100
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FC100:
	mov r4, #1
	mov r1, r4
	mov r0, #0
	bl DWCi_SetParam_
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	beq _020FC12C
	ldr r0, _020FC160 ; =FUN_ov17_020fba20
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC12C:
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC150
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dd24
	ldr r0, _020FC164 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC150:
	ldr r0, _020FC168 ; =FUN_ov17_020fadf0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC15C: .word ov17_02116224
_020FC160: .word FUN_ov17_020fba20
_020FC164: .word FUN_ov17_020fa6d0
_020FC168: .word FUN_ov17_020fadf0
	arm_func_end FUN_ov17_020fc09c

	arm_func_start FUN_ov17_020fc16c
FUN_ov17_020fc16c: ; 0x020FC16C
	ldr r0, _020FC17C ; =0x02116224
	mov r1, #1
	strb r1, [r0]
	bx lr
_020FC17C: .word ov17_02116224
	arm_func_end FUN_ov17_020fc16c

	arm_func_start FUN_ov17_020fc180
FUN_ov17_020fc180: ; 0x020FC180
	ldr r0, _020FC19C ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC19C: .word 0x02FFFFA8
	arm_func_end FUN_ov17_020fc180

	arm_func_start FUN_ov17_020fc1a0
FUN_ov17_020fc1a0: ; 0x020FC1A0
	stmfd sp!, {r4, lr}
	ldr r0, _020FC1E0 ; =FUN_ov17_020fc524
	bl FUN_ov17_020f8d08
	ldr r0, _020FC1E4 ; =0x02116228
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020fc1ec
	mov r0, #0x1c
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FC1E8 ; =FUN_ov17_020fc26c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC1E0: .word FUN_ov17_020fc524
_020FC1E4: .word ov17_02116228
_020FC1E8: .word FUN_ov17_020fc26c
	arm_func_end FUN_ov17_020fc1a0

	arm_func_start FUN_ov17_020fc1ec
FUN_ov17_020fc1ec: ; 0x020FC1EC
	stmfd sp!, {r3, lr}
	ldr r0, _020FC25C ; =0x0211303C
	ldr r1, _020FC260 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FC264 ; =0x04001008
	ldr r1, _020FC268 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FC25C: .word ov17_0211303C
_020FC260: .word GX_LoadBG2Scr
_020FC264: .word 0x04001008
_020FC268: .word 0x0400000A
	arm_func_end FUN_ov17_020fc1ec

	arm_func_start FUN_ov17_020fc26c
FUN_ov17_020fc26c: ; 0x020FC26C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FC2A4 ; =FUN_ov17_020fc2a8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FC2A4: .word FUN_ov17_020fc2a8
	arm_func_end FUN_ov17_020fc26c

	arm_func_start FUN_ov17_020fc2a8
FUN_ov17_020fc2a8: ; 0x020FC2A8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _020FC2D0 ; =FUN_ov17_020fc2d4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC2D0: .word FUN_ov17_020fc2d4
	arm_func_end FUN_ov17_020fc2a8

	arm_func_start FUN_ov17_020fc2d4
FUN_ov17_020fc2d4: ; 0x020FC2D4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FC2F0 ; =FUN_ov17_020fc2f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC2F0: .word FUN_ov17_020fc2f4
	arm_func_end FUN_ov17_020fc2d4

	arm_func_start FUN_ov17_020fc2f4
FUN_ov17_020fc2f4: ; 0x020FC2F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fc308
	bl FUN_ov17_020fc340
	bl FUN_ov17_020fc344
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc2f4

	arm_func_start FUN_ov17_020fc308
FUN_ov17_020fc308: ; 0x020FC308
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FC328
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_020FC328:
	bl FUN_ov17_020fc180
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc308

	arm_func_start FUN_ov17_020fc340
FUN_ov17_020fc340: ; 0x020FC340
	bx lr
	arm_func_end FUN_ov17_020fc340

	arm_func_start FUN_ov17_020fc344
FUN_ov17_020fc344: ; 0x020FC344
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020FC36C ; =FUN_ov17_020fc370
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC36C: .word FUN_ov17_020fc370
	arm_func_end FUN_ov17_020fc344

	arm_func_start FUN_ov17_020fc370
FUN_ov17_020fc370: ; 0x020FC370
	stmfd sp!, {r3, lr}
	ldr r0, _020FC3A0 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC388
	bl FUN_ov17_020f8df0
_020FC388:
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FC3A4 ; =FUN_ov17_020fc3a8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC3A0: .word ov17_02116228
_020FC3A4: .word FUN_ov17_020fc3a8
	arm_func_end FUN_ov17_020fc370

	arm_func_start FUN_ov17_020fc3a8
FUN_ov17_020fc3a8: ; 0x020FC3A8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC3D8
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_020FC3D8:
	bl DWCi_BTNlEnd
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC400
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC400:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC424 ; =FUN_ov17_020fc428
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC420: .word ov17_02116228
_020FC424: .word FUN_ov17_020fc428
	arm_func_end FUN_ov17_020fc3a8

	arm_func_start FUN_ov17_020fc428
FUN_ov17_020fc428: ; 0x020FC428
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC45C
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC45C:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC484
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC484:
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4B0
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FC4B0:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FC514 ; =0x02116228
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4E8
	mov r0, r4
	bl DWCi_SetParam_
	ldr r0, _020FC518 ; =FUN_ov17_020fa6d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC4E8:
	cmp r0, #2
	mov r0, r4
	bne _020FC504
	bl DWCi_SetParam_
	ldr r0, _020FC51C ; =FUN_ov17_020fba20
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC504:
	bl DWCi_SetParam_
	ldr r0, _020FC520 ; =FUN_ov17_020fbda4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC514: .word ov17_02116228
_020FC518: .word FUN_ov17_020fa6d0
_020FC51C: .word FUN_ov17_020fba20
_020FC520: .word FUN_ov17_020fbda4
	arm_func_end FUN_ov17_020fc428

	arm_func_start FUN_ov17_020fc524
FUN_ov17_020fc524: ; 0x020FC524
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107ca8
	cmp r4, #0
	bne _020FC548
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #1
	mov r0, #0x10
	b _020FC554
_020FC548:
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #2
	mov r0, #0x12
_020FC554:
	strb r2, [r1]
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	ldr r0, _020FC574 ; =FUN_ov17_020fc370
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC570: .word ov17_02116228
_020FC574: .word FUN_ov17_020fc370
	arm_func_end FUN_ov17_020fc524

	arm_func_start FUN_ov17_020fc578
FUN_ov17_020fc578: ; 0x020FC578
	ldr r0, _020FC594 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC594: .word 0x02FFFFA8
	arm_func_end FUN_ov17_020fc578

	arm_func_start FUN_ov17_020fc598
FUN_ov17_020fc598: ; 0x020FC598
	stmfd sp!, {r4, lr}
	ldr r0, _020FC5F0 ; =0x0211622C
	mov r4, #0
	strh r4, [r0, #2]
	bl FUN_ov17_020fc5f8
	bl FUN_ov17_020f5384
	mov r0, #0x36
	mov r2, r4
	sub r1, r0, #0x37
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, #0x22
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	bl FUN_ov17_020f8458
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FC5F4 ; =FUN_ov17_020fc6a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC5F0: .word ov17_0211622C
_020FC5F4: .word FUN_ov17_020fc6a0
	arm_func_end FUN_ov17_020fc598

	arm_func_start FUN_ov17_020fc5f8
FUN_ov17_020fc5f8: ; 0x020FC5F8
	stmfd sp!, {r3, lr}
	ldr r0, _020FC680 ; =0x02113050
	ldr r1, _020FC684 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FC688 ; =0x02113068
	ldr r1, _020FC68C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FC690 ; =0x02113080
	ldr r1, _020FC694 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FC698 ; =0x04001008
	ldr r1, _020FC69C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FC680: .word ov17_02113050
_020FC684: .word GX_LoadBG2Char
_020FC688: .word ov17_02113068
_020FC68C: .word GX_LoadBGPltt
_020FC690: .word ov17_02113080
_020FC694: .word GX_LoadBG2Scr
_020FC698: .word 0x04001008
_020FC69C: .word 0x0400000A
	arm_func_end FUN_ov17_020fc5f8

	arm_func_start FUN_ov17_020fc6a0
FUN_ov17_020fc6a0: ; 0x020FC6A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FC704 ; =FUN_ov17_020fc708
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FC704: .word FUN_ov17_020fc708
	arm_func_end FUN_ov17_020fc6a0

	arm_func_start FUN_ov17_020fc708
FUN_ov17_020fc708: ; 0x020FC708
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020FC744 ; =FUN_ov17_020fc748
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC744: .word FUN_ov17_020fc748
	arm_func_end FUN_ov17_020fc708

	arm_func_start FUN_ov17_020fc748
FUN_ov17_020fc748: ; 0x020FC748
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020FC780 ; =FUN_ov17_020fca78
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, _020FC784 ; =0x0211622C
	str r0, [r1, #4]
	ldr r0, _020FC788 ; =FUN_ov17_020fc78c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC780: .word FUN_ov17_020fca78
_020FC784: .word ov17_0211622C
_020FC788: .word FUN_ov17_020fc78c
	arm_func_end FUN_ov17_020fc748

	arm_func_start FUN_ov17_020fc78c
FUN_ov17_020fc78c: ; 0x020FC78C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8a8
	bl FUN_ov17_020fc8ac
	bl FUN_ov17_020f85b0
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #1
	beq _020FC7C8
	cmp r0, #2
	beq _020FC800
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC7C8:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	strb r0, [r4]
	bl DWCi_TSKlDeleteEx
	mov r1, #0
	ldr r0, _020FC868 ; =FUN_ov17_020fcae0
	str r1, [r4, #4]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC800:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov17_02107ca8
	mov r5, #1
	mov r6, #0
	mov r1, r5
	mov r2, r5
	sub r3, r5, #2
	mov r0, #0xc
	str r6, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #9
	bl FUN_ov17_02107c40
	bl DWCi_BTNlDisable
	ldr r1, [r4, #4]
	mov r0, r5
	bl DWCi_TSKlDeleteEx
	ldr r0, _020FC86C ; =FUN_ov17_020fca94
	str r6, [r4, #4]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC864: .word ov17_0211622C
_020FC868: .word FUN_ov17_020fcae0
_020FC86C: .word FUN_ov17_020fca94
	arm_func_end FUN_ov17_020fc78c

	arm_func_start FUN_ov17_020fc870
FUN_ov17_020fc870: ; 0x020FC870
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FC890
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_020FC890:
	bl FUN_ov17_020fc578
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc870

	arm_func_start FUN_ov17_020fc8a8
FUN_ov17_020fc8a8: ; 0x020FC8A8
	bx lr
	arm_func_end FUN_ov17_020fc8a8

	arm_func_start FUN_ov17_020fc8ac
FUN_ov17_020fc8ac: ; 0x020FC8AC
	stmfd sp!, {r4, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020FC8EC ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #1
	bl DWCi_TSKlDelete
	mov r0, #0
	str r0, [r4, #4]
	bl DWCi_BTNlDisable
	ldr r0, _020FC8F0 ; =FUN_ov17_020fcb2c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC8EC: .word ov17_0211622C
_020FC8F0: .word FUN_ov17_020fcb2c
	arm_func_end FUN_ov17_020fc8ac

	arm_func_start FUN_ov17_020fc8f4
FUN_ov17_020fc8f4: ; 0x020FC8F4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	ldr r0, _020FC928 ; =0x0211622C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020FC914
	mov r0, #1
	bl DWCi_TSKlDeleteEx
_020FC914:
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FC92C ; =FUN_ov17_020fc930
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FC928: .word ov17_0211622C
_020FC92C: .word FUN_ov17_020fc930
	arm_func_end FUN_ov17_020fc8f4

	arm_func_start FUN_ov17_020fc930
FUN_ov17_020fc930: ; 0x020FC930
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _020FC990 ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC970
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC970:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC994 ; =FUN_ov17_020fc998
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FC990: .word ov17_0211622C
_020FC994: .word FUN_ov17_020fc998
	arm_func_end FUN_ov17_020fc930

	arm_func_start FUN_ov17_020fc998
FUN_ov17_020fc998: ; 0x020FC998
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC9CC
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC9CC:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_020f8560
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA1C
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FCA1C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA54
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _020FCA70 ; =FUN_ov17_0210462c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FCA54:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _020FCA74 ; =FUN_ov17_020fcb5c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FCA6C: .word ov17_0211622C
_020FCA70: .word FUN_ov17_0210462c
_020FCA74: .word FUN_ov17_020fcb5c
	arm_func_end FUN_ov17_020fc998

	arm_func_start FUN_ov17_020fca78
FUN_ov17_020fca78: ; 0x020FCA78
	stmfd sp!, {r3, lr}
	bl DWCi_IPTlRead
	mov r0, #0
	bl DWCi_TSKlAct
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fca78

	arm_func_start FUN_ov17_020fca94
FUN_ov17_020fca94: ; 0x020FCA94
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FCABC ; =FUN_ov17_020fcac0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCABC: .word FUN_ov17_020fcac0
	arm_func_end FUN_ov17_020fca94

	arm_func_start FUN_ov17_020fcac0
FUN_ov17_020fcac0: ; 0x020FCAC0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCADC ; =FUN_ov17_020fc8f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCADC: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcac0

	arm_func_start FUN_ov17_020fcae0
FUN_ov17_020fcae0: ; 0x020FCAE0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8a8
	bl FUN_ov17_020fc8ac
	ldr r1, _020FCB20 ; =0x0211622C
	ldr r0, _020FCB24 ; =0x00000438
	ldrh r2, [r1, #2]
	add r2, r2, #1
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	cmp r1, r0
	ldmlofd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	ldr r0, _020FCB28 ; =FUN_ov17_020fc8f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB20: .word ov17_0211622C
_020FCB24: .word 0x00000438
_020FCB28: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcae0

	arm_func_start FUN_ov17_020fcb2c
FUN_ov17_020fcb2c: ; 0x020FCB2C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, _020FCB54 ; =0x0211622C
	mov r2, #0
	ldr r0, _020FCB58 ; =FUN_ov17_020fc8f4
	strb r2, [r1]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB54: .word ov17_0211622C
_020FCB58: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcb2c

	arm_func_start FUN_ov17_020fcb5c
FUN_ov17_020fcb5c: ; 0x020FCB5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FCB90 ; =0x02116234
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_020fcb98
	bl FUN_ov17_020f5384
	mov r0, #0x23
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _020FCB94 ; =FUN_ov17_020fcc04
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCB90: .word ov17_02116234
_020FCB94: .word FUN_ov17_020fcc04
	arm_func_end FUN_ov17_020fcb5c

	arm_func_start FUN_ov17_020fcb98
FUN_ov17_020fcb98: ; 0x020FCB98
	stmfd sp!, {r3, lr}
	ldr r0, _020FCBF4 ; =0x02113094
	ldr r1, _020FCBF8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _020FCBFC ; =0x04001008
	ldr r1, _020FCC00 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FCBF4: .word ov17_02113094
_020FCBF8: .word GX_LoadBG2Scr
_020FCBFC: .word 0x04001008
_020FCC00: .word 0x0400000A
	arm_func_end FUN_ov17_020fcb98

	arm_func_start FUN_ov17_020fcc04
FUN_ov17_020fcc04: ; 0x020FCC04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FCC3C ; =FUN_ov17_020fcc40
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCC3C: .word FUN_ov17_020fcc40
	arm_func_end FUN_ov17_020fcc04

	arm_func_start FUN_ov17_020fcc40
FUN_ov17_020fcc40: ; 0x020FCC40
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCC60 ; =FUN_ov17_020fcc64
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCC60: .word FUN_ov17_020fcc64
	arm_func_end FUN_ov17_020fcc40

	arm_func_start FUN_ov17_020fcc64
FUN_ov17_020fcc64: ; 0x020FCC64
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fcd34
	bl FUN_ov17_020fcc74
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fcc64

	arm_func_start FUN_ov17_020fcc74
FUN_ov17_020fcc74: ; 0x020FCC74
	bx lr
	arm_func_end FUN_ov17_020fcc74

	arm_func_start FUN_ov17_020fcc78
FUN_ov17_020fcc78: ; 0x020FCC78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FCCB8 ; =FUN_ov17_020fccbc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCCB8: .word FUN_ov17_020fccbc
	arm_func_end FUN_ov17_020fcc78

	arm_func_start FUN_ov17_020fccbc
FUN_ov17_020fccbc: ; 0x020FCCBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FCD30 ; =FUN_ov17_021054a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCD30: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_020fccbc

	arm_func_start FUN_ov17_020fcd34
FUN_ov17_020fcd34: ; 0x020FCD34
	stmfd sp!, {r3, lr}
	ldr r1, _020FCD60 ; =0x02116234
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FCD64 ; =FUN_ov17_020fcc78
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FCD60: .word ov17_02116234
_020FCD64: .word FUN_ov17_020fcc78
	arm_func_end FUN_ov17_020fcd34

	arm_func_start FUN_ov17_020fcd68
FUN_ov17_020fcd68: ; 0x020FCD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x5c
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _020FCE24 ; =0x02116238
	mov r5, #0
	str r0, [r4, #4]
	add r0, sp, #0
	mov r1, r5
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	streqb r5, [r4]
	streqh r5, [r4, #2]
	ldr r4, _020FCE24 ; =0x02116238
	ldr r0, [r4, #4]
	bl FUN_ov17_02106da8
	ldr r1, [r4, #4]
	strb r0, [r1, #0x51]
	bl FUN_ov17_020fce30
	bl FUN_ov17_020f5384
	mov r0, #0x34
	mov r5, #0
	sub r1, r0, #0x35
	mov r2, r5
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	bl FUN_ov17_020fcf78
	bl FUN_ov17_020fd01c
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r3, [r4, #4]
	ldr r1, _020FCE28 ; =FUN_ov17_020fdec8
	str r0, [r3, #0xc]
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x3c]
	bl FUN_ov17_020fda30
	bl FUN_ov17_020fdf20
	ldr r0, _020FCE2C ; =FUN_ov17_020fd17c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FCE24: .word ov17_02116238
_020FCE28: .word FUN_ov17_020fdec8
_020FCE2C: .word FUN_ov17_020fd17c
	arm_func_end FUN_ov17_020fcd68

	arm_func_start FUN_ov17_020fce30
FUN_ov17_020fce30: ; 0x020FCE30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r3, _020FCF5C ; =0x02112208
	add r5, sp, #0x16
	mov r2, #0xc
_020FCE44:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020FCE44
	ldrb r0, [r3]
	ldr r4, _020FCF60 ; =0x021121F0
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_020FCE70:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FCE70
	ldr r0, _020FCF64 ; =0x021130A8
	ldr r1, _020FCF68 ; =GX_LoadBG3Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x16
	bl DWCi_Char
	mov r6, #0
	mov r5, #4
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r4, _020FCF6C ; =0x02116238
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl FUN_ov17_021062fc
	bl FUN_ov17_02106384
	add r0, sp, #0
	bl DWCi_Char
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, [r4, #4]
	ldr r3, _020FCF70 ; =0x04001008
	str r0, [r1, #8]
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	ldr r1, _020FCF74 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_020FCF5C: .word ov17_02112208
_020FCF60: .word ov17_021121F0
_020FCF64: .word ov17_021130A8
_020FCF68: .word GX_LoadBG3Scr
_020FCF6C: .word ov17_02116238
_020FCF70: .word 0x04001008
_020FCF74: .word 0x0400000A
	arm_func_end FUN_ov17_020fce30

	arm_func_start FUN_ov17_020fcf78
FUN_ov17_020fcf78: ; 0x020FCF78
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020FD018 ; =0x02116238
	mov r1, #0x1c
	ldr r12, [r2, #4]
	mov r0, #0
	ldrb r3, [r12, #0x51]
	sub r3, r3, #4
	mul r1, r3, r1
	strh r1, [r12, #0x40]
	ldr r2, [r2, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	movls r4, r0
	strlsb r0, [r2, #0x53]
	bls _020FCFD4
	cmp r1, #8
	movls r1, #0x1f
	strlsb r1, [r2, #0x53]
	movls r4, #1
	movhi r1, #0x37
	strhib r1, [r2, #0x53]
	movhi r4, #2
_020FCFD4:
	cmp r4, #0
	beq _020FCFF8
	ldr r0, _020FD018 ; =0x02116238
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
_020FCFF8:
	str r0, [sp]
	mov r0, r4
	mov r1, #0x55
	mov r2, #0xec
	mov r3, #0x3f
	bl FUN_ov17_02106508
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD018: .word ov17_02116238
	arm_func_end FUN_ov17_020fcf78

	arm_func_start FUN_ov17_020fd01c
FUN_ov17_020fd01c: ; 0x020FD01C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020FD16C ; =0x02116238
	mov r7, #0
	ldr r0, [r4, #4]
	mov r9, #0
	ldrb r8, [r0, #0x51]
	cmp r8, #5
	movgt r8, #5
	cmp r8, #0
	ble _020FD088
	mov r6, #0x2e
	mov r5, #0x18
_020FD04C:
	mov r0, r7
	mov r1, r6
	bl DWCi_CEINlSetExObj
	ldr r2, [r4, #4]
	mov r1, r5
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x10]
	mov r0, r7
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #4]
	add r1, r1, r9, lsl #2
	add r9, r9, #1
	str r0, [r1, #0x24]
	cmp r9, r8
	blt _020FD04C
_020FD088:
	mov r7, #0
	ldr r5, _020FD170 ; =0x02112198
	ldr r9, _020FD174 ; =0x000003FF
	mov r6, r7
_020FD098:
	ldr r0, [r4, #4]
	ldrb r1, [r5, r7]
	ldr r2, [r0, #0x10]
	mov r0, r6
	bl DWCi_CEINlSet
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x10]
	add r0, r0, r7, lsl #1
	ldrh r1, [r1, #4]
	add r7, r7, #1
	cmp r7, #3
	and r1, r1, r9
	strh r1, [r0, #0x42]
	blo _020FD098
	ldr r4, _020FD178 ; =0x0211219B
	ldr r10, _020FD16C ; =0x02116238
	ldr r7, _020FD174 ; =0x000003FF
	mov r5, #0
_020FD0E0:
	ldr r0, [r10, #4]
	ldrb r1, [r4, r6]
	ldr r2, [r0, #0x24]
	mov r0, r5
	ldr r9, _020FD16C ; =0x02116238
	bl DWCi_CEINlSet
	ldr r0, [r10, #4]
	ldr r1, [r0, #0x24]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #4
	and r1, r1, r7
	strh r1, [r0, #0x48]
	blo _020FD0E0
	cmp r8, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD124:
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x24]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, r8
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020FD124
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD16C: .word ov17_02116238
_020FD170: .word ov17_02112198
_020FD174: .word 0x000003FF
_020FD178: .word ov17_0211219B
	arm_func_end FUN_ov17_020fd01c

	arm_func_start FUN_ov17_020fd17c
FUN_ov17_020fd17c: ; 0x020FD17C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x1d
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FD1E0 ; =FUN_ov17_020fd1e4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FD1E0: .word FUN_ov17_020fd1e4
	arm_func_end FUN_ov17_020fd17c

	arm_func_start FUN_ov17_020fd1e4
FUN_ov17_020fd1e4: ; 0x020FD1E4
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _020FD220 ; =FUN_ov17_020fd224
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FD220: .word FUN_ov17_020fd224
	arm_func_end FUN_ov17_020fd1e4

	arm_func_start FUN_ov17_020fd224
FUN_ov17_020fd224: ; 0x020FD224
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FD244 ; =FUN_ov17_020fd248
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FD244: .word FUN_ov17_020fd248
	arm_func_end FUN_ov17_020fd224

	arm_func_start FUN_ov17_020fd248
FUN_ov17_020fd248: ; 0x020FD248
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fd25c
	bl FUN_ov17_020fd478
	bl FUN_ov17_020fd6a4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fd248

	arm_func_start FUN_ov17_020fd25c
FUN_ov17_020fd25c: ; 0x020FD25C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020FD46C ; =0x02116238
	mov r4, #0
	ldr r1, [r5, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020FD470 ; =0x021126F8
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FD2E4
	ldr r0, [r5, #4]
	mvn r1, #0
	ldr r6, _020FD474 ; =0x021121A0
	strb r1, [r0, #0x50]
	mov r7, r4
_020FD2A4:
	add r0, r6, r7, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020FD2D8
	cmp r7, #4
	ldrlt r0, [r5, #4]
	strltb r7, [r0, #0x50]
	blt _020FD2E4
	mov r0, #1
	bl DWCi_BTNlSet
	strb r7, [r5]
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD2D8:
	add r7, r7, #1
	cmp r7, #5
	blo _020FD2A4
_020FD2E4:
	ldr r0, _020FD470 ; =0x021126F8
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020FD354
	ldr r6, _020FD474 ; =0x021121A0
	mov r7, #0
_020FD2FC:
	add r0, r6, r7, lsl #3
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020FD348
	ldr r1, [r5, #4]
	ldrsb r0, [r1, #0x50]
	cmp r0, r7
	bne _020FD354
	ldrb r0, [r1, #0x51]
	cmp r7, r0
	blt _020FD334
	mov r0, #9
	bl FUN_ov17_02107c40
	b _020FD354
_020FD334:
	mov r0, #1
	bl DWCi_BTNlSet
	strb r7, [r5]
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD348:
	add r7, r7, #1
	cmp r7, #4
	blt _020FD2FC
_020FD354:
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FD378
	mov r0, r7
	bl DWCi_BTNlSet
	bl FUN_ov17_02106664
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD378:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FD394
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD394:
	mov r6, #0x200
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD3B0
	bl FUN_ov17_020fe11c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3B0:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x100
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD3E4
	bl FUN_ov17_020fe0b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3E4:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x40
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD41C
	mov r0, r7
	bl FUN_ov17_020fdf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD41C:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x80
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD454
	mov r0, #3
	bl FUN_ov17_020fdf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD454:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD46C: .word ov17_02116238
_020FD470: .word ov17_021126F8
_020FD474: .word ov17_021121A0
	arm_func_end FUN_ov17_020fd25c

	arm_func_start FUN_ov17_020fd478
FUN_ov17_020fd478: ; 0x020FD478
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FD698 ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x55]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x55]
	bl FUN_ov17_0210662c
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4B0: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020FD4D0 ; case 1
	b _020FD4E4 ; case 2
	b _020FD528 ; case 3
	b _020FD5C0 ; case 4
	b _020FD688 ; case 5
	b _020FD61C ; case 6
	b _020FD688 ; case 7
_020FD4D0:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x57]
	bl DWCi_BTNlDisable
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4E4:
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x55]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_02106618
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	strh r0, [r4, #2]
	bl FUN_ov17_020fda30
	ldr r0, [r4, #4]
	mov r1, #4
	strb r1, [r0, #0x55]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD528:
	ldr r0, [r4, #4]
	mov r5, #0
	strb r5, [r0, #0x57]
	bl DWCi_BTNlEnable
	bl FUN_ov17_02106618
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	strh r0, [r4, #2]
	mov r0, #0x13
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fda30
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_ModS32
	cmp r0, #0
	bne _020FD57C
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, pc}
_020FD57C:
	cmp r0, #0xe
	mov r3, #0x78
	bge _020FD5A4
	ldr r1, _020FD69C ; =FUN_ov17_020fdd80
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5A4:
	ldr r1, _020FD6A0 ; =FUN_ov17_020fde38
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5C0:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FD5F4
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5F4:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FD69C ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD61C:
	ldr r2, [r4, #4]
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bls _020FD63C
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	bne _020FD660
_020FD63C:
	ldrb r0, [r2, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD660:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FD6A0 ; =FUN_ov17_020fde38
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD688:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD698: .word ov17_02116238
_020FD69C: .word FUN_ov17_020fdd80
_020FD6A0: .word FUN_ov17_020fde38
	arm_func_end FUN_ov17_020fd478

	arm_func_start FUN_ov17_020fd6a4
FUN_ov17_020fd6a4: ; 0x020FD6A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _020FD7AC ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _020FD6E8
	cmp r0, #1
	beq _020FD6F0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD6E8:
	mov r0, #7
	b _020FD798
_020FD6F0:
	ldrb r0, [r4]
	cmp r0, #4
	bne _020FD718
	ldr r1, [r4, #4]
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #0x54]
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fe19c
	b _020FD79C
_020FD718:
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_DivS32
	ldrb r12, [r4]
	ldr r3, [r4, #4]
	mov r1, #0x2a
	ldr r2, [r3]
	add r12, r12, r0
	mla r0, r12, r1, r2
	ldrb r0, [r0, #0x28]
	cmp r0, #2
	bne _020FD784
	mov r0, #9
	bl FUN_ov17_02107c40
	bl FUN_ov17_02106664
	bl DWCi_BTNlDisable
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0xe
	sub r3, r1, #2
	bl FUN_ov17_02108e9c
	ldr r0, _020FD7B0 ; =FUN_ov17_020fe1c8
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD784:
	mov r0, #1
	strb r0, [r3, #0x54]
	ldr r1, [r4, #4]
	mov r0, #6
	strb r12, [r1, #0x52]
_020FD798:
	bl FUN_ov17_02107c40
_020FD79C:
	ldr r0, _020FD7B4 ; =FUN_ov17_020fd7b8
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD7AC: .word ov17_02116238
_020FD7B0: .word FUN_ov17_020fe1c8
_020FD7B4: .word FUN_ov17_020fd7b8
	arm_func_end FUN_ov17_020fd6a4

	arm_func_start FUN_ov17_020fd7b8
FUN_ov17_020fd7b8: ; 0x020FD7B8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FD7D4 ; =FUN_ov17_020fd7d8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FD7D4: .word FUN_ov17_020fd7d8
	arm_func_end FUN_ov17_020fd7b8

	arm_func_start FUN_ov17_020fd7d8
FUN_ov17_020fd7d8: ; 0x020FD7D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FD848 ; =0x02116238
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020FD808
	bl DWCi_BTNlEnd
	b _020FD80C
_020FD808:
	bl DWCi_BTNlDisable
_020FD80C:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x1d
	bl FUN_ov17_0210d238
	ldr r0, _020FD84C ; =FUN_ov17_020fd850
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FD848: .word ov17_02116238
_020FD84C: .word FUN_ov17_020fd850
	arm_func_end FUN_ov17_020fd7d8

	arm_func_start FUN_ov17_020fd850
FUN_ov17_020fd850: ; 0x020FD850
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020FDA14 ; =0x02116238
	mov r0, r6
	ldr r1, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl DWCi_TSKlDeleteEx
_020FD89C:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020FD8B4
	bl DWCi_OBJlDelete
_020FD8B4:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _020FD8CC
	bl DWCi_OBJlDelete
_020FD8CC:
	add r4, r4, #1
	cmp r4, #5
	blt _020FD89C
	ldr r7, _020FDA14 ; =0x02116238
	ldr r0, [r7, #4]
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210d8dc
	bl FUN_ov17_021065e0
	bl FUN_ov17_020f5258
	bl DWCi_COMMENTlDelete
	bl FUN_ov17_02106358
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	bl DWCi_ARClRelease
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	bl DWCi_ARClRelease
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r4, #0
	mov r0, r4
	mov r1, #0x1d
	bl FUN_ov17_0210dd24
	ldr r0, _020FDA18 ; =0x04000010
	str r4, [r0]
	str r4, [r0, #8]
	ldr r2, [r7, #4]
	ldrb r0, [r2, #0x54]
	cmp r0, #0
	bne _020FD970
	bl FUN_ov17_02106be4
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _020FDA1C ; =FUN_ov17_0210462c
	b _020FDA04
_020FD970:
	ldrb r0, [r7]
	cmp r0, #4
	bne _020FD994
	bl FUN_ov17_02106be4
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FDA20 ; =FUN_ov17_02103414
	b _020FDA04
_020FD994:
	ldrb r1, [r2, #0x52]
	ldr r0, [r2]
	mov r6, #0x2a
	mla r0, r1, r6, r0
	bl FUN_ov17_021070d4
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, [r7, #4]
	ldrb r1, [r0, #0x52]
	ldr r0, [r0]
	mla r0, r1, r6, r0
	ldrb r0, [r0, #0x28]
	mov r1, r5
	cmp r0, #0
	mov r0, r4
	beq _020FD9F0
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FDA24 ; =FUN_ov17_020fe21c
	b _020FDA04
_020FD9F0:
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FDA28 ; =FUN_ov17_021054a0
_020FDA04:
	bl DWCi_ChangeScene
	ldr r0, _020FDA2C ; =0x0211623C
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDA14: .word ov17_02116238
_020FDA18: .word 0x04000010
_020FDA1C: .word FUN_ov17_0210462c
_020FDA20: .word FUN_ov17_02103414
_020FDA24: .word FUN_ov17_020fe21c
_020FDA28: .word FUN_ov17_021054a0
_020FDA2C: .word ov17_0211623C
	arm_func_end FUN_ov17_020fd850

	arm_func_start FUN_ov17_020fda30
FUN_ov17_020fda30: ; 0x020FDA30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020FDAD0 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FX_DivS32
	ldr r1, [r4, #4]
	mov r7, r0
	ldrb r4, [r1, #0x51]
	ldr r0, [r1, #0xc]
	mov r1, #0
	bl FUN_ov17_0210dba8
	cmp r4, #5
	movgt r4, #5
	mov r5, r7
	cmp r4, #0
	mov r6, #0
	ble _020FDA90
_020FDA74:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020fdad4
	add r6, r6, #1
	cmp r6, r4
	add r5, r5, #1
	blt _020FDA74
_020FDA90:
	cmp r4, #0
	mov r5, #0
	ble _020FDAB8
_020FDA9C:
	mov r0, r7
	mov r1, r5
	bl FUN_ov17_020fdc3c
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #1
	blt _020FDA9C
_020FDAB8:
	ldr r0, _020FDAD0 ; =0x02116238
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl DWCi_FNTlRenewBg
	bl FUN_ov17_020fdcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDAD0: .word ov17_02116238
	arm_func_end FUN_ov17_020fda30

	arm_func_start FUN_ov17_020fdad4
FUN_ov17_020fdad4: ; 0x020FDAD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r0, #0x2a
	ldr r5, _020FDC38 ; =0x02116238
	mul r7, r8, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldr r0, [r0]
	mov r1, #0x20
	add r0, r0, r7
	bl FUN_ov17_0210ee94
	ldr r2, [r5, #4]
	mov r1, #0x1c
	ldrb r2, [r2, #0x51]
	mul r6, r4, r1
	cmp r8, r2
	mov r5, r0
	addge sp, sp, #0x30
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, sp, #0xc
	cmp r5, #0x10
	mov r1, #0
	mov r2, #0x22
	addle r6, r6, #6
	bl MI_CpuFill8
	mov r8, r5
	cmp r5, #0x10
	movgt r8, #0x10
	cmp r8, #0
	mov r3, #0
	ble _020FDB80
	ldr r0, _020FDC38 ; =0x02116238
	ldr r4, [r0, #4]
	add r0, sp, #0xc
_020FDB60:
	ldr r2, [r4]
	mov r1, r3, lsl #1
	add r2, r7, r2
	ldrb r2, [r3, r2]
	add r3, r3, #1
	cmp r3, r8
	strh r2, [r0, r1]
	blt _020FDB60
_020FDB80:
	mov r1, #0xa
	add r4, sp, #0xc
	stmia sp, {r1, r4}
	mov r0, #1
	ldr r9, _020FDC38 ; =0x02116238
	str r0, [sp, #8]
	ldr r0, [r9, #4]
	mov r2, r6
	ldr r0, [r0, #0xc]
	mov r3, #2
	bl FUN_ov17_0210da44
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r8, #0
	mov r0, r4
	mov r1, r8
	mov r2, #0x22
	bl MI_CpuFill8
	sub r2, r5, #0x10
	cmp r2, #0
	ble _020FDC00
	ldr r3, [r9, #4]
_020FDBDC:
	ldr r1, [r3]
	mov r0, r8, lsl #1
	add r1, r7, r1
	add r1, r8, r1
	ldrb r1, [r1, #0x10]
	add r8, r8, #1
	cmp r8, r2
	strh r1, [r4, r0]
	blt _020FDBDC
_020FDC00:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _020FDC38 ; =0x02116238
	add r2, r6, #0xc
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210da44
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FDC38: .word ov17_02116238
	arm_func_end FUN_ov17_020fdad4

	arm_func_start FUN_ov17_020fdc3c
FUN_ov17_020fdc3c: ; 0x020FDC3C
	stmfd sp!, {r4, lr}
	ldr r3, _020FDCC4 ; =0x02116238
	ldr lr, [r3, #4]
	ldrb r2, [lr, #0x51]
	cmp r0, r2
	ldmgefd sp!, {r4, pc}
	mov r2, #0x2a
	mul r2, r0, r2
	ldr r0, [lr]
	add r4, lr, r1, lsl #2
	add r0, r0, r2
	ldrb r12, [r0, #0x28]
	ldr r4, [r4, #0x10]
	mov r0, #0x400
	add r12, lr, r12, lsl #1
	ldrh lr, [r4, #4]
	rsb r0, r0, #0
	ldrh r12, [r12, #0x42]
	and lr, lr, r0
	orr r12, lr, r12
	strh r12, [r4, #4]
	ldr lr, [r3, #4]
	ldr r3, [lr]
	add r12, lr, r1, lsl #2
	add r1, r3, r2
	ldrh r1, [r1, #0x26]
	ldr r3, [r12, #0x24]
	add r1, lr, r1, lsl #1
	ldrh r2, [r3, #4]
	ldrh r1, [r1, #0x48]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldmfd sp!, {r4, pc}
_020FDCC4: .word ov17_02116238
	arm_func_end FUN_ov17_020fdc3c

	arm_func_start FUN_ov17_020fdcc8
FUN_ov17_020fdcc8: ; 0x020FDCC8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020FDD78 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FX_ModS32
	ldr r1, [r4, #4]
	rsb r0, r0, #0x36
	ldrb r1, [r1, #0x51]
	mov r2, #0
	cmp r1, #5
	movgt r1, #5
	cmp r1, #0
	ble _020FDD64
	ldr r12, _020FDD78 ; =0x02116238
	ldr r3, _020FDD7C ; =0xFE00FF00
_020FDD04:
	ldr r4, [r12, #4]
	sub r5, r0, #2
	add r4, r4, r2, lsl #2
	ldr r6, [r4, #0x10]
	add r4, r0, #1
	ldr lr, [r6]
	and r5, r5, #0xff
	and lr, lr, r3
	orr r5, lr, r5
	orr r5, r5, #0xb30000
	str r5, [r6]
	ldr r5, [r12, #4]
	and r4, r4, #0xff
	add r5, r5, r2, lsl #2
	ldr r5, [r5, #0x24]
	add r2, r2, #1
	ldr lr, [r5]
	cmp r2, r1
	and lr, lr, r3
	orr r4, lr, r4
	orr r4, r4, #0xd20000
	str r4, [r5]
	add r0, r0, #0x1c
	blt _020FDD04
_020FDD64:
	ldr r0, _020FDD78 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDD78: .word ov17_02116238
_020FDD7C: .word 0xFE00FF00
	arm_func_end FUN_ov17_020fdcc8

	arm_func_start FUN_ov17_020fdd80
FUN_ov17_020fdd80: ; 0x020FDD80
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r0, _020FDE34 ; =0x02116238
	ldr r5, _020FDE34 ; =0x02116238
	ldrh r1, [r0, #2]
	cmp r1, #4
	subhi r1, r1, #4
	movls r1, #0
	strh r1, [r0, #2]
	ldrh r0, [r5, #2]
	mov r1, #0x1c
	bl FX_ModS32
	mov r6, r0
	cmp r6, #0x18
	bne _020FDDCC
	bl FUN_ov17_020fda30
	ldmfd sp!, {r4, r5, r6, pc}
_020FDDCC:
	ble _020FDDE8
	ldrh r1, [r5, #2]
	rsb r0, r6, #0x1c
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	mov r6, #0
_020FDDE8:
	bl FUN_ov17_020fdcc8
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020FDE34 ; =0x02116238
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_020fdf20
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_020FDE34: .word ov17_02116238
	arm_func_end FUN_ov17_020fdd80

	arm_func_start FUN_ov17_020fde38
FUN_ov17_020fde38: ; 0x020FDE38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r5, _020FDEC4 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r5, #2]
	add r0, r0, #4
	strh r0, [r5, #2]
	ldrh r0, [r5, #2]
	bl FX_ModS32
	cmp r0, #4
	blt _020FDE74
	bl FUN_ov17_020fdcc8
	ldmfd sp!, {r3, r4, r5, pc}
_020FDE74:
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	bl FUN_ov17_020fda30
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_020fdf20
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_020FDEC4: .word ov17_02116238
	arm_func_end FUN_ov17_020fde38

	arm_func_start FUN_ov17_020fdec8
FUN_ov17_020fdec8: ; 0x020FDEC8
	stmfd sp!, {r4, lr}
	ldr r4, _020FDF14 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FX_ModS32
	ldr r1, _020FDF18 ; =0x01FF0000
	sub r2, r0, #0x32
	ldr r0, _020FDF1C ; =0x04000010
	and r1, r1, r2, lsl #16
	str r1, [r0]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, pc}
_020FDF14: .word ov17_02116238
_020FDF18: .word 0x01FF0000
_020FDF1C: .word 0x04000010
	arm_func_end FUN_ov17_020fdec8

	arm_func_start FUN_ov17_020fdf20
FUN_ov17_020fdf20: ; 0x020FDF20
	stmfd sp!, {r3, lr}
	ldr r0, _020FDF5C ; =0x02116238
	ldr r1, _020FDF60 ; =0x021121C8
	ldrb r2, [r0]
	ldr r3, _020FDF64 ; =0x021121CA
	mov r0, #2
	mov r12, r2, lsl #3
	cmp r2, #4
	ldr r2, _020FDF68 ; =0x021121CC
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	movhs r0, #3
	bl FUN_ov17_020f50cc
	ldmfd sp!, {r3, pc}
_020FDF5C: .word ov17_02116238
_020FDF60: .word ov17_021121C8
_020FDF64: .word ov17_021121CA
_020FDF68: .word ov17_021121CC
	arm_func_end FUN_ov17_020fdf20

	arm_func_start FUN_ov17_020fdf6c
FUN_ov17_020fdf6c: ; 0x020FDF6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE0A8 ; =0x02116238
	mov r6, #0
	ldrb r2, [r5]
	mov r4, #1
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020FE064
_020FDF8C: ; jump table
	b _020FDFA0 ; case 0
	b _020FE000 ; case 1
	b _020FE000 ; case 2
	b _020FE02C ; case 3
	b _020FE044 ; case 4
_020FDFA0:
	cmp r0, #1
	bne _020FDFE4
	ldrh r0, [r5, #2]
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r5]
	beq _020FE064
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r6
	ldr r1, _020FE0AC ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r5, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDFE4:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x51]
	cmp r0, #1
	addhi r0, r2, #1
	strhib r0, [r5]
	movls r4, r6
	b _020FE064
_020FE000:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	ldr r1, [r5, #4]
	add r0, r2, #1
	ldrb r1, [r1, #0x51]
	cmp r1, r0
	strgtb r0, [r5]
	movle r4, r6
	b _020FE064
_020FE02C:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	bl FUN_ov17_020fe11c
	ldmfd sp!, {r4, r5, r6, pc}
_020FE044:
	cmp r0, #1
	moveq r4, r6
	beq _020FE064
	strh r6, [r5, #2]
	strb r6, [r5]
	bl FUN_ov17_020fda30
	mov r0, r6
	bl FUN_ov17_02106640
_020FE064:
	cmp r4, #0
	bne _020FE098
	ldr r4, _020FE0A8 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, r5, r6, pc}
_020FE098:
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r4, r5, r6, pc}
_020FE0A8: .word ov17_02116238
_020FE0AC: .word FUN_ov17_020fdd80
	arm_func_end FUN_ov17_020fdf6c

	arm_func_start FUN_ov17_020fe0b0
FUN_ov17_020fe0b0: ; 0x020FE0B0
	stmfd sp!, {r4, lr}
	ldr r4, _020FE114 ; =0x02116238
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FE0EC
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE0EC:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FE118 ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE114: .word ov17_02116238
_020FE118: .word FUN_ov17_020fdd80
	arm_func_end FUN_ov17_020fe0b0

	arm_func_start FUN_ov17_020fe11c
FUN_ov17_020fe11c: ; 0x020FE11C
	stmfd sp!, {r4, lr}
	ldr r4, _020FE194 ; =0x02116238
	ldr r2, [r4, #4]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	beq _020FE144
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bhi _020FE16C
_020FE144:
	ldrb r0, [r2, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, _020FE194 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE16C:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FE198 ; =FUN_ov17_020fde38
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE194: .word ov17_02116238
_020FE198: .word FUN_ov17_020fde38
	arm_func_end FUN_ov17_020fe11c

	arm_func_start FUN_ov17_020fe19c
FUN_ov17_020fe19c: ; 0x020FE19C
	stmfd sp!, {r3, lr}
	ldr r1, _020FE1C0 ; =0x02112194
	ldr r0, _020FE1C4 ; =0x02116238
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	mov r2, r1
	bl FUN_ov17_02106444
	ldmfd sp!, {r3, pc}
_020FE1C0: .word ov17_02112194
_020FE1C4: .word ov17_02116238
	arm_func_end FUN_ov17_020fe19c

	arm_func_start FUN_ov17_020fe1c8
FUN_ov17_020fe1c8: ; 0x020FE1C8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FE1F0 ; =FUN_ov17_020fe1f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE1F0: .word FUN_ov17_020fe1f4
	arm_func_end FUN_ov17_020fe1c8

	arm_func_start FUN_ov17_020fe1f4
FUN_ov17_020fe1f4: ; 0x020FE1F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	bl FUN_ov17_0210664c
	ldr r0, _020FE218 ; =FUN_ov17_020fd248
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE218: .word FUN_ov17_020fd248
	arm_func_end FUN_ov17_020fe1f4

	arm_func_start FUN_ov17_020fe21c
FUN_ov17_020fe21c: ; 0x020FE21C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r1, _020FE330 ; =0x02112224
	mov r0, #0x2c
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	mov r1, #4
	strb r3, [sp]
	strb r2, [sp, #1]
	bl DWCi_HEAPlAllocEx
	ldr r4, _020FE334 ; =0x02116240
	add r1, sp, #4
	str r0, [r4]
	add r0, sp, #8
	bl DWCi_GetParam2_
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020FE288
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov17_02107318
	ldr r0, [r4]
	mov r1, #0x20
	add r0, r0, #8
	bl FUN_ov17_0210ee94
	ldr r1, [r4]
	strb r0, [r1, #0x29]
_020FE288:
	bl FUN_ov17_020fe33c
	ldr r0, [sp, #8]
	add r0, r0, #9
	bl FUN_ov17_020f5324
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FE2B0
	mov r0, #0x35
	sub r1, r0, #0x36
	b _020FE2C0
_020FE2B0:
	ldr r2, [sp, #8]
	add r0, sp, #0
	ldrb r0, [r0, r2]
	mvn r1, #0
_020FE2C0:
	mov r2, #0
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r4, _020FE334 ; =0x02116240
	mov r1, #0x3e
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl FUN_ov17_020fe9b8
	bl FUN_ov17_020fe8c4
	ldr r0, _020FE338 ; =FUN_ov17_020fe3f8
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FE330: .word ov17_02112224
_020FE334: .word ov17_02116240
_020FE338: .word FUN_ov17_020fe3f8
	arm_func_end FUN_ov17_020fe21c

	arm_func_start FUN_ov17_020fe33c
FUN_ov17_020fe33c: ; 0x020FE33C
	stmfd sp!, {r3, lr}
	ldr r0, _020FE3D0 ; =0x021130C8
	ldr r1, _020FE3D4 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3D8 ; =0x021130DC
	ldr r1, _020FE3DC ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3E0 ; =0x021130F4
	ldr r1, _020FE3E4 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FE3E8 ; =0x0211310C
	ldr r1, _020FE3EC ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FE3F0 ; =0x04001008
	ldr r1, _020FE3F4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FE3D0: .word ov17_021130C8
_020FE3D4: .word GX_LoadOBJPltt
_020FE3D8: .word ov17_021130DC
_020FE3DC: .word GX_LoadBG2Char
_020FE3E0: .word ov17_021130F4
_020FE3E4: .word GX_LoadBGPltt
_020FE3E8: .word ov17_0211310C
_020FE3EC: .word GX_LoadBG2Scr
_020FE3F0: .word 0x04001008
_020FE3F4: .word 0x0400000A
	arm_func_end FUN_ov17_020fe33c

	arm_func_start FUN_ov17_020fe3f8
FUN_ov17_020fe3f8: ; 0x020FE3F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FE45C ; =FUN_ov17_020fe460
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FE45C: .word FUN_ov17_020fe460
	arm_func_end FUN_ov17_020fe3f8

	arm_func_start FUN_ov17_020fe460
FUN_ov17_020fe460: ; 0x020FE460
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f5588
	mov r0, #0x14
	bl FUN_ov17_02107c40
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	bne _020FE4B0
	mov r0, r4
	bl FUN_ov17_020f5918
_020FE4B0:
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE4CC
	mov r0, #0
	bl FUN_ov17_020f592c
_020FE4CC:
	ldr r0, _020FE4DC ; =FUN_ov17_020fe4e0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FE4D8: .word ov17_02116240
_020FE4DC: .word FUN_ov17_020fe4e0
	arm_func_end FUN_ov17_020fe460

	arm_func_start FUN_ov17_020fe4e0
FUN_ov17_020fe4e0: ; 0x020FE4E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5904
	cmp r0, #0xff
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FE4FC ; =FUN_ov17_020fe500
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE4FC: .word FUN_ov17_020fe500
	arm_func_end FUN_ov17_020fe4e0

	arm_func_start FUN_ov17_020fe500
FUN_ov17_020fe500: ; 0x020FE500
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fe510
	bl FUN_ov17_020fe6a0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fe500

	arm_func_start FUN_ov17_020fe510
FUN_ov17_020fe510: ; 0x020FE510
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE694 ; =0x02116240
	bl FUN_ov17_020f5904
	mov r4, r0
	cmp r4, #0x83
	bgt _020FE62C
	cmp r4, #0x80
	blt _020FE548
	beq _020FE554
	cmp r4, #0x82
	beq _020FE5AC
	cmp r4, #0x83
	beq _020FE5CC
	b _020FE62C
_020FE548:
	cmp r4, #0
	beq _020FE688
	b _020FE62C
_020FE554:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _020FE688
	mov r0, #3
	bl FUN_ov17_02107c40
	ldr r2, [r5]
	mov r0, #0
	ldrb r1, [r2, #0x29]
	sub r1, r1, #1
	strb r1, [r2, #0x29]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r0, [r1, #8]
	ldr r1, [r5]
	ldrb r1, [r1, #0x29]
	cmp r1, #0
	bne _020FE5A4
	bl FUN_ov17_020f5918
_020FE5A4:
	mov r0, #1
	b _020FE684
_020FE5AC:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, [r5]
	mov r2, #0
	ldr r0, _020FE698 ; =FUN_ov17_020fe6a4
	strb r2, [r1, #0x2a]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FE5CC:
	bl FUN_ov17_020feb24
	cmp r0, #0
	beq _020FE5F0
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	mov r1, #1
	strb r1, [r0, #0x2a]
	b _020FE604
_020FE5F0:
	ldr r1, [r5]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x2a]
	bl FUN_ov17_02107c40
_020FE604:
	ldr r0, [r5]
	ldr r1, _020FE69C ; =0xC1FFFCFF
	ldr r3, [r0, #4]
	ldr r0, _020FE698 ; =FUN_ov17_020fe6a4
	ldr r2, [r3]
	and r1, r2, r1
	orr r1, r1, #0x200
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FE62C:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	beq _020FE688
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_02107c40
	ldr r2, [r5]
	mov r0, r6
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r4, [r1, #8]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r1, #1
	strb r1, [r2, #0x29]
	bl FUN_ov17_020f5918
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE688
	mov r0, #0
_020FE684:
	bl FUN_ov17_020f592c
_020FE688:
	bl FUN_ov17_020fe8c4
	bl FUN_ov17_020fe9b8
	ldmfd sp!, {r4, r5, r6, pc}
_020FE694: .word ov17_02116240
_020FE698: .word FUN_ov17_020fe6a4
_020FE69C: .word 0xC1FFFCFF
	arm_func_end FUN_ov17_020fe510

	arm_func_start FUN_ov17_020fe6a0
FUN_ov17_020fe6a0: ; 0x020FE6A0
	bx lr
	arm_func_end FUN_ov17_020fe6a0

	arm_func_start FUN_ov17_020fe6a4
FUN_ov17_020fe6a4: ; 0x020FE6A4
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FE6BC ; =FUN_ov17_020fe6c0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE6BC: .word FUN_ov17_020fe6c0
	arm_func_end FUN_ov17_020fe6a4

	arm_func_start FUN_ov17_020fe6c0
FUN_ov17_020fe6c0: ; 0x020FE6C0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f58d4
	mov r0, #0x15
	bl FUN_ov17_02107c40
	ldr r0, _020FE6EC ; =FUN_ov17_020fe6f0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FE6EC: .word FUN_ov17_020fe6f0
	arm_func_end FUN_ov17_020fe6c0

	arm_func_start FUN_ov17_020fe6f0
FUN_ov17_020fe6f0: ; 0x020FE6F0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r0, _020FE7B0 ; =0x02112240
	add r5, sp, #8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	bl FUN_ov17_020f5940
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FE7B4 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	bne _020FE744
	ldr r0, _020FE7B8 ; =FUN_ov17_020fe7c4
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE744:
	cmp r0, #2
	mov r4, #0
	bne _020FE778
	mov r2, #1
	sub r3, r2, #2
	mov r0, #6
	mov r1, #3
	str r4, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FE7BC ; =FUN_ov17_020fecac
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE778:
	add r1, sp, #4
	mov r0, r4
	bl DWCi_GetParam2_
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r2, #1
	ldr r0, [r5, r0, lsl #2]
	sub r3, r2, #2
	mov r1, #2
	bl FUN_ov17_02108e9c
	ldr r0, _020FE7C0 ; =FUN_ov17_020fea20
	bl DWCi_ChangeScene
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE7B0: .word ov17_02112240
_020FE7B4: .word ov17_02116240
_020FE7B8: .word FUN_ov17_020fe7c4
_020FE7BC: .word FUN_ov17_020fecac
_020FE7C0: .word FUN_ov17_020fea20
	arm_func_end FUN_ov17_020fe6f0

	arm_func_start FUN_ov17_020fe7c4
FUN_ov17_020fe7c4: ; 0x020FE7C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	bl DWCi_COMMENTlDelete
	ldr r4, _020FE8A8 ; =0x02116240
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	mov r6, #0
	mov r0, r6
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FE8AC ; =0x02113120
	ldr r1, _020FE8B0 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r6
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _020FE84C
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r1, [sp, #4]
	mov r0, r6
	bl DWCi_SetParam2_
	ldr r0, _020FE8B4 ; =FUN_ov17_020fff90
	b _020FE894
_020FE84C:
	ldr r0, [r4]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	mov r0, r6
	bne _020FE87C
	mov r1, r5
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r6
	bl DWCi_SetParam2_
	ldr r0, _020FE8B8 ; =FUN_ov17_020fcd68
	b _020FE894
_020FE87C:
	mov r1, r6
	bl DWCi_SetParam_
	mov r0, r6
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _020FE8BC ; =FUN_ov17_021054a0
_020FE894:
	bl DWCi_ChangeScene
	ldr r0, _020FE8C0 ; =0x02116240
	bl DWCi_HEAPlFree_
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020FE8A8: .word ov17_02116240
_020FE8AC: .word ov17_02113120
_020FE8B0: .word GX_LoadOBJPltt
_020FE8B4: .word FUN_ov17_020fff90
_020FE8B8: .word FUN_ov17_020fcd68
_020FE8BC: .word FUN_ov17_021054a0
_020FE8C0: .word ov17_02116240
	arm_func_end FUN_ov17_020fe7c4

	arm_func_start FUN_ov17_020fe8c4
FUN_ov17_020fe8c4: ; 0x020FE8C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r0, _020FE9AC ; =0x02116240
	mov r10, #0
	ldr r0, [r0]
	add r5, sp, #0x14
	ldr r0, [r0]
	mov r1, r10
	strh r10, [r5, #2]
	mov r4, #0x20
	strh r10, [r5, #4]
	mov r3, #0xe
	strh r10, [r5, #6]
	mov r2, #0x10
	strh r10, [r5]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl FUN_ov17_0210dba8
	ldr r7, _020FE9B0 ; =0x0000E01D
	ldr r6, _020FE9B4 ; =0x0211222E
	mov r9, r10
	strh r10, [sp, #0x12]
	mov r8, #0x31
	mov r5, #2
	mov r4, #0x480
	add r11, sp, #0x10
_020FE930:
	ldr r0, _020FE9AC ; =0x02116240
	cmp r10, #0x10
	ldr r0, [r0]
	moveq r9, #0
	add r1, r0, r10
	ldrb r1, [r1, #8]
	streqh r8, [sp, #0x16]
	ldrb r3, [r6, r9]
	cmp r1, #0x20
	streqh r7, [sp, #0x10]
	strneh r1, [sp, #0x10]
	ldrh r1, [sp, #0x1a]
	strh r3, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	str r11, [sp, #0xc]
	ldrh r1, [sp, #0x14]
	ldrh r3, [sp, #0x18]
	ldr r0, [r0]
	bl DWCi_FNTlDrawRect
	add r10, r10, #1
	cmp r10, #0x20
	add r9, r9, #1
	blt _020FE930
	ldr r0, _020FE9AC ; =0x02116240
	ldr r0, [r0]
	ldr r0, [r0]
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FE9AC: .word ov17_02116240
_020FE9B0: .word 0x0000E01D
_020FE9B4: .word ov17_0211222E
	arm_func_end FUN_ov17_020fe8c4

	arm_func_start FUN_ov17_020fe9b8
FUN_ov17_020fe9b8: ; 0x020FE9B8
	stmfd sp!, {r3, lr}
	ldr r0, _020FEA10 ; =0x02116240
	ldr r1, [r0]
	ldrb r0, [r1, #0x29]
	ldr r12, [r1, #4]
	ldr r1, _020FEA14 ; =0x02112228
	cmp r0, #0x20
	and r2, r0, #0xf
	mov lr, r0, asr #4
	movhs lr, #1
	ldr r0, _020FEA18 ; =0x0211222E
	movhs r2, #0xf
	ldrb r3, [r0, r2]
	ldr r2, [r12]
	ldr r0, _020FEA1C ; =0xFE00FF00
	ldrb r1, [r1, lr]
	and r0, r2, r0
	mov r2, r3, lsl #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [r12]
	ldmfd sp!, {r3, pc}
_020FEA10: .word ov17_02116240
_020FEA14: .word ov17_02112228
_020FEA18: .word ov17_0211222E
_020FEA1C: .word 0xFE00FF00
	arm_func_end FUN_ov17_020fe9b8

	arm_func_start FUN_ov17_020fea20
FUN_ov17_020fea20: ; 0x020FEA20
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	ldr r1, _020FEA70 ; =0x02116240
	ldr r2, [r1]
	strb r0, [r2, #0x2a]
	ldr r0, [r1]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	beq _020FEA50
	cmp r0, #1
	beq _020FEA58
	ldmfd sp!, {r3, pc}
_020FEA50:
	mov r0, #7
	b _020FEA5C
_020FEA58:
	mov r0, #0xe
_020FEA5C:
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FEA74 ; =FUN_ov17_020fea78
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FEA70: .word ov17_02116240
_020FEA74: .word FUN_ov17_020fea78
	arm_func_end FUN_ov17_020fea20

	arm_func_start FUN_ov17_020fea78
FUN_ov17_020fea78: ; 0x020FEA78
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r0, _020FEB10 ; =0x021130C0
	add r5, sp, #4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	bl FUN_ov17_02109210
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldr r4, _020FEB14 ; =0x02116240
	ldr r1, [r4]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	bne _020FEAE0
	ldr r3, [r1, #4]
	ldr r1, _020FEB18 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FEB1C ; =FUN_ov17_020fe460
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEAE0:
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FEB20 ; =FUN_ov17_020fe7c4
	bl DWCi_ChangeScene
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEB10: .word ov17_021130C0
_020FEB14: .word ov17_02116240
_020FEB18: .word 0xC1FFFCFF
_020FEB1C: .word FUN_ov17_020fe460
_020FEB20: .word FUN_ov17_020fe7c4
	arm_func_end FUN_ov17_020fea78

	arm_func_start FUN_ov17_020feb24
FUN_ov17_020feb24: ; 0x020FEB24
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #1
	bne _020FEB54
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl DWCi_COMMENTlDispEx
_020FEB54:
	add r0, sp, #4
	add r1, sp, #0
	bl DWCi_GetParam2_
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020FEB8C
	ldr r0, _020FECA8 ; =0x02116240
	add sp, sp, #8
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020FEB8C:
	ldr r0, [sp]
	cmp r0, #1
	ldreq r0, _020FECA8 ; =0x02116240
	ldreq r0, [r0]
	ldreqb r0, [r0, #8]
	cmpeq r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FECA8 ; =0x02116240
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_ov17_0210ee94
	cmp r0, #0x10
	bgt _020FEC04
	cmp r0, #0xa
	blt _020FEBE8
	beq _020FEC2C
	cmp r0, #0xd
	cmpne r0, #0x10
	beq _020FEC20
	b _020FEC9C
_020FEBE8:
	cmp r0, #0
	bgt _020FEBF8
	beq _020FEC20
	b _020FEC9C
_020FEBF8:
	cmp r0, #5
	beq _020FEC20
	b _020FEC9C
_020FEC04:
	cmp r0, #0x1a
	bgt _020FEC14
	beq _020FEC2C
	b _020FEC9C
_020FEC14:
	cmp r0, #0x20
	beq _020FEC2C
	b _020FEC9C
_020FEC20:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC2C:
	cmp r0, #0
	mov r2, #0
	ble _020FEC90
	ldr r1, _020FECA8 ; =0x02116240
	ldr r3, [r1]
_020FEC40:
	add r1, r3, r2
	ldrb r1, [r1, #8]
	cmp r1, #0x30
	blo _020FEC58
	cmp r1, #0x39
	bls _020FEC84
_020FEC58:
	cmp r1, #0x41
	blo _020FEC68
	cmp r1, #0x46
	bls _020FEC84
_020FEC68:
	cmp r1, #0x61
	blo _020FEC78
	cmp r1, #0x66
	bls _020FEC84
_020FEC78:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020FEC84:
	add r2, r2, #1
	cmp r2, r0
	blt _020FEC40
_020FEC90:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC9C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020FECA8: .word ov17_02116240
	arm_func_end FUN_ov17_020feb24

	arm_func_start FUN_ov17_020fecac
FUN_ov17_020fecac: ; 0x020FECAC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FECD4 ; =FUN_ov17_020fecd8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FECD4: .word FUN_ov17_020fecd8
	arm_func_end FUN_ov17_020fecac

	arm_func_start FUN_ov17_020fecd8
FUN_ov17_020fecd8: ; 0x020FECD8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FED10 ; =0x02116240
	ldr r1, _020FED14 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FED18 ; =FUN_ov17_020fe460
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FED10: .word ov17_02116240
_020FED14: .word 0xC1FFFCFF
_020FED18: .word FUN_ov17_020fe460
	arm_func_end FUN_ov17_020fecd8

	arm_func_start FUN_ov17_020fed1c
FUN_ov17_020fed1c: ; 0x020FED1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r5, _020FEE70 ; =0x02113138
	ldr r4, _020FEE74 ; =0x0211225C
	ldmia r5!, {r0, r1, r2, r3}
	add r12, sp, #0xc
	ldr r6, [r5]
	mov r5, r12
	stmia r12!, {r0, r1, r2, r3}
	str r6, [r12]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r3, [r4, #3]
	ldrb r2, [r4, #4]
	mov r0, #0x18
	mov r1, #4
	strb lr, [sp, #4]
	strb r12, [sp, #5]
	strb r6, [sp, #6]
	strb r3, [sp, #7]
	strb r2, [sp, #8]
	bl DWCi_HEAPlAllocEx
	ldr r6, _020FEE78 ; =0x02116244
	mov r4, #0
	str r0, [r6]
	add r0, sp, #0
	mov r1, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r6]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r7, [r6]
	mov r5, #3
	ldr r1, _020FEE7C ; =0x02113160
	add r0, r7, #8
	mov r2, r5
	bl memcmp
	cmp r0, #0
	strneb r5, [r7, #0x14]
	bne _020FEDE0
	mov r1, r4
	add r0, r7, #8
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, [r6]
	strb r4, [r0, #0x14]
_020FEDE0:
	bl FUN_ov17_020fee84
	ldr r0, [sp]
	add r0, r0, #0xb
	bl FUN_ov17_020f5324
	mov r5, #0
	ldr r1, [sp]
	add r0, sp, #4
	ldrb r0, [r0, r1]
	mov r2, r5
	mvn r1, #0
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, r5
	mov r1, r5
	bl DWCi_FNTlFormBgEx
	ldr r4, _020FEE78 ; =0x02116244
	mov r1, #0x3f
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl FUN_ov17_020ff5f4
	bl FUN_ov17_020ff534
	ldr r0, _020FEE80 ; =FUN_ov17_020fef40
	bl DWCi_ChangeScene
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FEE70: .word ov17_02113138
_020FEE74: .word ov17_0211225C
_020FEE78: .word ov17_02116244
_020FEE7C: .word ov17_02113160
_020FEE80: .word FUN_ov17_020fef40
	arm_func_end FUN_ov17_020fed1c

	arm_func_start FUN_ov17_020fee84
FUN_ov17_020fee84: ; 0x020FEE84
	stmfd sp!, {r3, lr}
	ldr r0, _020FEF18 ; =0x02113164
	ldr r1, _020FEF1C ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF20 ; =0x02113178
	ldr r1, _020FEF24 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF28 ; =0x02113190
	ldr r1, _020FEF2C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _020FEF30 ; =0x021131A8
	ldr r1, _020FEF34 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FEF38 ; =0x04001008
	ldr r1, _020FEF3C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FEF18: .word ov17_02113164
_020FEF1C: .word GX_LoadOBJPltt
_020FEF20: .word ov17_02113178
_020FEF24: .word GX_LoadBG2Char
_020FEF28: .word ov17_02113190
_020FEF2C: .word GX_LoadBGPltt
_020FEF30: .word ov17_021131A8
_020FEF34: .word GX_LoadBG2Scr
_020FEF38: .word 0x04001008
_020FEF3C: .word 0x0400000A
	arm_func_end FUN_ov17_020fee84

	arm_func_start FUN_ov17_020fef40
FUN_ov17_020fef40: ; 0x020FEF40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FEFA4 ; =FUN_ov17_020fefa8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FEFA4: .word FUN_ov17_020fefa8
	arm_func_end FUN_ov17_020fef40

	arm_func_start FUN_ov17_020fefa8
FUN_ov17_020fefa8: ; 0x020FEFA8
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f7040
	mov r0, #0x14
	bl FUN_ov17_02107c40
	ldr r0, _020FF02C ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _020FF000
	mov r0, r4
	bl FUN_ov17_020f73a4
	mov r0, r4
	b _020FF01C
_020FF000:
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF018
	mov r0, r4
	bl FUN_ov17_020f73b8
_020FF018:
	mov r0, #0
_020FF01C:
	bl FUN_ov17_020f73cc
	ldr r0, _020FF030 ; =FUN_ov17_020ff034
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_020FF02C: .word ov17_02116244
_020FF030: .word FUN_ov17_020ff034
	arm_func_end FUN_ov17_020fefa8

	arm_func_start FUN_ov17_020ff034
FUN_ov17_020ff034: ; 0x020FF034
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f7390
	cmp r0, #0x1f
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FF050 ; =FUN_ov17_020ff054
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF050: .word FUN_ov17_020ff054
	arm_func_end FUN_ov17_020ff034

	arm_func_start FUN_ov17_020ff054
FUN_ov17_020ff054: ; 0x020FF054
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ff064
	bl FUN_ov17_020ff3ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ff054

	arm_func_start FUN_ov17_020ff064
FUN_ov17_020ff064: ; 0x020FF064
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r5, #0
	ldr r7, _020FF318 ; =0x02116244
	bl FUN_ov17_020f7390
	mov r6, r0
	cmp r6, #0
	bgt _020FF08C
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	b _020FF220
_020FF08C:
	sub r0, r6, #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FF220
_020FF09C: ; jump table
	b _020FF0B0 ; case 0
	b _020FF14C ; case 1
	b _020FF194 ; case 2
	b _020FF1B0 ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
_020FF0B0:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _020FF0CC
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _020FF30C
_020FF0CC:
	mov r0, #3
	bl FUN_ov17_02107c40
	ldr r2, [r7]
	ldrb r1, [r2, #0x14]
	add r0, r1, r1, lsl #1
	add r0, r0, #2
	add r0, r2, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	subeq r0, r1, #1
	streqb r0, [r2, #0x14]
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	mov r1, r5
	add r0, r0, r0, lsl #1
	add r0, r2, r0
	mov r2, #3
	bl MI_CpuFill8
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldreqb r0, [r1, #0xa]
	cmpeq r0, #0
	bne _020FF138
	mov r0, r5
	bl FUN_ov17_020f73a4
_020FF138:
	mov r0, #1
	bl FUN_ov17_020f73b8
	mov r0, #0
_020FF144:
	bl FUN_ov17_020f73cc
	b _020FF30C
_020FF14C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	bhs _020FF30C
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	add r0, r1, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _020FF30C
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r2, [r7]
	mov r0, r5
	ldrb r1, [r2, #0x14]
	add r1, r1, #1
	strb r1, [r2, #0x14]
	b _020FF144
_020FF194:
	ldr r1, [r7]
	mov r0, #7
	strb r5, [r1, #0x15]
	bl FUN_ov17_02107c40
	ldr r0, _020FF31C ; =FUN_ov17_020ff3b0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF1B0:
	bl FUN_ov17_020ff7c8
	cmp r0, #0
	beq _020FF1D0
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, [r7]
	strb r4, [r0, #0x15]
	b _020FF1E4
_020FF1D0:
	ldr r1, [r7]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x15]
	bl FUN_ov17_02107c40
_020FF1E4:
	ldr r0, [r7]
	mov r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r7]
	ldr r0, _020FF320 ; =0xC1FFFCFF
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x200
	str r0, [r2]
	bl FUN_ov17_020ff5f4
	bl FUN_ov17_020ff750
	ldr r0, _020FF31C ; =FUN_ov17_020ff3b0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF220:
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF240
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	bne _020FF30C
_020FF240:
	mov r0, #1
	bl FUN_ov17_02107c40
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r12, r1, #8
	add r5, r0, r0, lsl #1
	add r3, r5, #2
	ldrb r2, [r12, r3]
	cmp r2, #0
	streqb r6, [r12, r3]
	beq _020FF2BC
	add r1, r5, #1
	ldrb r0, [r12, r1]
	cmp r0, #0
	bne _020FF298
	strb r2, [r12, r1]
	mov r0, #0x1a
	strb r6, [r12, r3]
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF2BC
	b _020FF2A8
_020FF298:
	strb r0, [r12, r5]
	ldrb r0, [r12, r3]
	strb r0, [r12, r1]
	strb r6, [r12, r3]
_020FF2A8:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r1, #0x14]
_020FF2BC:
	mov r0, r4
	bl FUN_ov17_020f73a4
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bhs _020FF2DC
	mov r0, r4
	b _020FF2E0
_020FF2DC:
	mov r0, #0
_020FF2E0:
	bl FUN_ov17_020f73cc
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF30C
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF30C
	mov r0, #0
	bl FUN_ov17_020f73b8
_020FF30C:
	bl FUN_ov17_020ff534
	bl FUN_ov17_020ff5f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF318: .word ov17_02116244
_020FF31C: .word FUN_ov17_020ff3b0
_020FF320: .word 0xC1FFFCFF
	arm_func_end FUN_ov17_020ff064

	arm_func_start FUN_ov17_020ff324
FUN_ov17_020ff324: ; 0x020FF324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020FF3A8 ; =0x02116244
	mov r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	add r1, r0, r0, lsl #1
	ldrb r0, [r2, r1]
	cmp r0, #0
	cmpne r0, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, sp, #0
	add r0, r2, r1
	mov r1, r5
	mov r2, #3
	bl MI_CpuCopy8
	mov r2, #0
	strb r2, [sp, #3]
	mov r0, #0x20
_020FF374:
	ldrb r1, [r5, r2]
	cmp r1, #0
	bne _020FF390
	strb r0, [r5, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020FF374
_020FF390:
	add r0, sp, #0
	bl atoi
	cmp r0, r4
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020FF3A8: .word ov17_02116244
	arm_func_end FUN_ov17_020ff324

	arm_func_start FUN_ov17_020ff3ac
FUN_ov17_020ff3ac: ; 0x020FF3AC
	bx lr
	arm_func_end FUN_ov17_020ff3ac

	arm_func_start FUN_ov17_020ff3b0
FUN_ov17_020ff3b0: ; 0x020FF3B0
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FF3C8 ; =FUN_ov17_020ff3cc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF3C8: .word FUN_ov17_020ff3cc
	arm_func_end FUN_ov17_020ff3b0

	arm_func_start FUN_ov17_020ff3cc
FUN_ov17_020ff3cc: ; 0x020FF3CC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f7360
	mov r0, #0x15
	bl FUN_ov17_02107c40
	ldr r0, _020FF3F8 ; =FUN_ov17_020ff3fc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF3F8: .word FUN_ov17_020ff3fc
	arm_func_end FUN_ov17_020ff3cc

	arm_func_start FUN_ov17_020ff3fc
FUN_ov17_020ff3fc: ; 0x020FF3FC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f73e0
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF478 ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _020FF42C
	ldr r0, _020FF47C ; =FUN_ov17_020ff488
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF42C:
	mov r2, #1
	cmp r0, #2
	mov r12, #0
	sub r3, r2, #2
	bne _020FF45C
	mov r0, #6
	mov r1, #3
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FF480 ; =FUN_ov17_020ff908
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF45C:
	mov r0, #0x47
	mov r1, #2
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FF484 ; =FUN_ov17_020ff648
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF478: .word ov17_02116244
_020FF47C: .word FUN_ov17_020ff488
_020FF480: .word FUN_ov17_020ff908
_020FF484: .word FUN_ov17_020ff648
	arm_func_end FUN_ov17_020ff3fc

	arm_func_start FUN_ov17_020ff488
FUN_ov17_020ff488: ; 0x020FF488
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl DWCi_COMMENTlDelete
	ldr r0, _020FF520 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _020FF524 ; =0x021131C0
	ldr r1, _020FF528 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r0, sp, #0
	mov r1, r4
	bl DWCi_GetParam2_
	ldr r4, [sp]
	mov r0, #2
	cmp r4, #3
	addge r4, r4, #1
	mov r1, #1
	strge r4, [sp]
	bl DWCi_SetParam_
	add r1, r4, #3
	mov r0, #0
	bl DWCi_SetParam2_
	ldr r0, _020FF52C ; =FUN_ov17_020fff90
	bl DWCi_ChangeScene
	ldr r0, _020FF530 ; =0x02116244
	bl DWCi_HEAPlFree_
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FF520: .word ov17_02116244
_020FF524: .word ov17_021131C0
_020FF528: .word GX_LoadOBJPltt
_020FF52C: .word FUN_ov17_020fff90
_020FF530: .word ov17_02116244
	arm_func_end FUN_ov17_020ff488

	arm_func_start FUN_ov17_020ff534
FUN_ov17_020ff534: ; 0x020FF534
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldr r5, _020FF5E8 ; =0x02116244
	ldr r0, _020FF5EC ; =0x02112264
	ldr r1, [r5]
	ldrh r7, [r0]
	ldrh r6, [r0, #2]
	mov r3, #0xb
	mov r2, #0x10
	mov r4, #0
	ldr r0, [r1]
	mov r1, r4
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl FUN_ov17_0210dba8
	ldr r9, _020FF5F0 ; =0x02112250
	strh r4, [sp, #0x12]
	mov r8, #2
	mov r7, #0x480
	add r6, sp, #0x10
_020FF58C:
	ldr r12, [r5]
	ldrb r1, [r9, r4]
	add r0, r12, r4
	ldrb r3, [r0, #8]
	ldrh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x16]
	strh r3, [sp, #0x10]
	stmia sp, {r0, r8}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r3, [sp, #0x18]
	ldr r0, [r12]
	strh r1, [sp, #0x14]
	bl DWCi_FNTlDrawRect
	add r4, r4, #1
	cmp r4, #0xc
	blt _020FF58C
	ldr r0, _020FF5E8 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0]
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FF5E8: .word ov17_02116244
_020FF5EC: .word ov17_02112264
_020FF5F0: .word ov17_02112250
	arm_func_end FUN_ov17_020ff534

	arm_func_start FUN_ov17_020ff5f4
FUN_ov17_020ff5f4: ; 0x020FF5F4
	ldr r0, _020FF63C ; =0x02116244
	ldr r2, [r0]
	ldrb r0, [r2, #0x14]
	ldr r3, [r2, #4]
	cmp r0, #3
	movgt r0, #3
	add r1, r0, r0, lsl #1
	ldr r0, _020FF640 ; =0x02112250
	add r1, r1, #2
	ldrb r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _020FF644 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, #0x28
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	bx lr
_020FF63C: .word ov17_02116244
_020FF640: .word ov17_02112250
_020FF644: .word 0xFE00FF00
	arm_func_end FUN_ov17_020ff5f4

	arm_func_start FUN_ov17_020ff648
FUN_ov17_020ff648: ; 0x020FF648
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	ldr r1, _020FF698 ; =0x02116244
	ldr r2, [r1]
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _020FF678
	cmp r0, #1
	beq _020FF680
	ldmfd sp!, {r3, pc}
_020FF678:
	mov r0, #7
	b _020FF684
_020FF680:
	mov r0, #0xe
_020FF684:
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FF69C ; =FUN_ov17_020ff6a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF698: .word ov17_02116244
_020FF69C: .word FUN_ov17_020ff6a0
	arm_func_end FUN_ov17_020ff648

	arm_func_start FUN_ov17_020ff6a0
FUN_ov17_020ff6a0: ; 0x020FF6A0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r12, _020FF73C ; =0x0211314C
	add r4, sp, #4
	ldmia r12!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r12]
	str r0, [r4]
	bl FUN_ov17_02109210
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _020FF740 ; =0x02116244
	ldr r1, [r4]
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _020FF70C
	ldr r3, [r1, #4]
	ldr r1, _020FF744 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FF748 ; =FUN_ov17_020fefa8
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF70C:
	add r0, sp, #0
	mov r1, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FF74C ; =FUN_ov17_020ff488
	bl DWCi_ChangeScene
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF73C: .word ov17_0211314C
_020FF740: .word ov17_02116244
_020FF744: .word 0xC1FFFCFF
_020FF748: .word FUN_ov17_020fefa8
_020FF74C: .word FUN_ov17_020ff488
	arm_func_end FUN_ov17_020ff6a0

	arm_func_start FUN_ov17_020ff750
FUN_ov17_020ff750: ; 0x020FF750
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	ldr r0, _020FF7C4 ; =0x02116244
	mov r1, #0x20
	mov r2, #0x30
	mov r12, r4
_020FF768:
	ldr lr, [r0]
	add r3, r4, r4, lsl #1
	add lr, lr, #8
	mov r5, r12
	add lr, lr, r3
_020FF77C:
	ldrb r3, [lr, r5]
	cmp r3, #0x30
	cmpne r3, #0x20
	beq _020FF794
	cmp r3, #0
	bne _020FF7B0
_020FF794:
	mov r3, r2
	cmp r5, #2
	movne r3, r1
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, #3
	blt _020FF77C
_020FF7B0:
	add r4, r4, #1
	cmp r4, #4
	blt _020FF768
	bl FUN_ov17_020ff534
	ldmfd sp!, {r3, r4, r5, pc}
_020FF7C4: .word ov17_02116244
	arm_func_end FUN_ov17_020ff750

	arm_func_start FUN_ov17_020ff7c8
FUN_ov17_020ff7c8: ; 0x020FF7C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _020FF900 ; =0x02112248
	ldr r0, _020FF904 ; =0x02116244
	ldrb r4, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	mov r5, #0
	ldr r0, [r0]
	strb r3, [sp, #9]
	add r6, sp, #8
	strb r4, [sp, #8]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	mov r12, r5
	add r3, r0, #8
_020FF80C:
	add r2, r12, r12, lsl #1
	ldrb r1, [r3, r2]
	add r4, r3, r2
	cmp r1, #0x20
	beq _020FF84C
	mov lr, r5
_020FF824:
	ldrb r2, [r4, lr]
	ldrb r1, [r6, lr]
	cmp r2, r1
	addhi sp, sp, #0xc
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	blo _020FF84C
	add lr, lr, #1
	cmp lr, #3
	blt _020FF824
_020FF84C:
	add r12, r12, #1
	cmp r12, #4
	blt _020FF80C
	add r4, sp, #0
	add r0, r0, #8
	mov r1, r4
	bl FUN_ov17_02107aac
	mov r6, #0
	add r0, sp, #4
	mov r1, r6
	bl DWCi_GetParam2_
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FF8E4
	mov r1, #1
	mov r12, r6
	mov r2, r1
_020FF890:
	ldrb r3, [r4, r12]
	mov lr, r5
_020FF898:
	cmp r6, #0
	rsb r0, lr, #7
	beq _020FF8B8
	tst r3, r2, lsl r0
	beq _020FF8C0
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8B8:
	tst r3, r1, lsl r0
	moveq r6, r1
_020FF8C0:
	add lr, lr, #1
	cmp lr, #8
	blt _020FF898
	add r12, r12, #1
	cmp r12, #4
	blt _020FF890
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8E4:
	mov r0, r4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	movne r6, #1
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF900: .word ov17_02112248
_020FF904: .word ov17_02116244
	arm_func_end FUN_ov17_020ff7c8

	arm_func_start FUN_ov17_020ff908
FUN_ov17_020ff908: ; 0x020FF908
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FF930 ; =FUN_ov17_020ff934
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF930: .word FUN_ov17_020ff934
	arm_func_end FUN_ov17_020ff908

	arm_func_start FUN_ov17_020ff934
FUN_ov17_020ff934: ; 0x020FF934
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF96C ; =0x02116244
	ldr r1, _020FF970 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FF974 ; =FUN_ov17_020fefa8
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF96C: .word ov17_02116244
_020FF970: .word 0xC1FFFCFF
_020FF974: .word FUN_ov17_020fefa8
	arm_func_end FUN_ov17_020ff934

	arm_func_start FUN_ov17_020ff978
FUN_ov17_020ff978: ; 0x020FF978
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ff994
	bl FUN_ov17_020ffa14
	ldr r0, _020FF990 ; =FUN_ov17_020ffd4c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FF990: .word FUN_ov17_020ffd4c
	arm_func_end FUN_ov17_020ff978

	arm_func_start FUN_ov17_020ff994
FUN_ov17_020ff994: ; 0x020FF994
	stmfd sp!, {r3, lr}
	ldr r0, _020FFA04 ; =0x021131D8
	ldr r1, _020FFA08 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _020FFA0C ; =0x04001008
	ldr r1, _020FFA10 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FFA04: .word ov17_021131D8
_020FFA08: .word GX_LoadBG2Scr
_020FFA0C: .word 0x04001008
_020FFA10: .word 0x0400000A
	arm_func_end FUN_ov17_020ff994

	arm_func_start FUN_ov17_020ffa14
FUN_ov17_020ffa14: ; 0x020FFA14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	add r1, sp, #0x18
	mov r0, r5
	mov r4, #2
	bl DWCi_GetParam2_
	ldr r0, _020FFD20 ; =0x02116248
	ldr r2, _020FFD24 ; =0xFFFFB17D
	ldr r1, [r0]
	cmp r1, r2
	bge _020FFC48
	sub r0, r2, #1
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #2
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	sub r0, r2, #8
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #9
	cmp r1, r0
	movge r5, #0x12
	bge _020FFC48
	sub r0, r2, #0xa
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0xb
	cmp r1, r0
	movge r5, #3
	bge _020FFC48
	sub r0, r2, #0x384
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	ldr r0, _020FFD28 ; =0xFFFFA629
	cmp r1, r0
	bge _020FFC48
	sub r0, r0, #0x3e8
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	ldr r0, _020FFD2C ; =0xFFFF3CB1
	cmp r1, r0
	bge _020FFC48
	sub r2, r0, #3
	cmp r1, r2
	movge r5, #7
	bge _020FFC48
	sub r2, r0, #4
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r0, #0x63
	cmp r1, r2
	bge _020FFC48
	sub r2, r0, #0x64
	cmp r1, r2
	blt _020FFB28
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #7
	b _020FFC48
_020FFB28:
	ldr r3, _020FFD30 ; =0xFFFF3866
	cmp r1, r3
	bge _020FFC48
	sub r2, r3, #1
	cmp r1, r2
	blt _020FFB54
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #8
	b _020FFC48
_020FFB54:
	sub r2, r3, #4
	cmp r1, r2
	movge r5, #9
	bge _020FFC48
	sub r2, r3, #5
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r3, #0x65
	cmp r1, r2
	bge _020FFC48
	sub r2, r3, #0xc9
	cmp r1, r2
	movge r5, #0x14
	bge _020FFC48
	sub r2, r3, #0xcc
	cmp r1, r2
	movge r5, #0x15
	bge _020FFC48
	sub r2, r3, #0xcd
	cmp r1, r2
	movge r5, #4
	bge _020FFC48
	sub r0, r0, #0x7d0
	cmp r1, r0
	bge _020FFC48
	sub r0, r3, #0x388
	cmp r1, r0
	movge r5, #0xa
	bge _020FFC48
	ldr r2, _020FFD34 ; =0xFFFF34DD
	cmp r1, r2
	movge r5, #0x16
	bge _020FFC48
	sub r0, r2, #0x60
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x64
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0xc4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0xc8
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0x128
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x18c
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0x3e4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x510
	cmp r1, r0
	movge r5, r4
_020FFC48:
	bl DWCi_Language
	ldr r1, _020FFD38 ; =0x0211226C
	mov r9, #0
	ldrb r1, [r1, r0]
	mov r0, r9
	bl DWCi_FNTlFormBgEx
	ldr r1, _020FFD3C ; =DWCiMsgCmn
	mov r8, r0
	ldr r0, [r1]
	mov r1, r5
	bl DWCi_MSGlGet
	ldr r3, _020FFD20 ; =0x02116248
	mov r5, #8
	ldr r3, [r3]
	add r6, sp, #0x10
	mov r7, r0
	ldr r2, _020FFD40 ; =0x021131EC
	mov r0, r6
	mov r1, r5
	rsb r3, r3, #0
	bl OS_SNPrintf
	mov r2, r5
	add r5, sp, #0x1c
	mov r1, r6
	mov r0, r5
	bl FUN_ov17_0210eec0
	bl DWCi_Language
	mov r1, r0, lsl #2
	ldr r0, _020FFD44 ; =0x0211227E
	ldrh r6, [r0, r1]
	bl DWCi_Language
	mov r3, r0, lsl #2
	ldr r1, _020FFD48 ; =0x0211227C
	mov r0, #0xa
	ldrh r1, [r1, r3]
	stmia sp, {r0, r5, r9}
	mov r2, r6
	mov r0, r8
	mov r3, r4
	bl FUN_ov17_0210da44
	bl DWCi_CMNlFontFlag
	mov r1, #0x5e
	stmia sp, {r1, r4}
	str r0, [sp, #8]
	mov r0, r8
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r7, [sp, #0xc]
	bl DWCi_FNTlDrawRect
	mov r0, r8
	bl DWCi_FNTlRenewBg
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FFD20: .word ov17_02116248
_020FFD24: .word 0xFFFFB17D
_020FFD28: .word 0xFFFFA629
_020FFD2C: .word 0xFFFF3CB1
_020FFD30: .word 0xFFFF3866
_020FFD34: .word 0xFFFF34DD
_020FFD38: .word ov17_0211226C
_020FFD3C: .word DWCiMsgCmn
_020FFD40: .word ov17_021131EC
_020FFD44: .word ov17_0211227E
_020FFD48: .word ov17_0211227C
	arm_func_end FUN_ov17_020ffa14

	arm_func_start FUN_ov17_020ffd4c
FUN_ov17_020ffd4c: ; 0x020FFD4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FFD84 ; =FUN_ov17_020ffd88
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFD84: .word FUN_ov17_020ffd88
	arm_func_end FUN_ov17_020ffd4c

	arm_func_start FUN_ov17_020ffd88
FUN_ov17_020ffd88: ; 0x020FFD88
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #4
	bl DWCi_CMNlButton
	ldr r0, _020FFDC0 ; =FUN_ov17_020ffdc4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFDC0: .word FUN_ov17_020ffdc4
	arm_func_end FUN_ov17_020ffd88

	arm_func_start FUN_ov17_020ffdc4
FUN_ov17_020ffdc4: ; 0x020FFDC4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _020FFDE4 ; =FUN_ov17_020ffde8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFDE4: .word FUN_ov17_020ffde8
	arm_func_end FUN_ov17_020ffdc4

	arm_func_start FUN_ov17_020ffde8
FUN_ov17_020ffde8: ; 0x020FFDE8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ffdfc
	bl FUN_ov17_020ffe1c
	bl FUN_ov17_020ffe20
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ffde8

	arm_func_start FUN_ov17_020ffdfc
FUN_ov17_020ffdfc: ; 0x020FFDFC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ffdfc

	arm_func_start FUN_ov17_020ffe1c
FUN_ov17_020ffe1c: ; 0x020FFE1C
	bx lr
	arm_func_end FUN_ov17_020ffe1c

	arm_func_start FUN_ov17_020ffe20
FUN_ov17_020ffe20: ; 0x020FFE20
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FFE44 ; =FUN_ov17_020ffe48
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFE44: .word FUN_ov17_020ffe48
	arm_func_end FUN_ov17_020ffe20

	arm_func_start FUN_ov17_020ffe48
FUN_ov17_020ffe48: ; 0x020FFE48
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FFE64 ; =FUN_ov17_020ffe68
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_020FFE64: .word FUN_ov17_020ffe68
	arm_func_end FUN_ov17_020ffe48

	arm_func_start FUN_ov17_020ffe68
FUN_ov17_020ffe68: ; 0x020FFE68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FFEC0 ; =FUN_ov17_020ffec4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_020FFEC0: .word FUN_ov17_020ffec4
	arm_func_end FUN_ov17_020ffe68

	arm_func_start FUN_ov17_020ffec4
FUN_ov17_020ffec4: ; 0x020FFEC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #2
	beq _020FFF50
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _020FFF78 ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF50:
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	mov r0, r4
	bl FUN_ov17_02102254
	ldr r0, _020FFF7C ; =FUN_ov17_020fff90
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF78: .word FUN_ov17_02103924
_020FFF7C: .word FUN_ov17_020fff90
	arm_func_end FUN_ov17_020ffec4

	arm_func_start FUN_ov17_020fff80
FUN_ov17_020fff80: ; 0x020FFF80
	ldr r1, _020FFF8C ; =0x02116248
	str r0, [r1]
	bx lr
_020FFF8C: .word ov17_02116248
	arm_func_end FUN_ov17_020fff80

	arm_func_start FUN_ov17_020fff90
FUN_ov17_020fff90: ; 0x020FFF90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	bl FUN_ov17_02107098
	mov r6, r0
	mov r0, #0x48
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _02100138 ; =0x0211624C
	mov r1, #0xc
	str r0, [r4, #8]
	ldrb r2, [r6, #0xf6]
	strb r2, [r0, #0x43]
	ldr r0, [r4, #8]
	strb r1, [r0, #0x42]
	bl FUN_ov17_0210034c
	bl FUN_ov17_02100150
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FFFF8
	bl DWCi_Language
	ldrb r2, [r6, #0xf4]
	ldr r1, _0210013C ; =0x0211229B
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	add r2, r2, #1
	b _02100004
_020FFFF8:
	mov r0, #0x45
	sub r1, r0, #0x46
	mov r2, #0
_02100004:
	bl DWCi_COMMENTlDispEx
	mov r5, #1
	mov r0, r5
	bl DWCi_CMNlStep
	bl FUN_ov17_020f539c
	ldrh r2, [r4, #4]
	mov r0, #0x37
	ldr r1, _02100140 ; =0xE1FC780F
	mul r3, r2, r0
	smull r0, r2, r1, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #7
	str r2, [sp]
	mov r0, #2
	mov r1, #0x55
	mov r2, #0xf1
	mov r3, #0x41
	bl FUN_ov17_02106508
	mov r7, #0
	mov r1, r5
	mov r0, r7
	bl DWCi_FNTlFormBgEx
	ldr r1, [r4, #8]
	mov r5, r7
	str r0, [r1, #0x14]
	mov r8, #0x29
_02100070:
	mov r0, r5
	mov r1, r8
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #8]
	add r1, r1, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x18]
	cmp r7, #7
	blt _02100070
	ldrb r0, [r6, #0xe7]
	cmp r0, #1
	beq _021000AC
	cmp r0, #2
	beq _021000B8
	b _021000E4
_021000AC:
	mov r0, r5
	mov r1, #0x50
	b _021000C0
_021000B8:
	mov r0, r5
	mov r1, #0x51
_021000C0:
	bl DWCi_CEINlSetExObj
	ldr r1, [r4, #8]
	str r0, [r1, #0x34]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
_021000E4:
	mov r5, #0
	ldr r1, _02100144 ; =FUN_ov17_02101b6c
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl DWCi_TSKlForm
	ldr r2, [r4, #8]
	ldr r1, _02100148 ; =FUN_ov17_02102058
	str r0, [r2, #0x3c]
	mov r0, r5
	mov r2, r5
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1]
	bl FUN_ov17_02100e88
	bl FUN_ov17_02101bec
	ldr r0, _0210014C ; =FUN_ov17_0210038c
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100138: .word ov17_0211624C
_0210013C: .word ov17_0211229B
_02100140: .word 0xE1FC780F
_02100144: .word FUN_ov17_02101b6c
_02100148: .word FUN_ov17_02102058
_0210014C: .word FUN_ov17_0210038c
	arm_func_end FUN_ov17_020fff90

	arm_func_start FUN_ov17_02100150
FUN_ov17_02100150: ; 0x02100150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r3, _02100310 ; =0x02112384
	add r4, sp, #0x2b
	mov r2, #0xb
_02100164:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _02100164
	ldrb r0, [r3]
	ldr r3, _02100314 ; =0x02112354
	add r5, sp, #0x16
	strb r0, [r4]
	mov r2, #0xa
_02100190:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _02100190
	ldrb r0, [r3]
	ldr r4, _02100318 ; =0x0211236C
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_021001BC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _021001BC
	ldr r4, _0210031C ; =0x0400000C
	ldr r0, _02100320 ; =0x021131F0
	ldrh r2, [r4]
	ldr r1, _02100324 ; =GX_LoadOBJPltt
	and r2, r2, #0x43
	orr r2, r2, #0x218
	orr r2, r2, #0xc00
	strh r2, [r4]
	bl DWCi_CMNlLoadResource
	ldr r0, _02100328 ; =0x02113204
	ldr r1, _0210032C ; =GX_LoadBG3Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02100330 ; =0x0211321C
	ldr r1, _02100334 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	add r8, sp, #0x16
	ldr r1, _02100338 ; =GX_LoadBGPltt
	mov r0, r8
	bl DWCi_CMNlLoadResource
	ldr r0, _0210033C ; =0x02113234
	ldr r1, _02100340 ; =GX_LoadBG3Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0x2b
	bl DWCi_Char
	mov r7, #0
	mov r6, #4
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r5, _02100344 ; =0x0211624C
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl FUN_ov17_021062fc
	bl FUN_ov17_02106384
	mov r0, r8
	bl DWCi_Char
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r1, [r5, #8]
	str r0, [r1, #0xc]
	add r0, sp, #0
	bl DWCi_Char
	mov r1, r7
	mov r2, r6
	bl DWCi_ARClReadEx
	ldr r2, [r5, #8]
	ldr r1, _02100348 ; =0x04001008
	str r0, [r2, #0x10]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	sub r2, r1, #0x1000
	ldrh r0, [r2]
	sub r1, r4, #2
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r4]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r4]
	ldrh r0, [r4, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r4, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100310: .word ov17_02112384
_02100314: .word ov17_02112354
_02100318: .word ov17_0211236C
_0210031C: .word 0x0400000C
_02100320: .word ov17_021131F0
_02100324: .word GX_LoadOBJPltt
_02100328: .word ov17_02113204
_0210032C: .word GX_LoadBG3Char
_02100330: .word ov17_0211321C
_02100334: .word GX_LoadBG2Char
_02100338: .word GX_LoadBGPltt
_0210033C: .word ov17_02113234
_02100340: .word GX_LoadBG3Scr
_02100344: .word ov17_0211624C
_02100348: .word 0x04001008
	arm_func_end FUN_ov17_02100150

	arm_func_start FUN_ov17_0210034c
FUN_ov17_0210034c: ; 0x0210034C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_02107098
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, _02100388 ; =0x0211624C
	streqh r4, [r0, #4]
	streqb r4, [r0]
	streqb r4, [r0, #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100388: .word ov17_0211624C
	arm_func_end FUN_ov17_0210034c

	arm_func_start FUN_ov17_0210038c
FUN_ov17_0210038c: ; 0x0210038C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x1d
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021003F0 ; =FUN_ov17_021003f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021003F0: .word FUN_ov17_021003f4
	arm_func_end FUN_ov17_0210038c

	arm_func_start FUN_ov17_021003f4
FUN_ov17_021003f4: ; 0x021003F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02100424 ; =FUN_ov17_02100428
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02100424: .word FUN_ov17_02100428
	arm_func_end FUN_ov17_021003f4

	arm_func_start FUN_ov17_02100428
FUN_ov17_02100428: ; 0x02100428
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02100438
	bl FUN_ov17_0210091c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02100428

	arm_func_start FUN_ov17_02100438
FUN_ov17_02100438: ; 0x02100438
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0210066C ; =0x0211624C
	mov r4, #0
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x45]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_0210067c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02100488
	ldrb r0, [r7]
	bl FUN_ov17_02100700
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100488:
	mov r5, #2
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _021004BC
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, [r7, #8]
	mov r2, #0xd
	ldr r0, _02100670 ; =FUN_ov17_02100b3c
	strb r2, [r1, #0x40]
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021004BC:
	mov r8, #0x200
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02100528
	ldrh r0, [r7, #4]
	cmp r0, #0x91
	bne _02100500
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100500:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r4
	ldr r1, _02100674 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100528:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x100
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _021005AC
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _02100584
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100584:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r4
	ldr r1, _02100678 ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005AC:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x40
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _021005E4
	mov r0, r6
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005E4:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0x80
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _0210061C
	mov r0, #3
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210061C:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02100650
	mov r0, r4
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100650:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210066C: .word ov17_0211624C
_02100670: .word FUN_ov17_02100b3c
_02100674: .word FUN_ov17_02101ad0
_02100678: .word FUN_ov17_02101a0c
	arm_func_end FUN_ov17_02100438

	arm_func_start FUN_ov17_0210067c
FUN_ov17_0210067c: ; 0x0210067C
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107098
	bl FUN_ov17_02101728
	mov r4, r0
	cmp r4, #0xe
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_02101218
	cmp r0, #0
	bne _021006B4
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r0, #1
	ldmfd sp!, {r4, pc}
_021006B4:
	mov r0, r4
	bl FUN_ov17_02101d68
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021006F0
_021006C8: ; jump table
	b _021006F0 ; case 0
	b _021006F0 ; case 1
	b _021006EC ; case 2
	b _021006EC ; case 3
	b _021006F0 ; case 4
	b _021006F0 ; case 5
	b _021006F0 ; case 6
	b _021006EC ; case 7
	b _021006EC ; case 8
_021006EC:
	bl FUN_ov17_021020ac
_021006F0:
	mov r0, r4
	bl FUN_ov17_02100700
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210067c

	arm_func_start FUN_ov17_02100700
FUN_ov17_02100700: ; 0x02100700
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_ov17_02101218
	cmp r0, #0
	bne _02100728
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100728:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021007A0
_02100734: ; jump table
	b _021007A0 ; case 0
	b _021007A0 ; case 1
	b _02100758 ; case 2
	b _02100758 ; case 3
	b _021007A0 ; case 4
	b _021007A0 ; case 5
	b _021007A0 ; case 6
	b _0210077C ; case 7
	b _0210077C ; case 8
_02100758:
	mov r0, #6
	bl FUN_ov17_02107c40
	sub r0, r4, #2
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_02100878
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210077C:
	mov r0, #6
	bl FUN_ov17_02107c40
	sub r0, r4, #7
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_021008e4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007A0:
	ldr r0, _02100868 ; =0x0211624C
	sub r1, r4, #0xb
	ldr r0, [r0, #8]
	cmp r1, #1
	strb r4, [r0, #0x40]
	bhi _02100818
	bl FUN_ov17_02102024
	bl FUN_ov17_02102154
	cmp r0, #0
	bne _021007FC
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r12, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #6
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _0210086C ; =FUN_ov17_021021f4
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007FC:
	cmp r4, #0xb
	bne _02100810
	mov r0, #6
_02100808:
	bl FUN_ov17_02107c40
	b _02100854
_02100810:
	mov r0, #0xe
	b _02100808
_02100818:
	cmp r4, #0xd
	bne _0210082C
	bl FUN_ov17_02102024
	mov r0, #7
	b _02100808
_0210082C:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _02100870 ; =0x021122CC
	ldrb r0, [r0, r4]
	bl FUN_ov17_021019a4
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl FUN_ov17_021012a4
	bl FUN_ov17_02101578
_02100854:
	bl FUN_ov17_02106664
	ldr r0, _02100874 ; =FUN_ov17_02100b3c
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100868: .word ov17_0211624C
_0210086C: .word FUN_ov17_021021f4
_02100870: .word ov17_021122CC
_02100874: .word FUN_ov17_02100b3c
	arm_func_end FUN_ov17_02100700

	arm_func_start FUN_ov17_02100878
FUN_ov17_02100878: ; 0x02100878
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	ldrb r1, [r0, #0xf5]
	cmp r1, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	beq _021008B4
	ldr r0, _021008E0 ; =0x0211624C
	mov r5, #1
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x43]
	cmp r0, #0
	moveq r5, #0
	b _021008C8
_021008B4:
	ldr r1, _021008E0 ; =0x0211624C
	ldrb r2, [r0, #0xf6]
	ldr r0, [r1, #8]
	mov r5, #0
	strb r2, [r0, #0x43]
_021008C8:
	mov r0, r4
	bl FUN_ov17_021070ac
	mov r0, r5
	bl FUN_ov17_021070c0
	bl FUN_ov17_02100e88
	ldmfd sp!, {r3, r4, r5, pc}
_021008E0: .word ov17_0211624C
	arm_func_end FUN_ov17_02100878

	arm_func_start FUN_ov17_021008e4
FUN_ov17_021008e4: ; 0x021008E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf6]
	cmp r0, r4
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02100918 ; =0x0211624C
	mov r0, r4
	ldr r1, [r1, #8]
	strb r4, [r1, #0x43]
	bl FUN_ov17_021070c0
	bl FUN_ov17_02100e88
	ldmfd sp!, {r4, pc}
_02100918: .word ov17_0211624C
	arm_func_end FUN_ov17_021008e4

	arm_func_start FUN_ov17_0210091c
FUN_ov17_0210091c: ; 0x0210091C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02100B2C ; =0x0211624C
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x41]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x41]
	bl FUN_ov17_0210662c
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02100954: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02100974 ; case 1
	b _02100984 ; case 2
	b _021009CC ; case 3
	b _02100A64 ; case 4
	b _02100B1C ; case 5
	b _02100AC0 ; case 6
	b _02100B1C ; case 7
_02100974:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x45]
	ldmfd sp!, {r3, r4, r5, pc}
_02100984:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_02106618
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	bl FUN_ov17_02100e88
	ldr r0, [r4, #8]
	mov r1, #4
	strb r1, [r0, #0x41]
	ldmfd sp!, {r3, r4, r5, pc}
_021009CC:
	ldr r0, [r4, #8]
	mov r5, #0
	strb r5, [r0, #0x45]
	bl FUN_ov17_02106618
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	mov r0, #0x13
	bl FUN_ov17_02107c40
	bl FUN_ov17_02100e88
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FX_ModS32
	cmp r0, #0
	bne _02100A20
	bl FUN_ov17_02101cc4
	ldmfd sp!, {r3, r4, r5, pc}
_02100A20:
	cmp r0, #0x10
	mov r3, #0x78
	bge _02100A48
	ldr r1, _02100B34 ; =FUN_ov17_02101a0c
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A48:
	ldr r1, _02100B38 ; =FUN_ov17_02101ad0
	mov r0, r5
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A64:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _02100A98
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A98:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02100B34 ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AC0:
	ldrh r0, [r4, #4]
	cmp r0, #0x91
	bne _02100AF4
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AF4:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02100B38 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B1C:
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B2C: .word ov17_0211624C
_02100B30: .word 0x094F2095
_02100B34: .word FUN_ov17_02101a0c
_02100B38: .word FUN_ov17_02101ad0
	arm_func_end FUN_ov17_0210091c

	arm_func_start FUN_ov17_02100b3c
FUN_ov17_02100b3c: ; 0x02100B3C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02106664
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02100B58 ; =FUN_ov17_02100b5c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02100B58: .word FUN_ov17_02100b5c
	arm_func_end FUN_ov17_02100b3c

	arm_func_start FUN_ov17_02100b5c
FUN_ov17_02100b5c: ; 0x02100B5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x1d
	bl FUN_ov17_0210d238
	ldr r0, _02100BB0 ; =FUN_ov17_02100bb4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02100BB0: .word FUN_ov17_02100bb4
	arm_func_end FUN_ov17_02100b5c

	arm_func_start FUN_ov17_02100bb4
FUN_ov17_02100bb4: ; 0x02100BB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	ldr r6, _02100E5C ; =0x0211624C
	mov r0, r7
	mov r4, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, r4
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #8]
	mov r0, r5
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r1, [r6, #8]
	mov r0, r7
	ldr r1, [r1, #0x3c]
	bl DWCi_TSKlDeleteEx
_02100C08:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x18]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #7
	blt _02100C08
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02100C38
	bl DWCi_OBJlDelete
_02100C38:
	bl FUN_ov17_021065e0
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	bl FUN_ov17_020f5258
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xc
	beq _02100C5C
	bl DWCi_COMMENTlDelete
_02100C5C:
	bl FUN_ov17_02106358
	ldr r0, [r6, #8]
	ldr r0, [r0, #8]
	bl DWCi_ARClRelease
	mov r5, #0
_02100C70:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl DWCi_ARClRelease
	add r5, r5, #1
	cmp r5, #2
	blt _02100C70
	ldr r0, _02100E60 ; =0x02113248
	ldr r1, _02100E64 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x1d
	bl FUN_ov17_0210dd24
	ldr r0, _02100E68 ; =0x04000010
	str r4, [r0]
	sub r1, r0, #4
	str r4, [r0, #8]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _02100E50
_02100CE8: ; jump table
	b _02100D20 ; case 0
	b _02100D20 ; case 1
	b _02100E50 ; case 2
	b _02100E50 ; case 3
	b _02100D3C ; case 4
	b _02100D3C ; case 5
	b _02100D3C ; case 6
	b _02100E50 ; case 7
	b _02100E50 ; case 8
	b _02100D3C ; case 9
	b _02100D3C ; case 10
	b _02100D68 ; case 11
	b _02100DFC ; case 12
	b _02100E10 ; case 13
_02100D20:
	mov r1, r4
	bl DWCi_SetParam2_
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02100E6C ; =FUN_ov17_020fe21c
	b _02100E4C
_02100D3C:
	sub r5, r0, #4
	cmp r0, #9
	subhs r5, r5, #2
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02100E70 ; =FUN_ov17_020fed1c
	b _02100E4C
_02100D68:
	bl FUN_ov17_02107098
	mov r6, r0
	add r0, r6, #0xf0
	bl FUN_ov1_020cabf0 ; may be ov15
	strb r0, [r6, #0xd0]
	ldrb r0, [r6, #0xf5]
	cmp r0, #0
	beq _02100DC0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc0
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc4
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xf0
	bl MI_CpuFill8
	strb r4, [r6, #0xd0]
_02100DC0:
	ldrb r0, [r6, #0xf6]
	cmp r0, #0
	beq _02100DDC
	add r0, r6, #0xc8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_02100DDC:
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02100E74 ; =FUN_ov17_02104df4
	b _02100E4C
_02100DFC:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _02100E78 ; =FUN_ov17_02102264
	b _02100E4C
_02100E10:
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _02100E30
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02100E7C ; =FUN_ov17_02103924
	b _02100E4C
_02100E30:
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _02100E80 ; =FUN_ov17_0210462c
_02100E4C:
	bl DWCi_ChangeScene
_02100E50:
	ldr r0, _02100E84 ; =0x02116254
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02100E5C: .word ov17_0211624C
_02100E60: .word ov17_02113248
_02100E64: .word GX_LoadOBJPltt
_02100E68: .word 0x04000010
_02100E6C: .word FUN_ov17_020fe21c
_02100E70: .word FUN_ov17_020fed1c
_02100E74: .word FUN_ov17_02104df4
_02100E78: .word FUN_ov17_02102264
_02100E7C: .word FUN_ov17_02103924
_02100E80: .word FUN_ov17_0210462c
_02100E84: .word ov17_02116254
	arm_func_end FUN_ov17_02100bb4

	arm_func_start FUN_ov17_02100e88
FUN_ov17_02100e88: ; 0x02100E88
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02100F3C ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r4, #4]
	bl FX_DivS32
	ldr r1, [r4, #8]
	mov r4, r0
	mov r6, #0
	ldr r0, [r1, #0x14]
	mov r1, r6
	bl FUN_ov17_0210dba8
	mov r5, r4
_02100EB8:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_02100f44
	add r6, r6, #1
	cmp r6, #5
	add r5, r5, #1
	blt _02100EB8
	ldr r0, _02100F3C ; =0x0211624C
	ldr r1, _02100F40 ; =0x021122E6
	mov r2, r4, lsl #1
	ldr r3, [r0, #8]
	ldrh r0, [r1, r2]
	ldr r2, [r3, #8]
	mov r5, #0
	mov r1, r5
	add r0, r2, r0, lsl #1
	mov r2, #0x1e
	mov r3, #0x13
	bl FUN_ov17_0210639c
_02100F04:
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_021010e4
	add r5, r5, #1
	cmp r5, #5
	add r4, r4, #1
	blt _02100F04
	bl FUN_ov17_02106384
	ldr r0, _02100F3C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x14]
	bl DWCi_FNTlRenewBg
	bl FUN_ov17_02101578
	ldmfd sp!, {r4, r5, r6, pc}
_02100F3C: .word ov17_0211624C
_02100F40: .word ov17_021122E6
	arm_func_end FUN_ov17_02100e88

	arm_func_start FUN_ov17_02100f44
FUN_ov17_02100f44: ; 0x02100F44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r6, r0
	mov r5, r1
	bl FUN_ov17_02107098
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _021010DC
_02100F64: ; jump table
	b _02100F88 ; case 0
	b _02100F9C ; case 1
	b _021010DC ; case 2
	b _02101030 ; case 3
	b _02101054 ; case 4
	b _02101078 ; case 5
	b _021010DC ; case 6
	b _0210109C ; case 7
	b _021010C0 ; case 8
_02100F88:
	mov r1, r5
	add r0, r0, #0x40
	bl FUN_ov17_02101394
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100F9C:
	ldrb r1, [r0, #0xe6]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02100FE0
_02100FB4: ; jump table
	b _02100FC4 ; case 0
	b _02100FCC ; case 1
	b _02100FD4 ; case 2
	b _02100FDC ; case 3
_02100FC4:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100FCC:
	mov r4, #0xa
	b _02100FE0
_02100FD4:
	mov r4, #0x1a
	b _02100FE0
_02100FDC:
	mov r4, #0x20
_02100FE0:
	ldrb r0, [r0, #0xe6]
	add r6, sp, #0
	mov r1, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1a
	cmp r0, #1
	addeq r0, r4, r4, lsr #31
	moveq r4, r0, asr #1
	mov r0, r6
	mov r2, #0x21
	bl MI_CpuFill8
	mov r0, r6
	mov r2, r4
	mov r1, #0x2a
	bl memset
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_02101394
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101030:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc0
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101054:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf0
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101078:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc4
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0210109C:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc8
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021010C0:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xcc
	bl FUN_ov17_021014e0
_021010DC:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov17_02100f44

	arm_func_start FUN_ov17_021010e4
FUN_ov17_021010e4: ; 0x021010E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl FUN_ov17_02107098
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021011F8
_02101100: ; jump table
	b _02101124 ; case 0
	b _02101124 ; case 1
	b _02101140 ; case 2
	b _0210118C ; case 3
	b _0210118C ; case 4
	b _0210118C ; case 5
	b _02101194 ; case 6
	b _021011E0 ; case 7
	b _021011E0 ; case 8
_02101124:
	mov r4, #0
	mov r0, r4
	mov r5, r4
	bl FUN_ov17_02101218
	cmp r0, #0
	moveq r5, #2
	b _02101200
_02101140:
	ldr r2, _02101214 ; =0x0211624C
	ldrb r0, [r0, #0xf5]
	ldr r3, [r2, #8]
	mov r1, #0
	ldrb r2, [r3, #4]
	cmp r0, #0
	movne r4, #1
	movne r0, #4
	moveq r4, #2
	moveq r0, #3
	cmp r2, #0
	mov r5, r1
	ldrb r2, [r3, #5]
	movne r5, #1
_02101178:
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl FUN_ov17_021012a4
	b _02101200
_0210118C:
	ldrb r0, [r0, #0xf5]
	b _021011E4
_02101194:
	ldrb r2, [r0, #0xf6]
	mov r1, #0
	mov r5, r1
	cmp r2, #0
	movne r4, #1
	movne r0, #4
	bne _021011C4
	ldrb r0, [r0, #0xf5]
	mov r4, #2
	cmp r0, #0
	moveq r5, #2
	mov r0, #3
_021011C4:
	ldr r2, _02101214 ; =0x0211624C
	ldr r3, [r2, #8]
	ldrb r2, [r3, #6]
	cmp r2, #0
	movne r5, #1
	ldrb r2, [r3, #7]
	b _02101178
_021011E0:
	ldrb r0, [r0, #0xf6]
_021011E4:
	cmp r0, #0
	mov r4, #0
	movne r5, #2
	moveq r5, r4
	b _02101200
_021011F8:
	mov r4, #0
	mov r5, #2
_02101200:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov17_021012a4
	ldmfd sp!, {r4, r5, r6, pc}
_02101214: .word ov17_0211624C
	arm_func_end FUN_ov17_021010e4

	arm_func_start FUN_ov17_02101218
FUN_ov17_02101218: ; 0x02101218
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	cmp r4, #0xa
	mov r1, #1
	addls pc, pc, r4, lsl #2
	b _0210129C
_02101234: ; jump table
	b _02101270 ; case 0
	b _02101270 ; case 1
	b _0210129C ; case 2
	b _0210129C ; case 3
	b _02101288 ; case 4
	b _02101288 ; case 5
	b _02101288 ; case 6
	b _02101260 ; case 7
	b _0210129C ; case 8
	b _02101290 ; case 9
	b _02101290 ; case 10
_02101260:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	moveq r1, #0
	b _0210129C
_02101270:
	ldrb r0, [r0, #0xe7]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r1, #0
	b _0210129C
_02101288:
	ldrb r0, [r0, #0xf5]
	b _02101294
_02101290:
	ldrb r0, [r0, #0xf6]
_02101294:
	cmp r0, #0
	movne r1, #0
_0210129C:
	mov r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02101218

	arm_func_start FUN_ov17_021012a4
FUN_ov17_021012a4: ; 0x021012A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r7, _02101388 ; =0x0211624C
	mov r12, #0xc0
	ldr r3, [r7, #8]
	mov r6, r0
	mov r4, #0x8f
	add r3, r3, #0x18
	sub r0, r6, #1
	mov lr, #0xcc
	mov r5, r1
	strh lr, [sp]
	strh r12, [sp, #2]
	strh r12, [sp, #4]
	strh r4, [sp, #6]
	strh r4, [sp, #8]
	cmp r0, #1
	add r4, r3, r2, lsl #2
	bhi _02101308
	mov r0, r2
	bl FUN_ov17_021019e8
	cmp r0, #2
	ldr r0, [r7, #8]
	addeq r4, r0, #0x2c
	addne r4, r0, #0x30
_02101308:
	ldr r0, _0210138C ; =0x021122D7
	add r1, r6, r6, lsl #1
	add r0, r0, r1
	ldrb r1, [r5, r0]
	ldr r2, [r4]
	cmp r1, #0
	ldreq r0, _02101390 ; =0xFE00FF00
	ldreq r1, [r2]
	addeq sp, sp, #0xc
	andeq r0, r1, r0
	orreq r0, r0, #0x1000000
	streq r0, [r2]
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	bl DWCi_CEINlSet
	ldr r3, [r4]
	add r0, sp, #0
	mov r1, r6, lsl #1
	ldrh r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _02101390 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101388: .word ov17_0211624C
_0210138C: .word ov17_021122D7
_02101390: .word 0xFE00FF00
	arm_func_end FUN_ov17_021012a4

	arm_func_start FUN_ov17_02101394
FUN_ov17_02101394: ; 0x02101394
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r4, r1
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	mov r0, r8
	mov r1, #0x20
	bl FUN_ov17_0210ee94
	mov r5, r0
	mov r7, r5
	cmp r5, #0x10
	movgt r7, #0x10
	cmp r7, #0
	mov r6, #0
	ble _02101404
	ldr r2, _021014D8 ; =0x0000E01D
	add r1, sp, #0xc
_021013E4:
	ldrb r3, [r8, r6]
	mov r0, r6, lsl #1
	add r6, r6, #1
	cmp r3, #0x20
	streqh r2, [r1, r0]
	strneh r3, [r1, r0]
	cmp r6, r7
	blt _021013E4
_02101404:
	mov r0, #0x1d
	mul r0, r4, r0
	add r6, r0, #2
	mov r0, #8
	add r4, sp, #0xc
	stmia sp, {r0, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	cmp r5, #0x10
	ldr r0, [r0, #8]
	addle r6, r6, #5
	ldr r0, [r0, #0x14]
	mov r2, r6
	mov r1, #0x48
	mov r3, #2
	bl FUN_ov17_0210da44
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r0, r4
	mov r1, r7
	mov r2, #0x22
	bl MI_CpuFill8
	sub r3, r5, #0x10
	cmp r3, #0
	ble _0210149C
	ldr r1, _021014D8 ; =0x0000E01D
_02101478:
	add r0, r8, r7
	ldrb r2, [r0, #0x10]
	mov r0, r7, lsl #1
	add r7, r7, #1
	cmp r2, #0x20
	streqh r1, [r4, r0]
	strneh r2, [r4, r0]
	cmp r7, r3
	blt _02101478
_0210149C:
	mov r1, #8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	add r2, r6, #0xc
	ldr r0, [r0, #8]
	mov r1, #0x48
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl FUN_ov17_0210da44
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021014D8: .word 0x0000E01D
_021014DC: .word ov17_0211624C
	arm_func_end FUN_ov17_02101394

	arm_func_start FUN_ov17_021014e0
FUN_ov17_021014e0: ; 0x021014E0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x3c
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r5, [r0, #3]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r3, [r0]
	add r7, sp, #0xc
	mov r6, #0x10
	mov r4, r1
	ldr r2, _02101570 ; =0x02113260
	mov r0, r7
	mov r1, r6
	str r5, [sp, #8]
	bl OS_SNPrintf
	add r5, sp, #0x1c
	mov r1, r7
	mov r0, r5
	mov r2, r6
	bl FUN_ov17_0210eec0
	mov r2, #7
	mov r0, #0x1d
	mul r1, r4, r0
	stmia sp, {r2, r5}
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _02101574 ; =0x0211624C
	add r2, r1, #8
	ldr r0, [r0, #8]
	mov r1, #0x5f
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl FUN_ov17_0210da44
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101570: .word ov17_02113260
_02101574: .word ov17_0211624C
	arm_func_end FUN_ov17_021014e0

	arm_func_start FUN_ov17_02101578
FUN_ov17_02101578: ; 0x02101578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _0210171C ; =0x0211624C
	mov r7, #0x1d
	ldrh r0, [r5, #4]
	mov r1, r7
	ldr r4, _02101720 ; =0xFE00FF00
	bl FX_DivS32
	mov r6, r0
	ldrh r0, [r5, #4]
	mov r1, r7
	bl FX_ModS32
	ldr r2, [r5, #8]
	rsb r1, r0, #0x34
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _021015E8
	ldr r7, [r2, #0x34]
	mov r3, #0x26
	ldr r2, [r7]
	cmp r6, #0
	movne r3, #0x100
	and r0, r1, #0xff
	and r2, r2, r4
	mov r3, r3, lsl #0x17
	orr r0, r2, r0
	orr r0, r0, r3, lsr #7
	str r0, [r7]
_021015E8:
	ldr r12, _02101724 ; =0x01FF0000
	mov r2, r1
	mov r3, #0
_021015F4:
	ldr r0, [r5, #8]
	and lr, r2, #0xff
	add r0, r0, r3, lsl #2
	ldr r0, [r0, #0x18]
	add r3, r3, #1
	ldr r8, [r0]
	cmp r3, #5
	mov r7, r8
	and r8, r8, r12
	mov r8, r8, lsr #0x10
	and r7, r7, r4
	mov r8, r8, lsl #0x17
	orr r7, r7, lr
	orr r7, r7, r8, lsr #7
	str r7, [r0]
	add r2, r2, #0x1d
	blt _021015F4
	ldr r4, _0210171C ; =0x0211624C
	cmp r6, #2
	ldr r0, [r4, #8]
	ldr r3, _02101720 ; =0xFE00FF00
	ldrgt r2, [r0, #0x2c]
	ldrgt r0, [r2]
	andgt r0, r0, r3
	orrgt r0, r0, #0x1000000
	strgt r0, [r2]
	bgt _0210169C
	rsb r5, r6, #2
	mov r2, #0x1d
	mla r12, r5, r2, r1
	ldr r0, [r0, #0x2c]
	ldr r2, _02101724 ; =0x01FF0000
	ldr lr, [r0]
	mov r5, lr
	and r2, lr, r2
	mov lr, r2, lsr #0x10
	and r2, r12, #0xff
	and r5, r5, r3
	mov r12, lr, lsl #0x17
	orr r2, r5, r2
	orr r2, r2, r12, lsr #7
	str r2, [r0]
_0210169C:
	cmp r6, #2
	blt _021016F0
	cmp r6, #6
	bgt _021016F0
	ldr r0, [r4, #8]
	rsb r5, r6, #6
	mov r2, #0x1d
	mla r2, r5, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, _02101724 ; =0x01FF0000
	ldr r6, [r0]
	mov r5, r6
	and r1, r6, r1
	mov r6, r1, lsr #0x10
	and r1, r2, #0xff
	and r3, r5, r3
	mov r2, r6, lsl #0x17
	orr r1, r3, r1
	orr r1, r1, r2, lsr #7
	str r1, [r0]
	b _02101708
_021016F0:
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r3
	orr r0, r0, #0x1000000
	str r0, [r1]
_02101708:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x44]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210171C: .word ov17_0211624C
_02101720: .word 0xFE00FF00
_02101724: .word 0x01FF0000
	arm_func_end FUN_ov17_02101578

	arm_func_start FUN_ov17_02101728
FUN_ov17_02101728: ; 0x02101728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _02101990 ; =0x021126F8
	mov r7, #0x1d
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0xe
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02101994 ; =0x0211624C
	mov r1, r7
	ldrh r0, [r0, #4]
	bl FX_DivS32
	ldr r1, _02101998 ; =0x02112298
	mov r5, r0
	ldrh r3, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	add r4, sp, #0
	strh r3, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	mov r6, #0
	strh r2, [sp, #4]
	strh r0, [sp, #6]
_0210178C:
	cmp r5, #2
	cmpne r5, #6
	beq _021017B4
	mov r0, r4
	bl FUN_ov17_0210e798
	cmp r0, #0
	ldrne r0, _0210199C ; =0x021122BA
	addne sp, sp, #8
	ldrneb r0, [r0, r5]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021017B4:
	ldrh r0, [sp, #2]
	add r6, r6, #1
	cmp r6, #4
	add r0, r0, #0x1d
	strh r0, [sp, #2]
	add r5, r5, #1
	blt _0210178C
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r2, #0
_021017E4:
	cmp r0, #2
	bne _02101884
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	beq _02101894
	add sp, sp, #8
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101884:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021017E4
_02101894:
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r2, #0
_021018A8:
	cmp r0, #6
	bne _02101948
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	beq _02101958
	add sp, sp, #8
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101948:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021018A8
_02101958:
	ldr r4, _021019A0 ; =0x021122F8
	mov r5, #0
_02101960:
	add r0, r4, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addne sp, sp, #8
	addne r0, r5, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
	cmp r5, #3
	blt _02101960
	mov r0, #0xe
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101990: .word ov17_021126F8
_02101994: .word ov17_0211624C
_02101998: .word ov17_02112298
_0210199C: .word ov17_021122BA
_021019A0: .word ov17_021122F8
	arm_func_end FUN_ov17_02101728

	arm_func_start FUN_ov17_021019a4
FUN_ov17_021019a4: ; 0x021019A4
	stmfd sp!, {r4, lr}
	ldr r1, _021019E4 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	mov r1, #0
_021019C0:
	cmp r0, r4
	moveq r0, r1
	ldmeqfd sp!, {r4, pc}
	add r1, r1, #1
	cmp r1, #4
	add r0, r0, #1
	blt _021019C0
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_021019E4: .word ov17_0211624C
	arm_func_end FUN_ov17_021019a4

	arm_func_start FUN_ov17_021019e8
FUN_ov17_021019e8: ; 0x021019E8
	stmfd sp!, {r4, lr}
	ldr r1, _02101A08 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	add r0, r0, r4
	ldmfd sp!, {r4, pc}
_02101A08: .word ov17_0211624C
	arm_func_end FUN_ov17_021019e8

	arm_func_start FUN_ov17_02101a0c
FUN_ov17_02101a0c: ; 0x02101A0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r0, _02101AC8 ; =0x0211624C
	ldr r5, _02101AC8 ; =0x0211624C
	ldrh r1, [r0, #4]
	cmp r1, #6
	subhi r1, r1, #6
	movls r1, #0
	strh r1, [r0, #4]
	ldrh r0, [r5, #4]
	mov r1, #0x1d
	bl FX_ModS32
	mov r6, r0
	cmp r6, #0x17
	bne _02101A58
	bl FUN_ov17_02100e88
	ldmfd sp!, {r4, r5, r6, pc}
_02101A58:
	ble _02101A74
	ldrh r1, [r5, #4]
	rsb r0, r6, #0x1d
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	mov r6, #0
_02101A74:
	bl FUN_ov17_02101578
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _02101AC8 ; =0x0211624C
	mov r0, #0x37
	ldrh r1, [r5, #4]
	ldr r2, _02101ACC ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_02101cc4
	ldr r2, [r5, #8]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_02101AC8: .word ov17_0211624C
_02101ACC: .word 0xE1FC780F
	arm_func_end FUN_ov17_02101a0c

	arm_func_start FUN_ov17_02101ad0
FUN_ov17_02101ad0: ; 0x02101AD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r5, _02101B64 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r5, #4]
	add r0, r0, #6
	strh r0, [r5, #4]
	ldrh r0, [r5, #4]
	bl FX_ModS32
	cmp r0, #6
	blt _02101B0C
	bl FUN_ov17_02101578
	ldmfd sp!, {r3, r4, r5, pc}
_02101B0C:
	ldrh r1, [r5, #4]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	bl FUN_ov17_02100e88
	ldrh r1, [r5, #4]
	mov r0, #0x37
	ldr r2, _02101B68 ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_02101cc4
	ldr r1, [r5, #8]
	mov r0, #0
	str r0, [r1, #0x38]
	mov r1, r4
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_02101B64: .word ov17_0211624C
_02101B68: .word 0xE1FC780F
	arm_func_end FUN_ov17_02101ad0

	arm_func_start FUN_ov17_02101b6c
FUN_ov17_02101b6c: ; 0x02101B6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02101BDC ; =0x0211624C
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x44]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #4]
	mov r6, #0x1d
	mov r1, r6
	bl FX_DivS32
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, r6
	bl FX_ModS32
	ldr r2, _02101BE0 ; =0x021122C3
	ldr r1, _02101BE4 ; =0x01FF0000
	sub r12, r0, #0x33
	ldrb r0, [r2, r5]
	ldr r2, _02101BE8 ; =0x04000010
	and r3, r1, r12, lsl #16
	add r0, r12, r0
	str r3, [r2]
	and r0, r1, r0, lsl #16
	str r0, [r2, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x44]
	ldmfd sp!, {r4, r5, r6, pc}
_02101BDC: .word ov17_0211624C
_02101BE0: .word ov17_021122C3
_02101BE4: .word 0x01FF0000
_02101BE8: .word 0x04000010
	arm_func_end FUN_ov17_02101b6c

	arm_func_start FUN_ov17_02101bec
FUN_ov17_02101bec: ; 0x02101BEC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02101CB0 ; =0x02112344
	add r3, sp, #8
	mov r2, #7
_02101C00:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02101C00
	ldr r0, _02101CB4 ; =0x0211624C
	add r1, sp, #8
	ldrb r2, [r0]
	ldrb lr, [r1, r2]
	cmp lr, #3
	blt _02101C5C
	ldr r1, _02101CB8 ; =0x02112310
	mov r3, lr, lsl #3
	ldr r2, _02101CBC ; =0x02112314
	ldr r0, _02101CC0 ; =0x02112312
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #3
	bl FUN_ov17_020f50cc
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101C5C:
	ldr r2, _02101CB8 ; =0x02112310
	ldrb r1, [r0, #2]
	add r12, r2, lr, lsl #3
	mov r0, #0x1d
	smulbb r0, r1, r0
	ldrh r3, [r12, #2]
	mov r0, r0, lsl #0x10
	mov r1, lr, lsl #3
	ldrh r1, [r2, r1]
	ldrh r2, [r12, #4]
	add r0, r3, r0, lsr #16
	strh r0, [sp, #2]
	ldrh r12, [r12, #6]
	ldrh r3, [sp, #2]
	mov r0, #1
	strh r1, [sp]
	strh r2, [sp, #4]
	strh r12, [sp, #6]
	bl FUN_ov17_020f50cc
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101CB0: .word ov17_02112344
_02101CB4: .word ov17_0211624C
_02101CB8: .word ov17_02112310
_02101CBC: .word ov17_02112314
_02101CC0: .word ov17_02112312
	arm_func_end FUN_ov17_02101bec

	arm_func_start FUN_ov17_02101cc4
FUN_ov17_02101cc4: ; 0x02101CC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02101D60 ; =0x0211624C
	ldrb r0, [r4]
	add r0, r0, #0xf5
	and r0, r0, #0xff
	cmp r0, #2
	bhi _02101CE8
	bl FUN_ov17_02101bec
	ldmfd sp!, {r3, r4, r5, pc}
_02101CE8:
	bl FUN_ov17_02107098
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FX_DivS32
	ldrb r1, [r4, #2]
	add r1, r1, r0
	cmp r1, #2
	beq _02101D18
	cmp r1, #6
	beq _02101D30
	b _02101D4C
_02101D18:
	ldrb r0, [r5, #0xf5]
	cmp r0, #0
	movne r0, #2
	strneb r0, [r4]
	moveq r0, #3
	b _02101D44
_02101D30:
	ldrb r0, [r5, #0xf6]
	cmp r0, #0
	movne r0, #7
	strneb r0, [r4]
	moveq r0, #8
_02101D44:
	streqb r0, [r4]
	b _02101D58
_02101D4C:
	ldr r0, _02101D64 ; =0x021122BA
	ldrb r0, [r0, r1]
	strb r0, [r4]
_02101D58:
	bl FUN_ov17_02101bec
	ldmfd sp!, {r3, r4, r5, pc}
_02101D60: .word ov17_0211624C
_02101D64: .word ov17_021122BA
	arm_func_end FUN_ov17_02101cc4

	arm_func_start FUN_ov17_02101d68
FUN_ov17_02101d68: ; 0x02101D68
	stmfd sp!, {r4, lr}
	ldr r4, _02101D8C ; =0x0211624C
	ldr r1, _02101D90 ; =0x021122CC
	strb r0, [r4]
	ldrb r0, [r1, r0]
	bl FUN_ov17_021019a4
	strb r0, [r4, #2]
	bl FUN_ov17_02101bec
	ldmfd sp!, {r4, pc}
_02101D8C: .word ov17_0211624C
_02101D90: .word ov17_021122CC
	arm_func_end FUN_ov17_02101d68

	arm_func_start FUN_ov17_02101d94
FUN_ov17_02101d94: ; 0x02101D94
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_ov17_02107098
	ldr r6, _02102018 ; =0x0211624C
	mov r4, #0
	ldrb r1, [r6]
	cmp r1, #8
	ldreqb r0, [r0, #0xf5]
	cmpeq r0, #0
	bne _02101DC8
	cmp r5, #0
	cmpne r5, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
_02101DC8:
	cmp r1, #0
	bgt _02101DD8
	beq _02101DF8
	b _02101F24
_02101DD8:
	sub r0, r1, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02101F24
_02101DE8: ; jump table
	b _02101E1C ; case 0
	b _02101E48 ; case 1
	b _02101EA4 ; case 2
	b _02101EA4 ; case 3
_02101DF8:
	cmp r5, #1
	moveq r0, #0xb
	streqb r0, [r6]
	beq _02101FF8
	cmp r5, #3
	ldreqb r0, [r6, #2]
	addeq r0, r0, #1
	streqb r0, [r6, #2]
	b _02101E40
_02101E1C:
	cmp r5, #1
	ldreqb r0, [r6, #2]
	subeq r0, r0, #1
	streqb r0, [r6, #2]
	beq _02101FF8
	cmp r5, #3
	ldreq r0, [r6, #8]
	ldreqb r0, [r0, #0x42]
	streqb r0, [r6]
_02101E40:
	movne r4, #2
	b _02101FF8
_02101E48:
	cmp r5, #1
	bne _02101E78
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101E78:
	cmp r5, #3
	movne r4, #2
	bne _02101FF8
	mov r5, #0
	strb r5, [r6]
	strb r5, [r6, #2]
	strh r5, [r6, #4]
	bl FUN_ov17_02100e88
	mov r0, r5
	bl FUN_ov17_02106640
	b _02101FF8
_02101EA4:
	ldr r0, [r6, #8]
	cmp r5, #1
	strb r1, [r0, #0x42]
	bne _02101EDC
	mov r0, #0xa
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #2]
	mov r0, #0x91
	strh r0, [r6, #4]
	bl FUN_ov17_02100e88
	mov r0, #0x37
	bl FUN_ov17_02106640
	b _02101FF8
_02101EDC:
	cmp r5, #3
	bne _02101F0C
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F0C:
	cmp r1, #0xc
	moveq r0, #0xd
	streqb r0, [r6]
	movne r0, #0xc
	strneb r0, [r6]
	b _02101FF8
_02101F24:
	cmp r5, #1
	bne _02101F68
	ldrb r0, [r6, #2]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r6, #2]
	bne _02101FF8
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _0210201C ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F68:
	cmp r5, #3
	bne _02101FAC
	ldrb r0, [r6, #2]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r6, #2]
	blo _02101FF8
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02102020 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101FAC:
	cmp r1, #2
	moveq r0, #3
	mov r4, #2
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #3
	streqb r4, [r6]
	beq _02101FEC
	cmp r1, #7
	moveq r0, #8
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #8
	bne _02101FF8
	mov r0, #7
	strb r0, [r6]
_02101FEC:
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_02101bec
_02101FF8:
	cmp r4, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #8
	bl FUN_ov17_02107c40
	cmp r4, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_02101cc4
	ldmfd sp!, {r4, r5, r6, pc}
_02102018: .word ov17_0211624C
_0210201C: .word FUN_ov17_02101a0c
_02102020: .word FUN_ov17_02101ad0
	arm_func_end FUN_ov17_02101d94

	arm_func_start FUN_ov17_02102024
FUN_ov17_02102024: ; 0x02102024
	ldr r0, _0210204C ; =0x0211624C
	ldr r1, _02102050 ; =0x02112298
	ldrb r2, [r0]
	ldr r0, [r0, #8]
	ldr r12, _02102054 ; =FUN_ov17_02106444
	sub r2, r2, #0xb
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bx r12
_0210204C: .word ov17_0211624C
_02102050: .word ov17_02112298
_02102054: .word FUN_ov17_02106444
	arm_func_end FUN_ov17_02102024

	arm_func_start FUN_ov17_02102058
FUN_ov17_02102058: ; 0x02102058
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _021020A8 ; =0x0211624C
	mov r4, #0
_02102064:
	ldr r0, [r5, #8]
	add r1, r0, r4
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02102098
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02102098
	bl FUN_ov17_02100e88
_02102098:
	add r4, r4, #1
	cmp r4, #4
	blt _02102064
	ldmfd sp!, {r3, r4, r5, pc}
_021020A8: .word ov17_0211624C
	arm_func_end FUN_ov17_02102058

	arm_func_start FUN_ov17_021020ac
FUN_ov17_021020ac: ; 0x021020AC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0210214C ; =0x02112340
	ldr r0, _02102150 ; =0x0211624C
	ldrb r12, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r3, [sp, #1]
	ldrb r4, [r0]
	add lr, sp, #0
	strb r12, [sp]
	strb r2, [sp, #2]
	strb r1, [sp, #3]
	mov r3, #0
_021020E8:
	ldrb r0, [lr, r3]
	cmp r4, r0
	bne _02102138
	ldr r0, _02102150 ; =0x0211624C
	mov r2, #0x14
	ldr r1, [r0, #8]
	tst r3, #1
	add r1, r1, r3
	strb r2, [r1, #4]
	ldr r1, [r0, #8]
	subne r0, r3, #1
	addne r0, r1, r0
	movne r1, #0
	strneb r1, [r0, #4]
	addeq r0, r3, #1
	addeq r0, r1, r0
	moveq r1, #0
	streqb r1, [r0, #4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102138:
	add r3, r3, #1
	cmp r3, #4
	blt _021020E8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210214C: .word ov17_02112340
_02102150: .word ov17_0211624C
	arm_func_end FUN_ov17_021020ac

	arm_func_start FUN_ov17_02102154
FUN_ov17_02102154: ; 0x02102154
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107098
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xc8
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xcc
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021A0:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	bne _021021EC
	add r0, r4, #0xc0
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc0
	add r1, r4, #0xf0
	bl DWC_BACKUPlCheckIp
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021EC:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02102154

	arm_func_start FUN_ov17_021021f4
FUN_ov17_021021f4: ; 0x021021F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _0210222C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl FUN_ov17_021064ac
	ldr r0, _02102230 ; =FUN_ov17_02102234
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210222C: .word ov17_0211624C
_02102230: .word FUN_ov17_02102234
	arm_func_end FUN_ov17_021021f4

	arm_func_start FUN_ov17_02102234
FUN_ov17_02102234: ; 0x02102234
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102250 ; =FUN_ov17_02100428
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102250: .word FUN_ov17_02100428
	arm_func_end FUN_ov17_02102234

	arm_func_start FUN_ov17_02102254
FUN_ov17_02102254: ; 0x02102254
	ldr r1, _02102260 ; =0x0211624C
	strb r0, [r1, #1]
	bx lr
_02102260: .word ov17_0211624C
	arm_func_end FUN_ov17_02102254

	arm_func_start FUN_ov17_02102264
FUN_ov17_02102264: ; 0x02102264
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02102284
	bl FUN_ov17_020f5384
	bl FUN_ov17_0210756c
	ldr r0, _02102280 ; =FUN_ov17_02102318
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102280: .word FUN_ov17_02102318
	arm_func_end FUN_ov17_02102264

	arm_func_start FUN_ov17_02102284
FUN_ov17_02102284: ; 0x02102284
	stmfd sp!, {r3, lr}
	ldr r0, _021022F8 ; =0x02113270
	ldr r1, _021022FC ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02102300 ; =0x02113288
	ldr r1, _02102304 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02102308 ; =0x021132A0
	ldr r1, _0210230C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _02102310 ; =0x04001008
	ldr r1, _02102314 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021022F8: .word ov17_02113270
_021022FC: .word GX_LoadBG2Char
_02102300: .word ov17_02113288
_02102304: .word GX_LoadBGPltt
_02102308: .word ov17_021132A0
_0210230C: .word GX_LoadBG2Scr
_02102310: .word 0x04001008
_02102314: .word 0x0400000A
	arm_func_end FUN_ov17_02102284

	arm_func_start FUN_ov17_02102318
FUN_ov17_02102318: ; 0x02102318
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210237C ; =FUN_ov17_02102380
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210237C: .word FUN_ov17_02102380
	arm_func_end FUN_ov17_02102318

	arm_func_start FUN_ov17_02102380
FUN_ov17_02102380: ; 0x02102380
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #5
	mov r2, r5
	sub r3, r1, #6
	mov r0, #0x44
	str r4, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _021023D0 ; =FUN_ov17_021023d4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021023D0: .word FUN_ov17_021023d4
	arm_func_end FUN_ov17_02102380

	arm_func_start FUN_ov17_021023d4
FUN_ov17_021023d4: ; 0x021023D4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021023fc
	bl FUN_ov17_02102400
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021023F8 ; =FUN_ov17_02102404
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021023F8: .word FUN_ov17_02102404
	arm_func_end FUN_ov17_021023d4

	arm_func_start FUN_ov17_021023fc
FUN_ov17_021023fc: ; 0x021023FC
	bx lr
	arm_func_end FUN_ov17_021023fc

	arm_func_start FUN_ov17_02102400
FUN_ov17_02102400: ; 0x02102400
	bx lr
	arm_func_end FUN_ov17_02102400

	arm_func_start FUN_ov17_02102404
FUN_ov17_02102404: ; 0x02102404
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02102444 ; =FUN_ov17_02102448
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102444: .word FUN_ov17_02102448
	arm_func_end FUN_ov17_02102404

	arm_func_start FUN_ov17_02102448
FUN_ov17_02102448: ; 0x02102448
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021024A8 ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021024A8: .word FUN_ov17_02103924
	arm_func_end FUN_ov17_02102448

	arm_func_start FUN_ov17_021024ac
FUN_ov17_021024ac: ; 0x021024AC
	ldr r0, _021024C8 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021024C8: .word 0x02FFFFA8
	arm_func_end FUN_ov17_021024ac

	arm_func_start FUN_ov17_021024cc
FUN_ov17_021024cc: ; 0x021024CC
	stmfd sp!, {r3, lr}
	ldr r0, _02102500 ; =0x02116258
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102508
	bl FUN_ov17_020f5384
	mov r0, #0x25
	bl DWCi_CMNlMsgDraw
	mov r0, #1
	bl DWCi_ANIMElInitEx
	ldr r0, _02102504 ; =FUN_ov17_02102588
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102500: .word ov17_02116258
_02102504: .word FUN_ov17_02102588
	arm_func_end FUN_ov17_021024cc

	arm_func_start FUN_ov17_02102508
FUN_ov17_02102508: ; 0x02102508
	stmfd sp!, {r3, lr}
	ldr r0, _02102578 ; =0x021132B4
	ldr r1, _0210257C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02102580 ; =0x04001008
	ldr r1, _02102584 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02102578: .word ov17_021132B4
_0210257C: .word GX_LoadBG2Scr
_02102580: .word 0x04001008
_02102584: .word 0x0400000A
	arm_func_end FUN_ov17_02102508

	arm_func_start FUN_ov17_02102588
FUN_ov17_02102588: ; 0x02102588
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021025C0 ; =FUN_ov17_021025c4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021025C0: .word FUN_ov17_021025c4
	arm_func_end FUN_ov17_02102588

	arm_func_start FUN_ov17_021025c4
FUN_ov17_021025c4: ; 0x021025C4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _021025EC ; =FUN_ov17_021025f0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021025EC: .word FUN_ov17_021025f0
	arm_func_end FUN_ov17_021025c4

	arm_func_start FUN_ov17_021025f0
FUN_ov17_021025f0: ; 0x021025F0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02102610 ; =FUN_ov17_02102614
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102610: .word FUN_ov17_02102614
	arm_func_end FUN_ov17_021025f0

	arm_func_start FUN_ov17_02102614
FUN_ov17_02102614: ; 0x02102614
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl FUN_ov17_021027fc
	bl FUN_ov17_02102634
	bl FUN_ov17_0210266c
	bl FUN_ov17_02102670
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102614

	arm_func_start FUN_ov17_02102634
FUN_ov17_02102634: ; 0x02102634
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02102654
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02102654:
	bl FUN_ov17_021024ac
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102634

	arm_func_start FUN_ov17_0210266c
FUN_ov17_0210266c: ; 0x0210266C
	bx lr
	arm_func_end FUN_ov17_0210266c

	arm_func_start FUN_ov17_02102670
FUN_ov17_02102670: ; 0x02102670
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02102698 ; =FUN_ov17_0210269c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102698: .word FUN_ov17_0210269c
	arm_func_end FUN_ov17_02102670

	arm_func_start FUN_ov17_0210269c
FUN_ov17_0210269c: ; 0x0210269C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021026B8 ; =FUN_ov17_021026bc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021026B8: .word FUN_ov17_021026bc
	arm_func_end FUN_ov17_0210269c

	arm_func_start FUN_ov17_021026bc
FUN_ov17_021026bc: ; 0x021026BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021026E4
	bl DWCi_BTNlEnd
_021026E4:
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102708
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02102708:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _0210272C ; =FUN_ov17_02102730
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102728: .word ov17_02116258
_0210272C: .word FUN_ov17_02102730
	arm_func_end FUN_ov17_021026bc

	arm_func_start FUN_ov17_02102730
FUN_ov17_02102730: ; 0x02102730
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102764
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_02102764:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _0210279C
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_0210279C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021027D8
	bl FUN_ov17_020f9188
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021027F4 ; =FUN_ov17_0210462c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021027D8:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _021027F8 ; =FUN_ov17_021028f8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021027F0: .word ov17_02116258
_021027F4: .word FUN_ov17_0210462c
_021027F8: .word FUN_ov17_021028f8
	arm_func_end FUN_ov17_02102730

	arm_func_start FUN_ov17_021027fc
FUN_ov17_021027fc: ; 0x021027FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #2
	beq _02102820
	cmp r0, #4
	beq _0210283C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102820:
	ldr r1, _02102880 ; =0x02116258
	mov r2, #1
	ldr r0, _02102884 ; =FUN_ov17_0210269c
	strb r2, [r1]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210283C:
	ldr r0, _02102880 ; =0x02116258
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _02102888 ; =FUN_ov17_0210288c
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102880: .word ov17_02116258
_02102884: .word FUN_ov17_0210269c
_02102888: .word FUN_ov17_0210288c
	arm_func_end FUN_ov17_021027fc

	arm_func_start FUN_ov17_0210288c
FUN_ov17_0210288c: ; 0x0210288C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _021028B4 ; =FUN_ov17_021028b8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021028B4: .word FUN_ov17_021028b8
	arm_func_end FUN_ov17_0210288c

	arm_func_start FUN_ov17_021028b8
FUN_ov17_021028b8: ; 0x021028B8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021028D4 ; =FUN_ov17_0210269c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021028D4: .word FUN_ov17_0210269c
	arm_func_end FUN_ov17_021028b8

	arm_func_start FUN_ov17_021028d8
FUN_ov17_021028d8: ; 0x021028D8
	ldr r0, _021028F4 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021028F4: .word 0x02FFFFA8
	arm_func_end FUN_ov17_021028d8

	arm_func_start FUN_ov17_021028f8
FUN_ov17_021028f8: ; 0x021028F8
	stmfd sp!, {r3, lr}
	ldr r0, _0210292C ; =0x0211625C
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102934
	bl FUN_ov17_020f5384
	mov r0, #0x2a
	bl DWCi_CMNlMsgDraw
	mov r0, #2
	bl DWCi_ANIMElInitEx
	ldr r0, _02102930 ; =FUN_ov17_021029b4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210292C: .word ov17_0211625C
_02102930: .word FUN_ov17_021029b4
	arm_func_end FUN_ov17_021028f8

	arm_func_start FUN_ov17_02102934
FUN_ov17_02102934: ; 0x02102934
	stmfd sp!, {r3, lr}
	ldr r0, _021029A4 ; =0x021132C8
	ldr r1, _021029A8 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _021029AC ; =0x04001008
	ldr r1, _021029B0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021029A4: .word ov17_021132C8
_021029A8: .word GX_LoadBG2Scr
_021029AC: .word 0x04001008
_021029B0: .word 0x0400000A
	arm_func_end FUN_ov17_02102934

	arm_func_start FUN_ov17_021029b4
FUN_ov17_021029b4: ; 0x021029B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021029EC ; =FUN_ov17_021029f0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021029EC: .word FUN_ov17_021029f0
	arm_func_end FUN_ov17_021029b4

	arm_func_start FUN_ov17_021029f0
FUN_ov17_021029f0: ; 0x021029F0
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl DWCi_CMNlButton
	ldr r0, _02102A18 ; =FUN_ov17_02102a1c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102A18: .word FUN_ov17_02102a1c
	arm_func_end FUN_ov17_021029f0

	arm_func_start FUN_ov17_02102a1c
FUN_ov17_02102a1c: ; 0x02102A1C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02102A3C ; =FUN_ov17_02102a40
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102A3C: .word FUN_ov17_02102a40
	arm_func_end FUN_ov17_02102a1c

	arm_func_start FUN_ov17_02102a40
FUN_ov17_02102a40: ; 0x02102A40
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl FUN_ov17_02102c0c
	bl FUN_ov17_02102a60
	bl FUN_ov17_02102a98
	bl FUN_ov17_02102a9c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102a40

	arm_func_start FUN_ov17_02102a60
FUN_ov17_02102a60: ; 0x02102A60
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02102A80
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02102A80:
	bl FUN_ov17_021028d8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102a60

	arm_func_start FUN_ov17_02102a98
FUN_ov17_02102a98: ; 0x02102A98
	bx lr
	arm_func_end FUN_ov17_02102a98

	arm_func_start FUN_ov17_02102a9c
FUN_ov17_02102a9c: ; 0x02102A9C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02102AC4 ; =FUN_ov17_02102ac8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102AC4: .word FUN_ov17_02102ac8
	arm_func_end FUN_ov17_02102a9c

	arm_func_start FUN_ov17_02102ac8
FUN_ov17_02102ac8: ; 0x02102AC8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02102AE4 ; =FUN_ov17_02102ae8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102AE4: .word FUN_ov17_02102ae8
	arm_func_end FUN_ov17_02102ac8

	arm_func_start FUN_ov17_02102ae8
FUN_ov17_02102ae8: ; 0x02102AE8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02102B48 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B28
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02102B28:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02102B4C ; =FUN_ov17_02102b50
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02102B48: .word ov17_0211625C
_02102B4C: .word FUN_ov17_02102b50
	arm_func_end FUN_ov17_02102ae8

	arm_func_start FUN_ov17_02102b50
FUN_ov17_02102b50: ; 0x02102B50
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B84
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02102B84:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BBC
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02102BBC:
	bl FUN_ov17_020f9188
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BE8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02102C04 ; =FUN_ov17_0210462c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102BE8:
	mov r0, #0
	mov r1, r0
	bl DWCi_SetParam_
	ldr r0, _02102C08 ; =FUN_ov17_02102d3c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102C00: .word ov17_0211625C
_02102C04: .word FUN_ov17_0210462c
_02102C08: .word FUN_ov17_02102d3c
	arm_func_end FUN_ov17_02102b50

	arm_func_start FUN_ov17_02102c0c
FUN_ov17_02102c0c: ; 0x02102C0C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #3
	beq _02102C38
	cmp r0, #4
	beq _02102C5C
	cmp r0, #5
	beq _02102CA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C38:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r1, #1
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	bl FUN_ov17_020f9264
	ldr r0, _02102CE8 ; =FUN_ov17_02102ac8
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C5C:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _02102CEC ; =FUN_ov17_02102cf0
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CA0:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _02102CEC ; =FUN_ov17_02102cf0
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CE4: .word ov17_0211625C
_02102CE8: .word FUN_ov17_02102ac8
_02102CEC: .word FUN_ov17_02102cf0
	arm_func_end FUN_ov17_02102c0c

	arm_func_start FUN_ov17_02102cf0
FUN_ov17_02102cf0: ; 0x02102CF0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02102D18 ; =FUN_ov17_02102d1c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D18: .word FUN_ov17_02102d1c
	arm_func_end FUN_ov17_02102cf0

	arm_func_start FUN_ov17_02102d1c
FUN_ov17_02102d1c: ; 0x02102D1C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102D38 ; =FUN_ov17_02102ac8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D38: .word FUN_ov17_02102ac8
	arm_func_end FUN_ov17_02102d1c

	arm_func_start FUN_ov17_02102d3c
FUN_ov17_02102d3c: ; 0x02102D3C
	stmfd sp!, {r3, lr}
	ldr r0, _02102D70 ; =0x02116260
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102d78
	bl FUN_ov17_020f5384
	mov r0, #0x26
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _02102D74 ; =FUN_ov17_02102df8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102D70: .word ov17_02116260
_02102D74: .word FUN_ov17_02102df8
	arm_func_end FUN_ov17_02102d3c

	arm_func_start FUN_ov17_02102d78
FUN_ov17_02102d78: ; 0x02102D78
	stmfd sp!, {r3, lr}
	ldr r0, _02102DE8 ; =0x021132DC
	ldr r1, _02102DEC ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02102DF0 ; =0x04001008
	ldr r1, _02102DF4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02102DE8: .word ov17_021132DC
_02102DEC: .word GX_LoadBG2Scr
_02102DF0: .word 0x04001008
_02102DF4: .word 0x0400000A
	arm_func_end FUN_ov17_02102d78

	arm_func_start FUN_ov17_02102df8
FUN_ov17_02102df8: ; 0x02102DF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02102E30 ; =FUN_ov17_02102e34
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102E30: .word FUN_ov17_02102e34
	arm_func_end FUN_ov17_02102df8

	arm_func_start FUN_ov17_02102e34
FUN_ov17_02102e34: ; 0x02102E34
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102E54 ; =FUN_ov17_02102e58
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102E54: .word FUN_ov17_02102e58
	arm_func_end FUN_ov17_02102e34

	arm_func_start FUN_ov17_02102e58
FUN_ov17_02102e58: ; 0x02102E58
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02102f28
	bl FUN_ov17_02102e68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102e58

	arm_func_start FUN_ov17_02102e68
FUN_ov17_02102e68: ; 0x02102E68
	bx lr
	arm_func_end FUN_ov17_02102e68

	arm_func_start FUN_ov17_02102e6c
FUN_ov17_02102e6c: ; 0x02102E6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02102EAC ; =FUN_ov17_02102eb0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102EAC: .word FUN_ov17_02102eb0
	arm_func_end FUN_ov17_02102e6c

	arm_func_start FUN_ov17_02102eb0
FUN_ov17_02102eb0: ; 0x02102EB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _02102F24 ; =FUN_ov17_021054a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02102F24: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_02102eb0

	arm_func_start FUN_ov17_02102f28
FUN_ov17_02102f28: ; 0x02102F28
	stmfd sp!, {r3, lr}
	ldr r1, _02102F54 ; =0x02116260
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _02102F58 ; =FUN_ov17_02102e6c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02102F54: .word ov17_02116260
_02102F58: .word FUN_ov17_02102e6c
	arm_func_end FUN_ov17_02102f28

	arm_func_start FUN_ov17_02102f5c
FUN_ov17_02102f5c: ; 0x02102F5C
	ldr r0, _02102F78 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02102F78: .word 0x02FFFFA8
	arm_func_end FUN_ov17_02102f5c

	arm_func_start FUN_ov17_02102f7c
FUN_ov17_02102f7c: ; 0x02102F7C
	stmfd sp!, {r4, lr}
	ldr r0, _02102FD0 ; =0x02116264
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02102fd8
	bl FUN_ov17_020f5384
	mov r0, #0x37
	mov r2, r4
	sub r1, r0, #0x38
	bl DWCi_COMMENTlDispEx
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, #0x24
	bl DWCi_CMNlMsgDraw
	mov r0, r4
	bl DWCi_ANIMElInitEx
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _02102FD4 ; =FUN_ov17_02103080
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02102FD0: .word ov17_02116264
_02102FD4: .word FUN_ov17_02103080
	arm_func_end FUN_ov17_02102f7c

	arm_func_start FUN_ov17_02102fd8
FUN_ov17_02102fd8: ; 0x02102FD8
	stmfd sp!, {r3, lr}
	ldr r0, _02103060 ; =0x021132F0
	ldr r1, _02103064 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103068 ; =0x02113308
	ldr r1, _0210306C ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103070 ; =0x02113320
	ldr r1, _02103074 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02103078 ; =0x04001008
	ldr r1, _0210307C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02103060: .word ov17_021132F0
_02103064: .word GX_LoadBG2Char
_02103068: .word ov17_02113308
_0210306C: .word GX_LoadBGPltt
_02103070: .word ov17_02113320
_02103074: .word GX_LoadBG2Scr
_02103078: .word 0x04001008
_0210307C: .word 0x0400000A
	arm_func_end FUN_ov17_02102fd8

	arm_func_start FUN_ov17_02103080
FUN_ov17_02103080: ; 0x02103080
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021030E4 ; =FUN_ov17_021030e8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021030E4: .word FUN_ov17_021030e8
	arm_func_end FUN_ov17_02103080

	arm_func_start FUN_ov17_021030e8
FUN_ov17_021030e8: ; 0x021030E8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f911c
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _02103128 ; =FUN_ov17_0210312c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103128: .word FUN_ov17_0210312c
	arm_func_end FUN_ov17_021030e8

	arm_func_start FUN_ov17_0210312c
FUN_ov17_0210312c: ; 0x0210312C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _0210314C ; =FUN_ov17_02103150
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210314C: .word FUN_ov17_02103150
	arm_func_end FUN_ov17_0210312c

	arm_func_start FUN_ov17_02103150
FUN_ov17_02103150: ; 0x02103150
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl FUN_ov17_02103338
	bl FUN_ov17_02103170
	bl FUN_ov17_021031a8
	bl FUN_ov17_021031ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103150

	arm_func_start FUN_ov17_02103170
FUN_ov17_02103170: ; 0x02103170
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103190
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02103190:
	bl FUN_ov17_02102f5c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103170

	arm_func_start FUN_ov17_021031a8
FUN_ov17_021031a8: ; 0x021031A8
	bx lr
	arm_func_end FUN_ov17_021031a8

	arm_func_start FUN_ov17_021031ac
FUN_ov17_021031ac: ; 0x021031AC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _021031D4 ; =FUN_ov17_021031d8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021031D4: .word FUN_ov17_021031d8
	arm_func_end FUN_ov17_021031ac

	arm_func_start FUN_ov17_021031d8
FUN_ov17_021031d8: ; 0x021031D8
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021031F4 ; =FUN_ov17_021031f8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021031F4: .word FUN_ov17_021031f8
	arm_func_end FUN_ov17_021031d8

	arm_func_start FUN_ov17_021031f8
FUN_ov17_021031f8: ; 0x021031F8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103220
	bl DWCi_BTNlEnd
_02103220:
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103244
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02103244:
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02103268 ; =FUN_ov17_0210326c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103264: .word ov17_02116264
_02103268: .word FUN_ov17_0210326c
	arm_func_end FUN_ov17_021031f8

	arm_func_start FUN_ov17_0210326c
FUN_ov17_0210326c: ; 0x0210326C
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032A0
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_021032A0:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032D8
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_021032D8:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103314
	bl FUN_ov17_020f9188
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02103330 ; =FUN_ov17_0210462c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103314:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _02103334 ; =FUN_ov17_021024cc
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210332C: .word ov17_02116264
_02103330: .word FUN_ov17_0210462c
_02103334: .word FUN_ov17_021024cc
	arm_func_end FUN_ov17_0210326c

	arm_func_start FUN_ov17_02103338
FUN_ov17_02103338: ; 0x02103338
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #1
	beq _0210335C
	cmp r0, #4
	beq _02103378
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210335C:
	ldr r1, _021033BC ; =0x02116264
	mov r2, #1
	ldr r0, _021033C0 ; =FUN_ov17_021031d8
	strb r2, [r1]
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02103378:
	ldr r0, _021033BC ; =0x02116264
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _021033C4 ; =FUN_ov17_021033c8
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021033BC: .word ov17_02116264
_021033C0: .word FUN_ov17_021031d8
_021033C4: .word FUN_ov17_021033c8
	arm_func_end FUN_ov17_02103338

	arm_func_start FUN_ov17_021033c8
FUN_ov17_021033c8: ; 0x021033C8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _021033F0 ; =FUN_ov17_021033f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021033F0: .word FUN_ov17_021033f4
	arm_func_end FUN_ov17_021033c8

	arm_func_start FUN_ov17_021033f4
FUN_ov17_021033f4: ; 0x021033F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103410 ; =FUN_ov17_021031d8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103410: .word FUN_ov17_021031d8
	arm_func_end FUN_ov17_021033f4

	arm_func_start FUN_ov17_02103414
FUN_ov17_02103414: ; 0x02103414
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02103478 ; =0x02116268
	mov r5, #0
	strh r5, [r0, #2]
	strb r5, [r0]
	bl FUN_ov17_02103480
	mov r4, #0x33
	mov r0, r4
	mov r2, r5
	sub r1, r4, #0x34
	bl DWCi_COMMENTlDispEx
	bl FUN_ov17_020f5384
	mov r0, #2
	bl DWCi_CMNlStep
	mov r0, r4
	bl DWCi_CMNlMsgDraw
	mov r0, r5
	bl DWCi_ANIMElInitEx
	bl FUN_ov17_02106bb4
	bl FUN_ov17_02106c18
	mov r0, #0xa
	bl FUN_ov17_02107c40
	ldr r0, _0210347C ; =FUN_ov17_02103528
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103478: .word ov17_02116268
_0210347C: .word FUN_ov17_02103528
	arm_func_end FUN_ov17_02103414

	arm_func_start FUN_ov17_02103480
FUN_ov17_02103480: ; 0x02103480
	stmfd sp!, {r3, lr}
	ldr r0, _02103508 ; =0x02113334
	ldr r1, _0210350C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103510 ; =0x0211334C
	ldr r1, _02103514 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103518 ; =0x02113364
	ldr r1, _0210351C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02103520 ; =0x04001008
	ldr r1, _02103524 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02103508: .word ov17_02113334
_0210350C: .word GX_LoadBG2Char
_02103510: .word ov17_0211334C
_02103514: .word GX_LoadBGPltt
_02103518: .word ov17_02113364
_0210351C: .word GX_LoadBG2Scr
_02103520: .word 0x04001008
_02103524: .word 0x0400000A
	arm_func_end FUN_ov17_02103480

	arm_func_start FUN_ov17_02103528
FUN_ov17_02103528: ; 0x02103528
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210358C ; =FUN_ov17_02103590
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210358C: .word FUN_ov17_02103590
	arm_func_end FUN_ov17_02103528

	arm_func_start FUN_ov17_02103590
FUN_ov17_02103590: ; 0x02103590
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _021035CC ; =FUN_ov17_021035d0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021035CC: .word FUN_ov17_021035d0
	arm_func_end FUN_ov17_02103590

	arm_func_start FUN_ov17_021035d0
FUN_ov17_021035d0: ; 0x021035D0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _021035F0 ; =FUN_ov17_021035f4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021035F0: .word FUN_ov17_021035f4
	arm_func_end FUN_ov17_021035d0

	arm_func_start FUN_ov17_021035f4
FUN_ov17_021035f4: ; 0x021035F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02103734
	bl FUN_ov17_02103758
	bl FUN_ov17_0210375c
	bl FUN_ov17_0210360c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_021035f4

	arm_func_start FUN_ov17_0210360c
FUN_ov17_0210360c: ; 0x0210360C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _02103728 ; =0x02116268
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x12c
	addlo sp, sp, #8
	ldmlofd sp!, {r4, pc}
	bl FUN_ov17_02107ca8
	add r0, sp, #4
	bl FUN_ov17_02106da8
	cmp r0, #0
	bne _02103688
	mov r1, #1
	mov r0, #2
	strb r0, [r4]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xf
	str r4, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #0x12
	bl FUN_ov17_02107c40
	bl DWCi_BTNlDisable
	ldr r0, _0210372C ; =FUN_ov17_021038d8
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103688:
	cmp r0, #0
	mov r3, #0
	ble _021036B8
	ldr r4, [sp, #4]
	mov r1, #0x2a
_0210369C:
	mla r2, r3, r1, r4
	ldrb r2, [r2, #0x28]
	cmp r2, #2
	bne _021036B8
	add r3, r3, #1
	cmp r3, r0
	blt _0210369C
_021036B8:
	cmp r3, r0
	bne _02103704
	ldr r0, _02103728 ; =0x02116268
	mov r1, #1
	mov r3, #3
	strb r3, [r0]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #0x12
	bl FUN_ov17_02107c40
	bl DWCi_BTNlDisable
	ldr r0, _0210372C ; =FUN_ov17_021038d8
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103704:
	ldr r1, _02103728 ; =0x02116268
	mov r2, #1
	mov r0, #0xf
	strb r2, [r1]
	bl FUN_ov17_02107c40
	ldr r0, _02103730 ; =FUN_ov17_02103788
	bl DWCi_ChangeScene
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103728: .word ov17_02116268
_0210372C: .word FUN_ov17_021038d8
_02103730: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_0210360c

	arm_func_start FUN_ov17_02103734
FUN_ov17_02103734: ; 0x02103734
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103734

	arm_func_start FUN_ov17_02103758
FUN_ov17_02103758: ; 0x02103758
	bx lr
	arm_func_end FUN_ov17_02103758

	arm_func_start FUN_ov17_0210375c
FUN_ov17_0210375c: ; 0x0210375C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02103784 ; =FUN_ov17_02103788
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103784: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_0210375c

	arm_func_start FUN_ov17_02103788
FUN_ov17_02103788: ; 0x02103788
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021037A4 ; =FUN_ov17_021037a8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021037A4: .word FUN_ov17_021037a8
	arm_func_end FUN_ov17_02103788

	arm_func_start FUN_ov17_021037a8
FUN_ov17_021037a8: ; 0x021037A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlEnd
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02103800 ; =FUN_ov17_02103804
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02103800: .word FUN_ov17_02103804
	arm_func_end FUN_ov17_021037a8

	arm_func_start FUN_ov17_02103804
FUN_ov17_02103804: ; 0x02103804
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02103834:
	bl FUN_ov17_02106d14
	cmp r0, #0
	beq _02103834
	bl DWCi_ANIMElEnd
	mov r5, #0
	mov r0, r5
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r4, #1
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021038CC ; =0x02116268
	ldrb r0, [r0]
	cmp r0, #1
	beq _021038A8
	bl FUN_ov17_02106be4
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r1, r4
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021038D0 ; =FUN_ov17_0210462c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021038A8:
	mov r0, r5
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	ldr r0, _021038D4 ; =FUN_ov17_020fcd68
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021038CC: .word ov17_02116268
_021038D0: .word FUN_ov17_0210462c
_021038D4: .word FUN_ov17_020fcd68
	arm_func_end FUN_ov17_02103804

	arm_func_start FUN_ov17_021038d8
FUN_ov17_021038d8: ; 0x021038D8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02103900 ; =FUN_ov17_02103904
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103900: .word FUN_ov17_02103904
	arm_func_end FUN_ov17_021038d8

	arm_func_start FUN_ov17_02103904
FUN_ov17_02103904: ; 0x02103904
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103920 ; =FUN_ov17_02103788
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103920: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_02103904

	arm_func_start FUN_ov17_02103924
FUN_ov17_02103924: ; 0x02103924
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210397C ; =0x0211626C
	mov r4, #0
	str r0, [r1, #4]
	strb r4, [r0, #0x1d]
	bl FUN_ov17_02103984
	mov r0, #1
	bl FUN_ov17_020f5324
	mov r0, #0x2f
	mov r2, r4
	sub r1, r0, #0x30
	bl DWCi_COMMENTlDispEx
	mov r0, r4
	bl DWCi_CMNlStep
	bl FUN_ov17_02103a8c
	bl FUN_ov17_02104100
	ldr r0, _02103980 ; =FUN_ov17_02103b94
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210397C: .word ov17_0211626C
_02103980: .word FUN_ov17_02103b94
	arm_func_end FUN_ov17_02103924

	arm_func_start FUN_ov17_02103984
FUN_ov17_02103984: ; 0x02103984
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02103A5C ; =0x02112438
	add r3, sp, #0
	mov r2, #0xb
_02103998:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02103998
	ldr r0, _02103A60 ; =0x02113378
	ldr r1, _02103A64 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A68 ; =0x0211338C
	ldr r1, _02103A6C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A70 ; =0x021133A4
	ldr r1, _02103A74 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02103A78 ; =0x021133BC
	ldr r1, _02103A7C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r2, _02103A80 ; =0x0211626C
	mov r1, #0x10
	ldr r2, [r2, #4]
	str r0, [r2]
	mov r0, #1
	bl FUN_ov17_0210dcd0
	ldr r2, _02103A84 ; =0x04001008
	ldr r1, _02103A88 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02103A5C: .word ov17_02112438
_02103A60: .word ov17_02113378
_02103A64: .word GX_LoadOBJPltt
_02103A68: .word ov17_0211338C
_02103A6C: .word GX_LoadBG2Char
_02103A70: .word ov17_021133A4
_02103A74: .word GX_LoadBGPltt
_02103A78: .word ov17_021133BC
_02103A7C: .word GX_LoadBG2Scr
_02103A80: .word ov17_0211626C
_02103A84: .word 0x04001008
_02103A88: .word 0x0400000A
	arm_func_end FUN_ov17_02103984

	arm_func_start FUN_ov17_02103a8c
FUN_ov17_02103a8c: ; 0x02103A8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	ldr r6, _02103B88 ; =0x021123A8
	ldr r5, _02103B8C ; =0x0211239C
	ldr r4, _02103B90 ; =0x0211626C
	mov r11, r10
	mvn r7, #0
	mov r8, #3
_02103AAC:
	mov r0, r10
	bl FUN_ov17_02107488
	mov r9, r0
	cmp r9, #0xff
	moveq r9, r8
	beq _02103B20
	mov r0, r11
	mov r1, #0x11
	mov r2, #1
	bl DWCi_CEINlSetExCell
	ldr r1, [r4, #4]
	add r3, r10, #3
	mov r2, r3, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r4, #4]
	add r3, r6, r3, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
_02103B20:
	ldrb r1, [r5, r9]
	mov r0, #0
	mov r2, #1
	bl DWCi_CEINlSetExCell
	ldr r1, [r4, #4]
	mov r2, r10, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r3, r6, r10, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #4]
	mov r2, #3
	bl DWCi_CELLlSetPriority
	add r10, r10, #1
	cmp r10, #3
	blt _02103AAC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02103B88: .word ov17_021123A8
_02103B8C: .word ov17_0211239C
_02103B90: .word ov17_0211626C
	arm_func_end FUN_ov17_02103a8c

	arm_func_start FUN_ov17_02103b94
FUN_ov17_02103b94: ; 0x02103B94
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02103BF8 ; =FUN_ov17_02103bfc
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02103BF8: .word FUN_ov17_02103bfc
	arm_func_end FUN_ov17_02103b94

	arm_func_start FUN_ov17_02103bfc
FUN_ov17_02103bfc: ; 0x02103BFC
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _02103C38 ; =FUN_ov17_02103c3c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02103C38: .word FUN_ov17_02103c3c
	arm_func_end FUN_ov17_02103bfc

	arm_func_start FUN_ov17_02103c3c
FUN_ov17_02103c3c: ; 0x02103C3C
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_02108318
	cmp r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02103C68 ; =FUN_ov17_02103c6c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103C68: .word FUN_ov17_02103c6c
	arm_func_end FUN_ov17_02103c3c

	arm_func_start FUN_ov17_02103c6c
FUN_ov17_02103c6c: ; 0x02103C6C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02103c80
	bl FUN_ov17_02103d78
	bl FUN_ov17_02103d7c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103c6c

	arm_func_start FUN_ov17_02103c80
FUN_ov17_02103c80: ; 0x02103C80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02103D70 ; =0x021123C0
	mov r5, #0
_02103C8C:
	add r0, r4, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _02103CB4
	mov r0, #1
	bl DWCi_BTNlSet
	ldr r0, _02103D74 ; =0x0211626C
	strb r5, [r0]
	bl FUN_ov17_02104100
	ldmfd sp!, {r3, r4, r5, pc}
_02103CB4:
	add r5, r5, #1
	cmp r5, #7
	blo _02103C8C
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103CE0
	mov r0, r5
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_02103CE0:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103D00
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, r4, r5, pc}
_02103D00:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D1C
	mov r0, r5
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D1C:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D38
	mov r0, #3
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D38:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D54
	mov r0, #0
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D54:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D70: .word ov17_021123C0
_02103D74: .word ov17_0211626C
	arm_func_end FUN_ov17_02103c80

	arm_func_start FUN_ov17_02103d78
FUN_ov17_02103d78: ; 0x02103D78
	bx lr
	arm_func_end FUN_ov17_02103d78

	arm_func_start FUN_ov17_02103d7c
FUN_ov17_02103d7c: ; 0x02103D7C
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02103D98
	cmp r0, #1
	beq _02103DDC
	ldmfd sp!, {r3, r4, r5, pc}
_02103D98:
	bl DWCi_Entry
	cmp r0, #0
	beq _02103DB0
	cmp r0, #1
	beq _02103DCC
	b _02103E7C
_02103DB0:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02103E88 ; =0x0211626C
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x1d]
	b _02103E7C
_02103DCC:
	bl DWCi_BTNlDisable
	ldr r0, _02103E8C ; =FUN_ov17_020f92c4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103DDC:
	ldr r0, _02103E88 ; =0x0211626C
	mov r4, #1
	ldr r1, [r0, #4]
	strb r4, [r1, #0x1d]
	ldrb r0, [r0]
	cmp r0, #4
	blo _02103E64
	sub r5, r0, #4
	mov r0, r5
	bl FUN_ov17_02107488
	cmp r0, #0xff
	bne _02103E24
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	sub r0, r4, #0xa
	bl DWCi_BTNlSetForce
	ldmfd sp!, {r3, r4, r5, pc}
_02103E24:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl DWCi_Language
	ldr r1, _02103E90 ; =0x021123A0
	add r12, r5, #1
	ldrsb r3, [r1, r0]
	mov r2, r4
	mov r0, #0x46
	mov r1, #0
	str r12, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_02104340
	bl DWCi_BTNlDisable
	ldr r0, _02103E94 ; =FUN_ov17_021043d4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103E64:
	cmp r0, #2
	bhi _02103E70
	bl FUN_ov17_021074a0
_02103E70:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104558
_02103E7C:
	ldr r0, _02103E98 ; =FUN_ov17_02103e9c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103E88: .word ov17_0211626C
_02103E8C: .word FUN_ov17_020f92c4
_02103E90: .word ov17_021123A0
_02103E94: .word FUN_ov17_021043d4
_02103E98: .word FUN_ov17_02103e9c
	arm_func_end FUN_ov17_02103d7c

	arm_func_start FUN_ov17_02103e9c
FUN_ov17_02103e9c: ; 0x02103E9C
	stmfd sp!, {r3, lr}
	ldr r0, _02103ED0 ; =0x0211626C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02103EB8
	bl FUN_ov17_02108214
_02103EB8:
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02103ED4 ; =FUN_ov17_02103ed8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02103ED0: .word ov17_0211626C
_02103ED4: .word FUN_ov17_02103ed8
	arm_func_end FUN_ov17_02103e9c

	arm_func_start FUN_ov17_02103ed8
FUN_ov17_02103ed8: ; 0x02103ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02103F5C ; =0x0211626C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #1
	bne _02103F20
	ldrb r0, [r0]
	cmp r0, #3
	beq _02103F1C
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	beq _02103F20
_02103F1C:
	bl DWCi_BTNlEnd
_02103F20:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02103F60 ; =FUN_ov17_02103f64
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02103F5C: .word ov17_0211626C
_02103F60: .word FUN_ov17_02103f64
	arm_func_end FUN_ov17_02103ed8

	arm_func_start FUN_ov17_02103f64
FUN_ov17_02103f64: ; 0x02103F64
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_02108718
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _021040E0 ; =0x0211626C
_02103FA8:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02103FC0
	bl DWCi_CELLlDelete
_02103FC0:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FA8
	ldr r4, _021040E0 ; =0x0211626C
	mov r5, #0
_02103FD4:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02103FEC
	bl DWCi_CELLlDelete
_02103FEC:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FD4
	bl FUN_ov17_020f5258
	bl DWCi_COMMENTlDelete
	ldr r4, _021040E0 ; =0x0211626C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl DWCi_ARClRelease
	ldr r0, _021040E4 ; =0x021133D0
	ldr r1, _021040E8 ; =GX_LoadOBJPltt
	bl DWCi_CMNlLoadResource
	mov r6, #1
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r5, #0
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02104060
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam_
	ldr r0, _021040EC ; =FUN_ov17_020f9618
	b _021040D0
_02104060:
	ldrb r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021040D4
_02104070: ; jump table
	b _02104080 ; case 0
	b _02104080 ; case 1
	b _02104080 ; case 2
	b _021040C0 ; case 3
_02104080:
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	bne _021040A4
	ldr r0, _021040F0 ; =FUN_ov17_0210462c
	b _021040D0
_021040A4:
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	mov r0, r5
	bl FUN_ov17_02102254
	ldr r0, _021040F4 ; =FUN_ov17_020fff90
	b _021040D0
_021040C0:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _021040F8 ; =FUN_ov17_02105940
_021040D0:
	bl DWCi_ChangeScene
_021040D4:
	ldr r0, _021040FC ; =0x02116270
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, r5, r6, pc}
_021040E0: .word ov17_0211626C
_021040E4: .word ov17_021133D0
_021040E8: .word GX_LoadOBJPltt
_021040EC: .word FUN_ov17_020f9618
_021040F0: .word FUN_ov17_0210462c
_021040F4: .word FUN_ov17_020fff90
_021040F8: .word FUN_ov17_02105940
_021040FC: .word ov17_02116270
	arm_func_end FUN_ov17_02103f64

	arm_func_start FUN_ov17_02104100
FUN_ov17_02104100: ; 0x02104100
	stmfd sp!, {r3, lr}
	ldr r0, _02104168 ; =0x0211626C
	ldrb r2, [r0]
	cmp r2, #4
	bhs _02104140
	mov r12, r2, lsl #3
	ldr r0, _0210416C ; =0x021123F8
	ldr r1, _02104170 ; =0x021123FC
	ldr r2, _02104174 ; =0x021123FA
	ldr r3, _02104178 ; =0x021123FE
	ldrh r0, [r0, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, pc}
_02104140:
	ldr r1, _0210416C ; =0x021123F8
	mov r3, r2, lsl #3
	ldr r2, _02104170 ; =0x021123FC
	ldr r0, _02104174 ; =0x021123FA
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #0
	bl FUN_ov17_020f50cc
	ldmfd sp!, {r3, pc}
_02104168: .word ov17_0211626C
_0210416C: .word ov17_021123F8
_02104170: .word ov17_021123FC
_02104174: .word ov17_021123FA
_02104178: .word ov17_021123FE
	arm_func_end FUN_ov17_02104100

	arm_func_start FUN_ov17_0210417c
FUN_ov17_0210417c: ; 0x0210417C
	stmfd sp!, {r4, lr}
	ldr r2, _0210433C ; =0x0211626C
	mov r4, #0
	ldrb r3, [r2]
	mov lr, #3
	mov r1, #1
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _02104324
_021041A0: ; jump table
	b _021041BC ; case 0
	b _021041F0 ; case 1
	b _02104224 ; case 2
	b _0210425C ; case 3
	b _02104284 ; case 4
	b _021042B8 ; case 5
	b _021042EC ; case 6
_021041BC:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	streqb r1, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #4
	b _02104254
_021041F0:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	streqb r4, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #5
	b _02104254
_02104224:
	ldr r3, [r2, #4]
	mov r12, #2
	strb r12, [r3, #0x1c]
	cmp r0, #0
	streqb r1, [r2]
	beq _02104324
	cmp r0, #2
	streqb r4, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #6
_02104254:
	strneb r0, [r2]
	b _02104324
_0210425C:
	ldr r3, [r2, #4]
	cmp r0, #1
	ldrb r12, [r3, #0x1c]
	add r3, r12, #4
	streqb r3, [r2]
	beq _02104324
	cmp r0, #3
	streqb r12, [r2]
	movne r1, r4
	b _02104324
_02104284:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r4, [r2]
	b _02104320
_021042B8:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r1, [r2]
	b _02104320
_021042EC:
	ldr r3, [r2, #4]
	mov r12, #2
	cmp r0, #0
	strb r12, [r3, #0x1c]
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r12, [r2]
_02104320:
	strneb lr, [r2]
_02104324:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104100
	ldmfd sp!, {r4, pc}
_0210433C: .word ov17_0211626C
	arm_func_end FUN_ov17_0210417c

	arm_func_start FUN_ov17_02104340
FUN_ov17_02104340: ; 0x02104340
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _021043C8 ; =0x0211626C
	mov r7, #0
	ldrb r2, [r5]
	ldr r0, [r5, #4]
	mov r1, r7
	sub r4, r2, #4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlGetObj
	mov r6, #0x32
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl DWCi_CEINlSet
	add r2, r4, #3
	ldr r0, [r5, #4]
	sub r6, r6, #0x33
	add r0, r0, r4, lsl #2
	ldr r1, _021043CC ; =0x021123A8
	ldr r0, [r0, #0x10]
	mov r12, r2, lsl #2
	ldrh r2, [r1, r12]
	mov r1, r6
	ldr r3, _021043D0 ; =0x021123AA
	ldrh r3, [r3, r12]
	bl DWCi_CELLlSetPosition
	ldr r0, [r5, #4]
	mov r1, r6
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021043C8: .word ov17_0211626C
_021043CC: .word ov17_021123A8
_021043D0: .word ov17_021123AA
	arm_func_end FUN_ov17_02104340

	arm_func_start FUN_ov17_021043d4
FUN_ov17_021043d4: ; 0x021043D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104524 ; =0x0211626C
	ldrb r0, [r6]
	sub r5, r0, #4
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _02104498
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0xe
	bl FUN_ov17_02107c40
	mov r0, r5
	bl FUN_ov17_02107878
	ldr r0, [r6, #4]
	mov r4, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r4
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r4
	mov r7, #0x56
	mov r1, r7
	bl DWCi_CEINlSet
	sub r7, r7, #0x57
	ldr r0, [r6, #4]
	mov r12, r5, lsl #2
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r7
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl DWCi_CELLlSetPosition
	mov r1, r7
	ldr r0, [r6, #4]
	mov r2, #3
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	bl DWCi_CELLlSetPriority
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlDelete
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	b _02104514
_02104498:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, [r6, #4]
	mov r7, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlGetObj
	mov r4, #0x11
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl DWCi_CEINlSet
	sub r7, r4, #0x12
	add r0, r5, #3
	mov r4, r0, lsl #2
	ldr r0, [r6, #4]
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	add r0, r0, r5, lsl #2
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	ldr r0, [r6, #4]
	mov r1, r7
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl DWCi_CELLlSetPriority
_02104514:
	bl FUN_ov17_021091b8
	ldr r0, _02104530 ; =FUN_ov17_02104534
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104524: .word ov17_0211626C
_02104528: .word ov17_021123A8
_0210452C: .word ov17_021123AA
_02104530: .word FUN_ov17_02104534
	arm_func_end FUN_ov17_021043d4

	arm_func_start FUN_ov17_02104534
FUN_ov17_02104534: ; 0x02104534
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02104554 ; =FUN_ov17_02103c6c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104554: .word FUN_ov17_02103c6c
	arm_func_end FUN_ov17_02104534

	arm_func_start FUN_ov17_02104558
FUN_ov17_02104558: ; 0x02104558
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _02104620 ; =0x02112430
	ldr r0, _02104624 ; =0x02112434
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	ldrb r5, [r1, #2]
	ldrb lr, [r1, #3]
	ldrb r12, [r0]
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	ldr r4, _02104628 ; =0x0211626C
	strb r7, [sp, #4]
	ldrb r0, [r4]
	strb r1, [sp, #3]
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb lr, [sp, #7]
	strb r12, [sp]
	strb r3, [sp, #1]
	strb r2, [sp, #2]
	cmp r0, #3
	add r1, sp, #4
	addhi sp, sp, #8
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r1, r0]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov17_02106444
	ldrb r0, [r4]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov17_02107488
	ldr r1, _02104628 ; =0x0211626C
	cmp r0, #2
	ldrb r4, [r1]
	ldr r1, [r1, #4]
	movgt r0, #3
	add r2, sp, #0
	ldrb r3, [r2, r0]
	add r0, r1, r4, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r2, #0
	bl DWCi_CELLlSetPalette
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104620: .word ov17_02112430
_02104624: .word ov17_02112434
_02104628: .word ov17_0211626C
	arm_func_end FUN_ov17_02104558

	arm_func_start FUN_ov17_0210462c
FUN_ov17_0210462c: ; 0x0210462C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl FUN_ov17_02107098
	ldr r1, _02104738 ; =0x02116274
	mov r2, #0
	strb r2, [r1, #2]
	ldrsb r2, [r1]
	mov r4, r0
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r1]
	bl DWCi_Language
	cmp r0, #0
	beq _02104688
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0, #1]
	cmp r1, #2
	moveq r1, #0
	streqb r1, [r0, #1]
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0]
	cmp r1, #2
	moveq r1, #1
	streqb r1, [r0]
_02104688:
	bl FUN_ov17_02104754
	bl FUN_ov17_020f5384
	bl DWCi_Language
	mov r5, r0
	ldrb r1, [r4, #0xf4]
	mov r0, #0x32
	ldr r3, _0210473C ; =0x02112454
	add r2, r1, #1
	ldrsb r1, [r3, r5]
	bl DWCi_COMMENTlDispEx
	mov r7, #1
	mov r0, r7
	bl DWCi_CMNlStep
	mov r0, r7
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	mov r3, r0
	ldr r1, _02104740 ; =0x021124D4
	ldr r0, _02104738 ; =0x02116274
	add r12, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _02104744 ; =0x021124D8
	ldr r0, _02104748 ; =0x021124D6
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	mov r5, lr, lsl #3
	ldrh r0, [r5, r12]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0210474C ; =0x021124DA
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl FUN_ov17_020f5178
	ldr r0, _02104750 ; =FUN_ov17_02104838
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104738: .word ov17_02116274
_0210473C: .word ov17_02112454
_02104740: .word ov17_021124D4
_02104744: .word ov17_021124D8
_02104748: .word ov17_021124D6
_0210474C: .word ov17_021124DA
_02104750: .word FUN_ov17_02104838
	arm_func_end FUN_ov17_0210462c

	arm_func_start FUN_ov17_02104754
FUN_ov17_02104754: ; 0x02104754
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02104810 ; =0x0211247C
	add r3, sp, #0
	mov r2, #0xb
_02104768:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02104768
	ldr r0, _02104814 ; =0x021133E8
	ldr r1, _02104818 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _0210481C ; =0x02113400
	ldr r1, _02104820 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02104824 ; =0x02113418
	ldr r1, _02104828 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	add r0, sp, #0
	bl DWCi_Char
	mov r1, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _0210482C ; =0x02116274
	ldr r2, _02104830 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _02104834 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02104810: .word ov17_0211247C
_02104814: .word ov17_021133E8
_02104818: .word GX_LoadBG2Char
_0210481C: .word ov17_02113400
_02104820: .word GX_LoadBGPltt
_02104824: .word ov17_02113418
_02104828: .word GX_LoadBG2Scr
_0210482C: .word ov17_02116274
_02104830: .word 0x04001008
_02104834: .word 0x0400000A
	arm_func_end FUN_ov17_02104754

	arm_func_start FUN_ov17_02104838
FUN_ov17_02104838: ; 0x02104838
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210489C ; =FUN_ov17_021048a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210489C: .word FUN_ov17_021048a0
	arm_func_end FUN_ov17_02104838

	arm_func_start FUN_ov17_021048a0
FUN_ov17_021048a0: ; 0x021048A0
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl DWCi_CMNlButton
	ldr r0, _021048DC ; =FUN_ov17_021048e0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021048DC: .word FUN_ov17_021048e0
	arm_func_end FUN_ov17_021048a0

	arm_func_start FUN_ov17_021048e0
FUN_ov17_021048e0: ; 0x021048E0
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02104900 ; =FUN_ov17_02104904
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104900: .word FUN_ov17_02104904
	arm_func_end FUN_ov17_021048e0

	arm_func_start FUN_ov17_02104904
FUN_ov17_02104904: ; 0x02104904
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02104918
	bl FUN_ov17_02104a94
	bl FUN_ov17_02104a98
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02104904

	arm_func_start FUN_ov17_02104918
FUN_ov17_02104918: ; 0x02104918
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02104A7C ; =0x02112494
	mov r5, #0
	mov r7, #1
_02104928:
	mov r0, r7
	bl DWCi_Flag
	add r0, r4, r0, lsl #5
	add r0, r0, r5, lsl #3
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _021049C4
	mov r0, r7
	bl DWCi_BTNlSet
	ldr r8, _02104A80 ; =0x02116274
	mov r0, r7
	strb r5, [r8, #1]
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	ldrsb r1, [r8, #1]
	ldr r2, _02104A84 ; =0x021124D8
	mov r12, r0
	mov r3, r1, lsl #3
	ldr r0, _02104A88 ; =0x021124D4
	ldr r1, _02104A8C ; =0x021124D6
	add r5, r2, r5, lsl #5
	add r2, r1, r4, lsl #5
	ldr r4, _02104A90 ; =0x021124DA
	add r0, r0, r6, lsl #5
	add r4, r4, r12, lsl #5
	ldrh r0, [r3, r0]
	ldrh r1, [r3, r5]
	ldrh r2, [r3, r2]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049C4:
	add r5, r5, #1
	cmp r5, #4
	blo _02104928
	mov r0, r7
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _021049EC
	mov r0, r7
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049EC:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02104A0C
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A0C:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A28
	mov r0, r7
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A28:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A44
	mov r0, #3
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A44:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A60
	mov r0, #0
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A60:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A7C: .word ov17_02112494
_02104A80: .word ov17_02116274
_02104A84: .word ov17_021124D8
_02104A88: .word ov17_021124D4
_02104A8C: .word ov17_021124D6
_02104A90: .word ov17_021124DA
	arm_func_end FUN_ov17_02104918

	arm_func_start FUN_ov17_02104a94
FUN_ov17_02104a94: ; 0x02104A94
	bx lr
	arm_func_end FUN_ov17_02104a94

	arm_func_start FUN_ov17_02104a98
FUN_ov17_02104a98: ; 0x02104A98
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02104AB4
	cmp r0, #1
	beq _02104AC0
	ldmfd sp!, {r3, pc}
_02104AB4:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _02104AD8
_02104AC0:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104d9c
	ldr r0, _02104AE4 ; =0x02116274
	mov r1, #1
	strb r1, [r0, #2]
_02104AD8:
	ldr r0, _02104AE8 ; =FUN_ov17_02104aec
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104AE4: .word ov17_02116274
_02104AE8: .word FUN_ov17_02104aec
	arm_func_end FUN_ov17_02104a98

	arm_func_start FUN_ov17_02104aec
FUN_ov17_02104aec: ; 0x02104AEC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02104B08 ; =FUN_ov17_02104b0c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02104B08: .word FUN_ov17_02104b0c
	arm_func_end FUN_ov17_02104aec

	arm_func_start FUN_ov17_02104b0c
FUN_ov17_02104b0c: ; 0x02104B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02104B70 ; =0x02116274
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _02104B34
	bl DWCi_BTNlEnd
_02104B34:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02104B74 ; =FUN_ov17_02104b78
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02104B70: .word ov17_02116274
_02104B74: .word FUN_ov17_02104b78
	arm_func_end FUN_ov17_02104b0c

	arm_func_start FUN_ov17_02104b78
FUN_ov17_02104b78: ; 0x02104B78
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f5258
	bl DWCi_COMMENTlDelete
	ldr r4, _02104C94 ; =0x02116274
	ldr r0, [r4, #4]
	bl DWCi_ARClRelease
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02104C00
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104C98 ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C00:
	ldrsb r0, [r4, #1]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02104C10: ; jump table
	b _02104C20 ; case 0
	b _02104C38 ; case 1
	b _02104C50 ; case 2
	b _02104C68 ; case 3
_02104C20:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104C9C ; =FUN_ov17_02103414
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C38:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104CA0 ; =FUN_ov17_020fc598
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C50:
	mov r1, r6
	mov r0, #2
	bl DWCi_SetParam_
	ldr r0, _02104CA4 ; =FUN_ov17_02102f7c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C68:
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	mov r0, r5
	mov r1, r5
	bl DWCi_SetParam2_
	mov r0, r6
	bl FUN_ov17_02102254
	ldr r0, _02104CA8 ; =FUN_ov17_020fff90
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, pc}
_02104C94: .word ov17_02116274
_02104C98: .word FUN_ov17_02103924
_02104C9C: .word FUN_ov17_02103414
_02104CA0: .word FUN_ov17_020fc598
_02104CA4: .word FUN_ov17_02102f7c
_02104CA8: .word FUN_ov17_020fff90
	arm_func_end FUN_ov17_02104b78

	arm_func_start FUN_ov17_02104cac
FUN_ov17_02104cac: ; 0x02104CAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104D84 ; =0x02116274
	mov r7, #1
	mov r5, r0
	mov r0, r7
	ldrsb r4, [r6, #1]
	bl DWCi_Flag
	ldr r2, _02104D88 ; =0x0211245B
	sub r1, r7, #2
	add r0, r2, r0, lsl #4
	add r0, r0, r4, lsl #2
	ldrsb r2, [r5, r0]
	cmp r2, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r2, #0
	streqb r4, [r6]
	cmn r2, #2
	ldreq r0, _02104D84 ; =0x02116274
	ldreqsb r1, [r0]
	streqb r1, [r0, #1]
	ldrne r0, _02104D84 ; =0x02116274
	strneb r2, [r0, #1]
	mov r0, #8
	bl FUN_ov17_02107c40
	mov r7, #1
	mov r0, r7
	bl DWCi_Flag
	mov r6, r0
	mov r0, r7
	bl DWCi_Flag
	mov r5, r0
	mov r0, r7
	bl DWCi_Flag
	mov r4, r0
	mov r0, r7
	bl DWCi_Flag
	mov r3, r0
	ldr r0, _02104D84 ; =0x02116274
	ldr r1, _02104D8C ; =0x021124D4
	ldrsb r12, [r0, #1]
	ldr r0, _02104D90 ; =0x021124D6
	add r6, r1, r6, lsl #5
	ldr r1, _02104D94 ; =0x021124D8
	add r2, r0, r4, lsl #5
	ldr r4, _02104D98 ; =0x021124DA
	add r1, r1, r5, lsl #5
	mov r5, r12, lsl #3
	add r3, r4, r3, lsl #5
	ldrh r0, [r5, r6]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldrh r3, [r5, r3]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104D84: .word ov17_02116274
_02104D88: .word ov17_0211245B
_02104D8C: .word ov17_021124D4
_02104D90: .word ov17_021124D6
_02104D94: .word ov17_021124D8
_02104D98: .word ov17_021124DA
	arm_func_end FUN_ov17_02104cac

	arm_func_start FUN_ov17_02104d9c
FUN_ov17_02104d9c: ; 0x02104D9C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02104DEC ; =0x02112450
	ldr r0, _02104DF0 ; =0x02116274
	ldrb lr, [r1]
	ldrb r12, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	ldrsb r1, [r0, #1]
	add r4, sp, #0
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl FUN_ov17_02106444
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104DEC: .word ov17_02112450
_02104DF0: .word ov17_02116274
	arm_func_end FUN_ov17_02104d9c

	arm_func_start FUN_ov17_02104df4
FUN_ov17_02104df4: ; 0x02104DF4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _02104E84 ; =0x0211627C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02104e8c
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E34
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl DWCi_COMMENTlDispEx
_02104E34:
	mov r0, #2
	bl DWCi_CMNlStep
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E4C
	bl FUN_ov17_020f5384
_02104E4C:
	mov r0, #0x2c
	bl DWCi_CMNlMsgDraw
	mov r4, #0
	mov r0, r4
	bl DWCi_ANIMElInitEx
	bl FUN_ov17_02104f34
	mov r0, r4
	bl FUN_ov17_020f53f4
	mov r0, #0xc
	bl FUN_ov17_02107c40
	ldr r0, _02104E88 ; =FUN_ov17_02104fcc
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104E84: .word ov17_0211627C
_02104E88: .word FUN_ov17_02104fcc
	arm_func_end FUN_ov17_02104df4

	arm_func_start FUN_ov17_02104e8c
FUN_ov17_02104e8c: ; 0x02104E8C
	stmfd sp!, {r3, lr}
	ldr r0, _02104F14 ; =0x0211342C
	ldr r1, _02104F18 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02104F1C ; =0x02113444
	ldr r1, _02104F20 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02104F24 ; =0x0211345C
	ldr r1, _02104F28 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02104F2C ; =0x04001008
	ldr r1, _02104F30 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02104F14: .word ov17_0211342C
_02104F18: .word GX_LoadBG2Char
_02104F1C: .word ov17_02113444
_02104F20: .word GX_LoadBGPltt
_02104F24: .word ov17_0211345C
_02104F28: .word GX_LoadBG2Scr
_02104F2C: .word 0x04001008
_02104F30: .word 0x0400000A
	arm_func_end FUN_ov17_02104e8c

	arm_func_start FUN_ov17_02104f34
FUN_ov17_02104f34: ; 0x02104F34
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	bl FUN_ov17_02107098
	mov r4, r0
	ldr r0, _02104FC4 ; =0x02112514
	add r1, sp, #4
	mov r2, #0x14
	bl MIi_CpuCopy32
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #2
	moveq r0, #4
	streqb r0, [sp, #0xe]
	ldrneb r0, [r4, #0xf4]
	addne r0, r0, #1
	strneb r0, [sp, #0xe]
	add r0, sp, #4
	bl DWC_AC_Create
	cmp r0, #0
	bne _02104F90
	bl OS_Terminate
_02104F90:
	ldr r0, [sp]
	cmp r0, #0
	bne _02104FA8
	ldrb r0, [r4, #0xf4]
	mov r1, r4
	bl DWCi_AC_InsertApInfo
_02104FA8:
	mov r0, #0
	ldr r1, _02104FC8 ; =FUN_ov17_02105188
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_02104FC4: .word ov17_02112514
_02104FC8: .word FUN_ov17_02105188
	arm_func_end FUN_ov17_02104f34

	arm_func_start FUN_ov17_02104fcc
FUN_ov17_02104fcc: ; 0x02104FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210dcd0
	add r1, sp, #0
	mov r0, r6
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _0210503C
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dcd0
_0210503C:
	ldr r0, _02105048 ; =FUN_ov17_0210504c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02105048: .word FUN_ov17_0210504c
	arm_func_end FUN_ov17_02104fcc

	arm_func_start FUN_ov17_0210504c
FUN_ov17_0210504c: ; 0x0210504C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210507C ; =FUN_ov17_02105080
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210507C: .word FUN_ov17_02105080
	arm_func_end FUN_ov17_0210504c

	arm_func_start FUN_ov17_02105080
FUN_ov17_02105080: ; 0x02105080
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105094
	bl FUN_ov17_02105098
	bl FUN_ov17_0210509c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105080

	arm_func_start FUN_ov17_02105094
FUN_ov17_02105094: ; 0x02105094
	bx lr
	arm_func_end FUN_ov17_02105094

	arm_func_start FUN_ov17_02105098
FUN_ov17_02105098: ; 0x02105098
	bx lr
	arm_func_end FUN_ov17_02105098

	arm_func_start FUN_ov17_0210509c
FUN_ov17_0210509c: ; 0x0210509C
	bx lr
	arm_func_end FUN_ov17_0210509c

	arm_func_start FUN_ov17_021050a0
FUN_ov17_021050a0: ; 0x021050A0
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _021050C4 ; =FUN_ov17_021050c8
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021050C4: .word FUN_ov17_021050c8
	arm_func_end FUN_ov17_021050a0

	arm_func_start FUN_ov17_021050c8
FUN_ov17_021050c8: ; 0x021050C8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021050E8 ; =FUN_ov17_021050ec
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021050E8: .word FUN_ov17_021050ec
	arm_func_end FUN_ov17_021050c8

	arm_func_start FUN_ov17_021050ec
FUN_ov17_021050ec: ; 0x021050EC
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov17_02107868
	mov r5, r0
	bl DWC_AC_Destroy
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_BACKUPlGetWifi
	mov r4, #0xe
	mov r2, r4
	add r1, r5, #0xf0
	bl MI_CpuCopy8
	bl DWCi_BACKUPlGetWifi
	mov r2, r4
	add r1, r5, #0x1f0
	bl MI_CpuCopy8
	bl DWCi_ANIMElEnd
	mov r4, #0
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _0210517C ; =0x0211627C
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _0210516C
	bl DWCi_SetParam_
	ldr r0, _02105180 ; =FUN_ov17_020ff978
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210516C:
	bl DWCi_SetParam_
	ldr r0, _02105184 ; =FUN_ov17_02105214
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210517C: .word ov17_0211627C
_02105180: .word FUN_ov17_020ff978
_02105184: .word FUN_ov17_02105214
	arm_func_end FUN_ov17_021050ec

	arm_func_start FUN_ov17_02105188
FUN_ov17_02105188: ; 0x02105188
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DWC_AC_Process
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f54a4
	bl FUN_ov17_02107ca8
	cmp r4, #0
	ble _021051C0
	ldr r1, _021051E8 ; =0x0211627C
	mov r2, #1
	mov r0, #0x11
	strb r2, [r1]
	b _021051CC
_021051C0:
	bl DWC_AC_GetStatus
	bl FUN_ov17_020fff80
	mov r0, #0x12
_021051CC:
	bl FUN_ov17_02107c40
	ldr r0, _021051EC ; =FUN_ov17_021050a0
	bl DWCi_ChangeScene
	mov r1, r5
	mov r0, #0
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, pc}
_021051E8: .word ov17_0211627C
_021051EC: .word FUN_ov17_021050a0
	arm_func_end FUN_ov17_02105188

	arm_func_start FUN_ov17_021051f0
FUN_ov17_021051f0: ; 0x021051F0
	ldr r12, _02105200 ; =DWCi_HEAPlAllocEx
	mov r0, r1
	mov r1, #0x20
	bx r12
_02105200: .word DWCi_HEAPlAllocEx
	arm_func_end FUN_ov17_021051f0

	arm_func_start FUN_ov17_02105204
FUN_ov17_02105204: ; 0x02105204
	ldr r12, _02105210 ; =FUN_ov17_0210e110
	mov r0, r1
	bx r12
_02105210: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_02105204

	arm_func_start FUN_ov17_02105214
FUN_ov17_02105214: ; 0x02105214
	stmfd sp!, {r3, lr}
	ldr r0, _0210523C ; =0x02116280
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02105244
	mov r0, #0x2d
	bl DWCi_CMNlMsgDraw
	ldr r0, _02105240 ; =FUN_ov17_021052b0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210523C: .word ov17_02116280
_02105240: .word FUN_ov17_021052b0
	arm_func_end FUN_ov17_02105214

	arm_func_start FUN_ov17_02105244
FUN_ov17_02105244: ; 0x02105244
	stmfd sp!, {r3, lr}
	ldr r0, _021052A0 ; =0x02113470
	ldr r1, _021052A4 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _021052A8 ; =0x04001008
	ldr r1, _021052AC ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021052A0: .word ov17_02113470
_021052A4: .word GX_LoadBG2Scr
_021052A8: .word 0x04001008
_021052AC: .word 0x0400000A
	arm_func_end FUN_ov17_02105244

	arm_func_start FUN_ov17_021052b0
FUN_ov17_021052b0: ; 0x021052B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021052E8 ; =FUN_ov17_021052ec
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_021052E8: .word FUN_ov17_021052ec
	arm_func_end FUN_ov17_021052b0

	arm_func_start FUN_ov17_021052ec
FUN_ov17_021052ec: ; 0x021052EC
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210530C ; =FUN_ov17_02105310
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_0210530C: .word FUN_ov17_02105310
	arm_func_end FUN_ov17_021052ec

	arm_func_start FUN_ov17_02105310
FUN_ov17_02105310: ; 0x02105310
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105430
	bl FUN_ov17_02105320
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105310

	arm_func_start FUN_ov17_02105320
FUN_ov17_02105320: ; 0x02105320
	bx lr
	arm_func_end FUN_ov17_02105320

	arm_func_start FUN_ov17_02105324
FUN_ov17_02105324: ; 0x02105324
	stmfd sp!, {r3, r4, r5, lr}
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	beq _02105344
	bl FUN_ov17_02108214
_02105344:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02105380 ; =FUN_ov17_02105384
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105380: .word FUN_ov17_02105384
	arm_func_end FUN_ov17_02105324

	arm_func_start FUN_ov17_02105384
FUN_ov17_02105384: ; 0x02105384
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_02108718
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r1, r5
	mov r0, #2
	bl DWCi_SetParam_
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	ldr r0, [sp]
	cmp r0, #0
	bne _0210541C
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam2_
	ldr r0, _02105428 ; =FUN_ov17_020fff90
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_0210541C:
	ldr r0, _0210542C ; =FUN_ov17_020f9618
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105428: .word FUN_ov17_020fff90
_0210542C: .word FUN_ov17_020f9618
	arm_func_end FUN_ov17_02105384

	arm_func_start FUN_ov17_02105430
FUN_ov17_02105430: ; 0x02105430
	stmfd sp!, {r3, lr}
	ldr r1, _02105494 ; =0x02116280
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0xb4
	ldmlofd sp!, {r3, pc}
	add r1, sp, #0
	mov r0, #0
	bl DWCi_GetParam2_
	bl DWCi_Entry
	cmp r0, #0
	beq _02105488
	cmp r0, #1
	bne _02105488
	ldr r0, [sp]
	cmp r0, #0
	beq _02105488
	ldr r0, _02105498 ; =FUN_ov17_020f92c4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105488:
	ldr r0, _0210549C ; =FUN_ov17_02105324
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105494: .word ov17_02116280
_02105498: .word FUN_ov17_020f92c4
_0210549C: .word FUN_ov17_02105324
	arm_func_end FUN_ov17_02105430

	arm_func_start FUN_ov17_021054a0
FUN_ov17_021054a0: ; 0x021054A0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_02106be4
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl DWCi_GetParam2_
	bl FUN_ov17_02105504
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl DWCi_COMMENTlDispEx
	ldr r0, [sp]
	cmp r0, #2
	beq _021054E0
	bl FUN_ov17_020f5384
_021054E0:
	ldr r0, [sp]
	cmp r0, #1
	bne _021054F0
	bl FUN_ov17_0210756c
_021054F0:
	ldr r0, _02105500 ; =FUN_ov17_02105570
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02105500: .word FUN_ov17_02105570
	arm_func_end FUN_ov17_021054a0

	arm_func_start FUN_ov17_02105504
FUN_ov17_02105504: ; 0x02105504
	stmfd sp!, {r3, lr}
	ldr r0, _02105560 ; =0x02113484
	ldr r1, _02105564 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r2, _02105568 ; =0x04001008
	ldr r1, _0210556C ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105560: .word ov17_02113484
_02105564: .word GX_LoadBG2Scr
_02105568: .word 0x04001008
_0210556C: .word 0x0400000A
	arm_func_end FUN_ov17_02105504

	arm_func_start FUN_ov17_02105570
FUN_ov17_02105570: ; 0x02105570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021055D4 ; =FUN_ov17_021055d8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021055D4: .word FUN_ov17_021055d8
	arm_func_end FUN_ov17_02105570

	arm_func_start FUN_ov17_021055d8
FUN_ov17_021055d8: ; 0x021055D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r0, _02105658 ; =0x02112528
	add r6, sp, #8
	ldmia r0, {r0, r1, r2}
	mov r5, #1
	stmia r6, {r0, r1, r2}
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, r4
	bl DWCi_GetParam2_
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r1, r5
	ldr r0, [r6, r0, lsl #2]
	mov r2, r5
	sub r3, r4, #1
	bl FUN_ov17_02108e9c
	ldr r0, _0210565C ; =FUN_ov17_02105660
	bl DWCi_ChangeScene
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02105658: .word ov17_02112528
_0210565C: .word FUN_ov17_02105660
	arm_func_end FUN_ov17_021055d8

	arm_func_start FUN_ov17_02105660
FUN_ov17_02105660: ; 0x02105660
	stmfd sp!, {r4, lr}
	bl FUN_ov17_021056a0
	bl FUN_ov17_021056a4
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #6
	mov r0, r4
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r0, _0210569C ; =FUN_ov17_021056a8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_0210569C: .word FUN_ov17_021056a8
	arm_func_end FUN_ov17_02105660

	arm_func_start FUN_ov17_021056a0
FUN_ov17_021056a0: ; 0x021056A0
	bx lr
	arm_func_end FUN_ov17_021056a0

	arm_func_start FUN_ov17_021056a4
FUN_ov17_021056a4: ; 0x021056A4
	bx lr
	arm_func_end FUN_ov17_021056a4

	arm_func_start FUN_ov17_021056a8
FUN_ov17_021056a8: ; 0x021056A8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _021056D8 ; =FUN_ov17_021056dc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_021056D8: .word FUN_ov17_021056dc
	arm_func_end FUN_ov17_021056a8

	arm_func_start FUN_ov17_021056dc
FUN_ov17_021056dc: ; 0x021056DC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _02105718 ; =FUN_ov17_02104df4
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105718: .word FUN_ov17_02104df4
	arm_func_end FUN_ov17_021056dc

	arm_func_start FUN_ov17_0210571c
FUN_ov17_0210571c: ; 0x0210571C
	stmfd sp!, {r3, lr}
	ldr r0, _02105754 ; =0x02116284
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_0210575c
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #0x29
	bl DWCi_CMNlMsgDraw
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _02105758 ; =FUN_ov17_021057dc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105754: .word ov17_02116284
_02105758: .word FUN_ov17_021057dc
	arm_func_end FUN_ov17_0210571c

	arm_func_start FUN_ov17_0210575c
FUN_ov17_0210575c: ; 0x0210575C
	stmfd sp!, {r3, lr}
	ldr r0, _021057CC ; =0x02113498
	ldr r1, _021057D0 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _021057D4 ; =0x04001008
	ldr r1, _021057D8 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021057CC: .word ov17_02113498
_021057D0: .word GX_LoadBG2Scr
_021057D4: .word 0x04001008
_021057D8: .word 0x0400000A
	arm_func_end FUN_ov17_0210575c

	arm_func_start FUN_ov17_021057dc
FUN_ov17_021057dc: ; 0x021057DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105814 ; =FUN_ov17_02105818
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105814: .word FUN_ov17_02105818
	arm_func_end FUN_ov17_021057dc

	arm_func_start FUN_ov17_02105818
FUN_ov17_02105818: ; 0x02105818
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105838 ; =FUN_ov17_0210583c
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105838: .word FUN_ov17_0210583c
	arm_func_end FUN_ov17_02105818

	arm_func_start FUN_ov17_0210583c
FUN_ov17_0210583c: ; 0x0210583C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210590c
	bl FUN_ov17_0210584c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210583c

	arm_func_start FUN_ov17_0210584c
FUN_ov17_0210584c: ; 0x0210584C
	bx lr
	arm_func_end FUN_ov17_0210584c

	arm_func_start FUN_ov17_02105850
FUN_ov17_02105850: ; 0x02105850
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02105890 ; =FUN_ov17_02105894
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105890: .word FUN_ov17_02105894
	arm_func_end FUN_ov17_02105850

	arm_func_start FUN_ov17_02105894
FUN_ov17_02105894: ; 0x02105894
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl DWCi_FNTlDeleteBgLcd
	bl DWCi_COMMENTlDelete
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	mov r0, r4
	mov r1, #2
	bl DWCi_SetParam2_
	ldr r0, _02105908 ; =FUN_ov17_021054a0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105908: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_02105894

	arm_func_start FUN_ov17_0210590c
FUN_ov17_0210590c: ; 0x0210590C
	stmfd sp!, {r3, lr}
	ldr r1, _02105938 ; =0x02116284
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _0210593C ; =FUN_ov17_02105850
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105938: .word ov17_02116284
_0210593C: .word FUN_ov17_02105850
	arm_func_end FUN_ov17_0210590c

	arm_func_start FUN_ov17_02105940
FUN_ov17_02105940: ; 0x02105940
	stmfd sp!, {r4, lr}
	ldr r0, _02105988 ; =0x02116288
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02105990
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #0x38
	mov r2, r4
	sub r1, r0, #0x39
	bl DWCi_COMMENTlDispEx
	mov r0, #1
	bl DWCi_CMNlStep
	mov r0, #0x27
	bl DWCi_CMNlMsgDraw
	ldr r0, _0210598C ; =FUN_ov17_02105a38
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105988: .word ov17_02116288
_0210598C: .word FUN_ov17_02105a38
	arm_func_end FUN_ov17_02105940

	arm_func_start FUN_ov17_02105990
FUN_ov17_02105990: ; 0x02105990
	stmfd sp!, {r3, lr}
	ldr r0, _02105A18 ; =0x021134AC
	ldr r1, _02105A1C ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02105A20 ; =0x021134C4
	ldr r1, _02105A24 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02105A28 ; =0x021134DC
	ldr r1, _02105A2C ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02105A30 ; =0x04001008
	ldr r1, _02105A34 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105A18: .word ov17_021134AC
_02105A1C: .word GX_LoadBG2Char
_02105A20: .word ov17_021134C4
_02105A24: .word GX_LoadBGPltt
_02105A28: .word ov17_021134DC
_02105A2C: .word GX_LoadBG2Scr
_02105A30: .word 0x04001008
_02105A34: .word 0x0400000A
	arm_func_end FUN_ov17_02105990

	arm_func_start FUN_ov17_02105a38
FUN_ov17_02105a38: ; 0x02105A38
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105A9C ; =FUN_ov17_02105aa0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02105A9C: .word FUN_ov17_02105aa0
	arm_func_end FUN_ov17_02105a38

	arm_func_start FUN_ov17_02105aa0
FUN_ov17_02105aa0: ; 0x02105AA0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl DWCi_CMNlButton
	ldr r0, _02105AD8 ; =FUN_ov17_02105adc
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105AD8: .word FUN_ov17_02105adc
	arm_func_end FUN_ov17_02105aa0

	arm_func_start FUN_ov17_02105adc
FUN_ov17_02105adc: ; 0x02105ADC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02105AFC ; =FUN_ov17_02105b00
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105AFC: .word FUN_ov17_02105b00
	arm_func_end FUN_ov17_02105adc

	arm_func_start FUN_ov17_02105b00
FUN_ov17_02105b00: ; 0x02105B00
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105b14
	bl FUN_ov17_02105b50
	bl FUN_ov17_02105b54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105b00

	arm_func_start FUN_ov17_02105b14
FUN_ov17_02105b14: ; 0x02105B14
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02105B34
	mov r0, r4
	bl DWCi_BTNlSet
_02105B34:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02105b14

	arm_func_start FUN_ov17_02105b50
FUN_ov17_02105b50: ; 0x02105B50
	bx lr
	arm_func_end FUN_ov17_02105b50

	arm_func_start FUN_ov17_02105b54
FUN_ov17_02105b54: ; 0x02105B54
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmp r0, #0
	beq _02105B70
	cmp r0, #1
	beq _02105B7C
	ldmfd sp!, {r3, pc}
_02105B70:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _02105B90
_02105B7C:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _02105B9C ; =0x02116288
	mov r1, #1
	strb r1, [r0]
_02105B90:
	ldr r0, _02105BA0 ; =FUN_ov17_02105ba4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105B9C: .word ov17_02116288
_02105BA0: .word FUN_ov17_02105ba4
	arm_func_end FUN_ov17_02105b54

	arm_func_start FUN_ov17_02105ba4
FUN_ov17_02105ba4: ; 0x02105BA4
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02105BC0 ; =FUN_ov17_02105bc4
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105BC0: .word FUN_ov17_02105bc4
	arm_func_end FUN_ov17_02105ba4

	arm_func_start FUN_ov17_02105bc4
FUN_ov17_02105bc4: ; 0x02105BC4
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02105C24 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C04
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02105C04:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02105C28 ; =FUN_ov17_02105c2c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105C24: .word ov17_02116288
_02105C28: .word FUN_ov17_02105c2c
	arm_func_end FUN_ov17_02105bc4

	arm_func_start FUN_ov17_02105c2c
FUN_ov17_02105c2c: ; 0x02105C2C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C60
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02105C60:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C94
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02105C94:
	mov r0, #0
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _02105CD8 ; =0x02116288
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #2
	bne _02105CC8
	bl DWCi_SetParam_
	ldr r0, _02105CDC ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105CC8:
	bl DWCi_SetParam_
	ldr r0, _02105CE0 ; =FUN_ov17_02105d04
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105CD8: .word ov17_02116288
_02105CDC: .word FUN_ov17_02103924
_02105CE0: .word FUN_ov17_02105d04
	arm_func_end FUN_ov17_02105c2c

	arm_func_start FUN_ov17_02105ce4
FUN_ov17_02105ce4: ; 0x02105CE4
	ldr r0, _02105D00 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02105D00: .word 0x02FFFFA8
	arm_func_end FUN_ov17_02105ce4

	arm_func_start FUN_ov17_02105d04
FUN_ov17_02105d04: ; 0x02105D04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	ldr r0, _02105D90 ; =0x0211628C
	mov r5, #0
	strb r5, [r0]
	bl FUN_ov17_02105d9c
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #2
	bl DWCi_CMNlStep
	add r0, sp, #0x16
	bl OS_GetOwnerInfo
	add r4, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x16
	bl MIi_CpuClear16
	ldrh r2, [sp, #0x30]
	add r0, sp, #0x1a
	mov r1, r4
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, r4
	mov r1, #0x28
	bl DWCi_CMNlMsgNameDraw
	mov r0, r5
	bl DWCi_ANIMElInitEx
	ldr r0, _02105D94 ; =FUN_ov17_021060f0
	bl FUN_ov17_021087d8
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _02105D98 ; =FUN_ov17_02105e44
	bl DWCi_ChangeScene
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, pc}
_02105D90: .word ov17_0211628C
_02105D94: .word FUN_ov17_021060f0
_02105D98: .word FUN_ov17_02105e44
	arm_func_end FUN_ov17_02105d04

	arm_func_start FUN_ov17_02105d9c
FUN_ov17_02105d9c: ; 0x02105D9C
	stmfd sp!, {r3, lr}
	ldr r0, _02105E24 ; =0x021134F0
	ldr r1, _02105E28 ; =GX_LoadBG2Char
	bl DWCi_CMNlLoadResource
	ldr r0, _02105E2C ; =0x02113508
	ldr r1, _02105E30 ; =GX_LoadBGPltt
	bl DWCi_CMNlLoadResource
	ldr r0, _02105E34 ; =0x02113520
	ldr r1, _02105E38 ; =GX_LoadBG2Scr
	bl DWCi_CMNlLoadResource
	ldr r3, _02105E3C ; =0x04001008
	ldr r1, _02105E40 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105E24: .word ov17_021134F0
_02105E28: .word GX_LoadBG2Char
_02105E2C: .word ov17_02113508
_02105E30: .word GX_LoadBGPltt
_02105E34: .word ov17_02113520
_02105E38: .word GX_LoadBG2Scr
_02105E3C: .word 0x04001008
_02105E40: .word 0x0400000A
	arm_func_end FUN_ov17_02105d9c

	arm_func_start FUN_ov17_02105e44
FUN_ov17_02105e44: ; 0x02105E44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105E7C ; =FUN_ov17_02105e80
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, r4, r5, pc}
_02105E7C: .word FUN_ov17_02105e80
	arm_func_end FUN_ov17_02105e44

	arm_func_start FUN_ov17_02105e80
FUN_ov17_02105e80: ; 0x02105E80
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl DWCi_CMNlButton
	ldr r0, _02105EA8 ; =FUN_ov17_02105eac
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105EA8: .word FUN_ov17_02105eac
	arm_func_end FUN_ov17_02105e80

	arm_func_start FUN_ov17_02105eac
FUN_ov17_02105eac: ; 0x02105EAC
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlGet
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl DWCi_BTNlEnable
	ldr r0, _02105ECC ; =FUN_ov17_02105ed0
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105ECC: .word FUN_ov17_02105ed0
	arm_func_end FUN_ov17_02105eac

	arm_func_start FUN_ov17_02105ed0
FUN_ov17_02105ed0: ; 0x02105ED0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105ee4
	bl FUN_ov17_02105f1c
	bl FUN_ov17_02105f20
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105ed0

	arm_func_start FUN_ov17_02105ee4
FUN_ov17_02105ee4: ; 0x02105EE4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02105F04
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
_02105F04:
	bl FUN_ov17_02105ce4
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl DWCi_BTNlSet
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105ee4

	arm_func_start FUN_ov17_02105f1c
FUN_ov17_02105f1c: ; 0x02105F1C
	bx lr
	arm_func_end FUN_ov17_02105f1c

	arm_func_start FUN_ov17_02105f20
FUN_ov17_02105f20: ; 0x02105F20
	stmfd sp!, {r4, lr}
	ldr r4, _02105F60 ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlGet
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #2
	strb r0, [r4]
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02105F64 ; =FUN_ov17_02105f68
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105F60: .word ov17_0211628C
_02105F64: .word FUN_ov17_02105f68
	arm_func_end FUN_ov17_02105f20

	arm_func_start FUN_ov17_02105f68
FUN_ov17_02105f68: ; 0x02105F68
	stmfd sp!, {r3, lr}
	bl DWCi_BTNlDisable
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02105F84 ; =FUN_ov17_02105f88
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02105F84: .word FUN_ov17_02105f88
	arm_func_end FUN_ov17_02105f68

	arm_func_start FUN_ov17_02105f88
FUN_ov17_02105f88: ; 0x02105F88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl DWCi_BTNlEnd
	ldr r0, _02105FF0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02105FD0
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02105FD0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02105FF4 ; =FUN_ov17_02105ff8
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_02105FF0: .word ov17_0211628C
_02105FF4: .word FUN_ov17_02105ff8
	arm_func_end FUN_ov17_02105f88

	arm_func_start FUN_ov17_02105ff8
FUN_ov17_02105ff8: ; 0x02105FF8
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0210602C
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_0210602C:
	bl DWCi_BTNlIsEnd
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_02108980
	bl DWCi_ANIMElEnd
	mov r0, #0
	bl DWCi_FNTlDeleteBgLcd
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02106070
	bl DWCi_COMMENTlDelete
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02106070:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _021060A8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021060E4 ; =FUN_ov17_02103924
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060A8:
	cmp r0, #3
	bne _021060C8
	mov r0, #2
	mov r1, #1
	bl DWCi_SetParam_
	ldr r0, _021060E8 ; =FUN_ov17_02105940
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060C8:
	mov r0, r4
	mov r1, r4
	bl DWCi_SetParam_
	ldr r0, _021060EC ; =FUN_ov17_0210571c
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021060E0: .word ov17_0211628C
_021060E4: .word FUN_ov17_02103924
_021060E8: .word FUN_ov17_02105940
_021060EC: .word FUN_ov17_0210571c
	arm_func_end FUN_ov17_02105ff8

	arm_func_start FUN_ov17_021060f0
FUN_ov17_021060f0: ; 0x021060F0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _021061E8 ; =0x0211628C
	ldrb r2, [r1]
	cmp r2, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021061E0
_02106118: ; jump table
	b _02106128 ; case 0
	b _0210616C ; case 1
	b _02106188 ; case 2
	b _021061C4 ; case 3
_02106128:
	mov r0, #3
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0x10
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _021061EC ; =FUN_ov17_021061f8
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210616C:
	mov r0, #1
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	ldr r0, _021061F0 ; =FUN_ov17_02105f68
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02106188:
	bl FUN_ov17_02107ca8
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_02108a5c
	mov r2, #1
	mov r1, r4
	sub r3, r2, #2
	mov r0, #0x11
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl DWCi_BTNlDisable
	ldr r0, _021061F4 ; =FUN_ov17_02106244
	bl DWCi_ChangeScene
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061C4:
	mov r0, #2
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, _021061F0 ; =FUN_ov17_02105f68
	bl DWCi_ChangeScene
_021061E0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061E8: .word ov17_0211628C
_021061EC: .word FUN_ov17_021061f8
_021061F0: .word FUN_ov17_02105f68
_021061F4: .word FUN_ov17_02106244
	arm_func_end FUN_ov17_021060f0

	arm_func_start FUN_ov17_021061f8
FUN_ov17_021061f8: ; 0x021061F8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02106220 ; =FUN_ov17_02106224
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106220: .word FUN_ov17_02106224
	arm_func_end FUN_ov17_021061f8

	arm_func_start FUN_ov17_02106224
FUN_ov17_02106224: ; 0x02106224
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02106240 ; =FUN_ov17_02105f68
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106240: .word FUN_ov17_02105f68
	arm_func_end FUN_ov17_02106224

	arm_func_start FUN_ov17_02106244
FUN_ov17_02106244: ; 0x02106244
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _0210626C
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #3
	mov r0, #6
	b _02106278
_0210626C:
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #1
	mov r0, #7
_02106278:
	strb r2, [r1]
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02106294 ; =FUN_ov17_02106298
	bl DWCi_ChangeScene
	ldmfd sp!, {r3, pc}
_02106290: .word ov17_0211628C
_02106294: .word FUN_ov17_02106298
	arm_func_end FUN_ov17_02106244

	arm_func_start FUN_ov17_02106298
FUN_ov17_02106298: ; 0x02106298
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _021062EC ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #1
	bne _021062C4
	ldr r0, _021062F0 ; =FUN_ov17_02105f68
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021062C4:
	mov r0, #0xb
	bl FUN_ov17_02107c40
	bl DWCi_BTNlEnable
	mov r1, #0
	ldr r0, _021062F4 ; =FUN_ov17_021060f0
	strb r1, [r4]
	bl FUN_ov17_02108a5c
	ldr r0, _021062F8 ; =FUN_ov17_02105ed0
	bl DWCi_ChangeScene
	ldmfd sp!, {r4, pc}
_021062EC: .word ov17_0211628C
_021062F0: .word FUN_ov17_02105f68
_021062F4: .word FUN_ov17_021060f0
_021062F8: .word FUN_ov17_02105ed0
	arm_func_end FUN_ov17_02106298

	arm_func_start FUN_ov17_021062fc
FUN_ov17_021062fc: ; 0x021062FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0210634C ; =0x00000608
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r3, r0
	ldr r4, _02106350 ; =0x02116290
	mov r0, r5
	add r1, r3, #4
	mov r2, #0x600
	str r3, [r4]
	bl MIi_CpuCopyFast
	ldr r1, _02106354 ; =FUN_ov17_021063f4
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_0210634C: .word 0x00000608
_02106350: .word ov17_02116290
_02106354: .word FUN_ov17_021063f4
	arm_func_end FUN_ov17_021062fc

	arm_func_start FUN_ov17_02106358
FUN_ov17_02106358: ; 0x02106358
	stmfd sp!, {r3, lr}
	ldr r1, _0210637C ; =0x02116290
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r0, _02106380 ; =0x02116290
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_0210637C: .word ov17_02116290
_02106380: .word ov17_02116290
	arm_func_end FUN_ov17_02106358

	arm_func_start FUN_ov17_02106384
FUN_ov17_02106384: ; 0x02106384
	ldr r0, _02106398 ; =0x02116290
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x604]
	bx lr
_02106398: .word ov17_02116290
	arm_func_end FUN_ov17_02106384

	arm_func_start FUN_ov17_0210639c
FUN_ov17_0210639c: ; 0x0210639C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, _021063F0 ; =0x02116290
	mov r7, r3
	ldr r3, [r12]
	mov r8, r0
	add r0, r3, #4
	add r4, r0, r1, lsl #1
	mov r5, #0
	cmp r7, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, r2, lsl #1
_021063C8:
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MIi_CpuCopy16
	add r5, r5, #1
	cmp r5, r7
	add r8, r8, #0x40
	add r4, r4, #0x40
	blt _021063C8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021063F0: .word ov17_02116290
	arm_func_end FUN_ov17_0210639c

	arm_func_start FUN_ov17_021063f4
FUN_ov17_021063f4: ; 0x021063F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02106440 ; =0x02116290
	ldr r2, [r4]
	ldrb r0, [r2, #0x604]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #0x600
	mov r1, r6
	add r0, r2, #4
	bl DC_FlushRange
	ldr r0, [r4]
	mov r5, #0
	mov r1, r5
	mov r2, r6
	add r0, r0, #4
	bl GX_LoadBG2Scr
	ldr r0, [r4]
	strb r5, [r0, #0x604]
	ldmfd sp!, {r4, r5, r6, pc}
_02106440: .word ov17_02116290
	arm_func_end FUN_ov17_021063f4

	arm_func_start FUN_ov17_02106444
FUN_ov17_02106444: ; 0x02106444
	stmfd sp!, {r3, lr}
	ldr r12, _02106478 ; =0x02116290
	add r3, r0, r1, lsl #5
	mov r0, r2, lsl #5
	ldr r1, _0210647C ; =FUN_ov17_02106480
	str r3, [r12, #4]
	add lr, r0, #0x5000000
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	str lr, [r12, #8]
	bl DWCi_TSKlForm
	ldmfd sp!, {r3, pc}
_02106478: .word ov17_02116290
_0210647C: .word FUN_ov17_02106480
	arm_func_end FUN_ov17_02106444

	arm_func_start FUN_ov17_02106480
FUN_ov17_02106480: ; 0x02106480
	stmfd sp!, {r4, lr}
	ldr r1, _021064A8 ; =0x02116290
	mov r4, r0
	mov r2, #0x20
	ldmib r1, {r0, r1}
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, pc}
_021064A8: .word ov17_02116290
	arm_func_end FUN_ov17_02106480

	arm_func_start FUN_ov17_021064ac
FUN_ov17_021064ac: ; 0x021064AC
	ldr r2, _021064CC ; =0x02116290
	ldr r1, _021064D0 ; =FUN_ov17_021064d8
	str r0, [r2, #4]
	ldr r12, _021064D4 ; =DWCi_TSKlForm
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bx r12
_021064CC: .word ov17_02116290
_021064D0: .word FUN_ov17_021064d8
_021064D4: .word DWCi_TSKlForm
	arm_func_end FUN_ov17_021064ac

	arm_func_start FUN_ov17_021064d8
FUN_ov17_021064d8: ; 0x021064D8
	stmfd sp!, {r4, lr}
	ldr r1, _02106504 ; =0x02116290
	mov r4, r0
	ldr r0, [r1, #4]
	mov r1, #0x5000000
	mov r2, #0x200
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, pc}
_02106504: .word ov17_02116290
	arm_func_end FUN_ov17_021064d8

	arm_func_start FUN_ov17_02106508
FUN_ov17_02106508: ; 0x02106508
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r4, r1
	mov r0, #0x20
	mov r1, #4
	mov r7, r2
	mov r6, r3
	bl DWCi_HEAPlAllocEx
	ldr r9, _021065D4 ; =0x0211629C
	ldr r3, [sp, #0x20]
	str r0, [r9]
	strb r8, [r0, #0x1b]
	ldr r1, [r9]
	mov r0, r7
	strb r4, [r1, #0x19]
	ldr r2, [r9]
	mov r1, r6
	strb r3, [r2, #0x1a]
	ldr r2, [r9]
	add r2, r2, #0x10
	bl FUN_ov17_0210dc7c
	mov r5, #0
	mov r0, r5
	ldr r1, _021065D8 ; =0x02112534
	mov r4, #1
	ldrb r1, [r1, r8]
	mov r2, r4
	bl DWCi_CEINlSetExCell
	mov r2, r7
	ldr r1, [r9]
	sub r7, r4, #2
	str r0, [r1]
	ldr r0, [r9]
	mov r1, r7
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	add r3, r6, r3
	bl DWCi_CELLlSetPosition
	mov r1, r7
	mov r2, r4
	ldr r0, [r9]
	ldr r0, [r0]
	bl DWCi_CELLlSetPriority
	mov r0, r5
	mov r2, r5
	ldr r1, _021065DC ; =FUN_ov17_0210667c
	mov r3, #0x80
	bl DWCi_TSKlForm
	ldr r1, [r9]
	str r0, [r1, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021065D4: .word ov17_0211629C
_021065D8: .word ov17_02112534
_021065DC: .word FUN_ov17_0210667c
	arm_func_end FUN_ov17_02106508

	arm_func_start FUN_ov17_021065e0
FUN_ov17_021065e0: ; 0x021065E0
	stmfd sp!, {r4, lr}
	ldr r4, _02106610 ; =0x0211629C
	mov r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #0xc]
	bl DWCi_TSKlDeleteEx
	ldr r0, [r4]
	ldr r0, [r0]
	bl DWCi_CELLlDelete
	ldr r0, _02106614 ; =0x0211629C
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_02106610: .word ov17_0211629C
_02106614: .word ov17_0211629C
	arm_func_end FUN_ov17_021065e0

	arm_func_start FUN_ov17_02106618
FUN_ov17_02106618: ; 0x02106618
	ldr r0, _02106628 ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	bx lr
_02106628: .word ov17_0211629C
	arm_func_end FUN_ov17_02106618

	arm_func_start FUN_ov17_0210662c
FUN_ov17_0210662c: ; 0x0210662C
	ldr r0, _0210663C ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	bx lr
_0210663C: .word ov17_0211629C
	arm_func_end FUN_ov17_0210662c

	arm_func_start FUN_ov17_02106640
FUN_ov17_02106640: ; 0x02106640
	ldr r12, _02106648 ; =FUN_ov17_02106b7c
	bx r12
_02106648: .word FUN_ov17_02106b7c
	arm_func_end FUN_ov17_02106640

	arm_func_start FUN_ov17_0210664c
FUN_ov17_0210664c: ; 0x0210664C
	ldr r0, _02106660 ; =0x0211629C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106660: .word ov17_0211629C
	arm_func_end FUN_ov17_0210664c

	arm_func_start FUN_ov17_02106664
FUN_ov17_02106664: ; 0x02106664
	ldr r0, _02106678 ; =0x0211629C
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106678: .word ov17_0211629C
	arm_func_end FUN_ov17_02106664

	arm_func_start FUN_ov17_0210667c
FUN_ov17_0210667c: ; 0x0210667C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _021067E4 ; =0x0211629C
	mov r4, #0
	ldr r0, [r5]
	strb r4, [r0, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_021066A4: ; jump table
	b _021066B4 ; case 0
	b _02106754 ; case 1
	b _0210675C ; case 2
	b _021067A0 ; case 3
_021066B4:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_021069c4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_021066D0: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _021066E4 ; case 1
	b _02106734 ; case 2
	b _02106740 ; case 3
	b _0210674C ; case 4
_021066E4:
	ldr r0, [r5]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0x16
	bl FUN_ov17_02107c40
	mov r0, r4
	bl FUN_ov17_02107c64
	ldr r0, [r5]
	mov r4, #1
	strb r4, [r0, #0x1d]
	ldr r0, [r5]
	add r0, r0, #0x14
	bl FUN_ov17_0210e7f8
	ldr r1, [r5]
	ldrb r0, [r1, #0x1a]
	strb r0, [r1, #0x18]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106734:
	mov r0, #2
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_02106740:
	mov r0, #3
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_0210674C:
	bl FUN_ov17_0210695c
	ldmfd sp!, {r4, r5, r6, pc}
_02106754:
	bl FUN_ov17_021067e8
	ldmfd sp!, {r4, r5, r6, pc}
_0210675C:
	mov r6, #2
	mov r0, r6
	bl FUN_ov17_02106a58
	cmp r0, #2
	beq _02106788
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106788:
	bl FUN_ov17_021069c4
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_021067A0:
	mov r6, #3
	mov r0, r6
	bl FUN_ov17_02106a58
	cmp r0, #3
	beq _021067CC
	ldr r0, [r5]
	mov r1, #7
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_021067CC:
	bl FUN_ov17_021069c4
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_021067E4: .word ov17_0211629C
	arm_func_end FUN_ov17_0210667c

	arm_func_start FUN_ov17_021067e8
FUN_ov17_021067e8: ; 0x021067E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021068AC ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _02106884
	add r0, sp, #0
	bl FUN_ov17_0210e7f8
	ldr r0, _021068B0 ; =0x0211629C
	ldrh r1, [sp]
	ldr r3, [r0]
	ldrh r0, [r3, #0x10]
	sub r0, r0, #0x1e
	cmp r1, r0
	blt _02106884
	ldrh r1, [sp, #2]
	ldrh r0, [r3, #0x16]
	ldrb r2, [r3, #0x18]
	sub r0, r1, r0
	adds r4, r2, r0
	movmi r4, #0
	bmi _0210685C
	ldrb r1, [r3, #0x1b]
	ldr r0, _021068B4 ; =0x02112537
	ldrb r2, [r3, #0x19]
	ldrb r0, [r0, r1]
	sub r0, r2, r0
	cmp r4, r0
	movge r4, r0
_0210685C:
	mov r0, r4
	bl FUN_ov17_021068b8
	mov r0, r4
	bl FUN_ov17_02106b7c
	ldr r0, _021068B0 ; =0x0211629C
	mov r1, #2
	ldr r0, [r0]
	add sp, sp, #4
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, r4, pc}
_02106884:
	bl FUN_ov17_02107ca8
	ldr r0, _021068B0 ; =0x0211629C
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	strb r3, [r2, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021068AC: .word ov17_021126F8
_021068B0: .word ov17_0211629C
_021068B4: .word ov17_02112537
	arm_func_end FUN_ov17_021067e8

	arm_func_start FUN_ov17_021068b8
FUN_ov17_021068b8: ; 0x021068B8
	stmfd sp!, {r4, lr}
	ldr r1, _02106928 ; =0x0211629C
	ldr r1, [r1]
	ldrb r1, [r1, #0x1a]
	subs r4, r1, r0
	rsbmi r4, r4, #0
	cmp r4, #2
	movlt r0, #0
	blt _021068F0
	cmp r4, #6
	mov r0, #0x7f
	bge _021068F0
	rsb r1, r4, #6
	bl FX_DivS32
_021068F0:
	bl FUN_ov17_02107c64
	cmp r4, #2
	mvnlt r1, #0xff
	blt _0210691C
	cmp r4, #6
	movge r1, #0x100
	bge _0210691C
	rsb r1, r4, #6
	mov r0, #0x200
	bl FX_DivS32
	sub r1, r0, #0x100
_0210691C:
	ldr r0, _0210692C ; =0x0000FFFF
	bl FUN_ov17_02107c84
	ldmfd sp!, {r4, pc}
_02106928: .word ov17_0211629C
_0210692C: .word 0x0000FFFF
	arm_func_end FUN_ov17_021068b8

	arm_func_start FUN_ov17_02106930
FUN_ov17_02106930: ; 0x02106930
	ldr r1, _02106958 ; =0x0211629C
	cmp r0, #2
	ldr r1, [r1]
	strb r0, [r1, #0x1c]
	ldr r0, _02106958 ; =0x0211629C
	moveq r1, #4
	ldr r0, [r0]
	movne r1, #6
	strb r1, [r0, #0x1d]
	bx lr
_02106958: .word ov17_0211629C
	arm_func_end FUN_ov17_02106930

	arm_func_start FUN_ov17_0210695c
FUN_ov17_0210695c: ; 0x0210695C
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl FUN_ov17_0210e7f8
	ldr r0, _021069BC ; =0x0211629C
	ldr r2, _021069C0 ; =0x02112537
	ldr r12, [r0]
	ldrh r1, [sp, #2]
	ldrb r3, [r12, #0x1b]
	ldrh r0, [r12, #0x12]
	ldrb r2, [r2, r3]
	sub r0, r1, r0
	subs r0, r0, r2, lsr #1
	movmi r0, #0
	bmi _021069A4
	ldrb r1, [r12, #0x19]
	sub r1, r1, r2
	cmp r0, r1
	movge r0, r1
_021069A4:
	bl FUN_ov17_02106b7c
	ldr r0, _021069BC ; =0x0211629C
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, pc}
_021069BC: .word ov17_0211629C
_021069C0: .word ov17_02112537
	arm_func_end FUN_ov17_0210695c

	arm_func_start FUN_ov17_021069c4
FUN_ov17_021069c4: ; 0x021069C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r5, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e688
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #2
_021069FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e688
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _021069FC
	mov r5, #4
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	moveq r5, #0
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_021069c4

	arm_func_start FUN_ov17_02106a58
FUN_ov17_02106a58: ; 0x02106A58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, #2
	add r4, sp, #0
_02106A68:
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _02106A68
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_02106a58

	arm_func_start FUN_ov17_02106aa4
FUN_ov17_02106aa4: ; 0x02106AA4
	ldr r2, _02106B74 ; =0x0211629C
	cmp r0, #4
	ldr r3, [r2]
	ldrh r12, [r3, #0x10]
	add r3, r12, #0xc
	strh r12, [r1]
	strh r3, [r1, #4]
	addls pc, pc, r0, lsl #2
	bx lr
_02106AC8: ; jump table
	bx lr ; case 0
	b _02106ADC ; case 1
	b _02106B10 ; case 2
	b _02106B30 ; case 3
	b _02106B54 ; case 4
_02106ADC:
	ldr r3, [r2]
	ldr r0, _02106B78 ; =0x02112537
	ldrh r12, [r3, #0x12]
	ldrb r3, [r3, #0x1a]
	add r3, r12, r3
	strh r3, [r1, #2]
	ldr r2, [r2]
	ldrh r3, [r1, #2]
	ldrb r2, [r2, #0x1b]
	ldrb r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_02106B10:
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	sub r0, r0, #0xd
	strh r0, [r1, #2]
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	strh r0, [r1, #6]
	bx lr
_02106B30:
	ldr r0, [r2]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r0, #0x19]
	add r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	add r0, r0, #0xd
	strh r0, [r1, #6]
	bx lr
_02106B54:
	ldr r0, [r2]
	ldrh r3, [r0, #0x12]
	strh r3, [r1, #2]
	ldr r0, [r2]
	ldrb r0, [r0, #0x19]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_02106B74: .word ov17_0211629C
_02106B78: .word ov17_02112537
	arm_func_end FUN_ov17_02106aa4

	arm_func_start FUN_ov17_02106b7c
FUN_ov17_02106b7c: ; 0x02106B7C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02106BB0 ; =0x0211629C
	mov r5, r0
	ldr r0, [r4]
	mvn r1, #0
	ldrh r3, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	ldr r0, [r0]
	add r3, r5, r3
	bl DWCi_CELLlSetPosition
	ldr r0, [r4]
	strb r5, [r0, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_02106BB0: .word ov17_0211629C
	arm_func_end FUN_ov17_02106b7c

	arm_func_start FUN_ov17_02106bb4
FUN_ov17_02106bb4: ; 0x02106BB4
	stmfd sp!, {r4, lr}
	ldr r4, _02106BDC ; =0x021162A0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02106BE0 ; =0x00001E60
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_02106BDC: .word ov17_021162A0
_02106BE0: .word 0x00001E60
	arm_func_end FUN_ov17_02106bb4

	arm_func_start FUN_ov17_02106be4
FUN_ov17_02106be4: ; 0x02106BE4
	stmfd sp!, {r3, lr}
	ldr r0, _02106C10 ; =0x021162A0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_02106BF8:
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _02106BF8
	ldr r0, _02106C14 ; =0x021162A0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_02106C10: .word ov17_021162A0
_02106C14: .word ov17_021162A0
	arm_func_end FUN_ov17_02106be4

	arm_func_start FUN_ov17_02106c18
FUN_ov17_02106c18: ; 0x02106C18
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02106CD4 ; =0x021162A0
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	add r1, r1, #0x1300
	mov r2, #0x348
	bl MIi_CpuClear16
	ldr r0, [r4]
	ldr r1, _02106CD8 ; =FUN_ov17_02106e08
	mov r2, #3
	bl WM_Initialize
	cmp r0, #2
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
_02106C54:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
	ldr r12, [r4]
	add r0, r12, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _02106C54
	add r0, r12, #0x248
	ldr r5, _02106CDC ; =0x02112548
	add lr, r0, #0x1400
	mov r4, #4
_02106C88:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02106C88
	ldr r0, [r5]
	add r1, r12, #0xf00
	str r0, [lr]
	add r0, r12, #0x1000
	str r1, [r0, #0x648]
	bl WM_GetDispersionScanPeriod
	ldr r1, _02106CD4 ; =0x021162A0
	ldr r1, [r1]
	add r1, r1, #0x1600
	strh r0, [r1, #0x50]
	bl FUN_ov17_02106ce0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02106CD4: .word ov17_021162A0
_02106CD8: .word FUN_ov17_02106e08
_02106CDC: .word ov17_02112548
	arm_func_end FUN_ov17_02106c18

	arm_func_start FUN_ov17_02106ce0
FUN_ov17_02106ce0: ; 0x02106CE0
	stmfd sp!, {r3, lr}
	ldr r1, _02106D0C ; =0x021162A0
	ldr r0, _02106D10 ; =FUN_ov17_02106e08
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x1400
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02106D0C: .word ov17_021162A0
_02106D10: .word FUN_ov17_02106e08
	arm_func_end FUN_ov17_02106ce0

	arm_func_start FUN_ov17_02106d14
FUN_ov17_02106d14: ; 0x02106D14
	stmfd sp!, {r4, lr}
	ldr r4, _02106DA0 ; =0x021162A0
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xe5c]
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	beq _02106D88
	ldr r0, _02106DA4 ; =FUN_ov17_02106e08
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_02106D64:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _02106D64
_02106D88:
	ldr r0, _02106DA4 ; =FUN_ov17_02106e08
	bl WM_End
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_02106DA0: .word ov17_021162A0
_02106DA4: .word FUN_ov17_02106e08
	arm_func_end FUN_ov17_02106d14

	arm_func_start FUN_ov17_02106da8
FUN_ov17_02106da8: ; 0x02106DA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _02106E00 ; =0x021162A0
	mov r7, #0
	ldr r1, [r1]
	ldr r6, _02106E04 ; =0x02112540
	add r9, r1, #0x1300
	mov r8, r7
	str r9, [r0]
	mov r5, #6
	mov r4, #0x2a
_02106DD0:
	mla r0, r8, r4, r9
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x20
	bl memcmp
	cmp r0, #0
	add r8, r8, #1
	addne r7, r7, #1
	cmp r8, #0x14
	blt _02106DD0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02106E00: .word ov17_021162A0
_02106E04: .word ov17_02112540
	arm_func_end FUN_ov17_02106da8

	arm_func_start FUN_ov17_02106e08
FUN_ov17_02106e08: ; 0x02106E08
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldreq r1, _02106E64 ; =0x021162A0
	ldreq r1, [r1]
	addeq r1, r1, #0x1000
	ldreqb r1, [r1, #0xe5c]
	cmpeq r1, #0
	ldreqh r1, [r0]
	cmpeq r1, #0x26
	ldmnefd sp!, {r3, pc}
	ldrh r1, [r0, #8]
	cmp r1, #4
	beq _02106E54
	cmp r1, #5
	bne _02106E5C
	bl FUN_ov17_02106e68
	bl FUN_ov17_02106ce0
	ldmfd sp!, {r3, pc}
_02106E54:
	bl FUN_ov17_02106ce0
	ldmfd sp!, {r3, pc}
_02106E5C:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02106E64: .word ov17_021162A0
	arm_func_end FUN_ov17_02106e08

	arm_func_start FUN_ov17_02106e68
FUN_ov17_02106e68: ; 0x02106E68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x88
	ldr r1, _02107038 ; =0x021162A0
	str r0, [sp]
	ldr r2, [r1]
	mov r1, #0x400
	add r0, r2, #0xf00
	add r6, r2, #0x1300
	bl DC_InvalidateRange
	ldr r0, [sp]
	mov r10, #0
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	addle sp, sp, #0x88
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106EA4:
	ldr r0, [sp]
	add r0, r0, r10, lsl #2
	ldr r4, [r0, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0210701C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0210701C
	mov r5, #0
	mov r8, #6
	mov r7, #0x2a
_02106ED4:
	mla r1, r5, r7, r6
	mov r2, r8
	add r0, r4, #4
	add r1, r1, #0x20
	bl memcmp
	cmp r0, #0
	beq _02106EFC
	add r5, r5, #1
	cmp r5, #0x14
	blt _02106ED4
_02106EFC:
	cmp r5, #0x14
	mov r11, #0
	bne _02106F4C
	ldr r9, _0210703C ; =0x02112540
	mov r5, r11
	mov r8, #6
	mov r7, #0x2a
_02106F18:
	mla r0, r5, r7, r6
	mov r1, r9
	mov r2, r8
	add r0, r0, #0x20
	bl memcmp
	cmp r0, #0
	beq _02106F40
	add r5, r5, #1
	cmp r5, #0x14
	blt _02106F18
_02106F40:
	cmp r5, #0x14
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106F4C:
	mov r0, #0x2a
	mla r9, r5, r0, r6
	add r0, r4, #4
	add r1, r9, #0x20
	mov r2, #6
	bl MI_CpuCopy8
	mov r1, r9
	add r0, r4, #0xc
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r0, r0, r10, lsl #1
	ldrh r0, [r0, #0x50]
	strh r0, [r9, #0x26]
	ldrh r0, [r4, #0x2c]
	tst r0, #0x10
	streqb r11, [r9, #0x28]
	beq _0210701C
	add r5, sp, #4
	mov r2, #1
	mov r0, r5
	mov r1, r4
	strb r2, [r9, #0x28]
	bl WM_GetOtherElements
	ldrb r8, [sp, #4]
	mov r7, #0
	cmp r8, #0
	ble _0210701C
	ldr r4, _02107040 ; =0x0211253C
	mov r11, #4
_02106FC4:
	add r1, r5, r7, lsl #3
	ldrb r0, [r1, #4]
	cmp r0, #0x30
	moveq r0, #2
	streqb r0, [r9, #0x28]
	beq _0210701C
	cmp r0, #0xdd
	bne _02107010
	ldrb r0, [r1, #5]
	cmp r0, #4
	blo _02107010
	ldr r0, [r1, #8]
	mov r1, r4
	mov r2, r11
	bl memcmp
	cmp r0, #0
	moveq r0, #2
	streqb r0, [r9, #0x28]
	beq _0210701C
_02107010:
	add r7, r7, #1
	cmp r7, r8
	blt _02106FC4
_0210701C:
	ldr r0, [sp]
	add r10, r10, #1
	ldrh r0, [r0, #0xe]
	cmp r10, r0
	blt _02106EA4
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02107038: .word ov17_021162A0
_0210703C: .word ov17_02112540
_02107040: .word ov17_0211253C
	arm_func_end FUN_ov17_02106e68

	arm_func_start FUN_ov17_02107044
FUN_ov17_02107044: ; 0x02107044
	stmfd sp!, {r4, lr}
	ldr r0, _02107078 ; =0x000006F8
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	ldr r4, _0210707C ; =0x021162A4
	add r2, r0, #0xf8
	str r0, [r4]
	ldr r1, _02107080 ; =0x0000A001
	add r0, r2, #0x400
	bl MATHi_CRC16InitTableRev
	ldr r0, [r4]
	bl DWCi_BACKUPlRead
	ldmfd sp!, {r4, pc}
_02107078: .word 0x000006F8
_0210707C: .word ov17_021162A4
_02107080: .word 0x0000A001
	arm_func_end FUN_ov17_02107044

	arm_func_start FUN_ov17_02107084
FUN_ov17_02107084: ; 0x02107084
	ldr r0, _02107090 ; =0x021162A4
	ldr r12, _02107094 ; =DWCi_HEAPlFree_
	bx r12
_02107090: .word ov17_021162A4
_02107094: .word DWCi_HEAPlFree_
	arm_func_end FUN_ov17_02107084

	arm_func_start FUN_ov17_02107098
FUN_ov17_02107098: ; 0x02107098
	ldr r0, _021070A8 ; =0x021162A4
	ldr r0, [r0]
	add r0, r0, #0x400
	bx lr
_021070A8: .word ov17_021162A4
	arm_func_end FUN_ov17_02107098

	arm_func_start FUN_ov17_021070ac
FUN_ov17_021070ac: ; 0x021070AC
	ldr r1, _021070BC ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f5]
	bx lr
_021070BC: .word ov17_021162A4
	arm_func_end FUN_ov17_021070ac

	arm_func_start FUN_ov17_021070c0
FUN_ov17_021070c0: ; 0x021070C0
	ldr r1, _021070D0 ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f6]
	bx lr
_021070D0: .word ov17_021162A4
	arm_func_end FUN_ov17_021070c0

	arm_func_start FUN_ov17_021070d4
FUN_ov17_021070d4: ; 0x021070D4
	stmfd sp!, {r4, lr}
	ldr r4, _021070FC ; =0x021162A4
	mov r2, #0x20
	ldr r1, [r4]
	add r1, r1, #0x440
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0x4e7]
	ldmfd sp!, {r4, pc}
_021070FC: .word ov17_021162A4
	arm_func_end FUN_ov17_021070d4

	arm_func_start FUN_ov17_02107100
FUN_ov17_02107100: ; 0x02107100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r7, _0210727C ; =0x021162A4
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0
	add r0, r0, #0x480
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0x20
	bl FUN_ov17_0210ee94
	mov r5, r0
	cmp r5, #0xa
	bgt _02107148
	bge _02107160
	cmp r5, #0
	beq _02107160
	b _021071B4
_02107148:
	cmp r5, #0x1a
	bgt _02107158
	beq _02107160
	b _021071B4
_02107158:
	cmp r5, #0x20
	bne _021071B4
_02107160:
	ldr r1, [r7]
	cmp r5, #0
	ldrb r0, [r1, #0x4e6]
	mov r4, #0
	bic r0, r0, #0xfc
	strb r0, [r1, #0x4e6]
	ldr r0, [r7]
	add r9, r0, #0x480
	ble _021071DC
_02107184:
	ldrb r0, [r6, r4]
	add r10, r6, r4
	bl FUN_ov17_02107b34
	mov r8, r0
	ldrb r0, [r10, #1]
	bl FUN_ov17_02107b34
	add r0, r0, r8, lsl #4
	add r4, r4, #2
	cmp r4, r5
	strb r0, [r9], #1
	blt _02107184
	b _021071DC
_021071B4:
	ldr r3, [r7]
	mov r0, r6
	ldrb r1, [r3, #0x4e6]
	mov r2, #0x10
	bic r1, r1, #0xfc
	orr r1, r1, #4
	strb r1, [r3, #0x4e6]
	ldr r1, [r7]
	add r1, r1, #0x480
	bl MI_CpuCopy8
_021071DC:
	cmp r5, #5
	bgt _021071F4
	bge _02107234
	cmp r5, #0
	beq _02107220
	b _02107264
_021071F4:
	cmp r5, #0xd
	bgt _02107214
	cmp r5, #0xa
	blt _02107264
	beq _02107234
	cmp r5, #0xd
	beq _0210724C
	b _02107264
_02107214:
	cmp r5, #0x1a
	beq _0210724C
	b _02107264
_02107220:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107234:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210724C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107264:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210727C: .word ov17_021162A4
	arm_func_end FUN_ov17_02107100

	arm_func_start FUN_ov17_02107280
FUN_ov17_02107280: ; 0x02107280
	ldr r1, _02107294 ; =0x021162A4
	ldr r12, _02107298 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0x4c0
	bx r12
_02107294: .word ov17_021162A4
_02107298: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_02107280

	arm_func_start FUN_ov17_0210729c
FUN_ov17_0210729c: ; 0x0210729C
	ldr r1, _021072B0 ; =0x021162A4
	ldr r12, _021072B4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0x4f0
	bx r12
_021072B0: .word ov17_021162A4
_021072B4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_0210729c

	arm_func_start FUN_ov17_021072b8
FUN_ov17_021072b8: ; 0x021072B8
	ldr r1, _021072D0 ; =0x021162A4
	ldr r12, _021072D4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xc4
	add r1, r1, #0x400
	bx r12
_021072D0: .word ov17_021162A4
_021072D4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072b8

	arm_func_start FUN_ov17_021072d8
FUN_ov17_021072d8: ; 0x021072D8
	ldr r1, _021072F0 ; =0x021162A4
	ldr r12, _021072F4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xc8
	add r1, r1, #0x400
	bx r12
_021072F0: .word ov17_021162A4
_021072F4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072d8

	arm_func_start FUN_ov17_021072f8
FUN_ov17_021072f8: ; 0x021072F8
	ldr r1, _02107310 ; =0x021162A4
	ldr r12, _02107314 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xcc
	add r1, r1, #0x400
	bx r12
_02107310: .word ov17_021162A4
_02107314: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072f8

	arm_func_start FUN_ov17_02107318
FUN_ov17_02107318: ; 0x02107318
	ldr r2, _02107334 ; =0x021162A4
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107338 ; =MI_CpuCopy8
	mov r2, #0x20
	add r0, r0, #0x440
	bx r12
_02107334: .word ov17_021162A4
_02107338: .word MI_CpuCopy8
	arm_func_end FUN_ov17_02107318

	arm_func_start FUN_ov17_0210733c
FUN_ov17_0210733c: ; 0x0210733C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107374 ; =0x021162A4
	ldr r1, _02107378 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4c2]
	str r2, [sp]
	ldrb r2, [r3, #0x4c3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4c0]
	ldrb r3, [r3, #0x4c1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107374: .word ov17_021162A4
_02107378: .word ov17_02113534
	arm_func_end FUN_ov17_0210733c

	arm_func_start FUN_ov17_0210737c
FUN_ov17_0210737c: ; 0x0210737C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073B4 ; =0x021162A4
	ldr r1, _021073B8 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4f2]
	str r2, [sp]
	ldrb r2, [r3, #0x4f3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4f0]
	ldrb r3, [r3, #0x4f1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073B4: .word ov17_021162A4
_021073B8: .word ov17_02113534
	arm_func_end FUN_ov17_0210737c

	arm_func_start FUN_ov17_021073bc
FUN_ov17_021073bc: ; 0x021073BC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073F8 ; =0x021162A4
	ldr r1, _021073FC ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc4
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c4]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073F8: .word ov17_021162A4
_021073FC: .word ov17_02113534
	arm_func_end FUN_ov17_021073bc

	arm_func_start FUN_ov17_02107400
FUN_ov17_02107400: ; 0x02107400
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0210743C ; =0x021162A4
	ldr r1, _02107440 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc8
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c8]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210743C: .word ov17_021162A4
_02107440: .word ov17_02113534
	arm_func_end FUN_ov17_02107400

	arm_func_start FUN_ov17_02107444
FUN_ov17_02107444: ; 0x02107444
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107480 ; =0x021162A4
	ldr r1, _02107484 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xcc
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4cc]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107480: .word ov17_021162A4
_02107484: .word ov17_02113534
	arm_func_end FUN_ov17_02107444

	arm_func_start FUN_ov17_02107488
FUN_ov17_02107488: ; 0x02107488
	ldr r1, _0210749C ; =0x021162A4
	ldr r1, [r1]
	add r0, r1, r0, lsl #8
	ldrb r0, [r0, #0xe7]
	bx lr
_0210749C: .word ov17_021162A4
	arm_func_end FUN_ov17_02107488

	arm_func_start FUN_ov17_021074a0
FUN_ov17_021074a0: ; 0x021074A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02107564 ; =0x021162A4
	mov r3, #0x78
	ldr r12, [r5]
	add r4, r12, r0, lsl #8
	mov r7, r4
	add r6, r12, #0x400
_021074BC:
	ldrb r2, [r7]
	ldrb r1, [r7, #1]
	add r7, r7, #2
	subs r3, r3, #1
	strb r1, [r6, #1]
	strb r2, [r6], #2
	bne _021074BC
	ldr r1, _02107568 ; =0x0211258C
	strb r0, [r12, #0x4f4]
	add r0, r4, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	mov r1, #0
	mov r6, #4
	ldr r0, [r5]
	moveq r1, #1
	strb r1, [r0, #0x4f5]
	ldr r7, _02107568 ; =0x0211258C
	mov r2, r6
	mov r1, r7
	add r0, r4, #0xc8
	bl memcmp
	cmp r0, #0
	bne _02107538
	mov r1, r7
	mov r2, r6
	add r0, r4, #0xcc
	bl memcmp
	cmp r0, #0
	beq _02107544
_02107538:
	ldr r0, [r5]
	mov r1, #0
	b _0210754C
_02107544:
	ldr r0, [r5]
	mov r1, #1
_0210754C:
	strb r1, [r0, #0x4f6]
	ldr r1, [r5]
	ldrb r0, [r4, #0xd0]
	add r1, r1, #0x4f0
	bl DWCi_BACKUPlConvMaskAddr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107564: .word ov17_021162A4
_02107568: .word ov17_0211258C
	arm_func_end FUN_ov17_021074a0

	arm_func_start FUN_ov17_0210756c
FUN_ov17_0210756c: ; 0x0210756C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210764C ; =0x021162A4
	mov r2, #0x78
	ldr r1, [r0]
	add r4, r1, #0x400
	ldrb r0, [r4, #0xf4]
	mov r6, r4
	add r5, r1, r0, lsl #8
	mov r3, r5
_02107590:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02107590
	ldrb r0, [r4, #0xf5]
	mov r6, #4
	cmp r0, #0
	beq _021075E8
	mov r7, #0
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc0
	bl MI_CpuFill8
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc4
	bl MI_CpuFill8
	strb r7, [r5, #0xd0]
	b _02107614
_021075E8:
	mov r2, r6
	add r0, r4, #0xc0
	add r1, r5, #0xc0
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #0xc4
	add r1, r5, #0xc4
	bl MI_CpuCopy8
	add r0, r4, #0xf0
	bl FUN_ov1_020cabf0 ; may be ov15
	strb r0, [r5, #0xd0]
_02107614:
	ldrb r0, [r4, #0xf6]
	mov r2, #8
	cmp r0, #0
	beq _02107634
	add r0, r5, #0xc8
	mov r1, #0
	bl MI_CpuFill8
	b _02107640
_02107634:
	add r0, r4, #0xc8
	add r1, r5, #0xc8
	bl MI_CpuCopy8
_02107640:
	ldrb r0, [r4, #0xf4]
	bl FUN_ov17_0210795c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210764C: .word ov17_021162A4
	arm_func_end FUN_ov17_0210756c

	arm_func_start FUN_ov17_02107650
FUN_ov17_02107650: ; 0x02107650
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210774C ; =0x021162A4
	mov r6, #0
	ldr r4, [r1]
	mov r7, r0
	mov r1, r6
	add r0, r4, #0x400
	mov r2, #0xef
	bl MI_CpuFill8
	mov r0, r7
	add r1, r4, #0x440
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r7, #0x20]
	cmp r0, #1
	beq _021076A4
	cmp r0, #2
	beq _021076B8
	cmp r0, #3
	beq _021076CC
	b _021076E0
_021076A4:
	ldrb r0, [r4, #0x4e6]
	mov r6, #5
	bic r0, r0, #3
	orr r0, r0, #1
	b _021076E8
_021076B8:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0xd
	bic r0, r0, #3
	orr r0, r0, #2
	b _021076E8
_021076CC:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0x10
	bic r0, r0, #3
	orr r0, r0, #3
	b _021076E8
_021076E0:
	ldrb r0, [r4, #0x4e6]
	bic r0, r0, #3
_021076E8:
	strb r0, [r4, #0x4e6]
	ldrb r0, [r4, #0x4e6]
	add r8, r7, #0x28
	mov r5, #0
	bic r0, r0, #0xfc
	strb r0, [r4, #0x4e6]
	add r7, r4, #0x480
_02107704:
	mov r2, r6
	add r0, r8, r5, lsl #5
	add r1, r7, r5, lsl #4
	bl MI_CpuCopy8
	add r5, r5, #1
	cmp r5, #4
	blt _02107704
	mov r3, #2
	add r0, r4, #0x4f0
	mov r1, #0
	mov r2, #4
	strb r3, [r4, #0x4e7]
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r4, #0x4f5]
	strb r0, [r4, #0x4f6]
	bl FUN_ov17_0210756c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210774C: .word ov17_021162A4
	arm_func_end FUN_ov17_02107650

	arm_func_start FUN_ov17_02107750
FUN_ov17_02107750: ; 0x02107750
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02107864 ; =0x021162A4
	mov r7, #0
	ldr r1, [r1]
	mov r8, r0
	add r4, r1, #0x400
	mov r0, r4
	mov r1, r7
	mov r2, #0xef
	bl MI_CpuFill8
	mov r5, #5
	mov r0, r8
	mov r2, r5
	add r1, r4, #0xd1
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #6
	add r1, r4, #0xd6
	bl MI_CpuCopy8
	add r0, r8, #0xc
	add r1, r4, #0xdb
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x12
	add r1, r4, #0xe0
	bl MI_CpuCopy8
	add r0, r8, #0x18
	add r1, r4, #0x60
	mov r6, #0x20
	mov r2, r6
	bl MI_CpuCopy8
	add r0, r8, #0x39
	add r1, r4, #0x80
	mov r5, #0xd
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x47
	add r1, r4, #0x90
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x55
	add r1, r4, #0xa0
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x63
	add r1, r4, #0xb0
	bl MI_CpuCopy8
	add r0, r8, #0x71
	mov r2, r6
	add r1, r4, #0x40
	bl MI_CpuCopy8
	mov r1, r7
	ldrb r2, [r4, #0xe6]
	mov r5, #1
	add r0, r4, #0xf0
	bic r2, r2, #3
	orr r2, r2, #2
	and r2, r2, #0xff
	bic r2, r2, #0xfc
	strb r2, [r4, #0xe6]
	strb r5, [r4, #0xe7]
	mov r2, #4
	bl MI_CpuFill8
	strb r5, [r4, #0xf5]
	strb r5, [r4, #0xf6]
	bl FUN_ov17_0210756c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107864: .word ov17_021162A4
	arm_func_end FUN_ov17_02107750

	arm_func_start FUN_ov17_02107868
FUN_ov17_02107868: ; 0x02107868
	ldr r0, _02107874 ; =0x021162A4
	ldr r0, [r0]
	bx lr
_02107874: .word ov17_021162A4
	arm_func_end FUN_ov17_02107868

	arm_func_start FUN_ov17_02107878
FUN_ov17_02107878: ; 0x02107878
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021078B0 ; =0x021162A4
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	add r4, r0, r5, lsl #8
	mov r0, r4
	mov r2, #0xef
	bl MI_CpuFill8
	mov r1, #0xff
	mov r0, r5
	strb r1, [r4, #0xe7]
	bl FUN_ov17_0210795c
	ldmfd sp!, {r3, r4, r5, pc}
_021078B0: .word ov17_021162A4
	arm_func_end FUN_ov17_02107878

	arm_func_start FUN_ov17_021078b4
FUN_ov17_021078b4: ; 0x021078B4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r4, _02107958 ; =0x021162A4
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_021078D8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _021078D8
	add r4, sp, #0
	mov r0, r4
	bl DWCi_AUTH_GetNewWiFiInfo
	mov r0, r4
	bl DWCi_BACKUPlConvWifiInfo
	ldr r4, _02107958 ; =0x021162A4
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_02107914:
	ldr r1, [r4]
	mov r0, r6
	add r1, r1, r7, lsl #8
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _02107914
	mov r4, #0
_0210793C:
	mov r0, r4
	bl FUN_ov17_0210795c
	add r4, r4, #1
	cmp r4, #4
	blt _0210793C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02107958: .word ov17_021162A4
	arm_func_end FUN_ov17_021078b4

	arm_func_start FUN_ov17_0210795c
FUN_ov17_0210795c: ; 0x0210795C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	ldr r9, _02107AA8 ; =0x021162A4
	mov r8, r0
	ldr r1, [r9]
	mov r4, #1
	add r0, r1, r8, lsl #8
	ldrb r5, [r0, #0xe7]
	mov r7, #0
	add r10, sp, #4
	mov r0, r10
	mov r1, r7
	mov r2, #0x10
	mov r6, r4, lsl r8
	bl MI_CpuFill8
	str r4, [r10, r8, lsl #2]
	cmp r8, #2
	bgt _02107A2C
	ldr r0, [r9]
	ldr r1, _02107AA8 ; =0x021162A4
	ldrb r2, [r0, #0xef]
	tst r2, r6
	movne r7, r4
	cmp r5, #0xff
	bne _021079F0
	cmp r7, #0
	beq _021079F0
	ldrb r2, [r0, #0xef]
	mvn r3, r6
	and r3, r3, #0xff
	and r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	and r1, r1, r3
	b _02107A20
_021079F0:
	cmp r5, #0xff
	beq _02107A2C
	cmp r7, #0
	bne _02107A2C
	ldrb r2, [r0, #0xef]
	and r3, r6, #0xff
	orr r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	orr r1, r1, r3
_02107A20:
	strb r1, [r2, #0x1ef]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02107A2C:
	ldr r6, _02107AA8 ; =0x021162A4
	mov r5, #0
	mov r7, #0xfe
	add r4, sp, #4
_02107A3C:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _02107A6C
	ldr r1, [r6]
	mov r2, r7
	add r0, r1, #0xf8
	add r0, r0, #0x400
	add r1, r1, r5, lsl #8
	bl MATH_CalcCRC16
	ldr r1, [r6]
	add r1, r1, r5, lsl #8
	strh r0, [r1, #0xfe]
_02107A6C:
	add r5, r5, #1
	cmp r5, #4
	blt _02107A3C
	mov r0, #0x100
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	mov r2, r0
	str r2, [sp]
	ldr r0, [r6]
	add r1, sp, #4
	bl DWCi_BACKUPlWritePage
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02107AA8: .word ov17_021162A4
	arm_func_end FUN_ov17_0210795c

	arm_func_start FUN_ov17_02107aac
FUN_ov17_02107aac: ; 0x02107AAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	add r6, sp, #0
	mov r9, r0
	mov r7, #0
	mov r8, r1
	mov r0, r6
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	mov r10, #0x20
	mov r5, #3
	mov r4, r7
_02107AE0:
	add r0, r7, r7, lsl #1
	mov r1, r6
	mov r2, r5
	add r0, r9, r0
	bl MI_CpuCopy8
	mov r1, r4
_02107AF8:
	ldrb r0, [r6, r1]
	cmp r0, #0
	bne _02107B14
	strb r10, [r6, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _02107AF8
_02107B14:
	mov r0, r6
	bl atoi
	strb r0, [r8, r7]
	add r7, r7, #1
	cmp r7, #4
	blt _02107AE0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov17_02107aac

	arm_func_start FUN_ov17_02107b34
FUN_ov17_02107b34: ; 0x02107B34
	cmp r0, #0x39
	subls r0, r0, #0x30
	bxls lr
	cmp r0, #0x46
	subls r0, r0, #0x37
	subhi r0, r0, #0x57
	bx lr
	arm_func_end FUN_ov17_02107b34

	arm_func_start DWCi_SNDlInit
DWCi_SNDlInit: ; 0x02107B50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0xac
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _02107C08 ; =0x021162A8
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _02107C0C ; =0x02113544
	mov r2, #0x20
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	str r0, [r1, #0xa4]
	bl NNS_SndInit
	ldr r0, [r4]
	ldr r1, [r0, #0xa4]
	bl NNS_SndArcInitOnMemory
	mov r7, #0
	mov r0, r7
	bl NNS_SndArcPlayerSetup
	ldr r0, [r4]
	add r0, r0, #0xa0
	bl NNS_SndHandleInit
	mov r6, #0x7f
	mov r5, #1
	mov r4, r7
_02107BB4:
	mov r0, r7
	mov r1, r6
	bl NNS_SndPlayerSetPlayerVolume
	mov r0, r7
	mov r1, r5
	bl NNS_SndPlayerSetPlayableSeqCount
	mov r0, r7
	mov r1, r4
	bl NNS_SndPlayerSetAllocatableChannel
	add r7, r7, #1
	cmp r7, #0x20
	blt _02107BB4
	ldr r1, _02107C10 ; =FUN_ov17_02107cc8
	mov r0, r4
	mov r2, r4
	mov r3, #0xc8
	bl DWCi_TSKlForm
	ldr r1, _02107C08 ; =0x021162A8
	ldr r1, [r1]
	str r0, [r1, #0xa8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107C08: .word ov17_021162A8
_02107C0C: .word ov17_02113544
_02107C10: .word FUN_ov17_02107cc8
	arm_func_end DWCi_SNDlInit

	arm_func_start DWCi_SNDlEnd
DWCi_SNDlEnd: ; 0x02107C14
	stmfd sp!, {r3, lr}
	ldr r1, _02107C38 ; =0x021162A8
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0xa8]
	bl DWCi_TSKlDelete
	ldr r0, _02107C3C ; =0x021162A8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_02107C38: .word ov17_021162A8
_02107C3C: .word ov17_021162A8
	arm_func_end DWCi_SNDlEnd

	arm_func_start FUN_ov17_02107c40
FUN_ov17_02107c40: ; 0x02107C40
	ldr r1, _02107C5C ; =0x021162A8
	mov r2, r0
	ldr r0, [r1]
	ldr r12, _02107C60 ; =NNS_SndArcPlayerStartSeqArc
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107C5C: .word ov17_021162A8
_02107C60: .word NNS_SndArcPlayerStartSeqArc
	arm_func_end FUN_ov17_02107c40

	arm_func_start FUN_ov17_02107c64
FUN_ov17_02107c64: ; 0x02107C64
	ldr r2, _02107C7C ; =0x021162A8
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107C80 ; =NNS_SndPlayerSetVolume
	add r0, r0, #0xa0
	bx r12
_02107C7C: .word ov17_021162A8
_02107C80: .word NNS_SndPlayerSetVolume
	arm_func_end FUN_ov17_02107c64

	arm_func_start FUN_ov17_02107c84
FUN_ov17_02107c84: ; 0x02107C84
	ldr r2, _02107CA0 ; =0x021162A8
	ldr r12, _02107CA4 ; =NNS_SndPlayerSetTrackPitch
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0xa0
	bx r12
_02107CA0: .word ov17_021162A8
_02107CA4: .word NNS_SndPlayerSetTrackPitch
	arm_func_end FUN_ov17_02107c84

	arm_func_start FUN_ov17_02107ca8
FUN_ov17_02107ca8: ; 0x02107CA8
	ldr r0, _02107CC0 ; =0x021162A8
	ldr r12, _02107CC4 ; =NNS_SndPlayerStopSeq
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107CC0: .word ov17_021162A8
_02107CC4: .word NNS_SndPlayerStopSeq
	arm_func_end FUN_ov17_02107ca8

	arm_func_start FUN_ov17_02107cc8
FUN_ov17_02107cc8:
	ldr r12, _02107CD0 ; =NNS_SndMain
	bx r12
_02107CD0: .word NNS_SndMain
	arm_func_end FUN_ov17_02107cc8

	arm_func_start DWCi_STEPlBegin
DWCi_STEPlBegin: ; 0x02107CD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	mov r0, #0x1c
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, [sp]
	ldr r4, _02107DBC ; =0x021162AC
	add r3, r1, r1, lsl #2
	ldr r2, _02107DC0 ; =0x02112590
	ldr r1, _02107DC4 ; =0x0211259F
	mov r8, #0
	mvn r7, #0
	ldr r11, _02107DC8 ; =0x021125AE
	str r0, [r4, #4]
	add r9, r2, r3
	add r10, r1, r3
	sub r5, r7, #0x29
	mov r6, r8
_02107D1C:
	ldrb r1, [r9, r8]
	mov r0, #1
	mov r2, r0
	bl DWCi_CEINlSetExCell
	ldr r2, [r4, #4]
	mov r1, r7
	str r0, [r2, r8, lsl #2]
	ldr r0, [r4, #4]
	mov r2, r6
	ldr r0, [r0, r8, lsl #2]
	bl DWCi_CELLlSetPriority
	ldr r0, [r4, #4]
	add r3, r11, r8, lsl #2
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r5
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	ldrb r3, [r10, r8]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r6
	bl DWCi_CELLlSetPalette
	add r8, r8, #1
	cmp r8, #5
	blt _02107D1C
	ldr r1, _02107DCC ; =FUN_ov17_02107dd0
	mov r0, r6
	mov r2, r6
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, _02107DBC ; =0x021162AC
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl FUN_ov17_02108744
	mov r0, #0xd
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02107DBC: .word ov17_021162AC
_02107DC0: .word ov17_02112590
_02107DC4: .word ov17_0211259F
_02107DC8: .word ov17_021125AE
_02107DCC: .word FUN_ov17_02107dd0
	arm_func_end DWCi_STEPlBegin

	arm_func_start FUN_ov17_02107dd0
FUN_ov17_02107dd0: ; 0x02107DD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _02107EA4 ; =0x021162AC
	mov r4, #0
	ldr r1, [r6, #4]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _02107E18
	cmp r0, #0x100
	ble _02107E58
_02107E18:
	ldr r5, _02107EA8 ; =0x021125AE
	ldr r4, _02107EA4 ; =0x021162AC
	mov r7, #0
	mvn r6, #0
_02107E28:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _02107E28
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107E58:
	mov r0, #0x20
	ldr r7, _02107EA8 ; =0x021125AE
	str r0, [sp, #4]
	mvn r8, #0
_02107E68:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl DWCi_CELLlSetPosition
	add r4, r4, #1
	cmp r4, #5
	blt _02107E68
	ldr r1, _02107EAC ; =FUN_ov17_02107eb0
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107EA4: .word ov17_021162AC
_02107EA8: .word ov17_021125AE
_02107EAC: .word FUN_ov17_02107eb0
	arm_func_end FUN_ov17_02107dd0

	arm_func_start FUN_ov17_02107eb0
FUN_ov17_02107eb0: ; 0x02107EB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02107F84 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	blt _02107EF4
	cmp r0, #0x100
	ble _02107F34
_02107EF4:
	ldr r5, _02107F88 ; =0x021125AE
	ldr r4, _02107F84 ; =0x021162AC
	mov r7, #1
	mvn r6, #0
_02107F04:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _02107F04
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107F34:
	mov r0, #0x50
	ldr r6, _02107F88 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_02107F48:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _02107F48
	ldr r1, _02107F8C ; =FUN_ov17_02107f90
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107F84: .word ov17_021162AC
_02107F88: .word ov17_021125AE
_02107F8C: .word FUN_ov17_02107f90
	arm_func_end FUN_ov17_02107eb0

	arm_func_start FUN_ov17_02107f90
FUN_ov17_02107f90: ; 0x02107F90
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108064 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	blt _02107FD4
	cmp r0, #0x100
	ble _02108014
_02107FD4:
	ldr r5, _02108068 ; =0x021125AE
	ldr r4, _02108064 ; =0x021162AC
	mov r7, #2
	mvn r6, #0
_02107FE4:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _02107FE4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108014:
	mov r0, #0x68
	ldr r6, _02108068 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_02108028:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _02108028
	ldr r1, _0210806C ; =FUN_ov17_02108070
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108064: .word ov17_021162AC
_02108068: .word ov17_021125AE
_0210806C: .word FUN_ov17_02108070
	arm_func_end FUN_ov17_02107f90

	arm_func_start FUN_ov17_02108070
FUN_ov17_02108070: ; 0x02108070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108144 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x98
	blt _021080B4
	cmp r0, #0x100
	ble _021080F4
_021080B4:
	ldr r5, _02108148 ; =0x021125AE
	ldr r4, _02108144 ; =0x021162AC
	mov r7, #3
	mvn r6, #0
_021080C4:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _021080C4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021080F4:
	mov r0, #0x98
	ldr r6, _02108148 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_02108108:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _02108108
	ldr r1, _0210814C ; =FUN_ov17_02108150
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108144: .word ov17_021162AC
_02108148: .word ov17_021125AE
_0210814C: .word FUN_ov17_02108150
	arm_func_end FUN_ov17_02108070

	arm_func_start FUN_ov17_02108150
FUN_ov17_02108150: ; 0x02108150
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _021081E4 ; =0x021162AC
	mov r5, r0
	ldr r0, [r4, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	add r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0xb0
	blt _02108194
	cmp r2, #0x100
	ble _021081B4
_02108194:
	ldr r0, _021081E4 ; =0x021162AC
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x21
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlSetPosition
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021081B4:
	mov r2, #0xb0
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0xb1
	mov r3, #0x21
	bl DWCi_CELLlSetPosition
	ldr r1, _021081E8 ; =FUN_ov17_021081ec
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021081E4: .word ov17_021162AC
_021081E8: .word FUN_ov17_021081ec
	arm_func_end FUN_ov17_02108150

	arm_func_start FUN_ov17_021081ec
FUN_ov17_021081ec: ; 0x021081EC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl DWCi_TSKlDelete
	ldr r0, _02108210 ; =0x021162AC
	ldr r0, [r0, #4]
	str r4, [r0, #0x14]
	ldmfd sp!, {r4, pc}
_02108210: .word ov17_021162AC
	arm_func_end FUN_ov17_021081ec

	arm_func_start FUN_ov17_02108214
FUN_ov17_02108214: ; 0x02108214
	stmfd sp!, {r4, lr}
	ldr r4, _02108248 ; =0x021162AC
	mov r0, #0
	ldr r3, [r4, #4]
	mov r12, #1
	ldr r1, _0210824C ; =FUN_ov17_02108338
	mov r2, r0
	strb r12, [r3, #0x18]
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_02108248: .word ov17_021162AC
_0210824C: .word FUN_ov17_02108338
	arm_func_end FUN_ov17_02108214

	arm_func_start DWCi_STEPlChange
DWCi_STEPlChange: ; 0x02108250
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	add r2, r0, r0, lsl #2
	ldr r1, _02108308 ; =0x02112590
	ldr r0, _0210830C ; =0x0211259F
	mov r8, #0
	ldr r5, _02108310 ; =0x021125AE
	ldr r4, _02108314 ; =0x021162AC
	add r9, r1, r2
	add r10, r0, r2
	mov r7, r8
	mov r11, #1
	mvn r6, #0
_02108284:
	ldr r0, [r4, #4]
	mov r1, r7
	ldr r0, [r0, r8, lsl #2]
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r11
	ldrb r1, [r9, r8]
	bl DWCi_CEINlSet
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, r7
	bl DWCi_CELLlSetPriority
	ldr r0, [r4, #4]
	mov r1, r8, lsl #2
	ldr r0, [r0, r8, lsl #2]
	ldrh r2, [r5, r1]
	mov r1, r6
	add r3, r5, r8, lsl #2
	ldrh r3, [r3, #2]
	bl DWCi_CELLlSetPosition
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, r7
	ldrb r3, [r10, r8]
	bl DWCi_CELLlSetPalette
	add r8, r8, #2
	cmp r8, #5
	blt _02108284
	ldr r0, [sp]
	bl FUN_ov17_02108744
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108308: .word ov17_02112590
_0210830C: .word ov17_0211259F
_02108310: .word ov17_021125AE
_02108314: .word ov17_021162AC
	arm_func_end DWCi_STEPlChange

	arm_func_start FUN_ov17_02108318
FUN_ov17_02108318: ; 0x02108318
	ldr r0, _02108334 ; =0x021162AC
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02108334: .word ov17_021162AC
	arm_func_end FUN_ov17_02108318

	arm_func_start FUN_ov17_02108338
FUN_ov17_02108338: ; 0x02108338
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r4, _021083C0 ; =0x021162AC
	mov r5, #0
	ldr r1, [r4, #4]
	mov r6, r0
	ldr r0, [r1, #0x10]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r5
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	mov r3, #0x21
	sub r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0x98
	ble _02108394
	ldr r0, [r4, #4]
	sub r1, r5, #1
	ldr r0, [r0, #0x10]
	bl DWCi_CELLlSetPosition
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02108394:
	mov r2, #0x98
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0x99
	bl DWCi_CELLlSetPosition
	ldr r1, _021083C4 ; =FUN_ov17_021083c8
	mov r0, r6
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021083C0: .word ov17_021162AC
_021083C4: .word FUN_ov17_021083c8
	arm_func_end FUN_ov17_02108338

	arm_func_start FUN_ov17_021083c8
FUN_ov17_021083c8: ; 0x021083C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108490 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	ble _02108440
	ldr r4, _02108494 ; =0x021125AE
	mov r7, #3
	mvn r6, #0
_02108410:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _02108410
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108440:
	mov r0, #0x68
	ldr r6, _02108494 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_02108454:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _02108454
	ldr r1, _02108498 ; =FUN_ov17_0210849c
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108490: .word ov17_021162AC
_02108494: .word ov17_021125AE
_02108498: .word FUN_ov17_0210849c
	arm_func_end FUN_ov17_021083c8

	arm_func_start FUN_ov17_0210849c
FUN_ov17_0210849c: ; 0x0210849C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108564 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	ble _02108514
	ldr r4, _02108568 ; =0x021125AE
	mov r7, #2
	mvn r6, #0
_021084E4:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _021084E4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108514:
	mov r0, #0x50
	ldr r6, _02108568 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_02108528:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _02108528
	ldr r1, _0210856C ; =FUN_ov17_02108570
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108564: .word ov17_021162AC
_02108568: .word ov17_021125AE
_0210856C: .word FUN_ov17_02108570
	arm_func_end FUN_ov17_0210849c

	arm_func_start FUN_ov17_02108570
FUN_ov17_02108570: ; 0x02108570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108638 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	ble _021085E8
	ldr r4, _0210863C ; =0x021125AE
	mov r7, #1
	mvn r6, #0
_021085B8:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, #5
	blt _021085B8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021085E8:
	mov r0, #0x20
	ldr r6, _0210863C ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_021085FC:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl DWCi_CELLlSetPosition
	add r8, r8, #1
	cmp r8, #5
	blt _021085FC
	ldr r1, _02108640 ; =FUN_ov17_02108644
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108638: .word ov17_021162AC
_0210863C: .word ov17_021125AE
_02108640: .word FUN_ov17_02108644
	arm_func_end FUN_ov17_02108570

	arm_func_start FUN_ov17_02108644
FUN_ov17_02108644: ; 0x02108644
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _02108708 ; =0x021162AC
	mov r4, #0
	ldr r1, [r6, #4]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl DWCi_CELLlGetPosition
	ldr r0, [sp, #4]
	ldr r7, _0210870C ; =0x021125AE
	sub r0, r0, #8
	str r0, [sp, #4]
	mvn r8, #0
_02108684:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl DWCi_CELLlSetPosition
	add r4, r4, #1
	cmp r4, #5
	blt _02108684
	ldr r1, [sp, #4]
	ldr r0, _02108710 ; =0x000001D6
	cmp r1, r0
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x100
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r0, r6
	mov r1, r5
	bl DWCi_TSKlDelete
	ldr r4, _02108708 ; =0x021162AC
_021086E0:
	ldr r0, [r4, #4]
	ldr r0, [r0, r6, lsl #2]
	bl DWCi_CELLlDelete
	add r6, r6, #1
	cmp r6, #5
	blt _021086E0
	ldr r0, _02108714 ; =0x021162B0
	bl DWCi_HEAPlFree_
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108708: .word ov17_021162AC
_0210870C: .word ov17_021125AE
_02108710: .word 0x000001D6
_02108714: .word ov17_021162B0
	arm_func_end FUN_ov17_02108644

	arm_func_start FUN_ov17_02108718
FUN_ov17_02108718: ; 0x02108718
	ldr r0, _02108740 ; =0x021162AC
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_02108740: .word ov17_021162AC
	arm_func_end FUN_ov17_02108718

	arm_func_start FUN_ov17_02108744
FUN_ov17_02108744: ; 0x02108744
	stmfd sp!, {r4, lr}
	ldr r1, _02108784 ; =0x021135C0
	ldr r0, [r1, r0, lsl #2]
	bl DWCi_Char
	mov r4, #0
	mov r1, r4
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r2, _02108788 ; =0x021162AC
	ldr r1, _0210878C ; =FUN_ov17_02108790
	str r0, [r2]
	mov r2, r4
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldmfd sp!, {r4, pc}
_02108784: .word ov17_021135C0
_02108788: .word ov17_021162AC
_0210878C: .word FUN_ov17_02108790
	arm_func_end FUN_ov17_02108744

	arm_func_start FUN_ov17_02108790
FUN_ov17_02108790: ; 0x02108790
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _021087D4 ; =0x021162AC
	mov r6, r0
	mov r5, #0x600
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4]
	mov r2, r5
	mov r1, #0
	bl GXS_LoadBG1Scr
	ldr r0, [r4]
	bl DWCi_ARClRelease
	mov r1, r6
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_021087D4: .word ov17_021162AC
	arm_func_end FUN_ov17_02108790

	arm_func_start FUN_ov17_021087d8
FUN_ov17_021087d8: ; 0x021087D8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r0
	ldr r0, _02108930 ; =0x00001BA0
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	ldr r5, _02108934 ; =0x021162B4
	add r1, r0, #0x1000
	str r0, [r5]
	str r4, [r1, #0x370]
	bl OS_GetTick
	ldr r3, [r5]
	mov r2, #3
	add r3, r3, #0x1000
	str r0, [r3, #0xb88]
	str r1, [r3, #0xb8c]
	ldr r0, [r5]
	ldr r1, _02108938 ; =FUN_ov17_02108a74
	bl WM_Initialize
	cmp r0, #2
	bne _0210891C
_0210882C:
	ldr r0, [r5]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r4, [r5]
	add r0, r4, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0210882C
	add r0, r4, #0x374
	ldr lr, _0210893C ; =0x021125D4
	add r12, r0, #0x1000
	mov r5, #4
_02108860:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02108860
	ldr r0, [lr]
	add r1, r4, #0xf00
	str r0, [r12]
	add r0, r4, #0x1000
	str r1, [r0, #0x374]
	bl WM_GetDispersionScanPeriod
	ldr r5, _02108934 ; =0x021162B4
	ldr r1, [r5]
	add r1, r1, #0x1300
	strh r0, [r1, #0x7c]
	add r0, sp, #0
	bl OS_GetOwnerInfo
	ldr r1, [r5]
	ldr r0, _02108940 ; =0x021125CA
	add r1, r1, #0x388
	add r1, r1, #0x1000
	mov r2, #8
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r4, #1
	add r0, r0, #0x1000
	strb r4, [r0, #0x391]
	ldr r0, [r5]
	ldrh r2, [sp, #0x1a]
	add r1, r0, #0x394
	add r0, sp, #4
	add r1, r1, #0x1000
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
	bl FUN_ov17_0210894c
	cmp r0, #0
	beq _0210891C
	mov r0, #0
	ldr r1, _02108944 ; =FUN_ov17_02108d6c
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r5]
	add sp, sp, #0x54
	add r1, r1, #0x1000
	str r0, [r1, #0xb90]
	mov r0, r4
	ldmfd sp!, {r4, r5, pc}
_0210891C:
	ldr r0, _02108948 ; =0x021162B4
	bl DWCi_HEAPlFree_
	mov r0, #0
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, pc}
_02108930: .word 0x00001BA0
_02108934: .word ov17_021162B4
_02108938: .word FUN_ov17_02108a74
_0210893C: .word ov17_021125D4
_02108940: .word ov17_021125CA
_02108944: .word FUN_ov17_02108d6c
_02108948: .word ov17_021162B4
	arm_func_end FUN_ov17_021087d8

	arm_func_start FUN_ov17_0210894c
FUN_ov17_0210894c: ; 0x0210894C
	stmfd sp!, {r3, lr}
	ldr r1, _02108978 ; =0x021162B4
	ldr r0, _0210897C ; =FUN_ov17_02108a74
	ldr r1, [r1]
	add r1, r1, #0x374
	add r1, r1, #0x1000
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02108978: .word ov17_021162B4
_0210897C: .word FUN_ov17_02108a74
	arm_func_end FUN_ov17_0210894c

	arm_func_start FUN_ov17_02108980
FUN_ov17_02108980: ; 0x02108980
	stmfd sp!, {r4, lr}
	ldr r4, _02108A50 ; =0x021162B4
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xb94]
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	beq _021089F4
	ldr r0, _02108A54 ; =FUN_ov17_02108a74
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_021089D0:
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _021089D0
_021089F4:
	ldr r0, _02108A54 ; =FUN_ov17_02108a74
	bl WM_End
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02108A50 ; =0x021162B4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xb90]
	cmp r1, #0
	beq _02108A28
	mov r0, #0
	bl DWCi_TSKlDeleteEx
_02108A28:
	ldr r0, _02108A50 ; =0x021162B4
	ldr r0, [r0]
	add r0, r0, #0x1000
_02108A34:
	ldrb r1, [r0, #0xb94]
	cmp r1, #2
	bne _02108A34
	ldr r0, _02108A58 ; =0x021162B4
	bl DWCi_HEAPlFree_
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02108A50: .word ov17_021162B4
_02108A54: .word FUN_ov17_02108a74
_02108A58: .word ov17_021162B4
	arm_func_end FUN_ov17_02108980

	arm_func_start FUN_ov17_02108a5c
FUN_ov17_02108a5c: ; 0x02108A5C
	ldr r1, _02108A70 ; =0x021162B4
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0x370]
	bx lr
_02108A70: .word ov17_021162B4
	arm_func_end FUN_ov17_02108a5c

	arm_func_start FUN_ov17_02108a74
FUN_ov17_02108a74: ; 0x02108A74
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, _02108B04 ; =0x021162B4
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0xb94]
	cmp r2, #0
	beq _02108AB4
	ldrh r0, [r0]
	cmp r0, #2
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	strb r0, [r1, #0xb94]
	ldmfd sp!, {r3, pc}
_02108AB4:
	ldrh r2, [r0]
	cmp r2, #0x26
	ldmnefd sp!, {r3, pc}
	ldrh r2, [r0, #8]
	cmp r2, #4
	beq _02108AF4
	cmp r2, #5
	bne _02108AFC
	ldrb r1, [r1, #0xb96]
	cmp r1, #0
	beq _02108AE8
	bl FUN_ov17_02108c60
	b _02108AEC
_02108AE8:
	bl FUN_ov17_02108b08
_02108AEC:
	bl FUN_ov17_0210894c
	ldmfd sp!, {r3, pc}
_02108AF4:
	bl FUN_ov17_0210894c
	ldmfd sp!, {r3, pc}
_02108AFC:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02108B04: .word ov17_021162B4
	arm_func_end FUN_ov17_02108a74

	arm_func_start FUN_ov17_02108b08
FUN_ov17_02108b08: ; 0x02108B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	ldrh r0, [r0, #0xe]
	mov r11, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108B20:
	ldr r0, [sp]
	mov r1, #0xc0
	add r0, r0, r11, lsl #2
	ldr r7, [r0, #0x10]
	mov r0, r7
	bl DC_InvalidateRange
	ldr r1, _02108C54 ; =0x021125CA
	add r0, r7, #0xc
	mov r2, #8
	bl memcmp
	cmp r0, #0
	bne _02108C3C
	ldr r0, _02108C58 ; =0x021162B4
	mov r6, #0
	ldr r8, [r0]
	mov r4, #6
	add r5, r8, #0x1300
_02108B64:
	rsb r9, r6, r6, lsl #3
	mov r2, r4
	add r0, r7, #4
	add r1, r5, r9
	bl memcmp
	cmp r0, #0
	bne _02108BBC
	add r0, r8, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _02108C3C
	ldrb r0, [r7, #0x15]
	tst r0, #1
	beq _02108C3C
	add r0, r8, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108BBC:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02108B64
	ldr r5, _02108C5C ; =0x021125C4
	mov r10, #0
	add r6, r8, #0x1300
	mov r4, #6
_02108BD8:
	rsb r9, r10, r10, lsl #3
	mov r1, r5
	mov r2, r4
	add r0, r6, r9
	bl memcmp
	cmp r0, #0
	bne _02108C30
	add r1, r8, #0x1300
	mov r2, r4
	add r0, r7, #4
	add r1, r1, r9
	bl MI_CpuCopy8
	ldrb r0, [r7, #0x15]
	tst r0, #1
	ldr r0, _02108C58 ; =0x021162B4
	movne r1, #1
	ldr r0, [r0]
	moveq r1, #0
	add r0, r0, r9
	add r0, r0, #0x1000
	strb r1, [r0, #0x306]
	b _02108C3C
_02108C30:
	add r10, r10, #1
	cmp r10, #0x10
	blt _02108BD8
_02108C3C:
	ldr r0, [sp]
	add r11, r11, #1
	ldrh r0, [r0, #0xe]
	cmp r11, r0
	blt _02108B20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108C54: .word ov17_021125CA
_02108C58: .word ov17_021162B4
_02108C5C: .word ov17_021125C4
	arm_func_end FUN_ov17_02108b08

	arm_func_start FUN_ov17_02108c60
FUN_ov17_02108c60: ; 0x02108C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _02108D64 ; =0x021162B4
	mov r11, r0
	ldr r2, [r4]
	add r1, r2, #0x1000
	ldrb r0, [r1, #0xb95]
	cmp r0, #0
	beq _02108C94
	ldr r1, [r1, #0x370]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108C94:
	add r0, r2, #0xf00
	mov r1, #0x400
	bl DC_InvalidateRange
	ldrh r0, [r11, #0xe]
	mov r7, #0
	str r0, [sp]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, [r4]
	mov r4, #6
	add r5, r10, #0x1300
_02108CC0:
	add r0, r11, r7, lsl #2
	ldr r6, [r0, #0x10]
	ldr r1, _02108D68 ; =0x021125CA
	mov r2, #8
	add r0, r6, #0xc
	bl memcmp
	cmp r0, #0
	bne _02108D50
	ldrb r0, [r6, #0x15]
	tst r0, #1
	beq _02108D50
	mov r8, #0
_02108CF0:
	rsb r9, r8, r8, lsl #3
	mov r2, r4
	add r0, r6, #4
	add r1, r5, r9
	bl memcmp
	cmp r0, #0
	bne _02108D44
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _02108D50
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0xb95]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108D44:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02108CF0
_02108D50:
	ldr r0, [sp]
	add r7, r7, #1
	cmp r7, r0
	blt _02108CC0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108D64: .word ov17_021162B4
_02108D68: .word ov17_021125CA
	arm_func_end FUN_ov17_02108c60

	arm_func_start FUN_ov17_02108d6c
FUN_ov17_02108d6c: ; 0x02108D6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	bl OS_GetTick
	ldr r2, _02108E90 ; =0x021162B4
	ldr r3, _02108E94 ; =0x0017F898
	ldr r10, [r2]
	mov r8, #0
	add r2, r10, #0x1000
	ldr r4, [r2, #0xb88]
	ldr r5, [r2, #0xb8c]
	adds r3, r4, r3
	adc r2, r5, #0
	cmp r1, r2
	cmpeq r0, r3
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02108E98 ; =0x021125C4
	mov r7, r8
	mov r6, r8
	add r5, r10, #0x1300
	mov r11, #6
_02108DBC:
	rsb r9, r6, r6, lsl #3
	mov r1, r4
	mov r2, r11
	add r0, r5, r9
	bl memcmp
	cmp r0, #0
	beq _02108DF0
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	movne r7, #1
	moveq r8, #1
_02108DF0:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02108DBC
	cmp r7, #0
	cmpne r8, #0
	beq _02108E20
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #2
	b _02108E5C
_02108E20:
	cmp r7, #0
	beq _02108E40
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #1
	b _02108E5C
_02108E40:
	cmp r8, #0
	bne _02108E60
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #0
_02108E5C:
	blx r1
_02108E60:
	ldr r3, _02108E90 ; =0x021162B4
	mov r0, #0
	ldr r2, [r3]
	ldr r1, [sp]
	add r2, r2, #0x1000
	str r0, [r2, #0xb90]
	ldr r2, [r3]
	mov r3, #1
	add r2, r2, #0x1000
	strb r3, [r2, #0xb96]
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108E90: .word ov17_021162B4
_02108E94: .word 0x0017F898
_02108E98: .word ov17_021125C4
	arm_func_end FUN_ov17_02108d6c

	arm_func_start FUN_ov17_02108e9c
FUN_ov17_02108e9c: ; 0x02108E9C
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
	bl FUN_ov17_0210d5e4
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
	bl FUN_ov17_0210dbbc
	mov r8, #0x1f
	mov r0, r5
	mov r1, r5
	mov r2, r8
	mov r3, r5
	bl FUN_ov17_0210de88
	ldr r7, [r6]
	add r3, sp, #0x1c
	ldrb r7, [r7, #0x1c]
	mov r0, r5
	mov r1, r4
	ldrb r3, [r3, r7]
	mov r2, r8
	bl FUN_ov17_0210de88
	mov r2, r8
	mov r0, r5
	mov r1, #3
	mov r3, r4
	bl FUN_ov17_0210de88
	ldr r2, _021091AC ; =0x02112628
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dd80
	mov r0, #0xc0
	bl FUN_ov17_021094fc
	mov r2, #0x4000000
	ldr r0, [sp, #0x10]
	ldr r1, [r2]
	cmp r0, #0
	bic r0, r1, #0xe000
	orr r0, r0, #0x6000
	str r0, [r2]
	mov r3, #0x78
	beq _02109168
	ldr r1, _021091B0 ; =FUN_ov17_0210922c
	mov r0, r4
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r6]
	add sp, sp, #0x24
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109168:
	ldr r1, _021091B4 ; =FUN_ov17_02109284
	mov r0, r4
	mov r2, r5
	bl DWCi_TSKlForm
	ldr r1, [r6]
	str r0, [r1, #0x14]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109188: .word ov17_021126D4
_0210918C: .word DWCiMsgCmn
_02109190: .word ov17_021162B8
_02109194: .word 0x04000050
_02109198: .word ov17_0211261C
_0210919C: .word ov17_02112622
_021091A0: .word ov17_02112644
_021091A4: .word ov17_02112664
_021091A8: .word ov17_02112662
_021091AC: .word ov17_02112628
_021091B0: .word FUN_ov17_0210922c
_021091B4: .word FUN_ov17_02109284
	arm_func_end FUN_ov17_02108e9c

	arm_func_start FUN_ov17_021091b8
FUN_ov17_021091b8: ; 0x021091B8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _021091F4 ; =0x021162B8
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r1, [r1, #0x14]
	bl DWCi_TSKlDelete
	ldr r1, _021091F8 ; =FUN_ov17_021097d0
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021091F4: .word ov17_021162B8
_021091F8: .word FUN_ov17_021097d0
	arm_func_end FUN_ov17_021091b8

	arm_func_start FUN_ov17_021091fc
FUN_ov17_021091fc: ; 0x021091FC
	ldr r0, _0210920C ; =0x021162B8
	ldr r0, [r0]
	ldrsb r0, [r0, #0x1b]
	bx lr
_0210920C: .word ov17_021162B8
	arm_func_end FUN_ov17_021091fc

	arm_func_start FUN_ov17_02109210
FUN_ov17_02109210: ; 0x02109210
	ldr r0, _02109228 ; =0x021162B8
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02109228: .word ov17_021162B8
	arm_func_end FUN_ov17_02109210

	arm_func_start FUN_ov17_0210922c
FUN_ov17_0210922c: ; 0x0210922C
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
	ldr r1, _02109280 ; =FUN_ov17_02109284
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, r4, r5, pc}
_02109278: .word ov17_021162B8
_0210927C: .word 0x04000050
_02109280: .word FUN_ov17_02109284
	arm_func_end FUN_ov17_0210922c

	arm_func_start FUN_ov17_02109284
FUN_ov17_02109284: ; 0x02109284
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
	bl FUN_ov17_021094fc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021092E4:
	mov r0, r1
	bl FUN_ov17_021094fc
	ldr r0, [r6]
	mov r3, #0x78
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	bne _02109308
	ldr r1, _0210933C ; =FUN_ov17_02109490
	b _0210930C
_02109308:
	ldr r1, _02109340 ; =FUN_ov17_02109344
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
_02109334: .word ov17_021162B8
_02109338: .word ov17_0211267C
_0210933C: .word FUN_ov17_02109490
_02109340: .word FUN_ov17_02109344
	arm_func_end FUN_ov17_02109284

	arm_func_start FUN_ov17_02109344
FUN_ov17_02109344: ; 0x02109344
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
	bl FUN_ov17_0210e4b8
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
	bl FUN_ov17_0210e4b8
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
	bl FUN_ov17_02109714
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
_02109474: .word ov17_021162B8
_02109478: .word ov17_02112622
_0210947C: .word ov17_021126AA
_02109480: .word ov17_02112630
_02109484: .word ov17_0211264E
_02109488: .word ov17_0211263A
_0210948C: .word ov17_0211263B
	arm_func_end FUN_ov17_02109344

	arm_func_start FUN_ov17_02109490
FUN_ov17_02109490: ; 0x02109490
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
	ldr r1, _021094F8 ; =FUN_ov17_021097d0
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021094F4: .word ov17_021162B8
_021094F8: .word FUN_ov17_021097d0
	arm_func_end FUN_ov17_02109490

	arm_func_start FUN_ov17_021094fc
FUN_ov17_021094fc: ; 0x021094FC
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
	bl FUN_ov17_02109688
	ldr r0, [r4]
	mov r1, r10
	ldr r0, [r0, #4]
	bl FUN_ov17_02109688
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
	bl FUN_ov17_02109688
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
	bl FUN_ov17_0210dc88
	mov r0, #0
	mov r1, r0
	mov r2, r4
	bl FUN_ov17_0210dd80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210966C: .word ov17_021162B8
_02109670: .word ov17_0211267A
_02109674: .word ov17_02112622
_02109678: .word ov17_02112630
_0210967C: .word ov17_021126AA
_02109680: .word ov17_02112694
_02109684: .word ov17_02112692
	arm_func_end FUN_ov17_021094fc

	arm_func_start FUN_ov17_02109688
FUN_ov17_02109688: ; 0x02109688
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
	arm_func_end FUN_ov17_02109688

	arm_func_start FUN_ov17_02109714
FUN_ov17_02109714: ; 0x02109714
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
_021097BC: .word ov17_021162B8
_021097C0: .word ov17_02112644
_021097C4: .word ov17_02112630
_021097C8: .word ov17_021126AA
_021097CC: .word ov17_021126AC
	arm_func_end FUN_ov17_02109714

	arm_func_start FUN_ov17_021097d0
FUN_ov17_021097d0: ; 0x021097D0
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
	ldr r1, _02109808 ; =FUN_ov17_0210980c
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, pc}
_02109804: .word ov17_021162B8
_02109808: .word FUN_ov17_0210980c
	arm_func_end FUN_ov17_021097d0

	arm_func_start FUN_ov17_0210980c
FUN_ov17_0210980c: ; 0x0210980C
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
	bl FUN_ov17_021094fc
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _02109878
	ldr r1, _02109890 ; =FUN_ov17_02109898
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02109878:
	ldr r1, _02109894 ; =FUN_ov17_021098f0
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210988C: .word ov17_021162B8
_02109890: .word FUN_ov17_02109898
_02109894: .word FUN_ov17_021098f0
	arm_func_end FUN_ov17_0210980c

	arm_func_start FUN_ov17_02109898
FUN_ov17_02109898: ; 0x02109898
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
	ldr r1, _021098EC ; =FUN_ov17_021098f0
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r3, r4, r5, pc}
_021098E4: .word ov17_021162B8
_021098E8: .word 0x04000050
_021098EC: .word FUN_ov17_021098f0
	arm_func_end FUN_ov17_02109898

	arm_func_start FUN_ov17_021098f0
FUN_ov17_021098f0: ; 0x021098F0
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
	bl FUN_ov17_0210d6c0
	mov r1, r6
	mov r0, #1
	bl DWCi_TSKlDelete
	ldr r0, _02109994 ; =0x021162B8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210998C: .word ov17_021162B8
_02109990: .word ov17_02112622
_02109994: .word ov17_021162B8
	arm_func_end FUN_ov17_021098f0

	arm_func_start DWCi_MOV_MBP_MemInit
DWCi_MOV_MBP_MemInit: ; 0x02109998
	stmfd sp!, {r4, lr}
	ldr r4, _021099D0 ; =dwcutil_wb
	add r1, r0, #0x160
	str r0, [r4]
	add r0, r1, #0x1b000
	bl DWCi_MOV_WH_MemInit
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldmfd sp!, {r4, pc}
_021099D0: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_MemInit

	arm_func_start DWCi_MOV_MBP_Init
DWCi_MOV_MBP_Init: ; 0x021099D4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldrb r3, [sp, #0x12]
	mov r4, r1
	ldr r2, _02109ADC ; =0x02FFFC80
	bic r1, r3, #0xf
	orr r1, r1, #1
	strb r1, [sp, #0x12]
	ldrb r3, [r2, #0x1a]
	mov r5, r0
	add r0, r2, #6
	add r1, sp, #0x14
	mov r2, #0x14
	strb r3, [sp, #0x13]
	bl MI_CpuCopy8
	ldrb r2, [sp, #0x12]
	ldr r0, _02109AE0 ; =dwcutil_wb
	add lr, sp, #4
	mov r1, #0
	ldr r0, [r0]
	bic r2, r2, #0xf0
	mov r12, r0
	strb r2, [sp, #0x12]
	strh r1, [lr]
	strh r1, [lr, #2]
	strh r1, [lr, #4]
	strh r1, [lr, #6]
	strh r1, [lr, #8]
	strh r1, [lr, #0xa]
	strh r1, [lr, #0xc]
	mov r3, #3
_02109A50:
	ldrh r1, [lr, #2]
	ldrh r2, [lr], #4
	subs r3, r3, #1
	strh r1, [r12, #2]
	strh r2, [r12], #4
	bne _02109A50
	ldrh r2, [lr]
	add r1, r0, #0x40
	add r1, r1, #0x10000
	strh r2, [r12]
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	mov r1, #2
	str r1, [sp]
	ldr r0, _02109AE0 ; =dwcutil_wb
	add r1, sp, #0x12
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #0x1b000
	ldr r0, [r0, #0x140]
	mov r3, r4
	bl MB_Init
	cmp r0, #0
	beq _02109AB4
	bl OS_Terminate
_02109AB4:
	mov r4, #1
	mov r1, r4
	mov r0, #0x100
	bl MB_SetParentCommParam
	ldr r0, _02109AE4 ; =dwcutil_ParentStateCallback
	bl MB_CommSetParentStateCallback
	mov r0, r4
	bl DWCi_MOV_MBP_ChangeState
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, pc}
_02109ADC: .word 0x02FFFC80
_02109AE0: .word dwcutil_wb
_02109AE4: .word dwcutil_ParentStateCallback
	arm_func_end DWCi_MOV_MBP_Init

	arm_func_start DWCi_MOV_MBP_Start
DWCi_MOV_MBP_Start: ; 0x02109AE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	bl DWCi_MOV_MBP_ChangeState
	mov r0, r4
	bl MB_StartParentFromIdle
	cmp r0, #0
	beq _02109B18
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, pc}
_02109B18:
	mov r0, r5
	bl DWCi_MOV_MBP_RegistFile
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_MOV_MBP_Start

	arm_func_start DWCi_MOV_MBP_RegistFile
DWCi_MOV_MBP_RegistFile: ; 0x02109B30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	mov r6, r0
	ldr r0, [r6]
	mov r5, #0
	cmp r0, #0
	moveq r4, r5
	beq _02109B78
	add r4, sp, #0
	mov r0, r4
	bl FS_InitFile
	ldr r1, [r6]
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02109B78:
	mov r0, r4
	bl MB_GetSegmentLength
	cmp r0, #0
	beq _02109BE0
	ldr r7, _02109BFC ; =dwcutil_wb
	ldr r0, [r7]
	add r1, r0, #0x2c
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldr r0, [r7]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	beq _02109BE0
	mov r0, r4
	mov r2, #0x10000
	bl MB_ReadSegment
	cmp r0, #0
	beq _02109BE0
	ldr r1, [r7]
	mov r0, r6
	add r1, r1, #0x1b000
	ldr r1, [r1, #0x144]
	bl MB_RegisterFile
	cmp r0, #0
	movne r5, #1
_02109BE0:
	add r0, sp, #0
	cmp r4, r0
	bne _02109BF0
	bl FS_CloseFile
_02109BF0:
	mov r0, r5
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109BFC: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_RegistFile

	arm_func_start DWCi_MOV_MBP_AcceptChild
DWCi_MOV_MBP_AcceptChild: ; 0x02109C00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r1, r5
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mvn r0, r5, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109C9C ; =dwcutil_wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109C9C: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_AcceptChild

	arm_func_start DWCi_MOV_MBP_KickChild
DWCi_MOV_MBP_KickChild: ; 0x02109CA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	bne _02109D3C
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109D78 ; =dwcutil_wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109D3C:
	bl OS_DisableInterrupts
	ldr r2, _02109D78 ; =dwcutil_wb
	mov r1, #1
	ldr r5, [r2]
	mvn r1, r1, lsl r4
	ldrh r3, [r5, #4]
	mov r1, r1, lsl #0x10
	and r3, r3, r1, lsr #16
	strh r3, [r5, #4]
	ldr r3, [r2]
	ldrh r2, [r3, #2]
	and r1, r2, r1, lsr #16
	strh r1, [r3, #2]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109D78: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_KickChild

	arm_func_start DWCi_MOV_MBP_StartDownload
DWCi_MOV_MBP_StartDownload: ; 0x02109D7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #2
	mov r4, r0
	bl MB_CommResponseRequest
	cmp r0, #0
	bne _02109E18
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109E5C ; =dwcutil_wb
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl MB_DisconnectChild
	ldmfd sp!, {r3, r4, r5, pc}
_02109E18:
	bl OS_DisableInterrupts
	mov r12, #1
	ldr r2, _02109E5C ; =dwcutil_wb
	mvn r1, r12, lsl r4
	ldr r5, [r2]
	mov r1, r1, lsl #0x10
	ldrh r3, [r5, #6]
	mov r4, r12, lsl r4
	and r1, r3, r1, lsr #16
	strh r1, [r5, #6]
	ldr r3, [r2]
	mov r1, r4, lsl #0x10
	ldrh r2, [r3, #8]
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #8]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109E5C: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_StartDownload

	arm_func_start DWCi_MOV_MBP_StartDownloadAll
DWCi_MOV_MBP_StartDownloadAll: ; 0x02109E60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #3
	bl DWCi_MOV_MBP_ChangeState
	mov r5, #1
	ldr r7, _02109F3C ; =dwcutil_wb
	mov r4, r5
_02109E78:
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	tst r0, r4, lsl r5
	beq _02109F24
	ldrh r0, [r1, #4]
	tst r0, r4, lsl r5
	bne _02109F24
	ldrh r0, [r1, #6]
	tst r0, r4, lsl r5
	bne _02109F1C
	mvn r0, r4, lsl r5
	mov r6, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r7]
	ldrh r1, [r2, #2]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r7]
	ldrh r1, [r2, #4]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r7]
	ldrh r1, [r2, #8]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r7]
	ldrh r1, [r2, #0xa]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r7]
	ldrh r1, [r2, #0xc]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r5
	bl MB_DisconnectChild
	b _02109F24
_02109F1C:
	mov r0, r5
	bl DWCi_MOV_MBP_StartDownload
_02109F24:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x10
	blo _02109E78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109F3C: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_StartDownloadAll

	arm_func_start DWCi_MOV_MBP_IsBootableAll
DWCi_MOV_MBP_IsBootableAll: ; 0x02109F40
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02109FA4 ; =dwcutil_wb
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #1
	mov r5, r6
_02109F64:
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	tst r0, r5, lsl r6
	beq _02109F88
	mov r0, r6
	bl MB_CommIsBootable
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_02109F88:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _02109F64
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02109FA4: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_IsBootableAll

	arm_func_start DWCi_MOV_MBP_StartRebootAll
DWCi_MOV_MBP_StartRebootAll: ; 0x02109FA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #1
	ldr r4, _0210A09C ; =dwcutil_wb
	mov r8, #0
	mov r5, #3
	mov r6, r7
_02109FC0:
	ldr r0, [r4]
	mov r9, r6, lsl r7
	ldrh r0, [r0, #0xa]
	tst r0, r6, lsl r7
	beq _0210A068
	mov r0, r7
	mov r1, r5
	bl MB_CommResponseRequest
	cmp r0, #0
	movne r0, r9, lsl #0x10
	orrne r8, r8, r0, lsr #16
	bne _0210A068
	mvn r0, r9
	mov r9, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r7
	bl MB_DisconnectChild
_0210A068:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x10
	blo _02109FC0
	cmp r8, #0
	bne _0210A090
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A090:
	mov r0, #4
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A09C: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_StartRebootAll

	arm_func_start DWCi_MOV_MBP_Cancel
DWCi_MOV_MBP_Cancel: ; 0x0210A0A0
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl DWCi_MOV_MBP_ChangeState
	bl MB_EndToIdle
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_MBP_Cancel

	arm_func_start MBPi_CheckAllReboot
MBPi_CheckAllReboot: ; 0x0210A0B4
	stmfd sp!, {r3, lr}
	ldr r0, _0210A0E0 ; =dwcutil_wb
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #4
	ldreqh r1, [r2, #2]
	ldreqh r0, [r2, #0xc]
	cmpeq r1, r0
	ldmnefd sp!, {r3, pc}
	bl MB_EndToIdle
	ldmfd sp!, {r3, pc}
_0210A0E0: .word dwcutil_wb
	arm_func_end MBPi_CheckAllReboot

	arm_func_start dwcutil_ParentStateCallback
dwcutil_ParentStateCallback: ; 0x0210A0E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0210A3FC ; =dwcutil_wb
	mov r8, r0
	mov r7, r2
	cmp r1, #0xe
	mov r5, #1
	addls pc, pc, r1, lsl #2
	b _0210A3F4
_0210A104: ; jump table
	b _0210A3F4 ; case 0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	b _0210A140 ; case 2
	b _0210A1C4 ; case 3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 6
	b _0210A2F8 ; case 7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 8
	b _0210A32C ; case 9
	b _0210A248 ; case 10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 11
	b _0210A364 ; case 12
	b _0210A3B4 ; case 13
	b _0210A2B0 ; case 14
_0210A140:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r4]
	bl OS_DisableInterrupts
	mov r1, r5, lsl r8
	ldrh r2, [r6, #2]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r6, #2]
	bl OS_RestoreInterrupts
	sub r2, r8, #1
	mov r0, #0x1e
	mul r0, r2, r0
	ldr r1, [r4]
	add r2, r1, #0x24
	ldrb r1, [r7, #0xa]
	add r3, r2, r0
	strb r1, [r2, r0]
	ldrb r1, [r7, #0xb]
	strb r1, [r3, #1]
	ldrb r1, [r7, #0xc]
	strb r1, [r3, #2]
	ldrb r1, [r7, #0xd]
	strb r1, [r3, #3]
	ldrb r1, [r7, #0xe]
	strb r1, [r3, #4]
	ldrb r1, [r7, #0xf]
	strb r1, [r3, #5]
	ldr r1, [r4]
	add r0, r1, r0
	strh r8, [r0, #0x2a]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A1C4:
	bl DWCi_MOV_MBP_GetChildState
	cmp r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mvn r0, r5, lsl r8
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	bl MBPi_CheckAllReboot
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A248:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #2
	beq _0210A260
	mov r0, r8
	bl DWCi_MOV_MBP_KickChild
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A260:
	ldr r3, [r4]
	mov r0, r5, lsl r8
	ldrh r2, [r3, #4]
	mov r1, r0, lsl #0x10
	mov r0, r8
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #4]
	bl DWCi_MOV_MBP_AcceptChild
	mov r0, r8
	bl MB_CommGetChildUser
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4]
	sub r2, r8, #1
	add r3, r1, #0xe
	mov r1, #0x1e
	mla r1, r2, r1, r3
	mov r2, #0x16
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2B0:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #4]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #4]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #6]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #6]
	bl DWCi_MOV_MBP_GetState
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl DWCi_MOV_MBP_StartDownload
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2F8:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #8]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #8]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xa]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A32C:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #0xa]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xc]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xc]
	bl MBPi_CheckAllReboot
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A364:
	bl DWCi_MOV_MBP_GetState
	cmp r0, #4
	bne _0210A378
	mov r0, #5
	b _0210A37C
_0210A378:
	mov r0, #0
_0210A37C:
	bl DWCi_MOV_MBP_ChangeState
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x144]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x140]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x140]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3B4:
	ldrh r0, [r7]
	cmp r0, #8
	bgt _0210A3E0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #2
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmpne r0, #2
	beq _0210A3E8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E0:
	cmp r0, #9
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E8:
	mov r0, #7
	bl DWCi_MOV_MBP_ChangeState
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3F4:
	bl OS_Terminate
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3FC: .word dwcutil_wb
	arm_func_end dwcutil_ParentStateCallback

	arm_func_start DWCi_MOV_MBP_ChangeState
DWCi_MOV_MBP_ChangeState: ; 0x0210A400
	ldr r1, _0210A410 ; =dwcutil_wb
	ldr r1, [r1]
	strh r0, [r1]
	bx lr
_0210A410: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_ChangeState

	arm_func_start DWCi_MOV_MBP_GetState
DWCi_MOV_MBP_GetState: ; 0x0210A414
	ldr r0, _0210A424 ; =dwcutil_wb
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
_0210A424: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_GetState

	arm_func_start DWCi_MOV_MBP_GetChildBmp
DWCi_MOV_MBP_GetChildBmp: ; 0x0210A428
	ldr r2, _0210A474 ; =dwcutil_wb
	ldr r1, _0210A478 ; =dwcutil_BITMAP_TABLE
	ldr r12, [r2]
	ldr r2, _0210A47C ; =dwcutil_BITMAP_TABLE
	add r3, r12, #2
	str r3, [r1]
	add r3, r12, #4
	str r3, [r1, #4]
	add r3, r12, #6
	str r3, [r1, #8]
	add r3, r12, #8
	str r3, [r1, #0xc]
	add r3, r12, #0xa
	str r3, [r1, #0x10]
	add r3, r12, #0xc
	str r3, [r1, #0x14]
	ldr r0, [r2, r0, lsl #2]
	ldrh r0, [r0]
	bx lr
_0210A474: .word dwcutil_wb
_0210A478: .word dwcutil_BITMAP_TABLE
_0210A47C: .word dwcutil_BITMAP_TABLE
	arm_func_end DWCi_MOV_MBP_GetChildBmp

	arm_func_start DWCi_MOV_MBP_GetChildState
DWCi_MOV_MBP_GetChildState: ; 0x0210A480
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _0210A544 ; =dwcutil_wb
	mov r4, #1
	ldr r2, [r1]
	mov r3, r4, lsl r5
	ldrh r1, [r2, #2]
	mov r5, r3, lsl #0x10
	mov r6, r0
	tst r1, r5, lsr #16
	bne _0210A4C4
	bl OS_RestoreInterrupts
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0210A4C4:
	mov r0, r2
	add r1, sp, #0
	mov r2, #0xe
	bl MI_CpuCopy8
	mov r0, r6
	bl OS_RestoreInterrupts
	ldrh r0, [sp, #4]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #6]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #8]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xa]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xc]
	tst r0, r5, lsr #16
	movne r4, #6
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0210A544: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_GetChildState

	arm_func_start DWCi_MOV_MBP_GetChildInfo
DWCi_MOV_MBP_GetChildInfo: ; 0x0210A548
	ldr r1, _0210A574 ; =dwcutil_wb
	mov r2, #1
	ldr r3, [r1]
	ldrh r1, [r3, #2]
	tst r1, r2, lsl r0
	subne r1, r0, #1
	addne r2, r3, #0xe
	movne r0, #0x1e
	mlane r0, r1, r0, r2
	moveq r0, #0
	bx lr
_0210A574: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_GetChildInfo

	arm_func_start DWCi_MOV_MBP_GetPlayerNo
DWCi_MOV_MBP_GetPlayerNo: ; 0x0210A578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210A61C ; =dwcutil_wb
	mov lr, #1
	ldr r5, [r1]
	mov r12, lr
	ldrh r4, [r5, #2]
	add r1, r5, #0x24
	mov r6, #0x1e
_0210A598:
	tst r4, r12, lsl lr
	beq _0210A600
	sub r2, lr, #1
	mul r3, r2, r6
	ldrb r8, [r0]
	ldrb r7, [r1, r3]
	add r2, r1, r3
	cmp r8, r7
	ldreqb r8, [r0, #1]
	ldreqb r7, [r2, #1]
	cmpeq r8, r7
	ldreqb r8, [r0, #2]
	ldreqb r7, [r2, #2]
	cmpeq r8, r7
	ldreqb r8, [r0, #3]
	ldreqb r7, [r2, #3]
	cmpeq r8, r7
	ldreqb r8, [r0, #4]
	ldreqb r7, [r2, #4]
	cmpeq r8, r7
	ldreqb r7, [r0, #5]
	ldreqb r2, [r2, #5]
	cmpeq r7, r2
	addeq r0, r5, r3
	ldreqh r0, [r0, #0x2a]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A600:
	add r2, lr, #1
	mov r2, r2, lsl #0x10
	mov lr, r2, lsr #0x10
	cmp lr, #2
	blo _0210A598
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A61C: .word dwcutil_wb
	arm_func_end DWCi_MOV_MBP_GetPlayerNo

	arm_func_start DWCi_MOV_WH_MemInit
DWCi_MOV_WH_MemInit: ; 0x0210A620
	ldr r1, _0210A658 ; =wh_trace
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r0, #0x40]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3a8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3ac]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3b0]
	bx lr
_0210A658: .word wh_trace
	arm_func_end DWCi_MOV_WH_MemInit

	arm_func_start FUN_ov17_0210a65c
FUN_ov17_0210a65c: ; 0x0210A65C
	stmfd sp!, {r4, lr}
	ldr r1, _0210A6C8 ; =wh_trace
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	beq _0210A690
	ldr r1, [r1, #4]
	ldr r0, _0210A6CC ; =0x021139FC
	ldr r2, [r1, #0x40]
	ldr r1, _0210A6D0 ; =0x02113A24
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
_0210A690:
	ldr r0, _0210A6C8 ; =wh_trace
	ldr r1, [r0, #4]
	str r4, [r1, #0x40]
	ldr r3, [r0]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #4]
	ldr r0, _0210A6CC ; =0x021139FC
	ldr r2, [r1, #0x40]
	ldr r1, _0210A6D4 ; =0x02113A2C
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
	ldmfd sp!, {r4, pc}
_0210A6C8: .word wh_trace
_0210A6CC: .word ov17_021139FC
_0210A6D0: .word ov17_02113A24
_0210A6D4: .word ov17_02113A2C
	arm_func_end FUN_ov17_0210a65c

	arm_func_start FUN_ov17_0210a6d8
FUN_ov17_0210a6d8: ; 0x0210A6D8
	ldr r1, _0210A6F4 ; =wh_trace
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x40]
	sub r1, r1, #9
	cmp r1, #1
	strhi r0, [r2, #0x54]
	bx lr
_0210A6F4: .word wh_trace
	arm_func_end FUN_ov17_0210a6d8

	arm_func_start FUN_ov17_0210a6f8
FUN_ov17_0210a6f8: ; 0x0210A6F8
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r1, _0210A734 ; =wh_trace
	ldr r0, _0210A738 ; =FUN_ov17_0210a73c
	ldr r1, [r1, #4]
	bl WM_SetParentParameter
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210A734: .word wh_trace
_0210A738: .word FUN_ov17_0210a73c
	arm_func_end FUN_ov17_0210a6f8

	arm_func_start FUN_ov17_0210a73c
FUN_ov17_0210a73c: ; 0x0210A73C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A75C
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A75C:
	ldr r0, _0210A7A4 ; =wh_trace
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3ac]
	cmp r0, #0
	beq _0210A78C
	bl FUN_ov17_0210a7a8
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A78C:
	bl FUN_ov17_0210a840
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A7A4: .word wh_trace
	arm_func_end FUN_ov17_0210a73c

	arm_func_start FUN_ov17_0210a7a8
FUN_ov17_0210a7a8: ; 0x0210A7A8
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r4, _0210A800 ; =wh_trace
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r2, [r0, #0x3ac]
	add r0, r1, #0x13c0
	blx r2
	ldr r2, [r4, #4]
	mov r1, r0
	ldr r0, _0210A804 ; =FUN_ov17_0210a808
	add r2, r2, #0x13c0
	bl WM_SetWEPKey
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210A800: .word wh_trace
_0210A804: .word FUN_ov17_0210a808
	arm_func_end FUN_ov17_0210a7a8

	arm_func_start FUN_ov17_0210a808
FUN_ov17_0210a808: ; 0x0210A808
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A828
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A828:
	bl FUN_ov17_0210a840
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210a808

	arm_func_start FUN_ov17_0210a840
FUN_ov17_0210a840: ; 0x0210A840
	stmfd sp!, {r4, lr}
	ldr r4, _0210A898 ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	ldr r0, _0210A89C ; =FUN_ov17_0210a8a0
	bl WM_StartParent
	cmp r0, #2
	beq _0210A87C
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210A87C:
	ldr r0, [r4, #4]
	mov r1, #0
	strh r1, [r0, #0x50]
	ldr r1, [r4, #4]
	mov r0, #1
	strh r0, [r1, #0x52]
	ldmfd sp!, {r4, pc}
_0210A898: .word wh_trace
_0210A89C: .word FUN_ov17_0210a8a0
	arm_func_end FUN_ov17_0210a840

	arm_func_start FUN_ov17_0210a8a0
FUN_ov17_0210a8a0: ; 0x0210A8A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r2, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r1, r1, lsl r2
	cmp r0, #0
	mov r5, r1, lsl #0x10
	ldr r6, _0210A9F0 ; =wh_trace
	beq _0210A8D8
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A8D8:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0210A908
	bge _0210A914
	cmp r0, #2
	bgt _0210A9D0
	cmp r0, #0
	blt _0210A9D0
	beq _0210A9B8
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _0210A9D0
_0210A908:
	cmp r0, #9
	beq _0210A984
	b _0210A9D0
_0210A914:
	ldr r3, [r6]
	cmp r3, #0
	beq _0210A92C
	ldr r1, _0210A9F4 ; =0x02113A30
	mov r0, #0x8000000
	blx r3
_0210A92C:
	ldr r0, [r6, #4]
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _0210A970
	mov r0, r4
	blx r1
	cmp r0, #0
	bne _0210A970
	ldrh r1, [r4, #0x10]
	mov r0, #0
	bl WM_Disconnect
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A970:
	ldr r1, [r6, #4]
	ldrh r0, [r1, #0x52]
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_0210A984:
	ldr r3, [r6]
	cmp r3, #0
	beq _0210A99C
	ldr r1, _0210A9F8 ; =0x02113A5C
	mov r0, #0x8000000
	blx r3
_0210A99C:
	ldr r2, [r6, #4]
	mvn r0, r5, lsr #16
	ldrh r1, [r2, #0x52]
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9B8:
	bl FUN_ov17_0210aa00
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9D0:
	ldr r3, [r6]
	cmp r3, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _0210A9FC ; =0x02113A88
	mov r2, r0
	mov r0, #0x8000000
	blx r3
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9F0: .word wh_trace
_0210A9F4: .word ov17_02113A30
_0210A9F8: .word ov17_02113A5C
_0210A9FC: .word ov17_02113A88
	arm_func_end FUN_ov17_0210a8a0

	arm_func_start FUN_ov17_0210aa00
FUN_ov17_0210aa00: ; 0x0210AA00
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _0210AA8C ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	mov r0, #4
	bl FUN_ov17_0210a65c
	ldr r3, [r4, #4]
	mov r4, #1
	add r2, r3, #0x1000
	ldr r0, [r2, #0x2a0]
	add r1, r3, #0x60
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r4}
	ldr r2, [r2, #0x2a4]
	ldr r0, _0210AA90 ; =FUN_ov17_0210aa94
	mov r2, r2, lsl #0x10
	add r1, r1, #0x1000
	mov r2, r2, lsr #0x10
	add r3, r3, #0xf80
	bl WM_StartMP
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210AA8C: .word wh_trace
_0210AA90: .word FUN_ov17_0210aa94
	arm_func_end FUN_ov17_0210aa00

	arm_func_start FUN_ov17_0210aa94
FUN_ov17_0210aa94: ; 0x0210AA94
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0210AAC0
	mov r0, r1
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AAC0:
	ldrh r2, [r0, #4]
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0210ABB0
_0210AAD4: ; jump table
	b _0210AAE4 ; case 0
	b _0210ABD0 ; case 1
	b _0210ABB0 ; case 2
	b _0210ABB0 ; case 3
_0210AAE4:
	ldr r4, _0210ABD8 ; =wh_trace
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x44]
	cmp r0, #2
	bne _0210AB4C
	ldr r0, [r1, #0x40]
	cmp r0, #4
	bne _0210AB3C
	bl FUN_ov17_0210abe4
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	ldr r2, [r4]
	cmp r2, #0
	beq _0210AB2C
	ldr r1, _0210ABDC ; =0x02113AA8
	mov r0, #0x8000000
	blx r2
_0210AB2C:
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB3C:
	cmp r0, #6
	bne _0210ABA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB4C:
	cmp r0, #4
	bne _0210ABA0
	add r0, r1, #0x3e0
	mov r4, #1
	add r0, r0, #0x1000
	mov r1, #0xd
	mov r2, #7
	mov r3, #0x44
	str r4, [sp]
	bl WM_StartDataSharing
	cmp r0, #0
	beq _0210AB90
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB90:
	mov r0, #5
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABA0:
	mov r0, #4
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABB0:
	ldr r0, _0210ABD8 ; =wh_trace
	ldr r3, [r0]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, _0210ABE0 ; =0x02113A88
	mov r0, #0x8000000
	blx r3
_0210ABD0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABD8: .word wh_trace
_0210ABDC: .word ov17_02113AA8
_0210ABE0: .word ov17_02113A88
	arm_func_end FUN_ov17_0210aa94

	arm_func_start FUN_ov17_0210abe4
FUN_ov17_0210abe4: ; 0x0210ABE4
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl FUN_ov17_0210a65c
	ldr r0, _0210AC1C ; =wh_trace
	mov r1, #0xd
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_StartKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC1C: .word wh_trace
	arm_func_end FUN_ov17_0210abe4

	arm_func_start FUN_ov17_0210ac20
FUN_ov17_0210ac20: ; 0x0210AC20
	stmfd sp!, {r3, lr}
	ldr r0, _0210AC4C ; =wh_trace
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC4C: .word wh_trace
	arm_func_end FUN_ov17_0210ac20

	arm_func_start FUN_ov17_0210ac50
FUN_ov17_0210ac50: ; 0x0210AC50
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AC7C ; =FUN_ov17_0210ac80
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC7C: .word FUN_ov17_0210ac80
	arm_func_end FUN_ov17_0210ac50

	arm_func_start FUN_ov17_0210ac80
FUN_ov17_0210ac80: ; 0x0210AC80
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AC9C
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210AC9C:
	bl FUN_ov17_0210acd4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210ACCC ; =wh_trace
	ldr r2, [r0]
	cmp r2, #0
	beq _0210ACC4
	ldr r1, _0210ACD0 ; =0x02113AD8
	mov r0, #0x8000000
	blx r2
_0210ACC4:
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210ACCC: .word wh_trace
_0210ACD0: .word ov17_02113AD8
	arm_func_end FUN_ov17_0210ac80

	arm_func_start FUN_ov17_0210acd4
FUN_ov17_0210acd4: ; 0x0210ACD4
	stmfd sp!, {r3, lr}
	ldr r0, _0210ACF8 ; =FUN_ov17_0210acfc
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210ACF8: .word FUN_ov17_0210acfc
	arm_func_end FUN_ov17_0210acd4

	arm_func_start FUN_ov17_0210acfc
FUN_ov17_0210acfc: ; 0x0210ACFC
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AD14
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r3, pc}
_0210AD14:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210acfc

	arm_func_start FUN_ov17_0210ad20
FUN_ov17_0210ad20: ; 0x0210AD20
	stmfd sp!, {r4, lr}
	ldr r4, _0210AD68 ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, [r4, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210AD68: .word wh_trace
	arm_func_end FUN_ov17_0210ad20

	arm_func_start FUN_ov17_0210ad6c
FUN_ov17_0210ad6c: ; 0x0210AD6C
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AD98 ; =FUN_ov17_0210ad9c
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AD98: .word FUN_ov17_0210ad9c
	arm_func_end FUN_ov17_0210ad6c

	arm_func_start FUN_ov17_0210ad9c
FUN_ov17_0210ad9c: ; 0x0210AD9C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210ADB8
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, pc}
_0210ADB8:
	bl FUN_ov17_0210add0
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ad9c

	arm_func_start FUN_ov17_0210add0
FUN_ov17_0210add0: ; 0x0210ADD0
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	mov r4, #0
	ldr r0, _0210AE08 ; =FUN_ov17_0210ae0c
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b638
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210AE08: .word FUN_ov17_0210ae0c
	arm_func_end FUN_ov17_0210add0

	arm_func_start FUN_ov17_0210ae0c
FUN_ov17_0210ae0c: ; 0x0210AE0C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AE24
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r3, pc}
_0210AE24:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ae0c

	arm_func_start FUN_ov17_0210ae30
FUN_ov17_0210ae30: ; 0x0210AE30
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AE5C ; =FUN_ov17_0210ae60
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AE5C: .word FUN_ov17_0210ae60
	arm_func_end FUN_ov17_0210ae30

	arm_func_start FUN_ov17_0210ae60
FUN_ov17_0210ae60: ; 0x0210AE60
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210AE88
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldrh r0, [r4, #2]
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r4, pc}
_0210AE88:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210ae60

	arm_func_start FUN_ov17_0210ae94
FUN_ov17_0210ae94: ; 0x0210AE94
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AEB0
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210AEB0:
	mov r0, #0
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ae94

	arm_func_start FUN_ov17_0210aebc
FUN_ov17_0210aebc: ; 0x0210AEBC
	ldr r1, _0210AECC ; =wh_trace
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
_0210AECC: .word wh_trace
	arm_func_end FUN_ov17_0210aebc

	arm_func_start FUN_ov17_0210aed0
FUN_ov17_0210aed0: ; 0x0210AED0
	ldr r0, _0210AEE0 ; =wh_trace
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x52]
	bx lr
_0210AEE0: .word wh_trace
	arm_func_end FUN_ov17_0210aed0

	arm_func_start FUN_ov17_0210aee4
FUN_ov17_0210aee4: ; 0x0210AEE4
	ldr r0, _0210AEF4 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bx lr
_0210AEF4: .word wh_trace
	arm_func_end FUN_ov17_0210aee4

	arm_func_start FUN_ov17_0210aef8
FUN_ov17_0210aef8: ; 0x0210AEF8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl OS_GetMacAddress
	ldr r2, _0210AFC8 ; =0x02FFFC3C
	ldrh r0, [sp]
	ldr r3, [r2]
	ldrh r2, [sp, #2]
	add r0, r0, r3
	ldr r1, _0210AFCC ; =wh_trace
	add r2, r2, r0
	ldrh r3, [sp, #4]
	ldr r0, [r1, #4]
	mov r4, #0
	add r2, r3, r2
	str r2, [r0, #0x58]
	ldr r3, [r1, #4]
	ldr r0, _0210AFD0 ; =0x00010DCD
	ldr r2, [r3, #0x58]
	mul r0, r2, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r3, #0x58]
	ldr r0, [r1, #4]
	mov r2, #0x65
	strh r4, [r0, #0x5c]
	ldr r1, [r1, #4]
	mov r0, #3
	strh r2, [r1, #0x5e]
	bl FUN_ov17_0210a65c
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210afd4
	cmp r0, #0x18
	bne _0210AFA0
	mov r0, #0x18
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFA0:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFC8: .word 0x02FFFC3C
_0210AFCC: .word wh_trace
_0210AFD0: .word 0x00010DCD
	arm_func_end FUN_ov17_0210aef8

	arm_func_start FUN_ov17_0210afd4
FUN_ov17_0210afd4: ; 0x0210AFD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _0210B004
	mov r4, #3
	mov r0, r4
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210B004:
	cmp r0, #0
	bne _0210B024
	mov r0, #0x16
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0x18
	ldmfd sp!, {r4, pc}
_0210B024:
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _0210B058
_0210B034:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhi r0, #0x18
	ldmhifd sp!, {r4, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _0210B034
_0210B058:
	ldr r0, _0210B070 ; =FUN_ov17_0210b074
	mov r1, r4
	bl FUN_ov17_0210b154
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_0210B070: .word FUN_ov17_0210b074
	arm_func_end FUN_ov17_0210afd4

	arm_func_start FUN_ov17_0210b074
FUN_ov17_0210b074: ; 0x0210B074
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210B098
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B098:
	ldr r0, _0210B14C ; =wh_trace
	ldr r12, [r0]
	cmp r12, #0
	beq _0210B0BC
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, _0210B150 ; =0x02113B30
	mov r0, #0x8000000
	blx r12
_0210B0BC:
	ldr r1, _0210B14C ; =wh_trace
	ldrh r12, [r4, #0xa]
	ldr r3, [r1, #4]
	ldrh r0, [r4, #8]
	ldrh r2, [r3, #0x5e]
	cmp r2, r12
	bls _0210B0F4
	strh r12, [r3, #0x5e]
	sub r2, r0, #1
	mov r3, #1
	mov r2, r3, lsl r2
	ldr r1, [r1, #4]
	strh r2, [r1, #0x60]
	b _0210B114
_0210B0F4:
	bne _0210B114
	sub r1, r0, #1
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r3, #0x60]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #0x60]
_0210B114:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov17_0210afd4
	cmp r0, #0x18
	bne _0210B138
	mov r0, #7
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B138:
	cmp r0, #2
	ldmeqfd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B14C: .word wh_trace
_0210B150: .word ov17_02113B30
	arm_func_end FUN_ov17_0210b074

	arm_func_start FUN_ov17_0210b154
FUN_ov17_0210b154: ; 0x0210B154
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r12, #0x1e
	mov r1, #3
	mov r2, #0x11
	str r12, [sp]
	bl WM_MeasureChannel
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b154

	arm_func_start FUN_ov17_0210b174
FUN_ov17_0210b174: ; 0x0210B174
	stmfd sp!, {r4, lr}
	ldr r0, _0210B1E0 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #7
	beq _0210B190
	bl OS_Terminate
_0210B190:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldr r4, _0210B1E0 ; =wh_trace
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x60]
	bl FUN_ov17_0210b1e8
	ldr r1, [r4, #4]
	strh r0, [r1, #0x5c]
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B1D0
	ldr r0, [r4, #4]
	ldr r1, _0210B1E4 ; =0x02113B48
	ldrh r2, [r0, #0x5c]
	mov r0, #0x8000000
	blx r3
_0210B1D0:
	ldr r0, _0210B1E0 ; =wh_trace
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x5c]
	ldmfd sp!, {r4, pc}
_0210B1E0: .word wh_trace
_0210B1E4: .word ov17_02113B48
	arm_func_end FUN_ov17_0210b174

	arm_func_start FUN_ov17_0210b1e8
FUN_ov17_0210b1e8: ; 0x0210B1E8
	stmfd sp!, {r4, lr}
	mov r3, #0
	mov r1, r3
	mov r12, r3
	mov r4, #1
_0210B1FC:
	tst r0, r4, lsl r12
	beq _0210B21C
	add r3, r12, #1
	add r2, r1, #1
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, r2, lsr #0x10
_0210B21C:
	add r2, r12, #1
	mov r2, r2, lsl #0x10
	mov r12, r2, asr #0x10
	cmp r12, #0x10
	blt _0210B1FC
	cmp r1, #1
	movls r0, r3
	ldmlsfd sp!, {r4, pc}
	ldr r12, _0210B2C4 ; =wh_trace
	ldr r3, _0210B2C8 ; =0x00010DCD
	ldr r4, [r12, #4]
	mov r2, #0
	ldr lr, [r4, #0x58]
	mul r3, lr, r3
	add r3, r3, #0x39
	add r3, r3, #0x3000
	str r3, [r4, #0x58]
	ldr r3, [r12, #4]
	ldr r3, [r3, #0x58]
	and r3, r3, #0xff
	mul r3, r1, r3
	mov r1, r3, lsl #8
	mov r3, r1, lsr #0x10
_0210B278:
	tst r0, #1
	beq _0210B2A0
	cmp r3, #0
	addeq r0, r2, #1
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqfd sp!, {r4, pc}
	sub r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0210B2A0:
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0xf
	mov r2, r1, asr #0x10
	cmp r2, #0x10
	mov r0, r0, lsr #0x10
	blt _0210B278
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210B2C4: .word wh_trace
_0210B2C8: .word 0x00010DCD
	arm_func_end FUN_ov17_0210b1e8

	arm_func_start FUN_ov17_0210b2cc
FUN_ov17_0210b2cc: ; 0x0210B2CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0210B340 ; =wh_trace
	mov r5, #0
	ldr r0, [r1, #4]
	mov r4, #1
	add r0, r0, #0x1000
	str r5, [r0, #0x2a4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r5, [r0, #0x2a0]
	ldr r0, [r1, #4]
	str r5, [r0, #0x48]
	ldr r0, [r1, #4]
	strh r5, [r0, #0x50]
	ldr r0, [r1, #4]
	strh r4, [r0, #0x52]
	ldr r0, [r1, #4]
	str r5, [r0, #0x54]
	ldr r0, [r1, #4]
	str r5, [r0]
	ldr r0, [r1, #4]
	strh r5, [r0, #4]
	ldr r0, [r1, #4]
	str r5, [r0, #0x4c]
	bl FUN_ov17_0210b364
	cmp r0, #0
	moveq r0, r5
	movne r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210B340: .word wh_trace
	arm_func_end FUN_ov17_0210b2cc

	arm_func_start FUN_ov17_0210b344
FUN_ov17_0210b344: ; 0x0210B344
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b344

	arm_func_start FUN_ov17_0210b364
FUN_ov17_0210b364: ; 0x0210B364
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210B3A8 ; =wh_trace
	ldr r1, _0210B3AC ; =FUN_ov17_0210b3b0
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, r0, #0x80
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B3A8: .word wh_trace
_0210B3AC: .word FUN_ov17_0210b3b0
	arm_func_end FUN_ov17_0210b364

	arm_func_start FUN_ov17_0210b3b0
FUN_ov17_0210b3b0: ; 0x0210B3B0
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210B3D0
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3D0:
	ldr r0, _0210B3FC ; =FUN_ov17_0210b344
	bl WM_SetIndCallback
	cmp r0, #0
	beq _0210B3F0
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3F0:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3FC: .word FUN_ov17_0210b344
	arm_func_end FUN_ov17_0210b3b0

	arm_func_start FUN_ov17_0210b400
FUN_ov17_0210b400: ; 0x0210B400
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210B54C ; =wh_trace
	mov r7, r0
	ldr r0, [r4, #4]
	mov r6, r1
	ldr r0, [r0, #0x40]
	mov r5, r2
	cmp r0, #1
	beq _0210B428
	bl OS_Terminate
_0210B428:
	ldr r0, [r4, #4]
	mov r1, #0x180
	add r0, r0, #0x1000
	str r1, [r0, #0x2a4]
	ldr r0, [r4, #4]
	mov r1, #0xe0
	add r0, r0, #0x1000
	str r1, [r0, #0x2a0]
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B46C
	ldr r0, [r4, #4]
	ldr r1, _0210B550 ; =0x02113B00
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a4]
	mov r0, #0x8000000
	blx r3
_0210B46C:
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B490
	ldr r0, [r4, #4]
	ldr r1, _0210B554 ; =0x02113B18
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a0]
	mov r0, #0x8000000
	blx r3
_0210B490:
	ldr r1, [r4, #4]
	mov r0, #3
	str r7, [r1, #0x44]
	bl FUN_ov17_0210a65c
	ldr r0, [r4, #4]
	strh r6, [r0, #0xc]
	ldr r0, [r4, #4]
	strh r5, [r0, #0x32]
	bl WM_GetDispersionBeaconPeriod
	ldr r1, [r4, #4]
	mov r2, #0xd0
	strh r0, [r1, #0x18]
	ldr r0, [r4, #4]
	mov r1, #0x44
	strh r2, [r0, #0x34]
	ldr r0, [r4, #4]
	mov r2, #2
	strh r1, [r0, #0x36]
	ldr r0, [r4, #4]
	mov r1, #0
	strh r2, [r0, #0x10]
	ldr r0, [r4, #4]
	mov r2, #1
	strh r1, [r0, #0x16]
	ldr r0, [r4, #4]
	cmp r7, #2
	strh r1, [r0, #0x12]
	ldr r0, [r4, #4]
	strh r2, [r0, #0xe]
	movne r2, r1
	ldr r0, [r4, #4]
	cmp r7, #0
	cmpne r7, #2
	strh r2, [r0, #0x14]
	cmpne r7, #4
	bne _0210B528
	bl FUN_ov17_0210a6f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B528:
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B544
	ldr r1, _0210B558 ; =0x02113B60
	mov r2, r7
	mov r0, #0x8000000
	blx r3
_0210B544:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B54C: .word wh_trace
_0210B550: .word ov17_02113B00
_0210B554: .word ov17_02113B18
_0210B558: .word ov17_02113B60
	arm_func_end FUN_ov17_0210b400

	arm_func_start FUN_ov17_0210b55c
FUN_ov17_0210b55c: ; 0x0210B55C
	ldr r1, _0210B56C ; =wh_trace
	ldr r1, [r1, #4]
	str r0, [r1, #0x4c]
	bx lr
_0210B56C: .word wh_trace
	arm_func_end FUN_ov17_0210b55c

	arm_func_start FUN_ov17_0210b570
FUN_ov17_0210b570: ; 0x0210B570
	ldr r1, _0210B590 ; =wh_trace
	mov r2, r0
	ldr r1, [r1, #4]
	ldr r12, _0210B594 ; =WM_GetSharedDataAddress
	add r0, r1, #0x3e0
	add r0, r0, #0x1000
	add r1, r1, #0x1c00
	bx r12
_0210B590: .word wh_trace
_0210B594: .word WM_GetSharedDataAddress
	arm_func_end FUN_ov17_0210b570

	arm_func_start FUN_ov17_0210b598
FUN_ov17_0210b598: ; 0x0210B598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210B62C ; =wh_trace
	mov r1, r0
	ldr r2, [r4, #4]
	add r0, r2, #0x3e0
	add r0, r0, #0x1000
	add r2, r2, #0x1c00
	bl WM_StepDataSharing
	mov r5, r0
	cmp r5, #7
	bne _0210B5E4
	ldr r2, [r4]
	cmp r2, #0
	beq _0210B5DC
	ldr r1, _0210B630 ; =0x02113B7C
	mov r0, #0x8000000
	blx r2
_0210B5DC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B5E4:
	cmp r5, #5
	bne _0210B614
	ldr r2, [r4]
	cmp r2, #0
	beq _0210B604
	ldr r1, _0210B634 ; =0x02113BAC
	mov r0, #0x8000000
	blx r2
_0210B604:
	mov r0, r5
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B614:
	cmp r5, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B62C: .word wh_trace
_0210B630: .word ov17_02113B7C
_0210B634: .word ov17_02113BAC
	arm_func_end FUN_ov17_0210b598

	arm_func_start FUN_ov17_0210b638
FUN_ov17_0210b638: ; 0x0210B638
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210ae30
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b638

	arm_func_start FUN_ov17_0210b654
FUN_ov17_0210b654: ; 0x0210B654
	stmfd sp!, {r3, lr}
	ldr r0, _0210B750 ; =wh_trace
	ldr r1, [r0, #4]
	ldr r2, [r1, #0x40]
	cmp r2, #1
	bne _0210B688
	ldr r2, [r0]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0210B754 ; =0x02113BE0
	mov r0, #0x8000000
	blx r2
	ldmfd sp!, {r3, pc}
_0210B688:
	ldr r3, [r0]
	cmp r3, #0
	beq _0210B6A0
	ldr r1, _0210B758 ; =0x02113C04
	mov r0, #0x8000000
	blx r3
_0210B6A0:
	ldr r0, _0210B750 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _0210B6CC
	bl FUN_ov17_0210a65c
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B6CC:
	bl FUN_ov17_0210a65c
	ldr r0, _0210B750 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, pc}
_0210B6E8: ; jump table
	b _0210B73C ; case 0
	b _0210B714 ; case 1
	b _0210B728 ; case 2
	b _0210B700 ; case 3
	b _0210B73C ; case 4
	b _0210B714 ; case 5
_0210B700:
	bl FUN_ov17_0210ad20
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B714:
	bl FUN_ov17_0210ad6c
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B728:
	bl FUN_ov17_0210ac20
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B73C:
	bl FUN_ov17_0210ac50
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B750: .word wh_trace
_0210B754: .word ov17_02113BE0
_0210B758: .word ov17_02113C04
	arm_func_end FUN_ov17_0210b654

	arm_func_start FUN_ov17_0210b75c
FUN_ov17_0210b75c: ; 0x0210B75C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B7A4 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0210B778
	bl OS_Terminate
_0210B778:
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210B7A8 ; =FUN_ov17_0210ae94
	bl WM_End
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B7A4: .word wh_trace
_0210B7A8: .word FUN_ov17_0210ae94
	arm_func_end FUN_ov17_0210b75c

	arm_func_start FUN_ov17_0210b7ac
FUN_ov17_0210b7ac: ; 0x0210B7AC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210B888 ; =0x021162C8
	mov r4, r1
	str r0, [r5]
	add r0, r0, #0xb00
	bl DWCi_MOV_MBP_MemInit
	ldr r0, [r5]
	mov r2, #0
	add r0, r0, #0x600
	strh r2, [r0, #0x48]
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #0x600
	strh r2, [r0, #0x4a]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldr r0, [r5]
	strb r1, [r0, #0xa91]
	ldr r0, [r5]
	str r2, [r0, #0xa9c]
	bl FUN_ov17_0210c274
	ldr r2, [r4]
	ldr r0, [r5]
	mov r1, #2
	str r2, [r0, #0xab4]
	ldr r2, [r4, #4]
	ldr r0, [r5]
	str r2, [r0, #0xab8]
	ldr r2, [r4, #8]
	ldr r0, [r5]
	str r2, [r0, #0xabc]
	ldr r2, [r4, #0xc]
	ldr r0, [r5]
	str r2, [r0, #0xac0]
	ldr r2, [r4, #0x10]
	ldr r0, [r5]
	str r2, [r0, #0xac4]
	ldr r2, [r4, #0x14]
	ldr r0, [r5]
	str r2, [r0, #0xac8]
	ldrb r2, [r4, #0x18]
	ldr r0, [r5]
	strb r2, [r0, #0xa92]
	ldr r0, [r5]
	strb r1, [r0, #0xacc]
	bl OS_GetTick
	ldr r0, [r5]
	add r0, r0, #0x24c
	add r0, r0, #0x400
	bl DWCi_BACKUPlRead
	bl OS_GetTick
	bl FUN_ov17_02107868
	ldr r1, [r5]
	str r0, [r1, #0xaa4]
	ldmfd sp!, {r3, r4, r5, pc}
_0210B888: .word ov17_021162C8
	arm_func_end FUN_ov17_0210b7ac

	arm_func_start FUN_ov17_0210b88c
FUN_ov17_0210b88c: ; 0x0210B88C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B960 ; =0x021162C8
	ldr r2, [r0]
	ldrb r1, [r2, #0xa90]
	cmp r1, #1
	cmpne r1, #0x14
	cmpne r1, #0x17
	cmpne r1, #0x1a
	cmpne r1, #0x1d
	bne _0210B8D4
	mov r1, #0x22
	strb r1, [r2, #0xa90]
	ldr r0, _0210B960 ; =0x021162C8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0xaac]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210B8D4:
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	beq _0210B8EC
	cmp r1, #0xd
	bne _0210B92C
_0210B8EC:
	cmp r1, #4
	bne _0210B904
	ldr r0, [r2, #0xa98]
	cmp r0, #6
	movlo r0, #0
	ldmlofd sp!, {r3, pc}
_0210B904:
	bl MB_EndToIdle
	ldr r0, _0210B960 ; =0x021162C8
	mov r3, #0x10
	ldr r1, [r0]
	mov r2, #2
	strb r3, [r1, #0xa90]
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xaac]
	ldmfd sp!, {r3, pc}
_0210B92C:
	add r0, r1, #0xf7
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, #0x20
	strlsb r0, [r2, #0xa90]
	movls r0, #1
	ldmlsfd sp!, {r3, pc}
	cmp r1, #0xc
	moveq r0, #0x22
	streqb r0, [r2, #0xa90]
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0210B960: .word ov17_021162C8
	arm_func_end FUN_ov17_0210b88c

	arm_func_start FUN_ov17_0210b964
FUN_ov17_0210b964: ; 0x0210B964
	stmfd sp!, {r4, lr}
	ldr r4, _0210B9D4 ; =0x021162C8
	ldr r0, [r4]
	ldr r0, [r0, #0xac8]
	bl FUN_ov17_0210aebc
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	bl WM_GetNextTgid
	ldr r1, [r4]
	mov r2, #0x40
	add r1, r1, #0x600
	strh r0, [r1, #0x48]
	ldr r1, [r4]
	ldr r0, [r1, #0xaa4]
	add r1, r1, #0xa50
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0xa93]
	ldr r0, [r4]
	str r1, [r0, #0x204]
	ldr r0, [r4]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x48]
	add r1, r1, #1
	strh r1, [r0, #0x48]
	ldmfd sp!, {r4, pc}
_0210B9D4: .word ov17_021162C8
	arm_func_end FUN_ov17_0210b964

	arm_func_start FUN_ov17_0210b9d8
FUN_ov17_0210b9d8: ; 0x0210B9D8
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA1C ; =0x021162C8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #1
	cmpne r0, #0x1a
	cmpne r0, #0x1d
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b964
	bl FUN_ov17_0210b2cc
	ldr r0, _0210BA1C ; =0x021162C8
	mov r2, #2
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BA1C: .word ov17_021162C8
	arm_func_end FUN_ov17_0210b9d8

	arm_func_start FUN_ov17_0210ba20
FUN_ov17_0210ba20: ; 0x0210BA20
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA50 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #5
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	strb r0, [r1, #0xa90]
	bl DWCi_MOV_MBP_StartDownloadAll
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210BA50: .word ov17_021162C8
	arm_func_end FUN_ov17_0210ba20

	arm_func_start FUN_ov17_0210ba54
FUN_ov17_0210ba54: ; 0x0210BA54
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210BD80 ; =0x021162C8
	mov r4, #0
	ldr r0, [r5]
	ldrb r1, [r0, #0xa90]
	cmp r1, #0x22
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BA74: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0210BB00 ; case 1
	b _0210BB30 ; case 2
	b _0210BB38 ; case 3
	b _0210BB4C ; case 4
	b _0210BB60 ; case 5
	b _0210BB60 ; case 6
	b _0210BB68 ; case 7
	b _0210BB70 ; case 8
	b _0210BB70 ; case 9
	b _0210BB70 ; case 10
	b _0210BB78 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, pc} ; case 15
	b _0210BB80 ; case 16
	b _0210BB94 ; case 17
	b _0210BBB0 ; case 18
	b _0210BBCC ; case 19
	ldmfd sp!, {r3, r4, r5, pc} ; case 20
	b _0210BC00 ; case 21
	b _0210BC1C ; case 22
	ldmfd sp!, {r3, r4, r5, pc} ; case 23
	b _0210BC50 ; case 24
	b _0210BC6C ; case 25
	ldmfd sp!, {r3, r4, r5, pc} ; case 26
	b _0210BCA0 ; case 27
	b _0210BCBC ; case 28
	ldmfd sp!, {r3, r4, r5, pc} ; case 29
	b _0210BD78 ; case 30
	ldmfd sp!, {r3, r4, r5, pc} ; case 31
	b _0210BD28 ; case 32
	b _0210BD44 ; case 33
	ldmfd sp!, {r3, r4, r5, pc} ; case 34
_0210BB00:
	ldrb r1, [r0, #0xaac]
	cmp r1, #1
	bne _0210BB18
	strb r4, [r0, #0xaac]
	bl FUN_ov17_0210b9d8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB18:
	cmp r1, #2
	streqb r4, [r0, #0xaac]
	ldreq r0, [r5]
	moveq r1, #0x22
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB30:
	bl FUN_ov17_0210bddc
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB38:
	bl FUN_ov17_0210be84
	ldr r0, [r5]
	mov r1, #4
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB4C:
	ldr r1, [r0, #0xa98]
	add r1, r1, #1
	str r1, [r0, #0xa98]
	bl FUN_ov17_0210bea8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB60:
	bl FUN_ov17_0210bea8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB68:
	bl FUN_ov17_0210c030
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB70:
	bl FUN_ov17_0210c05c
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB78:
	bl FUN_ov17_0210c1f0
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB80:
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	mov r1, #0x11
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB94:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210c208
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBB0:
	bl MB_EndToIdle
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBCC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x14
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC00:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC1C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x17
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC50:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x19
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC6C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x1a
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCA0:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x1c
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCBC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	bne _0210BCF0
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x1d
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCF0:
	ldr r1, [r5]
	ldr r0, _0210BD84 ; =0x88888889
	ldr r3, [r1, #0xa9c]
	mov r2, #0x1e
	umull r0, r1, r3, r0
	mov r1, r1, lsr #4
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r3, #0x37
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD28:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x21
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD44:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x22
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD78:
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD80: .word ov17_021162C8
_0210BD84: .word 0x88888889
	arm_func_end FUN_ov17_0210ba54

	arm_func_start FUN_ov17_0210bd88
FUN_ov17_0210bd88: ; 0x0210BD88
	ldr r2, _0210BDC8 ; =0x021162C8
	ldr r3, [r2]
	ldrb r3, [r3, #0xa90]
	strb r3, [r0]
	ldr r0, [r2]
	ldrb r2, [r0, #0xa90]
	ldrb r0, [r0, #0xa91]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	strb r0, [r1]
	ldr r0, _0210BDC8 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	strb r0, [r1, #0xa91]
	bx lr
_0210BDC8: .word ov17_021162C8
	arm_func_end FUN_ov17_0210bd88

	arm_func_start FUN_ov17_0210bdcc
FUN_ov17_0210bdcc: ; 0x0210BDCC
	ldr r12, _0210BDD8 ; = MB_CommGetChildUser
	mov r0, #1
	bx r12
_0210BDD8: .word MB_CommGetChildUser
	arm_func_end FUN_ov17_0210bdcc

	arm_func_start FUN_ov17_0210bddc
FUN_ov17_0210bddc: ; 0x0210BDDC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0210BE78
_0210BDF0: ; jump table
	b _0210BE50 ; case 0
	b _0210BE18 ; case 1
	b _0210BE78 ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	b _0210BE78 ; case 4
	b _0210BE78 ; case 5
	b _0210BE78 ; case 6
	b _0210BE20 ; case 7
	b _0210BE78 ; case 8
	b _0210BE70 ; case 9
_0210BE18:
	bl FUN_ov17_0210aef8
	ldmfd sp!, {r3, pc}
_0210BE20:
	bl FUN_ov17_0210b174
	ldr r2, _0210BE80 ; =0x021162C8
	mov r12, #0
	ldr r1, [r2]
	mov r3, #3
	add r1, r1, #0x600
	strh r0, [r1, #0x4a]
	ldr r0, [r2]
	str r12, [r0, #0xa98]
	ldr r0, [r2]
	strb r3, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE50:
	ldr r0, _0210BE80 ; =0x021162C8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	str r3, [r2, #0xa98]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE70:
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210BE78:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_0210BE80: .word ov17_021162C8
	arm_func_end FUN_ov17_0210bddc

	arm_func_start FUN_ov17_0210be84
FUN_ov17_0210be84: ; 0x0210BE84
	ldr r0, _0210BEA0 ; =0x021162C8
	ldr r12, _0210BEA4 ; =DWCi_MOV_MBP_Init
	ldr r2, [r0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x48]
	ldr r0, [r2, #0xac8]
	bx r12
_0210BEA0: .word ov17_021162C8
_0210BEA4: .word DWCi_MOV_MBP_Init
	arm_func_end FUN_ov17_0210be84

	arm_func_start FUN_ov17_0210bea8
FUN_ov17_0210bea8: ; 0x0210BEA8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210C02C ; =0x021162C8
	bl DWCi_MOV_MBP_GetState
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEC0: ; jump table
	b _0210BFE4 ; case 0
	b _0210BEE0 ; case 1
	b _0210BEFC ; case 2
	b _0210BF78 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _0210BFC0 ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _0210BFD0 ; case 7
_0210BEE0:
	ldr r2, [r4]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x4a]
	add r0, r2, #0x2b4
	add r0, r0, #0x800
	bl DWCi_MOV_MBP_Start
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEFC:
	mov r5, #2
	mov r0, r5
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldrne r0, [r4]
	movne r1, #5
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	bne _0210BF3C
	mov r0, #4
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	beq _0210BF4C
_0210BF3C:
	ldr r0, [r4]
	mov r1, #6
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF4C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0xd
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF78:
	bl DWCi_MOV_MBP_IsBootableAll
	cmp r0, #0
	beq _0210BF8C
	bl DWCi_MOV_MBP_StartRebootAll
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF8C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl DWCi_MOV_MBP_GetChildBmp
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0x12
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFC0:
	ldr r0, [r4]
	mov r1, #7
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFD0:
	bl DWCi_MOV_MBP_Cancel
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFE4:
	bl FUN_ov17_0210aee4
	cmp r0, #0
	beq _0210C00C
	cmp r0, #1
	beq _0210C004
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _0210C01C
_0210C004:
	bl FUN_ov17_0210b75c
	ldmfd sp!, {r3, r4, r5, pc}
_0210C00C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C01C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C02C: .word ov17_021162C8
	arm_func_end FUN_ov17_0210bea8

	arm_func_start FUN_ov17_0210c030
FUN_ov17_0210c030: ; 0x0210C030
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210c274
	ldr r0, _0210C054 ; =FUN_ov17_0210c238
	bl FUN_ov17_0210b55c
	ldr r0, _0210C058 ; =0x021162C8
	mov r1, #8
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C054: .word FUN_ov17_0210c238
_0210C058: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c030

	arm_func_start FUN_ov17_0210c05c
FUN_ov17_0210c05c: ; 0x0210C05C
	stmfd sp!, {r4, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0210C070: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0210C08C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0210C0B8 ; case 4
	b _0210C0B8 ; case 5
	b _0210C0B8 ; case 6
_0210C08C:
	ldr r1, _0210C1EC ; =0x021162C8
	mov r0, #4
	ldr r1, [r1]
	add r1, r1, #0x600
	ldrh r3, [r1, #0x48]
	ldrh r2, [r1, #0x4a]
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov17_0210b400
	ldmfd sp!, {r4, pc}
_0210C0B8:
	ldr r4, _0210C1EC ; =0x021162C8
	mov r0, #0
	ldr r2, [r4]
	add r1, r2, #0x200
	ldrh r1, [r1]
	ldr r12, [r2, #0xaa4]
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #28
	add r2, r3, r2, ror #28
	add r2, r12, r2, lsl #6
	bl FUN_ov17_0210c2b8
	bl FUN_ov17_0210c404
	ldr r1, [r4]
	ldrb r0, [r1, #0xa90]
	cmp r0, #0x1b
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x204]
	cmp r0, #0x1e0
	movhi r0, #0x1b
	strhib r0, [r1, #0xa90]
	ldmhifd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x10
	beq _0210C124
	bl FUN_ov17_0210c4e8
	cmp r0, #0x20
	bne _0210C13C
_0210C124:
	bl FUN_ov17_0210c4e8
	ldr r0, _0210C1EC ; =0x021162C8
	mov r1, #0xa
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C13C:
	bl FUN_ov17_0210c4e8
	cmp r0, #0x40
	ldreq r0, [r4]
	moveq r1, #0xb
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0xff
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x50
	ldreq r0, [r4]
	moveq r1, #0x15
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x60
	ldreq r0, [r4]
	moveq r1, #0x18
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x70
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #8
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0xbd
	ldr r0, [r4]
	moveq r1, #9
	streqb r1, [r0, #0xa90]
	movne r1, #0x1f
	strneb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C1EC: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c05c

	arm_func_start FUN_ov17_0210c1f0
FUN_ov17_0210c1f0: ; 0x0210C1F0
	ldr r0, _0210C204 ; =0x021162C8
	mov r1, #0xc
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	bx lr
_0210C204: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c1f0

	arm_func_start FUN_ov17_0210c208
FUN_ov17_0210c208: ; 0x0210C208
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b75c
	ldr r1, _0210C234 ; =0x021162C8
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C234: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c208

	arm_func_start FUN_ov17_0210c238
FUN_ov17_0210c238: ; 0x0210C238
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa
	bl DWCi_MOV_MBP_GetPlayerNo
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_MBP_GetChildInfo
	ldr r1, _0210C270 ; =0x021162C8
	sub r2, r4, #1
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	str r0, [r1, #0xaa0]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0210C270: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c238

	arm_func_start FUN_ov17_0210c274
FUN_ov17_0210c274: ; 0x0210C274
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0210C2B4 ; =0x021162C8
	mov r6, #0
	ldr r0, [r4]
	mov r5, #0x100
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x100
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r0, [r4]
	str r0, [r0, #0xab0]
	ldmfd sp!, {r4, r5, r6, pc}
_0210C2B4: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c274

	arm_func_start FUN_ov17_0210c2b8
FUN_ov17_0210c2b8: ; 0x0210C2B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, _0210C400 ; =0x021162C8
	ldr r5, [r3]
	ldrb r4, [r5, #0xa93]
	cmp r4, #1
	bne _0210C300
	ldr r4, [r5, #0xab0]
	strh r0, [r4]
	ldr r4, [r3]
	mov r0, r2
	ldr r4, [r4, #0xab0]
	mov r2, #0x40
	strh r1, [r4, #2]
	ldr r1, [r3]
	ldr r1, [r1, #0xab0]
	add r1, r1, #4
	bl MI_CpuCopy8
	b _0210C32C
_0210C300:
	ldr r0, [r5, #0x204]
	mov r1, #0xbc
	add r0, r0, #1
	str r0, [r5, #0x204]
	ldr r0, [r3]
	ldr r0, [r0, #0xab0]
	strh r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, #0xa92]
	ldr r0, [r0, #0xab0]
	strb r1, [r0, #4]
_0210C32C:
	bl FUN_ov17_0210aee4
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _0210C400 ; =0x021162C8
	ldr r0, [r4]
	bl FUN_ov17_0210b598
	ldr r1, [r4]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #4
	streq r0, [r1, #0x204]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r1, #0xa93]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #1
	streq r0, [r1, #0x204]
	beq _0210C394
	mov r0, #0
	str r0, [r1, #0x204]
	bl FUN_ov17_0210aed0
	cmp r0, #3
	ldrne r0, [r4]
	movne r1, #0x1b
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C394:
	mov r7, #0
	mov r6, #0x44
	ldr r9, _0210C400 ; =0x021162C8
	mov r4, r7
	mov r5, #1
	mov r8, r6
_0210C3AC:
	mov r0, r7
	bl FUN_ov17_0210b570
	cmp r0, #0
	ldreq r0, [r9]
	addeq r0, r0, r7, lsl #2
	streq r4, [r0, #0x208]
	beq _0210C3E8
	ldr r1, [r9]
	mov r2, r6
	add r1, r1, #0x100
	mla r1, r7, r8, r1
	bl MI_CpuCopy8
	ldr r0, [r9]
	add r0, r0, r7, lsl #2
	str r5, [r0, #0x208]
_0210C3E8:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #2
	blo _0210C3AC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C400: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c2b8

	arm_func_start FUN_ov17_0210c404
FUN_ov17_0210c404: ; 0x0210C404
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r12, #0
	ldr r4, _0210C4E4 ; =0x021162C8
	mov r0, #1
	mov r5, r12
	mov r1, #0xbc
	mov r2, r12
	mov lr, #0x44
_0210C424:
	ldr r3, [r4]
	add r6, r3, r12, lsl #2
	ldr r6, [r6, #0x208]
	cmp r6, #0
	beq _0210C4D4
	mul r7, r12, lr
	cmp r12, #1
	add r8, r3, #0x100
	bne _0210C4D4
	ldrb r6, [r3, #0xa93]
	cmp r6, #1
	bne _0210C4A4
	ldrh r6, [r8, r7]
	cmp r6, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r3, #0xa94]
	add r6, r6, #1
	str r6, [r3, #0xa94]
	ldr r6, [r4]
	ldr r3, [r6, #0xa94]
	tst r3, #1
	bne _0210C4D4
	add r3, r6, #0x200
	ldrh r6, [r3]
	add r6, r6, #1
	strh r6, [r3]
	ldr r3, [r4]
	add r3, r3, #0x200
	ldrh r6, [r3]
	cmp r6, #0x24
	strhsh r2, [r3]
	b _0210C4D4
_0210C4A4:
	add r3, r3, #0x200
	strh r1, [r3, #2]
	ldrh r3, [r8, r7]
	cmp r3, #0xbd
	bne _0210C4D4
	ldr r3, [r4]
	strb r0, [r3, #0xa93]
	ldr r3, [r4]
	add r3, r3, #0x200
	strh r5, [r3]
	ldr r3, [r4]
	str r5, [r3, #0xa94]
_0210C4D4:
	add r12, r12, #1
	cmp r12, #0x10
	blt _0210C424
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210C4E4: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c404

	arm_func_start FUN_ov17_0210c4e8
FUN_ov17_0210c4e8: ; 0x0210C4E8
	ldr r0, _0210C4FC ; =0x021162C8
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x44]
	bx lr
_0210C4FC: .word ov17_021162C8
	arm_func_end FUN_ov17_0210c4e8

	arm_func_start DWCi_ARClInit
DWCi_ARClInit: ; 0x0210C500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xe8
	mov r0, #0xe8
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210C694 ; =dwc_MemArchive
	add r4, sp, #0xa0
	str r0, [r1]
	mov r0, r4
	bl FS_InitFile
	ldr r1, _0210C698 ; =0x02113C28
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C540
	bl OS_Terminate
_0210C540:
	bl OS_GetLockID
	ldr r5, _0210C694 ; =dwc_MemArchive
	add r7, sp, #0xa0
	ldr r1, [r5]
	strh r0, [r1, #0xe4]
	mov r0, r7
	bl FS_GetFileImageTop
	mov r6, #8
	mov r4, r0
	add r1, sp, #0x18
	mov r0, r7
	mov r2, r6
	bl FS_ReadFile
	add r1, sp, #0x10
	mov r2, r6
	mov r0, r7
	bl FS_ReadFile
	mov r0, r7
	bl FS_CloseFile
	ldr r0, [r5]
	add r0, r0, #0x88
	bl FS_InitArchive
	ldr r0, [r5]
	ldr r1, _0210C69C ; =dwc_ARCHIVE_NAME
	add r0, r0, #0x88
	mov r2, #3
	bl FS_RegisterArchiveName
	cmp r0, #0
	bne _0210C5B8
	bl OS_Terminate
_0210C5B8:
	ldr r5, _0210C694 ; =dwc_MemArchive
	ldr r1, _0210C6A0 ; =dwc_userProc
	ldr r0, [r5]
	ldr r2, _0210C6A4 ; =0x00000602
	add r0, r0, #0x88
	bl FS_SetArchiveProc
	ldr r0, [sp, #0x18]
	ldr r1, _0210C6A8 ; =dwc_cbRead
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, _0210C6AC ; =dwc_cbWrite
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, r4
	add r0, r0, #0x88
	bl FS_LoadArchive
	cmp r0, #0
	bne _0210C614
	bl OS_Terminate
_0210C614:
	ldr r4, _0210C694 ; =dwc_MemArchive
	mov r1, #0
	ldr r0, [r4]
	mov r2, r1
	add r0, r0, #0x88
	bl FS_LoadArchiveTables
	mov r5, #4
	mov r1, r5
	mov r6, r0
	bl DWCi_HEAPlAllocEx
	ldr r1, [r4]
	mov r2, r6
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, [r0], #0x88
	bl FS_LoadArchiveTables
	ldr r0, [r4]
	mov r2, r5
	add r1, r0, #4
	mov r0, #0x20
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	add r4, sp, #0x20
	str r0, [r1, #0x84]
	ldr r1, _0210C6B0 ; =0x02113C40
	ldr r2, _0210C69C ; =dwc_ARCHIVE_NAME
	mov r0, r4
	bl OS_SPrintf
	mov r0, r4
	bl FS_ChangeDir
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210C694: .word dwc_MemArchive
_0210C698: .word ov17_02113C28
_0210C69C: .word dwc_ARCHIVE_NAME
_0210C6A0: .word dwc_userProc
_0210C6A4: .word 0x00000602
_0210C6A8: .word dwc_cbRead
_0210C6AC: .word dwc_cbWrite
_0210C6B0: .word ov17_02113C40
	arm_func_end DWCi_ARClInit

	arm_func_start DWCi_ARClEnd
DWCi_ARClEnd: ; 0x0210C6B4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0210C71C ; =0x02113C48
	bl FS_ChangeDir
	ldr r4, _0210C720 ; =dwc_MemArchive
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_UnloadArchiveTables
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_UnloadArchive
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_ReleaseArchiveName
	ldr r0, [r4]
	ldrh r0, [r0, #0xe4]
	bl OS_ReleaseLockID
	ldr r0, [r4]
	mov r5, #0
	strh r5, [r0, #0xe4]
	ldr r0, [r4]
	bl DWCi_HEAPlFree_
	ldr r1, [r4]
	ldr r0, _0210C724 ; =dwc_MemArchive
	str r5, [r1]
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_0210C71C: .word ov17_02113C48
_0210C720: .word dwc_MemArchive
_0210C724: .word dwc_MemArchive
	arm_func_end DWCi_ARClEnd

	arm_func_start dwc_userProc
dwc_userProc: ; 0x0210C728
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _0210C778
	cmp r1, #9
	beq _0210C748
	cmp r1, #0xa
	beq _0210C760
	b _0210C780
_0210C748:
	ldr r0, _0210C788 ; =dwc_MemArchive
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl CARD_LockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C760:
	ldr r0, _0210C788 ; =dwc_MemArchive
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl CARD_UnlockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C778:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0210C780:
	ldr r0, _0210C78C ; =0x00000102
	ldmfd sp!, {r3, pc}
_0210C788: .word dwc_MemArchive
_0210C78C: .word 0x00000102
	arm_func_end dwc_userProc

	arm_func_start dwc_cbRead
dwc_cbRead: ; 0x0210C790
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FS_GetArchiveBase
	ldr r1, _0210C7E0 ; =dwc_cbReadRom
	mov lr, r0
	mov r12, #1
	str r1, [sp]
	mov r2, r6
	mov r3, r4
	sub r0, r12, #2
	add r1, r5, lr
	stmib sp, {r7, r12}
	bl CARDi_ReadRom
	mov r0, #0x100
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210C7E0: .word dwc_cbReadRom
	arm_func_end dwc_cbRead

	arm_func_start dwc_cbReadRom
dwc_cbReadRom: ; 0x0210C7E4
	ldr r12, _0210C7F0 ; =FS_NotifyArchiveAsyncEnd
	mov r1, #0
	bx r12
_0210C7F0: .word FS_NotifyArchiveAsyncEnd
	arm_func_end dwc_cbReadRom

	arm_func_start dwc_cbWrite
dwc_cbWrite: ; 0x0210C7F4
	mov r0, #1
	bx lr
	arm_func_end dwc_cbWrite

	arm_func_start DWCi_ARClReadEx
DWCi_ARClReadEx: ; 0x0210C7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x4c
	ldr r3, _0210C8F4 ; =dwc_MemArchive
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	ldr r0, [r0, #0x84]
	mov r4, r2
	bl DWCi_QUElPopBack
	add r7, sp, #4
	mov r0, r7
	bl FS_InitFile
	mov r0, r7
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C844
	bl OS_Terminate
_0210C844:
	add r0, sp, #4
	bl FS_GetLength
	mov r7, #2
	mov r8, r0
	cmp r5, #0
	ldr r1, _0210C8F8 ; =0x02113C50
	mov r0, r6
	mov r2, r7
	strne r8, [r5]
	bl dwc_cmpBack
	cmp r0, #0
	sub r7, r7, #6
	moveq r7, r4
	mov r0, r8
	mov r1, r7
	bl DWCi_HEAPlAllocEx
	mov r1, r0
	add r6, sp, #4
	mov r2, r8
	mov r0, r6
	str r1, [sp]
	bl FS_ReadFile
	mov r0, r6
	bl FS_CloseFile
	cmp r7, #0
	ldrgt r0, [sp]
	addgt sp, sp, #0x4c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	cmp r5, #0
	ldr r0, [r0]
	mov r1, r4
	mov r0, r0, lsr #8
	strne r0, [r5]
	bl DWCi_HEAPlAllocEx
	mov r4, r0
	ldr r0, [sp]
	mov r1, r4
	bl MI_UncompressLZ8
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	mov r0, r4
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210C8F4: .word dwc_MemArchive
_0210C8F8: .word ov17_02113C50
	arm_func_end DWCi_ARClReadEx

	arm_func_start DWCi_ARClRelease
DWCi_ARClRelease: ; 0x0210C8FC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldr r0, _0210C92C ; =dwc_MemArchive
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0x84]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0210C92C: .word dwc_MemArchive
	arm_func_end DWCi_ARClRelease

	arm_func_start dwc_cmpBack
dwc_cmpBack: ; 0x0210C930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	cmp r4, r5
	cmpge r0, r5
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r0, r5
	sub r3, r4, r5
	mov r2, r5
	add r0, r7, r3
	add r1, r6, r1
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end dwc_cmpBack

	arm_func_start DWCi_CELLlInit
DWCi_CELLlInit: ; 0x0210C988
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x450
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _0210CA58 ; =dwcutil_MemCell
	mov r9, #0
	str r0, [r5]
	mov r8, #0x20
	mov r7, #0x10
	mov r6, #0x40
	mov r11, #0x7f
	mov r4, #0x228
_0210C9B8:
	mul r10, r9, r4
	ldr r1, [r5]
	mov r0, r8
	mov r2, r7
	add r1, r1, r10
	bl DWCi_QUElFormEx
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x224]
	bl DWCi_LSTlForm
	ldr r2, [r5]
	mov r1, r6
	add r2, r2, r10
	str r0, [r2, #0x220]
	mov r0, r9
	bl DWCi_OBJlGetOam
	ldr r2, [r5]
	mov r1, r11
	add r2, r2, r10
	str r0, [r2, #0x208]
	mov r0, r9
	bl DWCi_OBJlGetOam
	add r1, r0, #8
	ldr r0, [r5]
	add r0, r0, r10
	str r1, [r0, #0x218]
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x220]
	add r1, r1, #0x200
	bl DWCi_LSTlPushFront
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x220]
	add r1, r1, #0x210
	bl DWCi_LSTlPushBack
	add r9, r9, #1
	cmp r9, #2
	blt _0210C9B8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210CA58: .word dwcutil_MemCell
	arm_func_end DWCi_CELLlInit

	arm_func_start DWCi_CELLlEnd
DWCi_CELLlEnd: ; 0x0210CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0210CAA8 ; =dwcutil_MemCell
	mov r6, #0
	mov r4, #0x228
_0210CA6C:
	mul r7, r6, r4
	ldr r0, [r5]
	add r0, r0, r7
	ldr r0, [r0, #0x220]
	bl DWCi_LSTlDelete
	ldr r0, [r5]
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl DWCi_QUElDelete
	add r6, r6, #1
	cmp r6, #2
	blt _0210CA6C
	ldr r0, _0210CAAC ; =dwcutil_MemCell
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CAA8: .word dwcutil_MemCell
_0210CAAC: .word dwcutil_MemCell
	arm_func_end DWCi_CELLlEnd

	arm_func_start DWCi_CELLlForm
DWCi_CELLlForm: ; 0x0210CAB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0x228
	mul r7, r10, r11
	ldr r4, _0210CBF0 ; =dwcutil_MemCell
	mov r9, r1
	ldr r0, [r4]
	mov r8, r2
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl DWCi_QUElPopBack
	mov r5, r0
	mov r0, #1
	bl OS_DisableIrqMask
	ldr r1, [r4]
	mov r6, r0
	mla r0, r10, r11, r1
	cmp r8, #0
	beq _0210CB68
	add r4, r0, #0x200
	add r0, r0, #0x210
	cmp r4, r0
	beq _0210CB4C
	add r0, r1, r7
	add r1, r0, #0x210
_0210CB14:
	ldrb r3, [r4, #0xc]
	ldmib r4, {r0, r8}
	add r8, r8, r3, lsl #3
	ldr r2, [r0, #8]
	add r3, r8, r9, lsl #3
	cmp r3, r2
	bhi _0210CB40
	mov r1, r5
	str r8, [r5, #8]
	bl DWCi_LSTlInsert
	b _0210CB4C
_0210CB40:
	mov r4, r0
	cmp r0, r1
	bne _0210CB14
_0210CB4C:
	ldr r0, _0210CBF0 ; =dwcutil_MemCell
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x210
	cmp r4, r0
	bne _0210CBDC
	b _0210CBD8
_0210CB68:
	add r4, r0, #0x210
	add r0, r0, #0x200
	cmp r4, r0
	beq _0210CBC0
	add r0, r1, r7
	add r0, r0, #0x200
_0210CB80:
	ldr r8, [r4]
	ldr r3, [r4, #8]
	ldrb r1, [r8, #0xc]
	ldr r2, [r8, #8]
	sub r3, r3, r9, lsl #3
	add r1, r2, r1, lsl #3
	cmp r3, r1
	blo _0210CBB4
	mov r0, r4
	mov r1, r5
	str r3, [r5, #8]
	bl DWCi_LSTlInsert
	b _0210CBC0
_0210CBB4:
	mov r4, r8
	cmp r8, r0
	bne _0210CB80
_0210CBC0:
	ldr r0, _0210CBF0 ; =dwcutil_MemCell
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x200
	cmp r4, r0
	bne _0210CBDC
_0210CBD8:
	bl OS_Terminate
_0210CBDC:
	mov r0, r6
	bl OS_EnableIrqMask
	mov r0, r5
	strb r9, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210CBF0: .word dwcutil_MemCell
	arm_func_end DWCi_CELLlForm

	arm_func_start DWCi_CELLlDelete
DWCi_CELLlDelete: ; 0x0210CBF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xc]
	mov r4, #0
	mov r3, r4
	cmp r0, #0
	ldr r2, [r5, #8]
	ble _0210CC38
	ldr r0, _0210CC6C ; =0xC1FFFCFF
_0210CC18:
	ldr r1, [r2]
	add r3, r3, #1
	and r1, r1, r0
	orr r1, r1, #0x200
	str r1, [r2], #8
	ldrb r1, [r5, #0xc]
	cmp r3, r1
	blt _0210CC18
_0210CC38:
	mov r0, r5
	bl DWCi_LSTlErase
	ldr r0, _0210CC70 ; =dwcutil_MemCell
	ldr r1, [r0]
	add r0, r1, #0x228
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x228
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x224]
	mov r1, r5
	bl DWCi_QUElPushBack
	ldmfd sp!, {r3, r4, r5, pc}
_0210CC6C: .word 0xC1FFFCFF
_0210CC70: .word dwcutil_MemCell
	arm_func_end DWCi_CELLlDelete

	arm_func_start DWCi_CELLlGetObj
DWCi_CELLlGetObj: ; 0x0210CC74
	ldr r0, [r0, #8]
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end DWCi_CELLlGetObj

	arm_func_start DWCi_CELLlGetObjNum
DWCi_CELLlGetObjNum: ; 0x0210CC80
	ldrb r0, [r0, #0xc]
	bx lr
	arm_func_end DWCi_CELLlGetObjNum

	arm_func_start DWCi_CELLlSetEffect
DWCi_CELLlSetEffect: ; 0x0210CC88
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CCD4
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r0, _0210CD28 ; =0xC1FFFCFF
	beq _0210CCBC
	ldr r3, [r12, r1, lsl #3]
	and r0, r3, r0
	orr r0, r0, r2
	str r0, [r12, r1, lsl #3]
	ldmfd sp!, {r4, pc}
_0210CCBC:
	ldr r4, [r12, r1, lsl #3]
	and r0, r4, r0
	orr r0, r0, r2
	orr r0, r0, r3, lsl #25
	str r0, [r12, r1, lsl #3]
	ldmfd sp!, {r4, pc}
_0210CCD4:
	ldrb r4, [r0, #0xc]
	mov r1, #0
	cmp r4, #0
	ldmlefd sp!, {r4, pc}
	ldr lr, _0210CD28 ; =0xC1FFFCFF
_0210CCE8:
	cmp r2, #0x100
	cmpne r2, #0x300
	ldrne r4, [r12, r1, lsl #3]
	andne r4, r4, lr
	orrne r4, r4, r2
	strne r4, [r12, r1, lsl #3]
	ldreq r4, [r12, r1, lsl #3]
	andeq r4, r4, lr
	orreq r4, r4, r2
	orreq r4, r4, r3, lsl #25
	streq r4, [r12, r1, lsl #3]
	ldrb r4, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r4
	blt _0210CCE8
	ldmfd sp!, {r4, pc}
_0210CD28: .word 0xC1FFFCFF
	arm_func_end DWCi_CELLlSetEffect

	arm_func_start DWCi_CELLlSetPalette
DWCi_CELLlSetPalette: ; 0x0210CD2C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CD64
	ldr r0, [r12, r1, lsl #3]
	add lr, r12, r1, lsl #3
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	str r0, [r12, r1, lsl #3]
	ldrh r0, [lr, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r3, lsl #12
	strh r0, [lr, #4]
	ldmfd sp!, {r4, pc}
_0210CD64:
	ldrb r1, [r0, #0xc]
	mov r4, #0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
_0210CD74:
	ldr r1, [r12, r4, lsl #3]
	add lr, r12, r4, lsl #3
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	str r1, [r12, r4, lsl #3]
	ldrh r1, [lr, #4]
	add r4, r4, #1
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [lr, #4]
	ldrb r1, [r0, #0xc]
	cmp r4, r1
	blt _0210CD74
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_CELLlSetPalette

	arm_func_start DWCi_CELLlSetPosition
DWCi_CELLlSetPosition: ; 0x0210CDAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CDE8
	ldr r4, [r12, r1, lsl #3]
	ldr r0, _0210CE7C ; =0xFE00FF00
	and r3, r3, #0xff
	and r0, r4, r0
	mov r2, r2, lsl #0x17
	orr r0, r0, r3
	orr r0, r0, r2, lsr #7
	str r0, [r12, r1, lsl #3]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CDE8:
	ldr r5, [r12]
	ldr r4, _0210CE7C ; =0xFE00FF00
	and r1, r3, #0xff
	and r5, r5, r4
	ldr r7, [r12]
	orr r1, r5, r1
	mov r6, r2, lsl #0x17
	orr r1, r1, r6, lsr #7
	str r1, [r12]
	ldrb r1, [r0, #0xc]
	ldr lr, _0210CE80 ; =0x01FF0000
	and r5, r7, #0xff
	cmp r1, #1
	and r6, r7, lr
	sub r3, r3, r5
	addle sp, sp, #0x10
	sub r2, r2, r6, lsr #16
	mov r1, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE34:
	ldr r7, [r12, r1, lsl #3]
	and r5, r7, #0xff
	mov r6, r7
	and r7, r7, lr
	add r5, r5, r3
	add r7, r2, r7, lsr #16
	and r6, r6, r4
	and r5, r5, #0xff
	mov r7, r7, lsl #0x17
	orr r5, r6, r5
	orr r5, r5, r7, lsr #7
	str r5, [r12, r1, lsl #3]
	ldrb r5, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r5
	blt _0210CE34
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE7C: .word 0xFE00FF00
_0210CE80: .word 0x01FF0000
	arm_func_end DWCi_CELLlSetPosition

	arm_func_start DWCi_CELLlSetPriority
DWCi_CELLlSetPriority: ; 0x0210CE84
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CEAC
	add r1, r12, r1, lsl #3
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	strh r0, [r1, #4]
	ldmfd sp!, {r3, pc}
_0210CEAC:
	ldrb r1, [r0, #0xc]
	mov lr, #0
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
_0210CEBC:
	add r3, r12, lr, lsl #3
	ldrh r1, [r3, #4]
	add lr, lr, #1
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	strh r1, [r3, #4]
	ldrb r1, [r0, #0xc]
	cmp lr, r1
	blt _0210CEBC
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_CELLlSetPriority

	arm_func_start DWCi_CELLlGetPosition
DWCi_CELLlGetPosition: ; 0x0210CEE4
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	ldr r0, _0210CF10 ; =0x01FF0000
	ldr r12, [lr, r1, lsl #3]
	and r0, r12, r0
	mov r0, r0, lsr #0x10
	str r0, [r2]
	ldr r0, [lr, r1, lsl #3]
	and r0, r0, #0xff
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_0210CF10: .word 0x01FF0000
	arm_func_end DWCi_CELLlGetPosition

	arm_func_start DWCi_CEINlRead
DWCi_CEINlRead: ; 0x0210CF14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _0210CF40 ; =dwcutil_File
	str r0, [r1, r4, lsl #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210CF40: .word dwcutil_File
	arm_func_end DWCi_CEINlRead

	arm_func_start DWCi_CEINlRelease
DWCi_CEINlRelease: ; 0x0210CF44
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210CF64 ; =dwcutil_File
	mov r5, r0
	ldr r0, [r4, r5, lsl #2]
	bl DWCi_ARClRelease
	mov r0, #0
	str r0, [r4, r5, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
_0210CF64: .word dwcutil_File
	arm_func_end DWCi_CEINlRelease

	arm_func_start DWCi_CEINlSet
DWCi_CEINlSet: ; 0x0210CF68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210CFF8 ; =dwcutil_File
	mov r6, r2
	ldr r7, [r3, r0, lsl #2]
	mov r2, r1, lsl #3
	add r0, r7, r1, lsl #3
	ldrh r4, [r7, r2]
	add r9, sp, #0
	ldr r3, [r0, #4]
	mov r5, #0
	mov r0, r5
	mov r1, r9
	mov r2, #8
	add r10, r7, r3
	bl MIi_CpuClear32
	cmp r4, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #6
	mov r7, #8
_0210CFBC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl MIi_CpuCopy16
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl MIi_CpuCopy32
	add r5, r5, #1
	cmp r5, r4
	add r10, r10, #6
	add r6, r6, #8
	blt _0210CFBC
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210CFF8: .word dwcutil_File
	arm_func_end DWCi_CEINlSet

	arm_func_start DWCi_CEINlSetExObj
DWCi_CEINlSetExObj: ; 0x0210CFFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov17_0210ebac
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DWCi_CEINlSet
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_CEINlSetExObj

	arm_func_start DWCi_CEINlSetExCell
DWCi_CEINlSetExCell: ; 0x0210D028
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0210D06C ; =dwcutil_File
	mov r6, r0
	mov r5, r1
	ldr r3, [r3, r6, lsl #2]
	mov r1, r5, lsl #3
	ldrh r1, [r3, r1]
	bl DWCi_CELLlForm
	mov r1, #0
	mov r4, r0
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl DWCi_CEINlSet
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0210D06C: .word dwcutil_File
	arm_func_end DWCi_CEINlSetExCell

	arm_func_start DWCi_QUElForm
DWCi_QUElForm: ; 0x0210D070
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #1
	mov r0, r0, lsl #2
	add r0, r0, #8
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	add r1, r4, #1
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_QUElForm

	arm_func_start DWCi_QUElFormEx
DWCi_QUElFormEx: ; 0x0210D0A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl DWCi_QUElForm
	cmp r6, #0
	mov r2, #0
	ble _0210D0DC
_0210D0C4:
	add r1, r0, r2, lsl #2
	add r2, r2, #1
	str r5, [r1, #4]
	cmp r2, r6
	add r5, r5, r4
	blt _0210D0C4
_0210D0DC:
	strb r6, [r0, #3]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_QUElFormEx

	arm_func_start DWCi_QUElDelete
DWCi_QUElDelete: ; 0x0210D0E4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_QUElDelete

	arm_func_start DWCi_QUElPushBack
DWCi_QUElPushBack: ; 0x0210D100
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldrb r2, [r5, #3]
	mov r6, r0
	ldrh r1, [r5]
	add r0, r2, #1
	bl FX_ModS32
	ldrb r1, [r5, #2]
	mov r7, r0
	cmp r7, r1
	bne _0210D13C
	bl OS_Terminate
_0210D13C:
	ldrb r1, [r5, #3]
	mov r0, r6
	add r1, r5, r1, lsl #2
	str r4, [r1, #4]
	strb r7, [r5, #3]
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWCi_QUElPushBack

	arm_func_start DWCi_QUElPopBack
DWCi_QUElPopBack: ; 0x0210D158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, #0
	bl OS_DisableIrqMask
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #2]
	mov r5, r0
	cmp r1, r2
	beq _0210D1A0
	ldrh r1, [r6]
	add r0, r2, r1
	sub r0, r0, #1
	bl FX_ModS32
	and r1, r0, #0xff
	strb r0, [r6, #3]
	add r0, r6, r1, lsl #2
	ldr r4, [r0, #4]
_0210D1A0:
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_QUElPopBack

	arm_func_start DWCi_EFFlInit
DWCi_EFFlInit: ; 0x0210D1B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x18
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210D1F8 ; =0x021162DC
	mov r5, #0x3f
	mov r4, #0x10
	ldr r6, _0210D1FC ; =0x04000050
	str r0, [r1]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl G2x_SetBlendBrightness_
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x1000
	bl G2x_SetBlendBrightness_
	ldmfd sp!, {r4, r5, r6, pc}
_0210D1F8: .word ov17_021162DC
_0210D1FC: .word 0x04000050
	arm_func_end DWCi_EFFlInit

	arm_func_start DWCi_EFFlEnd
DWCi_EFFlEnd: ; 0x0210D200
	ldr r0, _0210D20C ; =0x021162DC
	ldr r12, _0210D210 ; =DWCi_HEAPlFree_
	bx r12
_0210D20C: .word ov17_021162DC
_0210D210: .word DWCi_HEAPlFree_
	arm_func_end DWCi_EFFlEnd

	arm_func_start FUN_ov17_0210d214
FUN_ov17_0210d214: ; 0x0210D214
	cmp r0, #1
	ldreq r0, _0210D234 ; =0x021162DC
	ldreq r0, [r0]
	ldrne r0, _0210D234 ; =0x021162DC
	ldrne r0, [r0]
	addne r0, r0, #0xc
	ldrb r0, [r0, #9]
	bx lr
_0210D234: .word ov17_021162DC
	arm_func_end FUN_ov17_0210d214

	arm_func_start FUN_ov17_0210d238
FUN_ov17_0210d238: ; 0x0210D238
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210D2EC ; =0x021126E8
	mov r6, r0
	ldrb r0, [r4, #3]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	strb r0, [sp, #3]
	cmp r1, #1
	ldrb r7, [r4, #2]
	ldreq r0, _0210D2F0 ; =0x021162DC
	mov r5, r3
	ldreq r4, [r0]
	ldrne r0, _0210D2F0 ; =0x021162DC
	strb lr, [sp]
	ldrne r0, [r0]
	strb r12, [sp, #1]
	addne r4, r0, #0xc
	ldrb r0, [r4, #9]
	strb r7, [sp, #2]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
	cmp r1, #1
	mov r1, r2
	ldrsb r2, [r0, r6]
	bne _0210D2AC
	ldr r0, _0210D2F4 ; =0x04001050
	b _0210D2B0
_0210D2AC:
	ldr r0, _0210D2F8 ; =0x04000050
_0210D2B0:
	bl G2x_SetBlendBrightness_
	mov r7, #1
	ldr r1, _0210D2FC ; =FUN_ov17_0210d300
	mov r0, r7
	mov r2, r4
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strb r6, [r4, #8]
	strh r5, [r4, #6]
	mov r0, r7
	strb r7, [r4, #9]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210D2EC: .word ov17_021126E8
_0210D2F0: .word ov17_021162DC
_0210D2F4: .word 0x04001050
_0210D2F8: .word 0x04000050
_0210D2FC: .word FUN_ov17_0210d300
	arm_func_end FUN_ov17_0210d238

	arm_func_start FUN_ov17_0210d300
FUN_ov17_0210d300: ; 0x0210D300
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210D410 ; =0x021126E4
	ldr r2, _0210D414 ; =0x021126E0
	mov r4, r1
	ldrsh r1, [r4, #4]
	ldrb r9, [r3]
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb lr, [r2]
	ldrb r12, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	add r5, r1, #1
	strb r6, [sp, #7]
	strh r5, [r4, #4]
	ldrsh r10, [r4, #4]
	mov r5, r0
	ldrh r1, [r4, #6]
	mov r0, r10, lsl #4
	strb r9, [sp, #4]
	strb r8, [sp, #5]
	strb r7, [sp, #6]
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	add r6, sp, #4
	bl FX_DivS32
	ldrb r2, [r4, #8]
	mov r1, r0
	ldrb r0, [r6, r2]
	tst r0, #1
	rsbne r1, r1, #0x10
	tst r0, #0x10
	ldr r0, _0210D418 ; =0x021162DC
	rsbne r1, r1, #0
	ldr r0, [r0]
	cmp r4, r0
	bne _0210D3AC
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3B0
_0210D3AC:
	ldr r0, _0210D420 ; =0x04000050
_0210D3B0:
	bl G2x_ChangeBlendBrightness_
	ldrsh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0210D418 ; =0x021162DC
	ldrb r2, [r4, #8]
	ldr r0, [r0]
	add r1, sp, #0
	cmp r4, r0
	bne _0210D3E8
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3EC
_0210D3E8:
	ldr r0, _0210D420 ; =0x04000050
_0210D3EC:
	ldrsb r1, [r1, r2]
	bl G2x_ChangeBlendBrightness_
	mov r2, #0
	mov r1, r5
	mov r0, #1
	strb r2, [r4, #9]
	bl DWCi_TSKlDelete
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210D410: .word ov17_021126E4
_0210D414: .word ov17_021126E0
_0210D418: .word ov17_021162DC
_0210D41C: .word 0x04001050
_0210D420: .word 0x04000050
	arm_func_end FUN_ov17_0210d300

	arm_func_start FUN_ov17_0210d424
FUN_ov17_0210d424: ; 0x0210D424
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0210D478 ; =0x021162DC
	mov r6, r0
	ldr r5, [r1]
	ldrb r0, [r5, #9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #1
	ldr r1, _0210D47C ; =FUN_ov17_0210d480
	mov r0, r4
	mov r2, r5
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	mov r0, r4
	strb r4, [r5, #9]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D478: .word ov17_021162DC
_0210D47C: .word FUN_ov17_0210d480
	arm_func_end FUN_ov17_0210d424

	arm_func_start FUN_ov17_0210d480
FUN_ov17_0210d480: ; 0x0210D480
	stmfd sp!, {r3, lr}
	ldrsh r3, [r1, #4]
	ldrh r2, [r1, #6]
	add r3, r3, #1
	strh r3, [r1, #4]
	ldrsh r3, [r1, #4]
	cmp r3, r2
	ldmltfd sp!, {r3, pc}
	mov r2, #0
	strb r2, [r1, #9]
	mov r1, r0
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210d480

	arm_func_start DWCi_FNTlInit
DWCi_FNTlInit: ; 0x0210D4B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r0, #0x680
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _0210D58C ; =0x021162E0
	add r1, r0, #0x10
	str r0, [r4]
	mov r0, #0x20
	mov r2, #0x30
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	str r0, [r1, #0x670]
	bl DWCi_Language
	cmp r0, #6
	mov r8, #0
	mov r5, #4
	bne _0210D544
	ldr r7, _0210D590 ; =0x02113C54
	mov r6, r8
_0210D504:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl NNS_G2dFontInitUTF16
	add r8, r8, #1
	cmp r8, #2
	blt _0210D504
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D544:
	ldr r7, _0210D594 ; =0x02113C5C
	mov r6, r8
_0210D54C:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	mov r2, r5
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl NNS_G2dFontInitUTF16
	add r8, r8, #1
	cmp r8, #2
	blt _0210D54C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D58C: .word ov17_021162E0
_0210D590: .word ov17_02113C54
_0210D594: .word ov17_02113C5C
	arm_func_end DWCi_FNTlInit

	arm_func_start DWCi_FNTlEnd
DWCi_FNTlEnd: ; 0x0210D598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210D5DC ; =0x021162E0
	mov r5, #0
_0210D5A4:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x674]
	bl DWCi_ARClRelease
	add r5, r5, #1
	cmp r5, #2
	blt _0210D5A4
	ldr r0, _0210D5DC ; =0x021162E0
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl DWCi_QUElDelete
	ldr r0, _0210D5E0 ; =0x021162E0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_0210D5DC: .word ov17_021162E0
_0210D5E0: .word ov17_021162E0
	arm_func_end DWCi_FNTlEnd

	arm_func_start FUN_ov17_0210d5e4
FUN_ov17_0210d5e4: ; 0x0210D5E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0210D6BC ; =0x021162E0
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	ldr r0, [r0, #0x670]
	mov r5, r2
	mov r8, r3
	bl DWCi_QUElPopBack
	mov r4, r0
	strb r6, [r4, #0x2e]
	mul r1, r6, r5
	mov r2, r8
	strb r5, [r4, #0x2f]
	mov r0, r7
	add r3, sp, #4
	bl FUN_ov17_0210ecf0
	str r0, [r4, #0x28]
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r4, #0x2c]
	mov r1, r5
	bl NNSi_G2dCalcRequiredOBJ
	ldr r1, [sp, #0x20]
	mov r12, #0x6600000
	str r0, [r1]
	cmp r7, #1
	ldr r7, [sp, #4]
	mov r1, #4
	movne r12, #0x6400000
	str r1, [sp]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, r12, r7, lsl #7
	bl NNS_G2dCharCanvasInitForOBJ1D
	ldr r1, [r4, #0x14]
	mov r0, r4
	ldr r2, [r1, #4]
	mov r1, #0
	blx r2
	ldr r0, _0210D6BC ; =0x021162E0
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, #1
	str r4, [r4, #0x18]
	add r0, r0, r2, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D6BC: .word ov17_021162E0
	arm_func_end FUN_ov17_0210d5e4

	arm_func_start FUN_ov17_0210d6c0
FUN_ov17_0210d6c0: ; 0x0210D6C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl FUN_ov17_0210ee54
	ldr r0, _0210D6E8 ; =0x021162E0
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r4, pc}
_0210D6E8: .word ov17_021162E0
	arm_func_end FUN_ov17_0210d6c0

	arm_func_start DWCi_FNTlFormBgEx
DWCi_FNTlFormBgEx: ; 0x0210D6EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, _0210D834 ; =0x021162E0
	ldr r3, _0210D838 ; =0x021126F2
	mov r4, r8, lsl #2
	ldr r2, _0210D83C ; =0x021126F0
	ldrh r6, [r3, r4]
	ldrh r7, [r2, r4]
	ldr r0, [r0]
	mov r4, r1
	add r3, r0, #0x610
	mov r0, #0x30
	mul r2, r7, r6
	mla r5, r8, r0, r3
	mov r0, r2, lsl #5
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	str r0, [r5, #0x28]
	cmp r8, #1
	ldr r0, _0210D840 ; =0x0000FFBF
	bne _0210D74C
	ldr r2, _0210D844 ; =0x04001008
	b _0210D750
_0210D74C:
	ldr r2, _0210D848 ; =0x04000008
_0210D750:
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	ldrh r0, [r2]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r2]
	mov r0, #4
	str r0, [sp]
	ldr r1, [r5, #0x28]
	mov r0, r5
	mov r2, r7
	mov r3, r6
	bl NNS_G2dCharCanvasInitForBG
	ldr r0, _0210D834 ; =0x021162E0
	mov r1, #1
	ldr r0, [r0]
	cmp r8, #1
	str r5, [r5, #0x18]
	add r0, r0, r4, lsl #3
	str r0, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	bne _0210D7B8
	bl G2S_GetBG0ScrPtr
	b _0210D7BC
_0210D7B8:
	bl G2_GetBG0ScrPtr
_0210D7BC:
	ldr r1, _0210D84C ; =0x021126EC
	mov r2, r8, lsl #1
	mov r4, #0
	ldrh r12, [r1, r2]
	str r4, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, r7
	mov r2, r6
	mov r3, r4
	str r12, [sp, #8]
	mov r6, #0xf
	str r6, [sp, #0xc]
	bl NNS_G2dMapScrToCharText
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dba8
	ldr r0, _0210D834 ; =0x021162E0
	ldr r1, _0210D850 ; =FUN_ov17_0210d854
	ldr r2, [r0]
	mov r0, #1
	add r2, r2, #0x27c
	add r2, r2, #0x400
	add r2, r2, r8
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r5, #0x2c]
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D834: .word ov17_021162E0
_0210D838: .word ov17_021126F2
_0210D83C: .word ov17_021126F0
_0210D840: .word 0x0000FFBF
_0210D844: .word 0x04001008
_0210D848: .word 0x04000008
_0210D84C: .word ov17_021126EC
_0210D850: .word FUN_ov17_0210d854
	arm_func_end DWCi_FNTlFormBgEx

	arm_func_start FUN_ov17_0210d854
FUN_ov17_0210d854: ; 0x0210D854
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0210D8D8 ; =0x021162E0
	ldr r1, [r5]
	add r0, r1, #0x27c
	add r0, r0, #0x400
	cmp r4, r0
	bne _0210D8A8
	mov r6, #0x6000
	ldr r0, [r1, #0x638]
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5]
	mov r2, r6
	ldr r0, [r0, #0x638]
	mov r1, #0
	bl GX_LoadBG0Char
	b _0210D8CC
_0210D8A8:
	mov r6, #0x3000
	ldr r0, [r1, #0x668]
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5]
	mov r1, r6
	ldr r0, [r0, #0x668]
	mov r2, r6
	bl GXS_LoadBG0Char
_0210D8CC:
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D8D8: .word ov17_021162E0
	arm_func_end FUN_ov17_0210d854

	arm_func_start FUN_ov17_0210d8dc
FUN_ov17_0210d8dc: ; 0x0210D8DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bl DWCi_TSKlDeleteEx
	ldr r0, _0210D938 ; =0x021162E0
	ldr r0, [r0]
	add r0, r0, #0x610
	cmp r4, r0
	bne _0210D918
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	b _0210D928
_0210D918:
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x3000
_0210D928:
	bl MIi_CpuClear16
	add r0, r4, #0x28
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_0210D938: .word ov17_021162E0
	arm_func_end FUN_ov17_0210d8dc

	arm_func_start DWCi_FNTlDeleteBgLcd
DWCi_FNTlDeleteBgLcd: ; 0x0210D93C
	ldr r2, _0210D958 ; =0x021162E0
	mov r1, #0x30
	ldr r2, [r2]
	ldr r12, _0210D95C ; =FUN_ov17_0210d8dc
	add r2, r2, #0x610
	mla r0, r1, r0, r2
	bx r12
_0210D958: .word ov17_021162E0
_0210D95C: .word FUN_ov17_0210d8dc
	arm_func_end DWCi_FNTlDeleteBgLcd

	arm_func_start DWCi_FNTlDraw
DWCi_FNTlDraw: ; 0x0210D960
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r12, [r0, #0x1c]
	add r4, sp, #0xc
	ldr r12, [r12]
	mov lr, #0
	ldr r12, [r12, #8]
	strb lr, [r4]
	ldrb r12, [r12, #7]
	strb lr, [r4, #1]
	cmp r12, #7
	addls pc, pc, r12, lsl #2
	b _0210D9D8
_0210D994: ; jump table
	b _0210D9B4 ; case 0
	b _0210D9C0 ; case 1
	b _0210D9C0 ; case 2
	b _0210D9C8 ; case 3
	b _0210D9C8 ; case 4
	b _0210D9D0 ; case 5
	b _0210D9D0 ; case 6
	b _0210D9B4 ; case 7
_0210D9B4:
	mov r12, #1
_0210D9B8:
	strb r12, [sp, #0xc]
	b _0210D9D8
_0210D9C0:
	mov r12, #1
	b _0210D9D4
_0210D9C8:
	sub r12, lr, #1
	b _0210D9B8
_0210D9D0:
	sub r12, lr, #1
_0210D9D4:
	strb r12, [sp, #0xd]
_0210D9D8:
	ldr lr, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	str lr, [sp]
	ldrb lr, [sp, #0xc]
	str r12, [sp, #4]
	ldrb r12, [sp, #0xd]
	strb lr, [sp, #8]
	add r0, r0, #0x18
	strb r12, [sp, #9]
	bl NNSi_G2dTextCanvasDrawText
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_FNTlDraw

	arm_func_start FUN_ov17_0210da08
FUN_ov17_0210da08: ; 0x0210DA08
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrh r12, [sp, #0x10]
	str r3, [sp]
	ldr r3, _0210DA40 ; =0x021162E0
	str r12, [sp, #4]
	ldr lr, [r3]
	ldr r12, [sp, #0x14]
	mov r3, r2
	mov r2, r1
	add r1, lr, r12, lsl #3
	bl NNS_G2dCharCanvasDrawChar
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210DA40: .word ov17_021162E0
	arm_func_end FUN_ov17_0210da08

	arm_func_start FUN_ov17_0210da44
FUN_ov17_0210da44: ; 0x0210DA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x34]
	mov r9, r1
	ldrh r1, [r6]
	ldr r7, [sp, #0x30]
	ldr r5, [sp, #0x38]
	cmp r1, #0
	mov r10, r0
	mov r8, r2
	mov r11, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210DA78:
	ldr r0, _0210DAE8 ; =0x021162E0
	ldr r0, [r0]
	add r4, r0, r5, lsl #3
	mov r0, r4
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _0210DAEC ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r4]
	ldreqh r1, [r0, #2]
	mov r0, r4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrh r1, [r6]
	mov r2, r0
	mov r0, r10
	stmia sp, {r1, r5}
	ldrsb r1, [r2, #2]
	mov r2, r8
	mov r3, r11
	sub r1, r7, r1
	add r1, r9, r1, asr #1
	bl FUN_ov17_0210da08
	ldrh r1, [r6, #2]!
	add r9, r9, r7
	cmp r1, #0
	bne _0210DA78
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210DAE8: .word ov17_021162E0
_0210DAEC: .word 0x0000FFFF
	arm_func_end FUN_ov17_0210da44

	arm_func_start DWCi_FNTlDrawRect
DWCi_FNTlDrawRect: ; 0x0210DAF0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r12, [r0, #0x1c]
	add r4, sp, #0x14
	ldr r12, [r12]
	mov lr, #0
	ldr r12, [r12, #8]
	strb lr, [r4]
	ldrb r12, [r12, #7]
	strb lr, [r4, #1]
	cmp r12, #7
	addls pc, pc, r12, lsl #2
	b _0210DB68
_0210DB24: ; jump table
	b _0210DB44 ; case 0
	b _0210DB50 ; case 1
	b _0210DB50 ; case 2
	b _0210DB58 ; case 3
	b _0210DB58 ; case 4
	b _0210DB60 ; case 5
	b _0210DB60 ; case 6
	b _0210DB44 ; case 7
_0210DB44:
	mov r12, #1
_0210DB48:
	strb r12, [sp, #0x14]
	b _0210DB68
_0210DB50:
	mov r12, #1
	b _0210DB64
_0210DB58:
	sub r12, lr, #1
	b _0210DB48
_0210DB60:
	sub r12, lr, #1
_0210DB64:
	strb r12, [sp, #0x15]
_0210DB68:
	ldr lr, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str lr, [sp]
	ldr lr, [sp, #0x28]
	str r12, [sp, #4]
	ldr r12, [sp, #0x2c]
	str lr, [sp, #8]
	ldrb lr, [sp, #0x14]
	str r12, [sp, #0xc]
	ldrb r12, [sp, #0x15]
	strb lr, [sp, #0x10]
	add r0, r0, #0x18
	strb r12, [sp, #0x11]
	bl NNSi_G2dTextCanvasDrawTextRect
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_FNTlDrawRect

	arm_func_start FUN_ov17_0210dba8
FUN_ov17_0210dba8: ; 0x0210DBA8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210dba8

	arm_func_start FUN_ov17_0210dbbc
FUN_ov17_0210dbbc: ; 0x0210DBBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r3
	mov r4, r0
	mov r7, #0
	mov r10, r1
	mov r0, r8
	mov r1, r7
	mov r9, r2
	bl DWCi_CELLlGetObj
	sub r5, r7, #1
	mov r6, r0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r7
	bl DWCi_CELLlSetEffect
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, #0xf
	bl DWCi_CELLlSetPalette
	mov r0, r8
	mov r1, r5
	ldr r2, [sp, #0x30]
	bl DWCi_CELLlSetPriority
	str r9, [sp]
	str r7, [sp, #4]
	mov r0, r6
	mov r3, r10
	ldrh r2, [r4, #0x2c]
	mov r1, #2
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x2e]
	ldrb r2, [r4, #0x2f]
	bl NNS_G2dArrangeOBJ1D
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov17_0210dbbc

	arm_func_start DWCi_FNTlRenewBg
DWCi_FNTlRenewBg: ; 0x0210DC58
	ldr r1, _0210DC78 ; =0x021162E0
	ldr r2, [r1]
	add r1, r2, #0x610
	cmp r0, r1
	mov r0, #1
	streqb r0, [r2, #0x67c]
	strneb r0, [r2, #0x67d]
	bx lr
_0210DC78: .word ov17_021162E0
	arm_func_end DWCi_FNTlRenewBg

	arm_func_start FUN_ov17_0210dc7c
FUN_ov17_0210dc7c: ; 0x0210DC7C
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	arm_func_end FUN_ov17_0210dc7c

	arm_func_start FUN_ov17_0210dc88
FUN_ov17_0210dc88: ; 0x0210DC88
	ldr r12, [sp]
	strh r0, [r12]
	strh r1, [r12, #2]
	strh r2, [r12, #4]
	strh r3, [r12, #6]
	bx lr
	arm_func_end FUN_ov17_0210dc88

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

	arm_func_start FUN_ov17_0210dcd0
FUN_ov17_0210dcd0: ; 0x0210DCD0
	cmp r0, #1
	bne _0210DCFC
	ldr r3, _0210DD20 ; =0x04001000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DCFC:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD20: .word 0x04001000
	arm_func_end FUN_ov17_0210dcd0

	arm_func_start FUN_ov17_0210dd24
FUN_ov17_0210dd24: ; 0x0210DD24
	cmp r0, #1
	bne _0210DD54
	ldr r3, _0210DD7C ; =0x04001000
	mvn r0, r1
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	bic r1, r1, #0x1f00
	and r0, r0, r2, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD54:
	mov r3, #0x4000000
	ldr r0, [r3]
	ldr r2, [r3]
	and r12, r0, #0x1f00
	mvn r0, r1
	bic r1, r2, #0x1f00
	and r0, r0, r12, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD7C: .word 0x04001000
	arm_func_end FUN_ov17_0210dd24

	arm_func_start FUN_ov17_0210dd80
FUN_ov17_0210dd80: ; 0x0210DD80
	cmp r0, #1
	bne _0210DE00
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DDD0
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE78 ; =0x04001040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DDD0:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE7C ; =0x04001042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE00:
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DE48
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE80 ; =0x04000040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE48:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE84 ; =0x04000042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE78: .word 0x04001040
_0210DE7C: .word 0x04001042
_0210DE80: .word 0x04000040
_0210DE84: .word 0x04000042
	arm_func_end FUN_ov17_0210dd80

	arm_func_start FUN_ov17_0210de88
FUN_ov17_0210de88: ; 0x0210DE88
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_0210DE94: ; jump table
	b _0210DEA4 ; case 0
	b _0210DEF4 ; case 1
	b _0210DF44 ; case 2
	b _0210DF94 ; case 3
_0210DEA4:
	cmp r0, #1
	bne _0210DED0
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DED0:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DEF4:
	cmp r0, #1
	bne _0210DF20
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF20:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF44:
	cmp r0, #1
	bne _0210DF70
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF70:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF94:
	cmp r0, #1
	bne _0210DFC0
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFC0:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFE4: .word 0x04001048
_0210DFE8: .word 0x04000048
_0210DFEC: .word 0x0400104A
_0210DFF0: .word 0x0400004A
	arm_func_end FUN_ov17_0210de88

	arm_func_start DWCi_HEAPlInit
DWCi_HEAPlInit: ; 0x0210DFF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r4, #0x40000
	mov r6, r0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_FndCreateExpHeapEx
	ldr r1, _0210E038 ; =0x021162E4
	cmp r0, #0
	str r0, [r1]
	ldmnefd sp!, {r4, r5, r6, pc}
	bl OS_Terminate
	ldmfd sp!, {r4, r5, r6, pc}
_0210E038: .word ov17_021162E4
	arm_func_end DWCi_HEAPlInit

	arm_func_start DWCi_HEAPlEnd
DWCi_HEAPlEnd: ; 0x0210E03C
	stmfd sp!, {r4, lr}
	ldr r4, _0210E058 ; =0x021162E4
	ldr r0, [r4]
	bl NNS_FndDestroyExpHeap
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E058: .word ov17_021162E4
	arm_func_end DWCi_HEAPlEnd

	arm_func_start FUN_ov17_0210e05c
FUN_ov17_0210e05c: ; 0x0210E05C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldr r1, _0210E0A4 ; =0x021162E4
	mov r5, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, r4
	bl NNS_FndAllocFromExpHeapEx
	movs r4, r0
	bne _0210E094
	bl OS_Terminate
_0210E094:
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0210E0A4: .word ov17_021162E4
	arm_func_end FUN_ov17_0210e05c

	arm_func_start DWCi_HEAPlAllocEx
DWCi_HEAPlAllocEx: ; 0x0210E0A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_0210e05c
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_HEAPlAllocEx

	arm_func_start DWCi_HEAPlFree_
DWCi_HEAPlFree_: ; 0x0210E0CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl OS_DisableIrqMask
	ldr r1, [r5]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0210E10C ; =0x021162E4
	ldr r0, [r0]
	bl NNS_FndFreeToExpHeap
	mov r0, r4
	bl OS_EnableIrqMask
	mov r0, #0
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
_0210E10C: .word ov17_021162E4
	arm_func_end DWCi_HEAPlFree_

	arm_func_start FUN_ov17_0210e110
FUN_ov17_0210e110: ; 0x0210E110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl OS_DisableIrqMask
	mov r4, r0
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0210E148 ; =0x021162E4
	mov r1, r5
	ldr r0, [r0]
	bl NNS_FndFreeToExpHeap
	mov r0, r4
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, pc}
_0210E148: .word ov17_021162E4
	arm_func_end FUN_ov17_0210e110

	arm_func_start DWCi_IPTlInit
DWCi_IPTlInit: ; 0x0210E14C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r0, #0x3a
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210E1C8 ; =0x021162E8
	str r0, [r1, #4]
	add r0, sp, #0
	bl TP_GetUserInfo
	cmp r0, #0
	bne _0210E17C
	bl OS_Terminate
_0210E17C:
	add r0, sp, #0
	bl TP_SetCalibrateParam
	ldr r1, _0210E1C8 ; =0x021162E8
	mov r0, #0
	ldr r2, [r1, #4]
	mov r1, #4
	mov r3, #5
	bl TP_RequestAutoSamplingStartAsync
	mov r4, #2
	mov r0, r4
	bl TP_WaitBusy
	mov r0, r4
	bl TP_CheckError
	cmp r0, #0
	beq _0210E1BC
	bl OS_Terminate
_0210E1BC:
	bl DWCi_IPTlRead
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210E1C8: .word ov17_021162E8
	arm_func_end DWCi_IPTlInit

	arm_func_start DWCi_IPTlEnd
DWCi_IPTlEnd: ; 0x0210E1CC
	stmfd sp!, {r4, lr}
	mov r4, #4
_0210E1D4:
	bl TP_RequestAutoSamplingStopAsync
	mov r0, r4
	bl TP_WaitBusy
	mov r0, r4
	bl TP_CheckError
	cmp r0, #0
	bne _0210E1D4
	ldr r0, _0210E1FC ; =0x021162EC
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_0210E1FC: .word ov17_021162EC
	arm_func_end DWCi_IPTlEnd

	arm_func_start DWCi_IPTlRead
DWCi_IPTlRead: ; 0x0210E200
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210e210
	bl FUN_ov17_0210e320
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_IPTlRead

	arm_func_start FUN_ov17_0210e210
FUN_ov17_0210e210: ; 0x0210E210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210E310 ; =0x04000130
	ldr r1, _0210E314 ; =0x02FFFFA8
	ldrh r2, [r0]
	ldrh r0, [r1]
	ldr r4, _0210E318 ; =0x021162E8
	mov r3, #0
	orr r0, r2, r0
	eor r0, r0, r1, lsr #12
	and r0, r0, r1, lsr #12
	mov r1, r0, lsl #0x10
	mov r5, r1, lsr #0x10
	and r2, r5, #0x40
	and r5, r5, #0x20
	mvn r2, r2, lsl #1
	ldr r0, [r4, #4]
	and r1, r2, r1, lsr #16
	mvn r5, r5, asr #1
	and r1, r5, r1
	mov r1, r1, lsl #0x10
	ldrh r2, [r0, #0x30]
	mov r12, r1, lsr #0x10
	mov r5, #0x28
	eor r2, r2, r1, lsr #16
	and r2, r2, r1, lsr #16
	strh r2, [r0, #0x32]
	ldrh r2, [r0, #0x30]
	ldr r0, [r4, #4]
	eor r1, r2, r1, lsr #16
	and r1, r2, r1
	strh r1, [r0, #0x36]
	ldr r0, [r4, #4]
	mov r2, #1
	strh r12, [r0, #0x30]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x34]
	ldr r0, _0210E31C ; =0x021162F0
	mov r1, r3
_0210E2AC:
	mov r6, r2, lsl r3
	mov lr, r6, lsl #0x10
	tst r12, lr, lsr #16
	streqb r1, [r0, r3]
	beq _0210E300
	ldrb r6, [r0, r3]
	add r7, r6, #1
	and r6, r7, #0xff
	strb r7, [r0, r3]
	cmp r6, #0x28
	ldreq r7, [r4, #4]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
	beq _0210E300
	cmp r6, #0x2f
	ldreq r7, [r4, #4]
	streqb r5, [r0, r3]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
_0210E300:
	add r3, r3, #1
	cmp r3, #0xe
	blt _0210E2AC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210E310: .word 0x04000130
_0210E314: .word 0x02FFFFA8
_0210E318: .word ov17_021162E8
_0210E31C: .word ov17_021162F0
	arm_func_end FUN_ov17_0210e210

	arm_func_start FUN_ov17_0210e320
FUN_ov17_0210e320: ; 0x0210E320
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _0210E4B4 ; =0x021162E8
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x38]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r6, #1
	moveq r6, #0
	bl TP_GetLatestIndexInAuto
	ldr r7, _0210E4B4 ; =0x021162E8
	mov r4, r5
	ldr r3, [r7, #4]
	mov r8, #5
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r3, #0x2c]
	strh r1, [r3, #0x2e]
_0210E36C:
	ldr r1, [r7, #4]
	add r1, r1, r0, lsl #3
	ldrh r2, [r1, #4]
	cmp r2, #1
	ldreqh r2, [r1, #6]
	cmpeq r2, #0
	bne _0210E3B0
	add r0, sp, #0
	mov r5, #1
	bl TP_GetCalibratedPoint
	ldr r1, _0210E4B4 ; =0x021162E8
	ldrh r0, [sp]
	ldr r2, [r1, #4]
	ldrh r1, [sp, #2]
	add r2, r2, #0x28
	bl FUN_ov17_0210dc7c
	b _0210E3C8
_0210E3B0:
	mov r1, r8
	add r4, r4, #1
	add r0, r0, #4
	bl FX_ModS32
	cmp r4, #4
	blt _0210E36C
_0210E3C8:
	ldr r0, _0210E4B4 ; =0x021162E8
	eor r7, r5, r6
	ldr r4, [r0, #4]
	and r1, r5, r7
	ldrb r3, [r4, #0x38]
	and r2, r1, #0xff
	and r1, r6, r7
	bic r3, r3, #2
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #30
	strb r2, [r4, #0x38]
	ldr r4, [r0, #4]
	and r1, r1, #0xff
	ldrb r3, [r4, #0x38]
	mov r2, r1, lsl #0x1f
	cmp r5, #0
	bic r3, r3, #8
	orr r2, r3, r2, lsr #28
	strb r2, [r4, #0x38]
	ldr r3, [r0, #4]
	and r1, r5, #1
	ldrb r2, [r3, #0x38]
	addeq sp, sp, #8
	bic r2, r2, #1
	orr r1, r2, r1
	strb r1, [r3, #0x38]
	ldr r3, [r0, #4]
	ldrb r2, [r3, #0x38]
	mov r1, r2, lsl #0x1e
	mov r1, r1, lsr #0x1f
	bic r2, r2, #4
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #29
	strb r1, [r3, #0x38]
	moveq r1, #0
	streqb r1, [r0, #1]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	cmp r1, #0x28
	strb r2, [r0, #1]
	ldreq r1, [r0, #4]
	addeq sp, sp, #8
	ldreqb r0, [r1, #0x38]
	orreq r0, r0, #4
	streqb r0, [r1, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	mov r1, #0x28
	ldrb r2, [r3, #0x38]
	orr r2, r2, #4
	strb r2, [r3, #0x38]
	strb r1, [r0, #1]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210E4B4: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e320

	arm_func_start FUN_ov17_0210e4b8
FUN_ov17_0210e4b8: ; 0x0210E4B8
	ldr r1, _0210E4F0 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E4F4 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x32]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E4F0: .word 0x02FFFFA8
_0210E4F4: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e4b8

	arm_func_start FUN_ov17_0210e4f8
FUN_ov17_0210e4f8: ; 0x0210E4F8
	ldr r1, _0210E530 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E534 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x34]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E530: .word 0x02FFFFA8
_0210E534: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e4f8

	arm_func_start FUN_ov17_0210e538
FUN_ov17_0210e538: ; 0x0210E538
	ldr r1, _0210E570 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E574 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x36]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E570: .word 0x02FFFFA8
_0210E574: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e538

	arm_func_start FUN_ov17_0210e578
FUN_ov17_0210e578: ; 0x0210E578
	ldr r1, _0210E5F8 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E5FC ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E5F8: .word 0x02FFFFA8
_0210E5FC: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e578

	arm_func_start DWCi_TPlCheckTrigger
DWCi_TPlCheckTrigger: ; 0x0210E600
	ldr r1, _0210E680 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E684 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E680: .word 0x02FFFFA8
_0210E684: .word ov17_021162E8
	arm_func_end DWCi_TPlCheckTrigger

	arm_func_start FUN_ov17_0210e688
FUN_ov17_0210e688: ; 0x0210E688
	ldr r1, _0210E708 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E70C ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1d
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E708: .word 0x02FFFFA8
_0210E70C: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e688

	arm_func_start FUN_ov17_0210e710
FUN_ov17_0210e710: ; 0x0210E710
	ldr r1, _0210E790 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E794 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E790: .word 0x02FFFFA8
_0210E794: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e710

	arm_func_start FUN_ov17_0210e798
FUN_ov17_0210e798: ; 0x0210E798
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _0210E7F4 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #6]
	add r0, sp, #0
	add r2, r12, r2
	add r1, r3, r1
	strh r12, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r1, [sp, #6]
	bl DWCi_TPlCheckTrigger
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210E7F4: .word 0x02FFFFA8
	arm_func_end FUN_ov17_0210e798

	arm_func_start FUN_ov17_0210e7f8
FUN_ov17_0210e7f8: ; 0x0210E7F8
	ldr r1, _0210E854 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E858 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrneh r2, [r3, #0x28]
	ldrneh r1, [r3, #0x2a]
	strneh r2, [r0]
	strneh r1, [r0, #2]
	movne r0, #1
	bxne lr
	ldrh r2, [r3, #0x2c]
	ldrh r1, [r3, #0x2e]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #0
	bx lr
_0210E854: .word 0x02FFFFA8
_0210E858: .word ov17_021162E8
	arm_func_end FUN_ov17_0210e7f8

	arm_func_start DWCi_IPTlCheckFold
DWCi_IPTlCheckFold: ; 0x0210E85C
	stmfd sp!, {r4, lr}
	ldr r4, _0210E900 ; =0x021162E8
	ldrb r0, [r4]
	cmp r0, #0
	ldr r0, _0210E904 ; =0x02FFFFA8
	beq _0210E8BC
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmnefd sp!, {r4, pc}
	mov r0, #1
	bl PM_SetLCDPower
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E8BC:
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmeqfd sp!, {r4, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOff
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	bl PM_SetLCDPower
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E900: .word ov17_021162E8
_0210E904: .word 0x02FFFFA8
_0210E908: .word 0x04001000
	arm_func_end DWCi_IPTlCheckFold

	arm_func_start DWCi_ITRlIntr
DWCi_ITRlIntr: ; 0x0210E90C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0210E968 ; =0x04000210
	ldr r4, _0210E96C ; =0x02116300
	ldr r1, [r6]
	ldr r0, _0210E970 ; =0x00040018
	str r1, [r4, #4]
	bl OS_SetIrqMask
	mov r5, #1
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r5
	bl OS_GetIrqFunction
	str r0, [r4]
	ldr r1, _0210E974 ; =FUN_ov17_0210e9b0
	mov r0, r5
	bl OS_SetIrqFunction
	mov r0, r5
	bl OS_ResetRequestIrqMask
	sub r1, r6, #8
	ldrh r0, [r1]
	strh r5, [r1]
	bl OS_EnableInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_0210E968: .word 0x04000210
_0210E96C: .word ov17_02116300
_0210E970: .word 0x00040018
_0210E974: .word FUN_ov17_0210e9b0
	arm_func_end DWCi_ITRlIntr

	arm_func_start DWCi_ITRlEnd
DWCi_ITRlEnd: ; 0x0210E978
	stmfd sp!, {r4, lr}
	ldr r2, _0210E9A8 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	ldr r4, _0210E9AC ; =0x02116300
	strh r0, [r2]
	ldr r0, [r4, #4]
	bl OS_SetIrqMask
	ldr r1, [r4]
	mov r0, #1
	bl OS_SetIrqFunction
	ldmfd sp!, {r4, pc}
_0210E9A8: .word 0x04000208
_0210E9AC: .word ov17_02116300
	arm_func_end DWCi_ITRlEnd

	arm_func_start FUN_ov17_0210e9b0
FUN_ov17_0210e9b0: ; 0x0210E9B0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_TSKlAct
	ldr r0, _0210E9D4 ; =OS_IRQTable
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	ldmfd sp!, {r3, pc}
_0210E9D4: .word OS_IRQTable
	arm_func_end FUN_ov17_0210e9b0

	arm_func_start DWCi_LSTlForm
DWCi_LSTlForm: ; 0x0210E9D8
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r2, #0
	str r2, [r0]
	add r1, r0, #8
	str r1, [r0, #4]
	str r0, [r0, #8]
	str r2, [r0, #0xc]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_LSTlForm

	arm_func_start DWCi_LSTlDelete
DWCi_LSTlDelete: ; 0x0210EA04
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_LSTlDelete

	arm_func_start DWCi_LSTlErase
DWCi_LSTlErase: ; 0x0210EA20
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl OS_DisableIrqMask
	ldmia r4, {r2, r3}
	str r3, [r2, #4]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #0
	str r3, [r2]
	str r1, [r4, #4]
	str r1, [r4]
	bl OS_EnableIrqMask
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_LSTlErase

	arm_func_start DWCi_LSTlInsert
DWCi_LSTlInsert: ; 0x0210EA58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldr r1, [r5]
	str r4, [r1, #4]
	ldr r1, [r5]
	stmia r4, {r1, r5}
	str r4, [r5]
	bl OS_EnableIrqMask
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_LSTlInsert

	arm_func_start DWCi_LSTlPushBack
DWCi_LSTlPushBack: ; 0x0210EA88
	ldr r12, _0210EA94 ; =DWCi_LSTlInsert
	add r0, r0, #8
	bx r12
_0210EA94: .word DWCi_LSTlInsert
	arm_func_end DWCi_LSTlPushBack

	arm_func_start DWCi_LSTlPushFront
DWCi_LSTlPushFront: ; 0x0210EA98
	ldr r0, [r0, #4]
	ldr r12, _0210EAA4 ; =DWCi_LSTlInsert
	bx r12
_0210EAA4: .word DWCi_LSTlInsert
	arm_func_end DWCi_LSTlPushFront

	arm_func_start DWCi_OBJlInit
DWCi_OBJlInit: ; 0x0210EAA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210EB2C ; =0x0000080C
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	mov r1, r0
	ldr r4, _0210EB30 ; =0x02116308
	mov r0, #0x200
	mov r2, #0x800
	str r1, [r4]
	bl MIi_CpuClearFast
	mov r7, #0
	mov r6, #0x40
	mov r5, #8
_0210EADC:
	ldr r1, [r4]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #10
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	add r1, r1, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x800]
	cmp r7, #2
	blt _0210EADC
	ldr r1, _0210EB34 ; =FUN_ov17_0210eb38
	mov r0, #1
	mov r2, #0
	mov r3, #0xc8
	bl DWCi_TSKlForm
	ldr r1, _0210EB30 ; =0x02116308
	ldr r1, [r1]
	str r0, [r1, #0x808]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210EB2C: .word 0x0000080C
_0210EB30: .word ov17_02116308
_0210EB34: .word FUN_ov17_0210eb38
	arm_func_end DWCi_OBJlInit

	arm_func_start FUN_ov17_0210eb38
FUN_ov17_0210eb38: ; 0x0210EB38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0210EB7C ; =0x02116308
	mov r1, #0x800
	ldr r0, [r4]
	bl DC_FlushRange
	mov r6, #0
	mov r5, #0x400
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl GX_LoadOAM
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x400
	bl GXS_LoadOAM
	ldmfd sp!, {r4, r5, r6, pc}
_0210EB7C: .word ov17_02116308
	arm_func_end FUN_ov17_0210eb38

	arm_func_start DWCi_OBJlEnd
DWCi_OBJlEnd: ; 0x0210EB80
	stmfd sp!, {r3, lr}
	ldr r1, _0210EBA4 ; =0x02116308
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1, #0x808]
	bl DWCi_TSKlDeleteEx
	ldr r0, _0210EBA8 ; =0x02116308
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_0210EBA4: .word ov17_02116308
_0210EBA8: .word ov17_02116308
	arm_func_end DWCi_OBJlEnd

	arm_func_start FUN_ov17_0210ebac
FUN_ov17_0210ebac: ; 0x0210EBAC
	ldr r1, _0210EBC4 ; =0x02116308
	ldr r12, _0210EBC8 ; =DWCi_QUElPopBack
	ldr r1, [r1]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x800]
	bx r12
_0210EBC4: .word ov17_02116308
_0210EBC8: .word DWCi_QUElPopBack
	arm_func_end FUN_ov17_0210ebac

	arm_func_start DWCi_OBJlDelete
DWCi_OBJlDelete: ; 0x0210EBCC
	mov r1, r0
	ldr r3, [r1]
	ldr r0, _0210EC0C ; =0xC1FFFCFF
	ldr r2, _0210EC10 ; =0x02116308
	and r0, r3, r0
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r3, [r2]
	mov r2, #0
	add r0, r3, #0x400
	cmp r1, r0
	movhs r2, #1
	add r0, r3, r2, lsl #2
	ldr r0, [r0, #0x800]
	ldr r12, _0210EC14 ; =DWCi_QUElPushBack
	bx r12
_0210EC0C: .word 0xC1FFFCFF
_0210EC10: .word ov17_02116308
_0210EC14: .word DWCi_QUElPushBack
	arm_func_end DWCi_OBJlDelete

	arm_func_start DWCi_OBJlGetOam
DWCi_OBJlGetOam: ; 0x0210EC18
	ldr r2, _0210EC2C ; =0x02116308
	ldr r2, [r2]
	add r0, r2, r0, lsl #10
	add r0, r0, r1, lsl #3
	bx lr
_0210EC2C: .word ov17_02116308
	arm_func_end DWCi_OBJlGetOam

	arm_func_start DWCi_OVRlInit
DWCi_OVRlInit: ; 0x0210EC30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x340
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _0210ECEC ; =0x0211630C
	mov r9, #0
	str r0, [r5]
	mov r8, #0x20
	mov r11, #0xc
	mov r7, #0x300
	mov r6, #0x400
	mov r4, #0x1a0
_0210EC60:
	mul r10, r9, r4
	ldr r1, [r5]
	mov r0, r8
	mov r2, r11
	add r1, r1, r10
	bl DWCi_QUElFormEx
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x19c]
	bl DWCi_LSTlForm
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x198]
	ldr r0, [r5]
	add r0, r0, r10
	add r0, r0, #0x100
	strh r7, [r0, #0x88]
	ldr r0, [r5]
	add r0, r0, r10
	add r0, r0, #0x100
	strh r6, [r0, #0x94]
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x198]
	add r1, r1, #0x180
	bl DWCi_LSTlPushFront
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x198]
	add r1, r1, #0x18c
	bl DWCi_LSTlPushBack
	add r9, r9, #1
	cmp r9, #2
	blt _0210EC60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210ECEC: .word ov17_0211630C
	arm_func_end DWCi_OVRlInit

	arm_func_start FUN_ov17_0210ecf0
FUN_ov17_0210ecf0: ; 0x0210ECF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, #0x1a0
	mul r7, r10, r0
	ldr r4, _0210EE50 ; =0x0211630C
	mov r5, r1
	ldr r0, [r4]
	mov r9, r2
	add r0, r0, r7
	ldr r0, [r0, #0x19c]
	mov r8, r3
	bl DWCi_QUElPopBack
	add r1, r5, #3
	bic r1, r1, #3
	mov r5, r0
	mov r6, r1, asr #2
	mov r0, #1
	strh r6, [r5, #0xa]
	bl OS_DisableIrqMask
	mov r11, r0
	ldr r1, [r4]
	mov r0, #0x1a0
	mla r0, r10, r0, r1
	cmp r9, #0
	beq _0210EDC4
	add r4, r0, #0x180
	add r0, r0, #0x18c
	cmp r4, r0
	beq _0210EDA8
	add r0, r1, r7
	add r1, r0, #0x18c
_0210ED6C:
	ldr r0, [r4, #4]
	ldrh r9, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldrh r2, [r0, #8]
	add r9, r9, r3
	add r3, r9, r6
	cmp r3, r2
	bgt _0210ED9C
	mov r1, r5
	strh r9, [r5, #8]
	bl DWCi_LSTlInsert
	b _0210EDA8
_0210ED9C:
	mov r4, r0
	cmp r0, r1
	bne _0210ED6C
_0210EDA8:
	ldr r0, _0210EE50 ; =0x0211630C
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x18c
	cmp r4, r0
	bne _0210EE38
	b _0210EE34
_0210EDC4:
	add r4, r0, #0x18c
	add r0, r0, #0x180
	cmp r4, r0
	beq _0210EE1C
	add r0, r1, r7
	add r0, r0, #0x180
_0210EDDC:
	ldr r9, [r4]
	ldrh r3, [r4, #8]
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	sub r3, r3, r6
	add r1, r2, r1
	cmp r3, r1
	blt _0210EE10
	mov r0, r4
	mov r1, r5
	strh r3, [r5, #8]
	bl DWCi_LSTlInsert
	b _0210EE1C
_0210EE10:
	mov r4, r9
	cmp r9, r0
	bne _0210EDDC
_0210EE1C:
	ldr r0, _0210EE50 ; =0x0211630C
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x180
	cmp r4, r0
	bne _0210EE38
_0210EE34:
	bl OS_Terminate
_0210EE38:
	ldrh r1, [r5, #8]
	mov r0, r11
	str r1, [r8]
	bl OS_EnableIrqMask
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210EE50: .word ov17_0211630C
	arm_func_end FUN_ov17_0210ecf0

	arm_func_start FUN_ov17_0210ee54
FUN_ov17_0210ee54: ; 0x0210EE54
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl DWCi_LSTlErase
	ldr r0, _0210EE90 ; =0x0211630C
	ldr r1, [r0]
	add r0, r1, #0x1a0
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x1a0
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x19c]
	mov r1, r5
	bl DWCi_QUElPushBack
	ldmfd sp!, {r3, r4, r5, pc}
_0210EE90: .word ov17_0211630C
	arm_func_end FUN_ov17_0210ee54

	arm_func_start FUN_ov17_0210ee94
FUN_ov17_0210ee94: ; 0x0210EE94
	cmp r1, #0
	mov r3, #0
	ble _0210EEB8
_0210EEA0:
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _0210EEB8
	add r3, r3, #1
	cmp r3, r1
	blt _0210EEA0
_0210EEB8:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov17_0210ee94

	arm_func_start FUN_ov17_0210eec0
FUN_ov17_0210eec0: ; 0x0210EEC0
	stmfd sp!, {r3, lr}
	sub r12, r2, #1
	cmp r12, #0
	mov lr, #0
	ble _0210EEF4
_0210EED4:
	ldrb r3, [r1, lr]
	cmp r3, #0
	beq _0210EEF4
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh r3, [r0, r2]
	cmp lr, r12
	blt _0210EED4
_0210EEF4:
	mov r1, lr, lsl #1
	mov r2, #0
	strh r2, [r0, r1]
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210eec0

	arm_func_start DWCi_ClearVram
DWCi_ClearVram: ; 0x0210EF08
	stmfd sp!, {r4, lr}
	bl GX_DisableBankForBG
	ldr r4, _0210EF88 ; =0x02116310
	str r0, [r4]
	bl GX_DisableBankForOBJ
	str r0, [r4, #4]
	bl GX_DisableBankForBGExtPltt
	str r0, [r4, #8]
	bl GX_DisableBankForOBJExtPltt
	str r0, [r4, #0xc]
	bl GX_DisableBankForTex
	str r0, [r4, #0x10]
	bl GX_DisableBankForTexPltt
	str r0, [r4, #0x14]
	bl GX_DisableBankForClearImage
	str r0, [r4, #0x18]
	bl GX_DisableBankForSubBG
	str r0, [r4, #0x1c]
	bl GX_DisableBankForSubOBJ
	str r0, [r4, #0x20]
	bl GX_DisableBankForSubBGExtPltt
	str r0, [r4, #0x24]
	bl GX_DisableBankForSubOBJExtPltt
	str r0, [r4, #0x28]
	bl GX_DisableBankForARM7
	str r0, [r4, #0x2c]
	bl GX_DisableBankForLCDC
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl GX_SetBankForARM7
	bl FUN_ov17_0210f050
	ldmfd sp!, {r4, pc}
_0210EF88: .word ov17_02116310
	arm_func_end DWCi_ClearVram

	arm_func_start DWCi_RepairVram
DWCi_RepairVram: ; 0x0210EF8C
	stmfd sp!, {r4, lr}
	bl GX_DisableBankForBG
	bl GX_DisableBankForOBJ
	bl GX_DisableBankForSubBG
	bl GX_DisableBankForSubOBJ
	bl FUN_ov17_0210f050
	ldr r4, _0210F044 ; =0x02116310
	ldr r0, [r4]
	bl GX_SetBankForBG
	ldr r0, [r4, #4]
	bl GX_SetBankForOBJ
	ldr r0, [r4, #8]
	bl GX_SetBankForBGExtPltt
	ldr r0, [r4, #0xc]
	bl GX_SetBankForOBJExtPltt
	ldr r0, [r4, #0x10]
	bl GX_SetBankForTex
	ldr r0, [r4, #0x14]
	bl GX_SetBankForTexPltt
	ldr r0, [r4, #0x18]
	bl GX_SetBankForClearImage
	ldr r0, [r4, #0x1c]
	bl GX_SetBankForSubBG
	ldr r0, [r4, #0x20]
	bl GX_SetBankForSubOBJ
	ldr r0, [r4, #0x24]
	bl GX_SetBankForSubBGExtPltt
	ldr r0, [r4, #0x28]
	bl GX_SetBankForSubOBJExtPltt
	ldr r0, [r4, #0x30]
	bl GX_SetBankForLCDC
	mov r3, #0
	ldr r2, _0210F048 ; =0x04000050
	ldr r0, _0210F04C ; =0x04001014
	strh r3, [r2]
	add r1, r2, #0x1000
	strh r3, [r1]
	str r3, [r2, #-0x40]
	str r3, [r2, #-0x3c]
	str r3, [r2, #-0x38]
	str r3, [r2, #-0x34]
	str r3, [r2, #0xfc0]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	ldmfd sp!, {r4, pc}
_0210F044: .word ov17_02116310
_0210F048: .word 0x04000050
_0210F04C: .word 0x04001014
	arm_func_end DWCi_RepairVram

	arm_func_start FUN_ov17_0210f050
FUN_ov17_0210f050: ; 0x0210F050
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210F0D8 ; =0x000001F3
	bl GX_SetBankForLCDC
	mov r7, #0
	mov r4, #0x6800000
	mov r0, r7
	mov r1, r4
	mov r2, #0x40000
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x80000
	mov r2, #0x24000
	bl MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	mov r6, #0x200
	mov r0, r6
	mov r1, #0x7000000
	mov r5, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r4, #0x5000000
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r6
	sub r1, r5, #0xf9000000
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F0D8: .word 0x000001F3
	arm_func_end FUN_ov17_0210f050

	arm_func_start DWCi_SetLedWireless
DWCi_SetLedWireless: ; 0x0210F0DC
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl PM_GetLEDPattern
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, [sp]
	cmp r0, #0xf
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xf
	bl PMi_SendLEDPatternCommand
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_SetLedWireless

	arm_func_start DWCi_SetLedNormal
DWCi_SetLedNormal: ; 0x0210F108
	ldr r12, _0210F114 ; =PMi_SendLEDPatternCommand
	mov r0, #1
	bx r12
_0210F114: .word PMi_SendLEDPatternCommand
	arm_func_end DWCi_SetLedNormal

	arm_func_start DWCi_TSKlInit
DWCi_TSKlInit: ; 0x0210F118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x80
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _0210F214 ; =0x02116344
	mov r9, #0
	ldr r8, _0210F218 ; =0x02112700
	str r0, [r4]
	mov r7, r9
	mov r6, #0xff
	mov r5, #1
	mov r11, #0x14
_0210F148:
	ldrb r10, [r8, r9]
	ldr r2, [r4]
	mov r1, #4
	mul r0, r10, r11
	add r2, r2, r9, lsl #6
	str r10, [r2, #0x34]
	bl DWCi_HEAPlAllocEx
	ldr r1, [r4]
	mov r2, #0x14
	add r1, r1, r9, lsl #6
	str r0, [r1, #0x3c]
	ldr r1, [r4]
	mov r0, r10
	add r1, r1, r9, lsl #6
	ldr r1, [r1, #0x3c]
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	str r0, [r1, r9, lsl #6]
	mov r0, r10
	bl DWCi_QUElForm
	ldr r1, [r4]
	add r1, r1, r9, lsl #6
	str r0, [r1, #4]
	bl DWCi_LSTlForm
	ldr r1, [r4]
	add r1, r1, r9, lsl #6
	str r0, [r1, #8]
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	strb r7, [r0, #0x1c]
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	strb r6, [r0, #0x30]
	ldr r0, [r4]
	add r1, r0, r9, lsl #6
	ldr r0, [r1, #8]
	add r1, r1, #0xc
	bl DWCi_LSTlPushFront
	ldr r1, [r4]
	add r0, r1, r9, lsl #6
	add r1, r1, r9, lsl #6
	ldr r0, [r0, #8]
	add r1, r1, #0x20
	bl DWCi_LSTlPushBack
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	add r9, r9, #1
	strb r5, [r0, #0x38]
	cmp r9, #2
	blt _0210F148
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210F214: .word ov17_02116344
_0210F218: .word ov17_02112700
	arm_func_end DWCi_TSKlInit

	arm_func_start DWCi_TSKlEnd
DWCi_TSKlEnd: ; 0x0210F21C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210F25C ; =0x02116344
	mov r5, #0
_0210F228:
	ldr r0, [r4]
	add r0, r0, r5, lsl #6
	ldr r0, [r0, #8]
	bl DWCi_LSTlDelete
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #6]
	bl DWCi_QUElDelete
	add r5, r5, #1
	cmp r5, #2
	blt _0210F228
	ldr r0, _0210F260 ; =0x02116344
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_0210F25C: .word ov17_02116344
_0210F260: .word ov17_02116344
	arm_func_end DWCi_TSKlEnd

	arm_func_start DWCi_TSKlAct
DWCi_TSKlAct: ; 0x0210F264
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0210F310 ; =0x02116344
	mov r6, r0
	ldr r0, [r5]
	add r2, r0, r6, lsl #6
	ldrb r1, [r2, #0x38]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r2, #0x10]
	add r1, r2, #0x20
	cmp r4, r1
	beq _0210F2BC
_0210F294:
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r4
	blx r2
	ldr r0, [r5]
	ldr r4, [r4, #4]
	add r1, r0, r6, lsl #6
	add r1, r1, #0x20
	cmp r4, r1
	bne _0210F294
_0210F2BC:
	add r1, r0, r6, lsl #6
	ldr r1, [r1, #0x34]
	mov r4, r6, lsl #6
	mov r5, #0
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0210F310 ; =0x02116344
_0210F2D8:
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl DWCi_QUElPopBack
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov17_0210f3e4
	ldr r0, [r7]
	add r5, r5, #1
	add r1, r4, r0
	ldr r1, [r1, #0x34]
	cmp r5, r1
	blt _0210F2D8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F310: .word ov17_02116344
	arm_func_end DWCi_TSKlAct

	arm_func_start DWCi_TSKlForm
DWCi_TSKlForm: ; 0x0210F314
	stmfd sp!, {r3, lr}
	mov r12, #0
	str r12, [sp]
	bl FUN_ov17_0210f328
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_TSKlForm

	arm_func_start FUN_ov17_0210f328
FUN_ov17_0210f328: ; 0x0210F328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _0210F3AC ; =0x02116344
	mov r6, r0
	ldr r0, [r7]
	mov r9, r1
	ldr r0, [r0, r6, lsl #6]
	mov r8, r2
	mov r5, r3
	bl DWCi_QUElPopBack
	mov r4, r0
	str r9, [r4, #8]
	str r8, [r4, #0xc]
	ldrb r1, [sp, #0x20]
	strb r5, [r4, #0x10]
	mov r0, #1
	strb r1, [r4, #0x11]
	bl OS_DisableIrqMask
	ldr r1, [r7]
	mov r7, r0
	add r0, r1, r6, lsl #6
	ldr r0, [r0, #0x10]
_0210F37C:
	ldrb r1, [r0, #0x10]
	cmp r5, r1
	bhs _0210F394
	mov r1, r4
	bl DWCi_LSTlInsert
	b _0210F39C
_0210F394:
	ldr r0, [r0, #4]
	b _0210F37C
_0210F39C:
	mov r0, r7
	bl OS_EnableIrqMask
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210F3AC: .word ov17_02116344
	arm_func_end FUN_ov17_0210f328

	arm_func_start DWCi_TSKlChangeFunc
DWCi_TSKlChangeFunc: ; 0x0210F3B0
	str r1, [r0, #8]
	bx lr
	arm_func_end DWCi_TSKlChangeFunc

	arm_func_start DWCi_TSKlDelete
DWCi_TSKlDelete: ; 0x0210F3B8
	ldr r2, _0210F3D0 ; =0x02116344
	ldr r12, _0210F3D4 ; =DWCi_QUElPushBack
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	ldr r0, [r0, #4]
	bx r12
_0210F3D0: .word ov17_02116344
_0210F3D4: .word DWCi_QUElPushBack
	arm_func_end DWCi_TSKlDelete

	arm_func_start DWCi_TSKlDeleteEx
DWCi_TSKlDeleteEx: ; 0x0210F3D8
	ldr r12, _0210F3E0 ; =FUN_ov17_0210f3e4
	bx r12
_0210F3E0: .word FUN_ov17_0210f3e4
	arm_func_end DWCi_TSKlDeleteEx

	arm_func_start FUN_ov17_0210f3e4
FUN_ov17_0210f3e4: ; 0x0210F3E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0x11]
	mov r5, r0
	cmp r1, #0
	beq _0210F404
	add r0, r4, #0xc
	bl DWCi_HEAPlFree_
_0210F404:
	mov r0, r4
	bl DWCi_LSTlErase
	ldr r0, _0210F424 ; =0x02116344
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, r5, lsl #6]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r3, r4, r5, pc}
_0210F424: .word ov17_02116344
	arm_func_end FUN_ov17_0210f3e4

	arm_func_start FUN_ov17_0210f428
FUN_ov17_0210f428: ; 0x0210F428
	ldr r2, _0210F43C ; =0x02116344
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	strb r1, [r0, #0x38]
	bx lr
_0210F43C: .word ov17_02116344
	arm_func_end FUN_ov17_0210f428

	.rodata
	.global ov17_0210F440
ov17_0210F440:
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.global ov17_0210F444
ov17_0210F444:
	.byte 0x06, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x00
	.global ov17_0210F44C
ov17_0210F44C:
	.byte 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x1B
	.byte 0x00, 0x00, 0x00, 0x36
	.global ov17_0210F474
ov17_0210F474:
	.byte 0xF4, 0x51, 0x50, 0xA7, 0x41, 0x7E, 0x53, 0x65, 0x17, 0x1A, 0xC3, 0xA4
	.byte 0x27, 0x3A, 0x96, 0x5E, 0xAB, 0x3B, 0xCB, 0x6B, 0x9D, 0x1F, 0xF1, 0x45, 0xFA, 0xAC, 0xAB, 0x58
	.byte 0xE3, 0x4B, 0x93, 0x03, 0x30, 0x20, 0x55, 0xFA, 0x76, 0xAD, 0xF6, 0x6D, 0xCC, 0x88, 0x91, 0x76
	.byte 0x02, 0xF5, 0x25, 0x4C, 0xE5, 0x4F, 0xFC, 0xD7, 0x2A, 0xC5, 0xD7, 0xCB, 0x35, 0x26, 0x80, 0x44
	.byte 0x62, 0xB5, 0x8F, 0xA3, 0xB1, 0xDE, 0x49, 0x5A, 0xBA, 0x25, 0x67, 0x1B, 0xEA, 0x45, 0x98, 0x0E
	.byte 0xFE, 0x5D, 0xE1, 0xC0, 0x2F, 0xC3, 0x02, 0x75, 0x4C, 0x81, 0x12, 0xF0, 0x46, 0x8D, 0xA3, 0x97
	.byte 0xD3, 0x6B, 0xC6, 0xF9, 0x8F, 0x03, 0xE7, 0x5F, 0x92, 0x15, 0x95, 0x9C, 0x6D, 0xBF, 0xEB, 0x7A
	.byte 0x52, 0x95, 0xDA, 0x59, 0xBE, 0xD4, 0x2D, 0x83, 0x74, 0x58, 0xD3, 0x21, 0xE0, 0x49, 0x29, 0x69
	.byte 0xC9, 0x8E, 0x44, 0xC8, 0xC2, 0x75, 0x6A, 0x89, 0x8E, 0xF4, 0x78, 0x79, 0x58, 0x99, 0x6B, 0x3E
	.byte 0xB9, 0x27, 0xDD, 0x71, 0xE1, 0xBE, 0xB6, 0x4F, 0x88, 0xF0, 0x17, 0xAD, 0x20, 0xC9, 0x66, 0xAC
	.byte 0xCE, 0x7D, 0xB4, 0x3A, 0xDF, 0x63, 0x18, 0x4A, 0x1A, 0xE5, 0x82, 0x31, 0x51, 0x97, 0x60, 0x33
	.byte 0x53, 0x62, 0x45, 0x7F, 0x64, 0xB1, 0xE0, 0x77, 0x6B, 0xBB, 0x84, 0xAE, 0x81, 0xFE, 0x1C, 0xA0
	.byte 0x08, 0xF9, 0x94, 0x2B, 0x48, 0x70, 0x58, 0x68, 0x45, 0x8F, 0x19, 0xFD, 0xDE, 0x94, 0x87, 0x6C
	.byte 0x7B, 0x52, 0xB7, 0xF8, 0x73, 0xAB, 0x23, 0xD3, 0x4B, 0x72, 0xE2, 0x02, 0x1F, 0xE3, 0x57, 0x8F
	.byte 0x55, 0x66, 0x2A, 0xAB, 0xEB, 0xB2, 0x07, 0x28, 0xB5, 0x2F, 0x03, 0xC2, 0xC5, 0x86, 0x9A, 0x7B
	.byte 0x37, 0xD3, 0xA5, 0x08, 0x28, 0x30, 0xF2, 0x87, 0xBF, 0x23, 0xB2, 0xA5, 0x03, 0x02, 0xBA, 0x6A
	.byte 0x16, 0xED, 0x5C, 0x82, 0xCF, 0x8A, 0x2B, 0x1C, 0x79, 0xA7, 0x92, 0xB4, 0x07, 0xF3, 0xF0, 0xF2
	.byte 0x69, 0x4E, 0xA1, 0xE2, 0xDA, 0x65, 0xCD, 0xF4, 0x05, 0x06, 0xD5, 0xBE, 0x34, 0xD1, 0x1F, 0x62
	.byte 0xA6, 0xC4, 0x8A, 0xFE, 0x2E, 0x34, 0x9D, 0x53, 0xF3, 0xA2, 0xA0, 0x55, 0x8A, 0x05, 0x32, 0xE1
	.byte 0xF6, 0xA4, 0x75, 0xEB, 0x83, 0x0B, 0x39, 0xEC, 0x60, 0x40, 0xAA, 0xEF, 0x71, 0x5E, 0x06, 0x9F
	.byte 0x6E, 0xBD, 0x51, 0x10, 0x21, 0x3E, 0xF9, 0x8A, 0xDD, 0x96, 0x3D, 0x06, 0x3E, 0xDD, 0xAE, 0x05
	.byte 0xE6, 0x4D, 0x46, 0xBD, 0x54, 0x91, 0xB5, 0x8D, 0xC4, 0x71, 0x05, 0x5D, 0x06, 0x04, 0x6F, 0xD4
	.byte 0x50, 0x60, 0xFF, 0x15, 0x98, 0x19, 0x24, 0xFB, 0xBD, 0xD6, 0x97, 0xE9, 0x40, 0x89, 0xCC, 0x43
	.byte 0xD9, 0x67, 0x77, 0x9E, 0xE8, 0xB0, 0xBD, 0x42, 0x89, 0x07, 0x88, 0x8B, 0x19, 0xE7, 0x38, 0x5B
	.byte 0xC8, 0x79, 0xDB, 0xEE, 0x7C, 0xA1, 0x47, 0x0A, 0x42, 0x7C, 0xE9, 0x0F, 0x84, 0xF8, 0xC9, 0x1E
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x09, 0x83, 0x86, 0x2B, 0x32, 0x48, 0xED, 0x11, 0x1E, 0xAC, 0x70
	.byte 0x5A, 0x6C, 0x4E, 0x72, 0x0E, 0xFD, 0xFB, 0xFF, 0x85, 0x0F, 0x56, 0x38, 0xAE, 0x3D, 0x1E, 0xD5
	.byte 0x2D, 0x36, 0x27, 0x39, 0x0F, 0x0A, 0x64, 0xD9, 0x5C, 0x68, 0x21, 0xA6, 0x5B, 0x9B, 0xD1, 0x54
	.byte 0x36, 0x24, 0x3A, 0x2E, 0x0A, 0x0C, 0xB1, 0x67, 0x57, 0x93, 0x0F, 0xE7, 0xEE, 0xB4, 0xD2, 0x96
	.byte 0x9B, 0x1B, 0x9E, 0x91, 0xC0, 0x80, 0x4F, 0xC5, 0xDC, 0x61, 0xA2, 0x20, 0x77, 0x5A, 0x69, 0x4B
	.byte 0x12, 0x1C, 0x16, 0x1A, 0x93, 0xE2, 0x0A, 0xBA, 0xA0, 0xC0, 0xE5, 0x2A, 0x22, 0x3C, 0x43, 0xE0
	.byte 0x1B, 0x12, 0x1D, 0x17, 0x09, 0x0E, 0x0B, 0x0D, 0x8B, 0xF2, 0xAD, 0xC7, 0xB6, 0x2D, 0xB9, 0xA8
	.byte 0x1E, 0x14, 0xC8, 0xA9, 0xF1, 0x57, 0x85, 0x19, 0x75, 0xAF, 0x4C, 0x07, 0x99, 0xEE, 0xBB, 0xDD
	.byte 0x7F, 0xA3, 0xFD, 0x60, 0x01, 0xF7, 0x9F, 0x26, 0x72, 0x5C, 0xBC, 0xF5, 0x66, 0x44, 0xC5, 0x3B
	.byte 0xFB, 0x5B, 0x34, 0x7E, 0x43, 0x8B, 0x76, 0x29, 0x23, 0xCB, 0xDC, 0xC6, 0xED, 0xB6, 0x68, 0xFC
	.byte 0xE4, 0xB8, 0x63, 0xF1, 0x31, 0xD7, 0xCA, 0xDC, 0x63, 0x42, 0x10, 0x85, 0x97, 0x13, 0x40, 0x22
	.byte 0xC6, 0x84, 0x20, 0x11, 0x4A, 0x85, 0x7D, 0x24, 0xBB, 0xD2, 0xF8, 0x3D, 0xF9, 0xAE, 0x11, 0x32
	.byte 0x29, 0xC7, 0x6D, 0xA1, 0x9E, 0x1D, 0x4B, 0x2F, 0xB2, 0xDC, 0xF3, 0x30, 0x86, 0x0D, 0xEC, 0x52
	.byte 0xC1, 0x77, 0xD0, 0xE3, 0xB3, 0x2B, 0x6C, 0x16, 0x70, 0xA9, 0x99, 0xB9, 0x94, 0x11, 0xFA, 0x48
	.byte 0xE9, 0x47, 0x22, 0x64, 0xFC, 0xA8, 0xC4, 0x8C, 0xF0, 0xA0, 0x1A, 0x3F, 0x7D, 0x56, 0xD8, 0x2C
	.byte 0x33, 0x22, 0xEF, 0x90, 0x49, 0x87, 0xC7, 0x4E, 0x38, 0xD9, 0xC1, 0xD1, 0xCA, 0x8C, 0xFE, 0xA2
	.byte 0xD4, 0x98, 0x36, 0x0B, 0xF5, 0xA6, 0xCF, 0x81, 0x7A, 0xA5, 0x28, 0xDE, 0xB7, 0xDA, 0x26, 0x8E
	.byte 0xAD, 0x3F, 0xA4, 0xBF, 0x3A, 0x2C, 0xE4, 0x9D, 0x78, 0x50, 0x0D, 0x92, 0x5F, 0x6A, 0x9B, 0xCC
	.byte 0x7E, 0x54, 0x62, 0x46, 0x8D, 0xF6, 0xC2, 0x13, 0xD8, 0x90, 0xE8, 0xB8, 0x39, 0x2E, 0x5E, 0xF7
	.byte 0xC3, 0x82, 0xF5, 0xAF, 0x5D, 0x9F, 0xBE, 0x80, 0xD0, 0x69, 0x7C, 0x93, 0xD5, 0x6F, 0xA9, 0x2D
	.byte 0x25, 0xCF, 0xB3, 0x12, 0xAC, 0xC8, 0x3B, 0x99, 0x18, 0x10, 0xA7, 0x7D, 0x9C, 0xE8, 0x6E, 0x63
	.byte 0x3B, 0xDB, 0x7B, 0xBB, 0x26, 0xCD, 0x09, 0x78, 0x59, 0x6E, 0xF4, 0x18, 0x9A, 0xEC, 0x01, 0xB7
	.byte 0x4F, 0x83, 0xA8, 0x9A, 0x95, 0xE6, 0x65, 0x6E, 0xFF, 0xAA, 0x7E, 0xE6, 0xBC, 0x21, 0x08, 0xCF
	.byte 0x15, 0xEF, 0xE6, 0xE8, 0xE7, 0xBA, 0xD9, 0x9B, 0x6F, 0x4A, 0xCE, 0x36, 0x9F, 0xEA, 0xD4, 0x09
	.byte 0xB0, 0x29, 0xD6, 0x7C, 0xA4, 0x31, 0xAF, 0xB2, 0x3F, 0x2A, 0x31, 0x23, 0xA5, 0xC6, 0x30, 0x94
	.byte 0xA2, 0x35, 0xC0, 0x66, 0x4E, 0x74, 0x37, 0xBC, 0x82, 0xFC, 0xA6, 0xCA, 0x90, 0xE0, 0xB0, 0xD0
	.byte 0xA7, 0x33, 0x15, 0xD8, 0x04, 0xF1, 0x4A, 0x98, 0xEC, 0x41, 0xF7, 0xDA, 0xCD, 0x7F, 0x0E, 0x50
	.byte 0x91, 0x17, 0x2F, 0xF6, 0x4D, 0x76, 0x8D, 0xD6, 0xEF, 0x43, 0x4D, 0xB0, 0xAA, 0xCC, 0x54, 0x4D
	.byte 0x96, 0xE4, 0xDF, 0x04, 0xD1, 0x9E, 0xE3, 0xB5, 0x6A, 0x4C, 0x1B, 0x88, 0x2C, 0xC1, 0xB8, 0x1F
	.byte 0x65, 0x46, 0x7F, 0x51, 0x5E, 0x9D, 0x04, 0xEA, 0x8C, 0x01, 0x5D, 0x35, 0x87, 0xFA, 0x73, 0x74
	.byte 0x0B, 0xFB, 0x2E, 0x41, 0x67, 0xB3, 0x5A, 0x1D, 0xDB, 0x92, 0x52, 0xD2, 0x10, 0xE9, 0x33, 0x56
	.byte 0xD6, 0x6D, 0x13, 0x47, 0xD7, 0x9A, 0x8C, 0x61, 0xA1, 0x37, 0x7A, 0x0C, 0xF8, 0x59, 0x8E, 0x14
	.byte 0x13, 0xEB, 0x89, 0x3C, 0xA9, 0xCE, 0xEE, 0x27, 0x61, 0xB7, 0x35, 0xC9, 0x1C, 0xE1, 0xED, 0xE5
	.byte 0x47, 0x7A, 0x3C, 0xB1, 0xD2, 0x9C, 0x59, 0xDF, 0xF2, 0x55, 0x3F, 0x73, 0x14, 0x18, 0x79, 0xCE
	.byte 0xC7, 0x73, 0xBF, 0x37, 0xF7, 0x53, 0xEA, 0xCD, 0xFD, 0x5F, 0x5B, 0xAA, 0x3D, 0xDF, 0x14, 0x6F
	.byte 0x44, 0x78, 0x86, 0xDB, 0xAF, 0xCA, 0x81, 0xF3, 0x68, 0xB9, 0x3E, 0xC4, 0x24, 0x38, 0x2C, 0x34
	.byte 0xA3, 0xC2, 0x5F, 0x40, 0x1D, 0x16, 0x72, 0xC3, 0xE2, 0xBC, 0x0C, 0x25, 0x3C, 0x28, 0x8B, 0x49
	.byte 0x0D, 0xFF, 0x41, 0x95, 0xA8, 0x39, 0x71, 0x01, 0x0C, 0x08, 0xDE, 0xB3, 0xB4, 0xD8, 0x9C, 0xE4
	.byte 0x56, 0x64, 0x90, 0xC1, 0xCB, 0x7B, 0x61, 0x84, 0x32, 0xD5, 0x70, 0xB6, 0x6C, 0x48, 0x74, 0x5C
	.byte 0xB8, 0xD0, 0x42, 0x57
	.global ov17_0210F874
ov17_0210F874:
	.byte 0x51, 0x50, 0xA7, 0xF4, 0x7E, 0x53, 0x65, 0x41, 0x1A, 0xC3, 0xA4, 0x17
	.byte 0x3A, 0x96, 0x5E, 0x27, 0x3B, 0xCB, 0x6B, 0xAB, 0x1F, 0xF1, 0x45, 0x9D, 0xAC, 0xAB, 0x58, 0xFA
	.byte 0x4B, 0x93, 0x03, 0xE3, 0x20, 0x55, 0xFA, 0x30, 0xAD, 0xF6, 0x6D, 0x76, 0x88, 0x91, 0x76, 0xCC
	.byte 0xF5, 0x25, 0x4C, 0x02, 0x4F, 0xFC, 0xD7, 0xE5, 0xC5, 0xD7, 0xCB, 0x2A, 0x26, 0x80, 0x44, 0x35
	.byte 0xB5, 0x8F, 0xA3, 0x62, 0xDE, 0x49, 0x5A, 0xB1, 0x25, 0x67, 0x1B, 0xBA, 0x45, 0x98, 0x0E, 0xEA
	.byte 0x5D, 0xE1, 0xC0, 0xFE, 0xC3, 0x02, 0x75, 0x2F, 0x81, 0x12, 0xF0, 0x4C, 0x8D, 0xA3, 0x97, 0x46
	.byte 0x6B, 0xC6, 0xF9, 0xD3, 0x03, 0xE7, 0x5F, 0x8F, 0x15, 0x95, 0x9C, 0x92, 0xBF, 0xEB, 0x7A, 0x6D
	.byte 0x95, 0xDA, 0x59, 0x52, 0xD4, 0x2D, 0x83, 0xBE, 0x58, 0xD3, 0x21, 0x74, 0x49, 0x29, 0x69, 0xE0
	.byte 0x8E, 0x44, 0xC8, 0xC9, 0x75, 0x6A, 0x89, 0xC2, 0xF4, 0x78, 0x79, 0x8E, 0x99, 0x6B, 0x3E, 0x58
	.byte 0x27, 0xDD, 0x71, 0xB9, 0xBE, 0xB6, 0x4F, 0xE1, 0xF0, 0x17, 0xAD, 0x88, 0xC9, 0x66, 0xAC, 0x20
	.byte 0x7D, 0xB4, 0x3A, 0xCE, 0x63, 0x18, 0x4A, 0xDF, 0xE5, 0x82, 0x31, 0x1A, 0x97, 0x60, 0x33, 0x51
	.byte 0x62, 0x45, 0x7F, 0x53, 0xB1, 0xE0, 0x77, 0x64, 0xBB, 0x84, 0xAE, 0x6B, 0xFE, 0x1C, 0xA0, 0x81
	.byte 0xF9, 0x94, 0x2B, 0x08, 0x70, 0x58, 0x68, 0x48, 0x8F, 0x19, 0xFD, 0x45, 0x94, 0x87, 0x6C, 0xDE
	.byte 0x52, 0xB7, 0xF8, 0x7B, 0xAB, 0x23, 0xD3, 0x73, 0x72, 0xE2, 0x02, 0x4B, 0xE3, 0x57, 0x8F, 0x1F
	.byte 0x66, 0x2A, 0xAB, 0x55, 0xB2, 0x07, 0x28, 0xEB, 0x2F, 0x03, 0xC2, 0xB5, 0x86, 0x9A, 0x7B, 0xC5
	.byte 0xD3, 0xA5, 0x08, 0x37, 0x30, 0xF2, 0x87, 0x28, 0x23, 0xB2, 0xA5, 0xBF, 0x02, 0xBA, 0x6A, 0x03
	.byte 0xED, 0x5C, 0x82, 0x16, 0x8A, 0x2B, 0x1C, 0xCF, 0xA7, 0x92, 0xB4, 0x79, 0xF3, 0xF0, 0xF2, 0x07
	.byte 0x4E, 0xA1, 0xE2, 0x69, 0x65, 0xCD, 0xF4, 0xDA, 0x06, 0xD5, 0xBE, 0x05, 0xD1, 0x1F, 0x62, 0x34
	.byte 0xC4, 0x8A, 0xFE, 0xA6, 0x34, 0x9D, 0x53, 0x2E, 0xA2, 0xA0, 0x55, 0xF3, 0x05, 0x32, 0xE1, 0x8A
	.byte 0xA4, 0x75, 0xEB, 0xF6, 0x0B, 0x39, 0xEC, 0x83, 0x40, 0xAA, 0xEF, 0x60, 0x5E, 0x06, 0x9F, 0x71
	.byte 0xBD, 0x51, 0x10, 0x6E, 0x3E, 0xF9, 0x8A, 0x21, 0x96, 0x3D, 0x06, 0xDD, 0xDD, 0xAE, 0x05, 0x3E
	.byte 0x4D, 0x46, 0xBD, 0xE6, 0x91, 0xB5, 0x8D, 0x54, 0x71, 0x05, 0x5D, 0xC4, 0x04, 0x6F, 0xD4, 0x06
	.byte 0x60, 0xFF, 0x15, 0x50, 0x19, 0x24, 0xFB, 0x98, 0xD6, 0x97, 0xE9, 0xBD, 0x89, 0xCC, 0x43, 0x40
	.byte 0x67, 0x77, 0x9E, 0xD9, 0xB0, 0xBD, 0x42, 0xE8, 0x07, 0x88, 0x8B, 0x89, 0xE7, 0x38, 0x5B, 0x19
	.byte 0x79, 0xDB, 0xEE, 0xC8, 0xA1, 0x47, 0x0A, 0x7C, 0x7C, 0xE9, 0x0F, 0x42, 0xF8, 0xC9, 0x1E, 0x84
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x83, 0x86, 0x80, 0x32, 0x48, 0xED, 0x2B, 0x1E, 0xAC, 0x70, 0x11
	.byte 0x6C, 0x4E, 0x72, 0x5A, 0xFD, 0xFB, 0xFF, 0x0E, 0x0F, 0x56, 0x38, 0x85, 0x3D, 0x1E, 0xD5, 0xAE
	.byte 0x36, 0x27, 0x39, 0x2D, 0x0A, 0x64, 0xD9, 0x0F, 0x68, 0x21, 0xA6, 0x5C, 0x9B, 0xD1, 0x54, 0x5B
	.byte 0x24, 0x3A, 0x2E, 0x36, 0x0C, 0xB1, 0x67, 0x0A, 0x93, 0x0F, 0xE7, 0x57, 0xB4, 0xD2, 0x96, 0xEE
	.byte 0x1B, 0x9E, 0x91, 0x9B, 0x80, 0x4F, 0xC5, 0xC0, 0x61, 0xA2, 0x20, 0xDC, 0x5A, 0x69, 0x4B, 0x77
	.byte 0x1C, 0x16, 0x1A, 0x12, 0xE2, 0x0A, 0xBA, 0x93, 0xC0, 0xE5, 0x2A, 0xA0, 0x3C, 0x43, 0xE0, 0x22
	.byte 0x12, 0x1D, 0x17, 0x1B, 0x0E, 0x0B, 0x0D, 0x09, 0xF2, 0xAD, 0xC7, 0x8B, 0x2D, 0xB9, 0xA8, 0xB6
	.byte 0x14, 0xC8, 0xA9, 0x1E, 0x57, 0x85, 0x19, 0xF1, 0xAF, 0x4C, 0x07, 0x75, 0xEE, 0xBB, 0xDD, 0x99
	.byte 0xA3, 0xFD, 0x60, 0x7F, 0xF7, 0x9F, 0x26, 0x01, 0x5C, 0xBC, 0xF5, 0x72, 0x44, 0xC5, 0x3B, 0x66
	.byte 0x5B, 0x34, 0x7E, 0xFB, 0x8B, 0x76, 0x29, 0x43, 0xCB, 0xDC, 0xC6, 0x23, 0xB6, 0x68, 0xFC, 0xED
	.byte 0xB8, 0x63, 0xF1, 0xE4, 0xD7, 0xCA, 0xDC, 0x31, 0x42, 0x10, 0x85, 0x63, 0x13, 0x40, 0x22, 0x97
	.byte 0x84, 0x20, 0x11, 0xC6, 0x85, 0x7D, 0x24, 0x4A, 0xD2, 0xF8, 0x3D, 0xBB, 0xAE, 0x11, 0x32, 0xF9
	.byte 0xC7, 0x6D, 0xA1, 0x29, 0x1D, 0x4B, 0x2F, 0x9E, 0xDC, 0xF3, 0x30, 0xB2, 0x0D, 0xEC, 0x52, 0x86
	.byte 0x77, 0xD0, 0xE3, 0xC1, 0x2B, 0x6C, 0x16, 0xB3, 0xA9, 0x99, 0xB9, 0x70, 0x11, 0xFA, 0x48, 0x94
	.byte 0x47, 0x22, 0x64, 0xE9, 0xA8, 0xC4, 0x8C, 0xFC, 0xA0, 0x1A, 0x3F, 0xF0, 0x56, 0xD8, 0x2C, 0x7D
	.byte 0x22, 0xEF, 0x90, 0x33, 0x87, 0xC7, 0x4E, 0x49, 0xD9, 0xC1, 0xD1, 0x38, 0x8C, 0xFE, 0xA2, 0xCA
	.byte 0x98, 0x36, 0x0B, 0xD4, 0xA6, 0xCF, 0x81, 0xF5, 0xA5, 0x28, 0xDE, 0x7A, 0xDA, 0x26, 0x8E, 0xB7
	.byte 0x3F, 0xA4, 0xBF, 0xAD, 0x2C, 0xE4, 0x9D, 0x3A, 0x50, 0x0D, 0x92, 0x78, 0x6A, 0x9B, 0xCC, 0x5F
	.byte 0x54, 0x62, 0x46, 0x7E, 0xF6, 0xC2, 0x13, 0x8D, 0x90, 0xE8, 0xB8, 0xD8, 0x2E, 0x5E, 0xF7, 0x39
	.byte 0x82, 0xF5, 0xAF, 0xC3, 0x9F, 0xBE, 0x80, 0x5D, 0x69, 0x7C, 0x93, 0xD0, 0x6F, 0xA9, 0x2D, 0xD5
	.byte 0xCF, 0xB3, 0x12, 0x25, 0xC8, 0x3B, 0x99, 0xAC, 0x10, 0xA7, 0x7D, 0x18, 0xE8, 0x6E, 0x63, 0x9C
	.byte 0xDB, 0x7B, 0xBB, 0x3B, 0xCD, 0x09, 0x78, 0x26, 0x6E, 0xF4, 0x18, 0x59, 0xEC, 0x01, 0xB7, 0x9A
	.byte 0x83, 0xA8, 0x9A, 0x4F, 0xE6, 0x65, 0x6E, 0x95, 0xAA, 0x7E, 0xE6, 0xFF, 0x21, 0x08, 0xCF, 0xBC
	.byte 0xEF, 0xE6, 0xE8, 0x15, 0xBA, 0xD9, 0x9B, 0xE7, 0x4A, 0xCE, 0x36, 0x6F, 0xEA, 0xD4, 0x09, 0x9F
	.byte 0x29, 0xD6, 0x7C, 0xB0, 0x31, 0xAF, 0xB2, 0xA4, 0x2A, 0x31, 0x23, 0x3F, 0xC6, 0x30, 0x94, 0xA5
	.byte 0x35, 0xC0, 0x66, 0xA2, 0x74, 0x37, 0xBC, 0x4E, 0xFC, 0xA6, 0xCA, 0x82, 0xE0, 0xB0, 0xD0, 0x90
	.byte 0x33, 0x15, 0xD8, 0xA7, 0xF1, 0x4A, 0x98, 0x04, 0x41, 0xF7, 0xDA, 0xEC, 0x7F, 0x0E, 0x50, 0xCD
	.byte 0x17, 0x2F, 0xF6, 0x91, 0x76, 0x8D, 0xD6, 0x4D, 0x43, 0x4D, 0xB0, 0xEF, 0xCC, 0x54, 0x4D, 0xAA
	.byte 0xE4, 0xDF, 0x04, 0x96, 0x9E, 0xE3, 0xB5, 0xD1, 0x4C, 0x1B, 0x88, 0x6A, 0xC1, 0xB8, 0x1F, 0x2C
	.byte 0x46, 0x7F, 0x51, 0x65, 0x9D, 0x04, 0xEA, 0x5E, 0x01, 0x5D, 0x35, 0x8C, 0xFA, 0x73, 0x74, 0x87
	.byte 0xFB, 0x2E, 0x41, 0x0B, 0xB3, 0x5A, 0x1D, 0x67, 0x92, 0x52, 0xD2, 0xDB, 0xE9, 0x33, 0x56, 0x10
	.byte 0x6D, 0x13, 0x47, 0xD6, 0x9A, 0x8C, 0x61, 0xD7, 0x37, 0x7A, 0x0C, 0xA1, 0x59, 0x8E, 0x14, 0xF8
	.byte 0xEB, 0x89, 0x3C, 0x13, 0xCE, 0xEE, 0x27, 0xA9, 0xB7, 0x35, 0xC9, 0x61, 0xE1, 0xED, 0xE5, 0x1C
	.byte 0x7A, 0x3C, 0xB1, 0x47, 0x9C, 0x59, 0xDF, 0xD2, 0x55, 0x3F, 0x73, 0xF2, 0x18, 0x79, 0xCE, 0x14
	.byte 0x73, 0xBF, 0x37, 0xC7, 0x53, 0xEA, 0xCD, 0xF7, 0x5F, 0x5B, 0xAA, 0xFD, 0xDF, 0x14, 0x6F, 0x3D
	.byte 0x78, 0x86, 0xDB, 0x44, 0xCA, 0x81, 0xF3, 0xAF, 0xB9, 0x3E, 0xC4, 0x68, 0x38, 0x2C, 0x34, 0x24
	.byte 0xC2, 0x5F, 0x40, 0xA3, 0x16, 0x72, 0xC3, 0x1D, 0xBC, 0x0C, 0x25, 0xE2, 0x28, 0x8B, 0x49, 0x3C
	.byte 0xFF, 0x41, 0x95, 0x0D, 0x39, 0x71, 0x01, 0xA8, 0x08, 0xDE, 0xB3, 0x0C, 0xD8, 0x9C, 0xE4, 0xB4
	.byte 0x64, 0x90, 0xC1, 0x56, 0x7B, 0x61, 0x84, 0xCB, 0xD5, 0x70, 0xB6, 0x32, 0x48, 0x74, 0x5C, 0x6C
	.byte 0xD0, 0x42, 0x57, 0xB8
	.global ov17_0210FC74
ov17_0210FC74:
	.byte 0x52, 0x52, 0x52, 0x52, 0x09, 0x09, 0x09, 0x09, 0x6A, 0x6A, 0x6A, 0x6A
	.byte 0xD5, 0xD5, 0xD5, 0xD5, 0x30, 0x30, 0x30, 0x30, 0x36, 0x36, 0x36, 0x36, 0xA5, 0xA5, 0xA5, 0xA5
	.byte 0x38, 0x38, 0x38, 0x38, 0xBF, 0xBF, 0xBF, 0xBF, 0x40, 0x40, 0x40, 0x40, 0xA3, 0xA3, 0xA3, 0xA3
	.byte 0x9E, 0x9E, 0x9E, 0x9E, 0x81, 0x81, 0x81, 0x81, 0xF3, 0xF3, 0xF3, 0xF3, 0xD7, 0xD7, 0xD7, 0xD7
	.byte 0xFB, 0xFB, 0xFB, 0xFB, 0x7C, 0x7C, 0x7C, 0x7C, 0xE3, 0xE3, 0xE3, 0xE3, 0x39, 0x39, 0x39, 0x39
	.byte 0x82, 0x82, 0x82, 0x82, 0x9B, 0x9B, 0x9B, 0x9B, 0x2F, 0x2F, 0x2F, 0x2F, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x87, 0x87, 0x87, 0x87, 0x34, 0x34, 0x34, 0x34, 0x8E, 0x8E, 0x8E, 0x8E, 0x43, 0x43, 0x43, 0x43
	.byte 0x44, 0x44, 0x44, 0x44, 0xC4, 0xC4, 0xC4, 0xC4, 0xDE, 0xDE, 0xDE, 0xDE, 0xE9, 0xE9, 0xE9, 0xE9
	.byte 0xCB, 0xCB, 0xCB, 0xCB, 0x54, 0x54, 0x54, 0x54, 0x7B, 0x7B, 0x7B, 0x7B, 0x94, 0x94, 0x94, 0x94
	.byte 0x32, 0x32, 0x32, 0x32, 0xA6, 0xA6, 0xA6, 0xA6, 0xC2, 0xC2, 0xC2, 0xC2, 0x23, 0x23, 0x23, 0x23
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0xEE, 0xEE, 0xEE, 0xEE, 0x4C, 0x4C, 0x4C, 0x4C, 0x95, 0x95, 0x95, 0x95
	.byte 0x0B, 0x0B, 0x0B, 0x0B, 0x42, 0x42, 0x42, 0x42, 0xFA, 0xFA, 0xFA, 0xFA, 0xC3, 0xC3, 0xC3, 0xC3
	.byte 0x4E, 0x4E, 0x4E, 0x4E, 0x08, 0x08, 0x08, 0x08, 0x2E, 0x2E, 0x2E, 0x2E, 0xA1, 0xA1, 0xA1, 0xA1
	.byte 0x66, 0x66, 0x66, 0x66, 0x28, 0x28, 0x28, 0x28, 0xD9, 0xD9, 0xD9, 0xD9, 0x24, 0x24, 0x24, 0x24
	.byte 0xB2, 0xB2, 0xB2, 0xB2, 0x76, 0x76, 0x76, 0x76, 0x5B, 0x5B, 0x5B, 0x5B, 0xA2, 0xA2, 0xA2, 0xA2
	.byte 0x49, 0x49, 0x49, 0x49, 0x6D, 0x6D, 0x6D, 0x6D, 0x8B, 0x8B, 0x8B, 0x8B, 0xD1, 0xD1, 0xD1, 0xD1
	.byte 0x25, 0x25, 0x25, 0x25, 0x72, 0x72, 0x72, 0x72, 0xF8, 0xF8, 0xF8, 0xF8, 0xF6, 0xF6, 0xF6, 0xF6
	.byte 0x64, 0x64, 0x64, 0x64, 0x86, 0x86, 0x86, 0x86, 0x68, 0x68, 0x68, 0x68, 0x98, 0x98, 0x98, 0x98
	.byte 0x16, 0x16, 0x16, 0x16, 0xD4, 0xD4, 0xD4, 0xD4, 0xA4, 0xA4, 0xA4, 0xA4, 0x5C, 0x5C, 0x5C, 0x5C
	.byte 0xCC, 0xCC, 0xCC, 0xCC, 0x5D, 0x5D, 0x5D, 0x5D, 0x65, 0x65, 0x65, 0x65, 0xB6, 0xB6, 0xB6, 0xB6
	.byte 0x92, 0x92, 0x92, 0x92, 0x6C, 0x6C, 0x6C, 0x6C, 0x70, 0x70, 0x70, 0x70, 0x48, 0x48, 0x48, 0x48
	.byte 0x50, 0x50, 0x50, 0x50, 0xFD, 0xFD, 0xFD, 0xFD, 0xED, 0xED, 0xED, 0xED, 0xB9, 0xB9, 0xB9, 0xB9
	.byte 0xDA, 0xDA, 0xDA, 0xDA, 0x5E, 0x5E, 0x5E, 0x5E, 0x15, 0x15, 0x15, 0x15, 0x46, 0x46, 0x46, 0x46
	.byte 0x57, 0x57, 0x57, 0x57, 0xA7, 0xA7, 0xA7, 0xA7, 0x8D, 0x8D, 0x8D, 0x8D, 0x9D, 0x9D, 0x9D, 0x9D
	.byte 0x84, 0x84, 0x84, 0x84, 0x90, 0x90, 0x90, 0x90, 0xD8, 0xD8, 0xD8, 0xD8, 0xAB, 0xAB, 0xAB, 0xAB
	.byte 0x00, 0x00, 0x00, 0x00, 0x8C, 0x8C, 0x8C, 0x8C, 0xBC, 0xBC, 0xBC, 0xBC, 0xD3, 0xD3, 0xD3, 0xD3
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0xF7, 0xF7, 0xF7, 0xF7, 0xE4, 0xE4, 0xE4, 0xE4, 0x58, 0x58, 0x58, 0x58
	.byte 0x05, 0x05, 0x05, 0x05, 0xB8, 0xB8, 0xB8, 0xB8, 0xB3, 0xB3, 0xB3, 0xB3, 0x45, 0x45, 0x45, 0x45
	.byte 0x06, 0x06, 0x06, 0x06, 0xD0, 0xD0, 0xD0, 0xD0, 0x2C, 0x2C, 0x2C, 0x2C, 0x1E, 0x1E, 0x1E, 0x1E
	.byte 0x8F, 0x8F, 0x8F, 0x8F, 0xCA, 0xCA, 0xCA, 0xCA, 0x3F, 0x3F, 0x3F, 0x3F, 0x0F, 0x0F, 0x0F, 0x0F
	.byte 0x02, 0x02, 0x02, 0x02, 0xC1, 0xC1, 0xC1, 0xC1, 0xAF, 0xAF, 0xAF, 0xAF, 0xBD, 0xBD, 0xBD, 0xBD
	.byte 0x03, 0x03, 0x03, 0x03, 0x01, 0x01, 0x01, 0x01, 0x13, 0x13, 0x13, 0x13, 0x8A, 0x8A, 0x8A, 0x8A
	.byte 0x6B, 0x6B, 0x6B, 0x6B, 0x3A, 0x3A, 0x3A, 0x3A, 0x91, 0x91, 0x91, 0x91, 0x11, 0x11, 0x11, 0x11
	.byte 0x41, 0x41, 0x41, 0x41, 0x4F, 0x4F, 0x4F, 0x4F, 0x67, 0x67, 0x67, 0x67, 0xDC, 0xDC, 0xDC, 0xDC
	.byte 0xEA, 0xEA, 0xEA, 0xEA, 0x97, 0x97, 0x97, 0x97, 0xF2, 0xF2, 0xF2, 0xF2, 0xCF, 0xCF, 0xCF, 0xCF
	.byte 0xCE, 0xCE, 0xCE, 0xCE, 0xF0, 0xF0, 0xF0, 0xF0, 0xB4, 0xB4, 0xB4, 0xB4, 0xE6, 0xE6, 0xE6, 0xE6
	.byte 0x73, 0x73, 0x73, 0x73, 0x96, 0x96, 0x96, 0x96, 0xAC, 0xAC, 0xAC, 0xAC, 0x74, 0x74, 0x74, 0x74
	.byte 0x22, 0x22, 0x22, 0x22, 0xE7, 0xE7, 0xE7, 0xE7, 0xAD, 0xAD, 0xAD, 0xAD, 0x35, 0x35, 0x35, 0x35
	.byte 0x85, 0x85, 0x85, 0x85, 0xE2, 0xE2, 0xE2, 0xE2, 0xF9, 0xF9, 0xF9, 0xF9, 0x37, 0x37, 0x37, 0x37
	.byte 0xE8, 0xE8, 0xE8, 0xE8, 0x1C, 0x1C, 0x1C, 0x1C, 0x75, 0x75, 0x75, 0x75, 0xDF, 0xDF, 0xDF, 0xDF
	.byte 0x6E, 0x6E, 0x6E, 0x6E, 0x47, 0x47, 0x47, 0x47, 0xF1, 0xF1, 0xF1, 0xF1, 0x1A, 0x1A, 0x1A, 0x1A
	.byte 0x71, 0x71, 0x71, 0x71, 0x1D, 0x1D, 0x1D, 0x1D, 0x29, 0x29, 0x29, 0x29, 0xC5, 0xC5, 0xC5, 0xC5
	.byte 0x89, 0x89, 0x89, 0x89, 0x6F, 0x6F, 0x6F, 0x6F, 0xB7, 0xB7, 0xB7, 0xB7, 0x62, 0x62, 0x62, 0x62
	.byte 0x0E, 0x0E, 0x0E, 0x0E, 0xAA, 0xAA, 0xAA, 0xAA, 0x18, 0x18, 0x18, 0x18, 0xBE, 0xBE, 0xBE, 0xBE
	.byte 0x1B, 0x1B, 0x1B, 0x1B, 0xFC, 0xFC, 0xFC, 0xFC, 0x56, 0x56, 0x56, 0x56, 0x3E, 0x3E, 0x3E, 0x3E
	.byte 0x4B, 0x4B, 0x4B, 0x4B, 0xC6, 0xC6, 0xC6, 0xC6, 0xD2, 0xD2, 0xD2, 0xD2, 0x79, 0x79, 0x79, 0x79
	.byte 0x20, 0x20, 0x20, 0x20, 0x9A, 0x9A, 0x9A, 0x9A, 0xDB, 0xDB, 0xDB, 0xDB, 0xC0, 0xC0, 0xC0, 0xC0
	.byte 0xFE, 0xFE, 0xFE, 0xFE, 0x78, 0x78, 0x78, 0x78, 0xCD, 0xCD, 0xCD, 0xCD, 0x5A, 0x5A, 0x5A, 0x5A
	.byte 0xF4, 0xF4, 0xF4, 0xF4, 0x1F, 0x1F, 0x1F, 0x1F, 0xDD, 0xDD, 0xDD, 0xDD, 0xA8, 0xA8, 0xA8, 0xA8
	.byte 0x33, 0x33, 0x33, 0x33, 0x88, 0x88, 0x88, 0x88, 0x07, 0x07, 0x07, 0x07, 0xC7, 0xC7, 0xC7, 0xC7
	.byte 0x31, 0x31, 0x31, 0x31, 0xB1, 0xB1, 0xB1, 0xB1, 0x12, 0x12, 0x12, 0x12, 0x10, 0x10, 0x10, 0x10
	.byte 0x59, 0x59, 0x59, 0x59, 0x27, 0x27, 0x27, 0x27, 0x80, 0x80, 0x80, 0x80, 0xEC, 0xEC, 0xEC, 0xEC
	.byte 0x5F, 0x5F, 0x5F, 0x5F, 0x60, 0x60, 0x60, 0x60, 0x51, 0x51, 0x51, 0x51, 0x7F, 0x7F, 0x7F, 0x7F
	.byte 0xA9, 0xA9, 0xA9, 0xA9, 0x19, 0x19, 0x19, 0x19, 0xB5, 0xB5, 0xB5, 0xB5, 0x4A, 0x4A, 0x4A, 0x4A
	.byte 0x0D, 0x0D, 0x0D, 0x0D, 0x2D, 0x2D, 0x2D, 0x2D, 0xE5, 0xE5, 0xE5, 0xE5, 0x7A, 0x7A, 0x7A, 0x7A
	.byte 0x9F, 0x9F, 0x9F, 0x9F, 0x93, 0x93, 0x93, 0x93, 0xC9, 0xC9, 0xC9, 0xC9, 0x9C, 0x9C, 0x9C, 0x9C
	.byte 0xEF, 0xEF, 0xEF, 0xEF, 0xA0, 0xA0, 0xA0, 0xA0, 0xE0, 0xE0, 0xE0, 0xE0, 0x3B, 0x3B, 0x3B, 0x3B
	.byte 0x4D, 0x4D, 0x4D, 0x4D, 0xAE, 0xAE, 0xAE, 0xAE, 0x2A, 0x2A, 0x2A, 0x2A, 0xF5, 0xF5, 0xF5, 0xF5
	.byte 0xB0, 0xB0, 0xB0, 0xB0, 0xC8, 0xC8, 0xC8, 0xC8, 0xEB, 0xEB, 0xEB, 0xEB, 0xBB, 0xBB, 0xBB, 0xBB
	.byte 0x3C, 0x3C, 0x3C, 0x3C, 0x83, 0x83, 0x83, 0x83, 0x53, 0x53, 0x53, 0x53, 0x99, 0x99, 0x99, 0x99
	.byte 0x61, 0x61, 0x61, 0x61, 0x17, 0x17, 0x17, 0x17, 0x2B, 0x2B, 0x2B, 0x2B, 0x04, 0x04, 0x04, 0x04
	.byte 0x7E, 0x7E, 0x7E, 0x7E, 0xBA, 0xBA, 0xBA, 0xBA, 0x77, 0x77, 0x77, 0x77, 0xD6, 0xD6, 0xD6, 0xD6
	.byte 0x26, 0x26, 0x26, 0x26, 0xE1, 0xE1, 0xE1, 0xE1, 0x69, 0x69, 0x69, 0x69, 0x14, 0x14, 0x14, 0x14
	.byte 0x63, 0x63, 0x63, 0x63, 0x55, 0x55, 0x55, 0x55, 0x21, 0x21, 0x21, 0x21, 0x0C, 0x0C, 0x0C, 0x0C
	.byte 0x7D, 0x7D, 0x7D, 0x7D
	.global ov17_02110074
ov17_02110074:
	.byte 0xA5, 0x63, 0x63, 0xC6, 0x84, 0x7C, 0x7C, 0xF8, 0x99, 0x77, 0x77, 0xEE
	.byte 0x8D, 0x7B, 0x7B, 0xF6, 0x0D, 0xF2, 0xF2, 0xFF, 0xBD, 0x6B, 0x6B, 0xD6, 0xB1, 0x6F, 0x6F, 0xDE
	.byte 0x54, 0xC5, 0xC5, 0x91, 0x50, 0x30, 0x30, 0x60, 0x03, 0x01, 0x01, 0x02, 0xA9, 0x67, 0x67, 0xCE
	.byte 0x7D, 0x2B, 0x2B, 0x56, 0x19, 0xFE, 0xFE, 0xE7, 0x62, 0xD7, 0xD7, 0xB5, 0xE6, 0xAB, 0xAB, 0x4D
	.byte 0x9A, 0x76, 0x76, 0xEC, 0x45, 0xCA, 0xCA, 0x8F, 0x9D, 0x82, 0x82, 0x1F, 0x40, 0xC9, 0xC9, 0x89
	.byte 0x87, 0x7D, 0x7D, 0xFA, 0x15, 0xFA, 0xFA, 0xEF, 0xEB, 0x59, 0x59, 0xB2, 0xC9, 0x47, 0x47, 0x8E
	.byte 0x0B, 0xF0, 0xF0, 0xFB, 0xEC, 0xAD, 0xAD, 0x41, 0x67, 0xD4, 0xD4, 0xB3, 0xFD, 0xA2, 0xA2, 0x5F
	.byte 0xEA, 0xAF, 0xAF, 0x45, 0xBF, 0x9C, 0x9C, 0x23, 0xF7, 0xA4, 0xA4, 0x53, 0x96, 0x72, 0x72, 0xE4
	.byte 0x5B, 0xC0, 0xC0, 0x9B, 0xC2, 0xB7, 0xB7, 0x75, 0x1C, 0xFD, 0xFD, 0xE1, 0xAE, 0x93, 0x93, 0x3D
	.byte 0x6A, 0x26, 0x26, 0x4C, 0x5A, 0x36, 0x36, 0x6C, 0x41, 0x3F, 0x3F, 0x7E, 0x02, 0xF7, 0xF7, 0xF5
	.byte 0x4F, 0xCC, 0xCC, 0x83, 0x5C, 0x34, 0x34, 0x68, 0xF4, 0xA5, 0xA5, 0x51, 0x34, 0xE5, 0xE5, 0xD1
	.byte 0x08, 0xF1, 0xF1, 0xF9, 0x93, 0x71, 0x71, 0xE2, 0x73, 0xD8, 0xD8, 0xAB, 0x53, 0x31, 0x31, 0x62
	.byte 0x3F, 0x15, 0x15, 0x2A, 0x0C, 0x04, 0x04, 0x08, 0x52, 0xC7, 0xC7, 0x95, 0x65, 0x23, 0x23, 0x46
	.byte 0x5E, 0xC3, 0xC3, 0x9D, 0x28, 0x18, 0x18, 0x30, 0xA1, 0x96, 0x96, 0x37, 0x0F, 0x05, 0x05, 0x0A
	.byte 0xB5, 0x9A, 0x9A, 0x2F, 0x09, 0x07, 0x07, 0x0E, 0x36, 0x12, 0x12, 0x24, 0x9B, 0x80, 0x80, 0x1B
	.byte 0x3D, 0xE2, 0xE2, 0xDF, 0x26, 0xEB, 0xEB, 0xCD, 0x69, 0x27, 0x27, 0x4E, 0xCD, 0xB2, 0xB2, 0x7F
	.byte 0x9F, 0x75, 0x75, 0xEA, 0x1B, 0x09, 0x09, 0x12, 0x9E, 0x83, 0x83, 0x1D, 0x74, 0x2C, 0x2C, 0x58
	.byte 0x2E, 0x1A, 0x1A, 0x34, 0x2D, 0x1B, 0x1B, 0x36, 0xB2, 0x6E, 0x6E, 0xDC, 0xEE, 0x5A, 0x5A, 0xB4
	.byte 0xFB, 0xA0, 0xA0, 0x5B, 0xF6, 0x52, 0x52, 0xA4, 0x4D, 0x3B, 0x3B, 0x76, 0x61, 0xD6, 0xD6, 0xB7
	.byte 0xCE, 0xB3, 0xB3, 0x7D, 0x7B, 0x29, 0x29, 0x52, 0x3E, 0xE3, 0xE3, 0xDD, 0x71, 0x2F, 0x2F, 0x5E
	.byte 0x97, 0x84, 0x84, 0x13, 0xF5, 0x53, 0x53, 0xA6, 0x68, 0xD1, 0xD1, 0xB9, 0x00, 0x00, 0x00, 0x00
	.byte 0x2C, 0xED, 0xED, 0xC1, 0x60, 0x20, 0x20, 0x40, 0x1F, 0xFC, 0xFC, 0xE3, 0xC8, 0xB1, 0xB1, 0x79
	.byte 0xED, 0x5B, 0x5B, 0xB6, 0xBE, 0x6A, 0x6A, 0xD4, 0x46, 0xCB, 0xCB, 0x8D, 0xD9, 0xBE, 0xBE, 0x67
	.byte 0x4B, 0x39, 0x39, 0x72, 0xDE, 0x4A, 0x4A, 0x94, 0xD4, 0x4C, 0x4C, 0x98, 0xE8, 0x58, 0x58, 0xB0
	.byte 0x4A, 0xCF, 0xCF, 0x85, 0x6B, 0xD0, 0xD0, 0xBB, 0x2A, 0xEF, 0xEF, 0xC5, 0xE5, 0xAA, 0xAA, 0x4F
	.byte 0x16, 0xFB, 0xFB, 0xED, 0xC5, 0x43, 0x43, 0x86, 0xD7, 0x4D, 0x4D, 0x9A, 0x55, 0x33, 0x33, 0x66
	.byte 0x94, 0x85, 0x85, 0x11, 0xCF, 0x45, 0x45, 0x8A, 0x10, 0xF9, 0xF9, 0xE9, 0x06, 0x02, 0x02, 0x04
	.byte 0x81, 0x7F, 0x7F, 0xFE, 0xF0, 0x50, 0x50, 0xA0, 0x44, 0x3C, 0x3C, 0x78, 0xBA, 0x9F, 0x9F, 0x25
	.byte 0xE3, 0xA8, 0xA8, 0x4B, 0xF3, 0x51, 0x51, 0xA2, 0xFE, 0xA3, 0xA3, 0x5D, 0xC0, 0x40, 0x40, 0x80
	.byte 0x8A, 0x8F, 0x8F, 0x05, 0xAD, 0x92, 0x92, 0x3F, 0xBC, 0x9D, 0x9D, 0x21, 0x48, 0x38, 0x38, 0x70
	.byte 0x04, 0xF5, 0xF5, 0xF1, 0xDF, 0xBC, 0xBC, 0x63, 0xC1, 0xB6, 0xB6, 0x77, 0x75, 0xDA, 0xDA, 0xAF
	.byte 0x63, 0x21, 0x21, 0x42, 0x30, 0x10, 0x10, 0x20, 0x1A, 0xFF, 0xFF, 0xE5, 0x0E, 0xF3, 0xF3, 0xFD
	.byte 0x6D, 0xD2, 0xD2, 0xBF, 0x4C, 0xCD, 0xCD, 0x81, 0x14, 0x0C, 0x0C, 0x18, 0x35, 0x13, 0x13, 0x26
	.byte 0x2F, 0xEC, 0xEC, 0xC3, 0xE1, 0x5F, 0x5F, 0xBE, 0xA2, 0x97, 0x97, 0x35, 0xCC, 0x44, 0x44, 0x88
	.byte 0x39, 0x17, 0x17, 0x2E, 0x57, 0xC4, 0xC4, 0x93, 0xF2, 0xA7, 0xA7, 0x55, 0x82, 0x7E, 0x7E, 0xFC
	.byte 0x47, 0x3D, 0x3D, 0x7A, 0xAC, 0x64, 0x64, 0xC8, 0xE7, 0x5D, 0x5D, 0xBA, 0x2B, 0x19, 0x19, 0x32
	.byte 0x95, 0x73, 0x73, 0xE6, 0xA0, 0x60, 0x60, 0xC0, 0x98, 0x81, 0x81, 0x19, 0xD1, 0x4F, 0x4F, 0x9E
	.byte 0x7F, 0xDC, 0xDC, 0xA3, 0x66, 0x22, 0x22, 0x44, 0x7E, 0x2A, 0x2A, 0x54, 0xAB, 0x90, 0x90, 0x3B
	.byte 0x83, 0x88, 0x88, 0x0B, 0xCA, 0x46, 0x46, 0x8C, 0x29, 0xEE, 0xEE, 0xC7, 0xD3, 0xB8, 0xB8, 0x6B
	.byte 0x3C, 0x14, 0x14, 0x28, 0x79, 0xDE, 0xDE, 0xA7, 0xE2, 0x5E, 0x5E, 0xBC, 0x1D, 0x0B, 0x0B, 0x16
	.byte 0x76, 0xDB, 0xDB, 0xAD, 0x3B, 0xE0, 0xE0, 0xDB, 0x56, 0x32, 0x32, 0x64, 0x4E, 0x3A, 0x3A, 0x74
	.byte 0x1E, 0x0A, 0x0A, 0x14, 0xDB, 0x49, 0x49, 0x92, 0x0A, 0x06, 0x06, 0x0C, 0x6C, 0x24, 0x24, 0x48
	.byte 0xE4, 0x5C, 0x5C, 0xB8, 0x5D, 0xC2, 0xC2, 0x9F, 0x6E, 0xD3, 0xD3, 0xBD, 0xEF, 0xAC, 0xAC, 0x43
	.byte 0xA6, 0x62, 0x62, 0xC4, 0xA8, 0x91, 0x91, 0x39, 0xA4, 0x95, 0x95, 0x31, 0x37, 0xE4, 0xE4, 0xD3
	.byte 0x8B, 0x79, 0x79, 0xF2, 0x32, 0xE7, 0xE7, 0xD5, 0x43, 0xC8, 0xC8, 0x8B, 0x59, 0x37, 0x37, 0x6E
	.byte 0xB7, 0x6D, 0x6D, 0xDA, 0x8C, 0x8D, 0x8D, 0x01, 0x64, 0xD5, 0xD5, 0xB1, 0xD2, 0x4E, 0x4E, 0x9C
	.byte 0xE0, 0xA9, 0xA9, 0x49, 0xB4, 0x6C, 0x6C, 0xD8, 0xFA, 0x56, 0x56, 0xAC, 0x07, 0xF4, 0xF4, 0xF3
	.byte 0x25, 0xEA, 0xEA, 0xCF, 0xAF, 0x65, 0x65, 0xCA, 0x8E, 0x7A, 0x7A, 0xF4, 0xE9, 0xAE, 0xAE, 0x47
	.byte 0x18, 0x08, 0x08, 0x10, 0xD5, 0xBA, 0xBA, 0x6F, 0x88, 0x78, 0x78, 0xF0, 0x6F, 0x25, 0x25, 0x4A
	.byte 0x72, 0x2E, 0x2E, 0x5C, 0x24, 0x1C, 0x1C, 0x38, 0xF1, 0xA6, 0xA6, 0x57, 0xC7, 0xB4, 0xB4, 0x73
	.byte 0x51, 0xC6, 0xC6, 0x97, 0x23, 0xE8, 0xE8, 0xCB, 0x7C, 0xDD, 0xDD, 0xA1, 0x9C, 0x74, 0x74, 0xE8
	.byte 0x21, 0x1F, 0x1F, 0x3E, 0xDD, 0x4B, 0x4B, 0x96, 0xDC, 0xBD, 0xBD, 0x61, 0x86, 0x8B, 0x8B, 0x0D
	.byte 0x85, 0x8A, 0x8A, 0x0F, 0x90, 0x70, 0x70, 0xE0, 0x42, 0x3E, 0x3E, 0x7C, 0xC4, 0xB5, 0xB5, 0x71
	.byte 0xAA, 0x66, 0x66, 0xCC, 0xD8, 0x48, 0x48, 0x90, 0x05, 0x03, 0x03, 0x06, 0x01, 0xF6, 0xF6, 0xF7
	.byte 0x12, 0x0E, 0x0E, 0x1C, 0xA3, 0x61, 0x61, 0xC2, 0x5F, 0x35, 0x35, 0x6A, 0xF9, 0x57, 0x57, 0xAE
	.byte 0xD0, 0xB9, 0xB9, 0x69, 0x91, 0x86, 0x86, 0x17, 0x58, 0xC1, 0xC1, 0x99, 0x27, 0x1D, 0x1D, 0x3A
	.byte 0xB9, 0x9E, 0x9E, 0x27, 0x38, 0xE1, 0xE1, 0xD9, 0x13, 0xF8, 0xF8, 0xEB, 0xB3, 0x98, 0x98, 0x2B
	.byte 0x33, 0x11, 0x11, 0x22, 0xBB, 0x69, 0x69, 0xD2, 0x70, 0xD9, 0xD9, 0xA9, 0x89, 0x8E, 0x8E, 0x07
	.byte 0xA7, 0x94, 0x94, 0x33, 0xB6, 0x9B, 0x9B, 0x2D, 0x22, 0x1E, 0x1E, 0x3C, 0x92, 0x87, 0x87, 0x15
	.byte 0x20, 0xE9, 0xE9, 0xC9, 0x49, 0xCE, 0xCE, 0x87, 0xFF, 0x55, 0x55, 0xAA, 0x78, 0x28, 0x28, 0x50
	.byte 0x7A, 0xDF, 0xDF, 0xA5, 0x8F, 0x8C, 0x8C, 0x03, 0xF8, 0xA1, 0xA1, 0x59, 0x80, 0x89, 0x89, 0x09
	.byte 0x17, 0x0D, 0x0D, 0x1A, 0xDA, 0xBF, 0xBF, 0x65, 0x31, 0xE6, 0xE6, 0xD7, 0xC6, 0x42, 0x42, 0x84
	.byte 0xB8, 0x68, 0x68, 0xD0, 0xC3, 0x41, 0x41, 0x82, 0xB0, 0x99, 0x99, 0x29, 0x77, 0x2D, 0x2D, 0x5A
	.byte 0x11, 0x0F, 0x0F, 0x1E, 0xCB, 0xB0, 0xB0, 0x7B, 0xFC, 0x54, 0x54, 0xA8, 0xD6, 0xBB, 0xBB, 0x6D
	.byte 0x3A, 0x16, 0x16, 0x2C
	.global ov17_02110474
ov17_02110474:
	.byte 0x63, 0x63, 0xC6, 0xA5, 0x7C, 0x7C, 0xF8, 0x84, 0x77, 0x77, 0xEE, 0x99
	.byte 0x7B, 0x7B, 0xF6, 0x8D, 0xF2, 0xF2, 0xFF, 0x0D, 0x6B, 0x6B, 0xD6, 0xBD, 0x6F, 0x6F, 0xDE, 0xB1
	.byte 0xC5, 0xC5, 0x91, 0x54, 0x30, 0x30, 0x60, 0x50, 0x01, 0x01, 0x02, 0x03, 0x67, 0x67, 0xCE, 0xA9
	.byte 0x2B, 0x2B, 0x56, 0x7D, 0xFE, 0xFE, 0xE7, 0x19, 0xD7, 0xD7, 0xB5, 0x62, 0xAB, 0xAB, 0x4D, 0xE6
	.byte 0x76, 0x76, 0xEC, 0x9A, 0xCA, 0xCA, 0x8F, 0x45, 0x82, 0x82, 0x1F, 0x9D, 0xC9, 0xC9, 0x89, 0x40
	.byte 0x7D, 0x7D, 0xFA, 0x87, 0xFA, 0xFA, 0xEF, 0x15, 0x59, 0x59, 0xB2, 0xEB, 0x47, 0x47, 0x8E, 0xC9
	.byte 0xF0, 0xF0, 0xFB, 0x0B, 0xAD, 0xAD, 0x41, 0xEC, 0xD4, 0xD4, 0xB3, 0x67, 0xA2, 0xA2, 0x5F, 0xFD
	.byte 0xAF, 0xAF, 0x45, 0xEA, 0x9C, 0x9C, 0x23, 0xBF, 0xA4, 0xA4, 0x53, 0xF7, 0x72, 0x72, 0xE4, 0x96
	.byte 0xC0, 0xC0, 0x9B, 0x5B, 0xB7, 0xB7, 0x75, 0xC2, 0xFD, 0xFD, 0xE1, 0x1C, 0x93, 0x93, 0x3D, 0xAE
	.byte 0x26, 0x26, 0x4C, 0x6A, 0x36, 0x36, 0x6C, 0x5A, 0x3F, 0x3F, 0x7E, 0x41, 0xF7, 0xF7, 0xF5, 0x02
	.byte 0xCC, 0xCC, 0x83, 0x4F, 0x34, 0x34, 0x68, 0x5C, 0xA5, 0xA5, 0x51, 0xF4, 0xE5, 0xE5, 0xD1, 0x34
	.byte 0xF1, 0xF1, 0xF9, 0x08, 0x71, 0x71, 0xE2, 0x93, 0xD8, 0xD8, 0xAB, 0x73, 0x31, 0x31, 0x62, 0x53
	.byte 0x15, 0x15, 0x2A, 0x3F, 0x04, 0x04, 0x08, 0x0C, 0xC7, 0xC7, 0x95, 0x52, 0x23, 0x23, 0x46, 0x65
	.byte 0xC3, 0xC3, 0x9D, 0x5E, 0x18, 0x18, 0x30, 0x28, 0x96, 0x96, 0x37, 0xA1, 0x05, 0x05, 0x0A, 0x0F
	.byte 0x9A, 0x9A, 0x2F, 0xB5, 0x07, 0x07, 0x0E, 0x09, 0x12, 0x12, 0x24, 0x36, 0x80, 0x80, 0x1B, 0x9B
	.byte 0xE2, 0xE2, 0xDF, 0x3D, 0xEB, 0xEB, 0xCD, 0x26, 0x27, 0x27, 0x4E, 0x69, 0xB2, 0xB2, 0x7F, 0xCD
	.byte 0x75, 0x75, 0xEA, 0x9F, 0x09, 0x09, 0x12, 0x1B, 0x83, 0x83, 0x1D, 0x9E, 0x2C, 0x2C, 0x58, 0x74
	.byte 0x1A, 0x1A, 0x34, 0x2E, 0x1B, 0x1B, 0x36, 0x2D, 0x6E, 0x6E, 0xDC, 0xB2, 0x5A, 0x5A, 0xB4, 0xEE
	.byte 0xA0, 0xA0, 0x5B, 0xFB, 0x52, 0x52, 0xA4, 0xF6, 0x3B, 0x3B, 0x76, 0x4D, 0xD6, 0xD6, 0xB7, 0x61
	.byte 0xB3, 0xB3, 0x7D, 0xCE, 0x29, 0x29, 0x52, 0x7B, 0xE3, 0xE3, 0xDD, 0x3E, 0x2F, 0x2F, 0x5E, 0x71
	.byte 0x84, 0x84, 0x13, 0x97, 0x53, 0x53, 0xA6, 0xF5, 0xD1, 0xD1, 0xB9, 0x68, 0x00, 0x00, 0x00, 0x00
	.byte 0xED, 0xED, 0xC1, 0x2C, 0x20, 0x20, 0x40, 0x60, 0xFC, 0xFC, 0xE3, 0x1F, 0xB1, 0xB1, 0x79, 0xC8
	.byte 0x5B, 0x5B, 0xB6, 0xED, 0x6A, 0x6A, 0xD4, 0xBE, 0xCB, 0xCB, 0x8D, 0x46, 0xBE, 0xBE, 0x67, 0xD9
	.byte 0x39, 0x39, 0x72, 0x4B, 0x4A, 0x4A, 0x94, 0xDE, 0x4C, 0x4C, 0x98, 0xD4, 0x58, 0x58, 0xB0, 0xE8
	.byte 0xCF, 0xCF, 0x85, 0x4A, 0xD0, 0xD0, 0xBB, 0x6B, 0xEF, 0xEF, 0xC5, 0x2A, 0xAA, 0xAA, 0x4F, 0xE5
	.byte 0xFB, 0xFB, 0xED, 0x16, 0x43, 0x43, 0x86, 0xC5, 0x4D, 0x4D, 0x9A, 0xD7, 0x33, 0x33, 0x66, 0x55
	.byte 0x85, 0x85, 0x11, 0x94, 0x45, 0x45, 0x8A, 0xCF, 0xF9, 0xF9, 0xE9, 0x10, 0x02, 0x02, 0x04, 0x06
	.byte 0x7F, 0x7F, 0xFE, 0x81, 0x50, 0x50, 0xA0, 0xF0, 0x3C, 0x3C, 0x78, 0x44, 0x9F, 0x9F, 0x25, 0xBA
	.byte 0xA8, 0xA8, 0x4B, 0xE3, 0x51, 0x51, 0xA2, 0xF3, 0xA3, 0xA3, 0x5D, 0xFE, 0x40, 0x40, 0x80, 0xC0
	.byte 0x8F, 0x8F, 0x05, 0x8A, 0x92, 0x92, 0x3F, 0xAD, 0x9D, 0x9D, 0x21, 0xBC, 0x38, 0x38, 0x70, 0x48
	.byte 0xF5, 0xF5, 0xF1, 0x04, 0xBC, 0xBC, 0x63, 0xDF, 0xB6, 0xB6, 0x77, 0xC1, 0xDA, 0xDA, 0xAF, 0x75
	.byte 0x21, 0x21, 0x42, 0x63, 0x10, 0x10, 0x20, 0x30, 0xFF, 0xFF, 0xE5, 0x1A, 0xF3, 0xF3, 0xFD, 0x0E
	.byte 0xD2, 0xD2, 0xBF, 0x6D, 0xCD, 0xCD, 0x81, 0x4C, 0x0C, 0x0C, 0x18, 0x14, 0x13, 0x13, 0x26, 0x35
	.byte 0xEC, 0xEC, 0xC3, 0x2F, 0x5F, 0x5F, 0xBE, 0xE1, 0x97, 0x97, 0x35, 0xA2, 0x44, 0x44, 0x88, 0xCC
	.byte 0x17, 0x17, 0x2E, 0x39, 0xC4, 0xC4, 0x93, 0x57, 0xA7, 0xA7, 0x55, 0xF2, 0x7E, 0x7E, 0xFC, 0x82
	.byte 0x3D, 0x3D, 0x7A, 0x47, 0x64, 0x64, 0xC8, 0xAC, 0x5D, 0x5D, 0xBA, 0xE7, 0x19, 0x19, 0x32, 0x2B
	.byte 0x73, 0x73, 0xE6, 0x95, 0x60, 0x60, 0xC0, 0xA0, 0x81, 0x81, 0x19, 0x98, 0x4F, 0x4F, 0x9E, 0xD1
	.byte 0xDC, 0xDC, 0xA3, 0x7F, 0x22, 0x22, 0x44, 0x66, 0x2A, 0x2A, 0x54, 0x7E, 0x90, 0x90, 0x3B, 0xAB
	.byte 0x88, 0x88, 0x0B, 0x83, 0x46, 0x46, 0x8C, 0xCA, 0xEE, 0xEE, 0xC7, 0x29, 0xB8, 0xB8, 0x6B, 0xD3
	.byte 0x14, 0x14, 0x28, 0x3C, 0xDE, 0xDE, 0xA7, 0x79, 0x5E, 0x5E, 0xBC, 0xE2, 0x0B, 0x0B, 0x16, 0x1D
	.byte 0xDB, 0xDB, 0xAD, 0x76, 0xE0, 0xE0, 0xDB, 0x3B, 0x32, 0x32, 0x64, 0x56, 0x3A, 0x3A, 0x74, 0x4E
	.byte 0x0A, 0x0A, 0x14, 0x1E, 0x49, 0x49, 0x92, 0xDB, 0x06, 0x06, 0x0C, 0x0A, 0x24, 0x24, 0x48, 0x6C
	.byte 0x5C, 0x5C, 0xB8, 0xE4, 0xC2, 0xC2, 0x9F, 0x5D, 0xD3, 0xD3, 0xBD, 0x6E, 0xAC, 0xAC, 0x43, 0xEF
	.byte 0x62, 0x62, 0xC4, 0xA6, 0x91, 0x91, 0x39, 0xA8, 0x95, 0x95, 0x31, 0xA4, 0xE4, 0xE4, 0xD3, 0x37
	.byte 0x79, 0x79, 0xF2, 0x8B, 0xE7, 0xE7, 0xD5, 0x32, 0xC8, 0xC8, 0x8B, 0x43, 0x37, 0x37, 0x6E, 0x59
	.byte 0x6D, 0x6D, 0xDA, 0xB7, 0x8D, 0x8D, 0x01, 0x8C, 0xD5, 0xD5, 0xB1, 0x64, 0x4E, 0x4E, 0x9C, 0xD2
	.byte 0xA9, 0xA9, 0x49, 0xE0, 0x6C, 0x6C, 0xD8, 0xB4, 0x56, 0x56, 0xAC, 0xFA, 0xF4, 0xF4, 0xF3, 0x07
	.byte 0xEA, 0xEA, 0xCF, 0x25, 0x65, 0x65, 0xCA, 0xAF, 0x7A, 0x7A, 0xF4, 0x8E, 0xAE, 0xAE, 0x47, 0xE9
	.byte 0x08, 0x08, 0x10, 0x18, 0xBA, 0xBA, 0x6F, 0xD5, 0x78, 0x78, 0xF0, 0x88, 0x25, 0x25, 0x4A, 0x6F
	.byte 0x2E, 0x2E, 0x5C, 0x72, 0x1C, 0x1C, 0x38, 0x24, 0xA6, 0xA6, 0x57, 0xF1, 0xB4, 0xB4, 0x73, 0xC7
	.byte 0xC6, 0xC6, 0x97, 0x51, 0xE8, 0xE8, 0xCB, 0x23, 0xDD, 0xDD, 0xA1, 0x7C, 0x74, 0x74, 0xE8, 0x9C
	.byte 0x1F, 0x1F, 0x3E, 0x21, 0x4B, 0x4B, 0x96, 0xDD, 0xBD, 0xBD, 0x61, 0xDC, 0x8B, 0x8B, 0x0D, 0x86
	.byte 0x8A, 0x8A, 0x0F, 0x85, 0x70, 0x70, 0xE0, 0x90, 0x3E, 0x3E, 0x7C, 0x42, 0xB5, 0xB5, 0x71, 0xC4
	.byte 0x66, 0x66, 0xCC, 0xAA, 0x48, 0x48, 0x90, 0xD8, 0x03, 0x03, 0x06, 0x05, 0xF6, 0xF6, 0xF7, 0x01
	.byte 0x0E, 0x0E, 0x1C, 0x12, 0x61, 0x61, 0xC2, 0xA3, 0x35, 0x35, 0x6A, 0x5F, 0x57, 0x57, 0xAE, 0xF9
	.byte 0xB9, 0xB9, 0x69, 0xD0, 0x86, 0x86, 0x17, 0x91, 0xC1, 0xC1, 0x99, 0x58, 0x1D, 0x1D, 0x3A, 0x27
	.byte 0x9E, 0x9E, 0x27, 0xB9, 0xE1, 0xE1, 0xD9, 0x38, 0xF8, 0xF8, 0xEB, 0x13, 0x98, 0x98, 0x2B, 0xB3
	.byte 0x11, 0x11, 0x22, 0x33, 0x69, 0x69, 0xD2, 0xBB, 0xD9, 0xD9, 0xA9, 0x70, 0x8E, 0x8E, 0x07, 0x89
	.byte 0x94, 0x94, 0x33, 0xA7, 0x9B, 0x9B, 0x2D, 0xB6, 0x1E, 0x1E, 0x3C, 0x22, 0x87, 0x87, 0x15, 0x92
	.byte 0xE9, 0xE9, 0xC9, 0x20, 0xCE, 0xCE, 0x87, 0x49, 0x55, 0x55, 0xAA, 0xFF, 0x28, 0x28, 0x50, 0x78
	.byte 0xDF, 0xDF, 0xA5, 0x7A, 0x8C, 0x8C, 0x03, 0x8F, 0xA1, 0xA1, 0x59, 0xF8, 0x89, 0x89, 0x09, 0x80
	.byte 0x0D, 0x0D, 0x1A, 0x17, 0xBF, 0xBF, 0x65, 0xDA, 0xE6, 0xE6, 0xD7, 0x31, 0x42, 0x42, 0x84, 0xC6
	.byte 0x68, 0x68, 0xD0, 0xB8, 0x41, 0x41, 0x82, 0xC3, 0x99, 0x99, 0x29, 0xB0, 0x2D, 0x2D, 0x5A, 0x77
	.byte 0x0F, 0x0F, 0x1E, 0x11, 0xB0, 0xB0, 0x7B, 0xCB, 0x54, 0x54, 0xA8, 0xFC, 0xBB, 0xBB, 0x6D, 0xD6
	.byte 0x16, 0x16, 0x2C, 0x3A
	.global ov17_02110874
ov17_02110874:
	.byte 0x63, 0xC6, 0xA5, 0x63, 0x7C, 0xF8, 0x84, 0x7C, 0x77, 0xEE, 0x99, 0x77
	.byte 0x7B, 0xF6, 0x8D, 0x7B, 0xF2, 0xFF, 0x0D, 0xF2, 0x6B, 0xD6, 0xBD, 0x6B, 0x6F, 0xDE, 0xB1, 0x6F
	.byte 0xC5, 0x91, 0x54, 0xC5, 0x30, 0x60, 0x50, 0x30, 0x01, 0x02, 0x03, 0x01, 0x67, 0xCE, 0xA9, 0x67
	.byte 0x2B, 0x56, 0x7D, 0x2B, 0xFE, 0xE7, 0x19, 0xFE, 0xD7, 0xB5, 0x62, 0xD7, 0xAB, 0x4D, 0xE6, 0xAB
	.byte 0x76, 0xEC, 0x9A, 0x76, 0xCA, 0x8F, 0x45, 0xCA, 0x82, 0x1F, 0x9D, 0x82, 0xC9, 0x89, 0x40, 0xC9
	.byte 0x7D, 0xFA, 0x87, 0x7D, 0xFA, 0xEF, 0x15, 0xFA, 0x59, 0xB2, 0xEB, 0x59, 0x47, 0x8E, 0xC9, 0x47
	.byte 0xF0, 0xFB, 0x0B, 0xF0, 0xAD, 0x41, 0xEC, 0xAD, 0xD4, 0xB3, 0x67, 0xD4, 0xA2, 0x5F, 0xFD, 0xA2
	.byte 0xAF, 0x45, 0xEA, 0xAF, 0x9C, 0x23, 0xBF, 0x9C, 0xA4, 0x53, 0xF7, 0xA4, 0x72, 0xE4, 0x96, 0x72
	.byte 0xC0, 0x9B, 0x5B, 0xC0, 0xB7, 0x75, 0xC2, 0xB7, 0xFD, 0xE1, 0x1C, 0xFD, 0x93, 0x3D, 0xAE, 0x93
	.byte 0x26, 0x4C, 0x6A, 0x26, 0x36, 0x6C, 0x5A, 0x36, 0x3F, 0x7E, 0x41, 0x3F, 0xF7, 0xF5, 0x02, 0xF7
	.byte 0xCC, 0x83, 0x4F, 0xCC, 0x34, 0x68, 0x5C, 0x34, 0xA5, 0x51, 0xF4, 0xA5, 0xE5, 0xD1, 0x34, 0xE5
	.byte 0xF1, 0xF9, 0x08, 0xF1, 0x71, 0xE2, 0x93, 0x71, 0xD8, 0xAB, 0x73, 0xD8, 0x31, 0x62, 0x53, 0x31
	.byte 0x15, 0x2A, 0x3F, 0x15, 0x04, 0x08, 0x0C, 0x04, 0xC7, 0x95, 0x52, 0xC7, 0x23, 0x46, 0x65, 0x23
	.byte 0xC3, 0x9D, 0x5E, 0xC3, 0x18, 0x30, 0x28, 0x18, 0x96, 0x37, 0xA1, 0x96, 0x05, 0x0A, 0x0F, 0x05
	.byte 0x9A, 0x2F, 0xB5, 0x9A, 0x07, 0x0E, 0x09, 0x07, 0x12, 0x24, 0x36, 0x12, 0x80, 0x1B, 0x9B, 0x80
	.byte 0xE2, 0xDF, 0x3D, 0xE2, 0xEB, 0xCD, 0x26, 0xEB, 0x27, 0x4E, 0x69, 0x27, 0xB2, 0x7F, 0xCD, 0xB2
	.byte 0x75, 0xEA, 0x9F, 0x75, 0x09, 0x12, 0x1B, 0x09, 0x83, 0x1D, 0x9E, 0x83, 0x2C, 0x58, 0x74, 0x2C
	.byte 0x1A, 0x34, 0x2E, 0x1A, 0x1B, 0x36, 0x2D, 0x1B, 0x6E, 0xDC, 0xB2, 0x6E, 0x5A, 0xB4, 0xEE, 0x5A
	.byte 0xA0, 0x5B, 0xFB, 0xA0, 0x52, 0xA4, 0xF6, 0x52, 0x3B, 0x76, 0x4D, 0x3B, 0xD6, 0xB7, 0x61, 0xD6
	.byte 0xB3, 0x7D, 0xCE, 0xB3, 0x29, 0x52, 0x7B, 0x29, 0xE3, 0xDD, 0x3E, 0xE3, 0x2F, 0x5E, 0x71, 0x2F
	.byte 0x84, 0x13, 0x97, 0x84, 0x53, 0xA6, 0xF5, 0x53, 0xD1, 0xB9, 0x68, 0xD1, 0x00, 0x00, 0x00, 0x00
	.byte 0xED, 0xC1, 0x2C, 0xED, 0x20, 0x40, 0x60, 0x20, 0xFC, 0xE3, 0x1F, 0xFC, 0xB1, 0x79, 0xC8, 0xB1
	.byte 0x5B, 0xB6, 0xED, 0x5B, 0x6A, 0xD4, 0xBE, 0x6A, 0xCB, 0x8D, 0x46, 0xCB, 0xBE, 0x67, 0xD9, 0xBE
	.byte 0x39, 0x72, 0x4B, 0x39, 0x4A, 0x94, 0xDE, 0x4A, 0x4C, 0x98, 0xD4, 0x4C, 0x58, 0xB0, 0xE8, 0x58
	.byte 0xCF, 0x85, 0x4A, 0xCF, 0xD0, 0xBB, 0x6B, 0xD0, 0xEF, 0xC5, 0x2A, 0xEF, 0xAA, 0x4F, 0xE5, 0xAA
	.byte 0xFB, 0xED, 0x16, 0xFB, 0x43, 0x86, 0xC5, 0x43, 0x4D, 0x9A, 0xD7, 0x4D, 0x33, 0x66, 0x55, 0x33
	.byte 0x85, 0x11, 0x94, 0x85, 0x45, 0x8A, 0xCF, 0x45, 0xF9, 0xE9, 0x10, 0xF9, 0x02, 0x04, 0x06, 0x02
	.byte 0x7F, 0xFE, 0x81, 0x7F, 0x50, 0xA0, 0xF0, 0x50, 0x3C, 0x78, 0x44, 0x3C, 0x9F, 0x25, 0xBA, 0x9F
	.byte 0xA8, 0x4B, 0xE3, 0xA8, 0x51, 0xA2, 0xF3, 0x51, 0xA3, 0x5D, 0xFE, 0xA3, 0x40, 0x80, 0xC0, 0x40
	.byte 0x8F, 0x05, 0x8A, 0x8F, 0x92, 0x3F, 0xAD, 0x92, 0x9D, 0x21, 0xBC, 0x9D, 0x38, 0x70, 0x48, 0x38
	.byte 0xF5, 0xF1, 0x04, 0xF5, 0xBC, 0x63, 0xDF, 0xBC, 0xB6, 0x77, 0xC1, 0xB6, 0xDA, 0xAF, 0x75, 0xDA
	.byte 0x21, 0x42, 0x63, 0x21, 0x10, 0x20, 0x30, 0x10, 0xFF, 0xE5, 0x1A, 0xFF, 0xF3, 0xFD, 0x0E, 0xF3
	.byte 0xD2, 0xBF, 0x6D, 0xD2, 0xCD, 0x81, 0x4C, 0xCD, 0x0C, 0x18, 0x14, 0x0C, 0x13, 0x26, 0x35, 0x13
	.byte 0xEC, 0xC3, 0x2F, 0xEC, 0x5F, 0xBE, 0xE1, 0x5F, 0x97, 0x35, 0xA2, 0x97, 0x44, 0x88, 0xCC, 0x44
	.byte 0x17, 0x2E, 0x39, 0x17, 0xC4, 0x93, 0x57, 0xC4, 0xA7, 0x55, 0xF2, 0xA7, 0x7E, 0xFC, 0x82, 0x7E
	.byte 0x3D, 0x7A, 0x47, 0x3D, 0x64, 0xC8, 0xAC, 0x64, 0x5D, 0xBA, 0xE7, 0x5D, 0x19, 0x32, 0x2B, 0x19
	.byte 0x73, 0xE6, 0x95, 0x73, 0x60, 0xC0, 0xA0, 0x60, 0x81, 0x19, 0x98, 0x81, 0x4F, 0x9E, 0xD1, 0x4F
	.byte 0xDC, 0xA3, 0x7F, 0xDC, 0x22, 0x44, 0x66, 0x22, 0x2A, 0x54, 0x7E, 0x2A, 0x90, 0x3B, 0xAB, 0x90
	.byte 0x88, 0x0B, 0x83, 0x88, 0x46, 0x8C, 0xCA, 0x46, 0xEE, 0xC7, 0x29, 0xEE, 0xB8, 0x6B, 0xD3, 0xB8
	.byte 0x14, 0x28, 0x3C, 0x14, 0xDE, 0xA7, 0x79, 0xDE, 0x5E, 0xBC, 0xE2, 0x5E, 0x0B, 0x16, 0x1D, 0x0B
	.byte 0xDB, 0xAD, 0x76, 0xDB, 0xE0, 0xDB, 0x3B, 0xE0, 0x32, 0x64, 0x56, 0x32, 0x3A, 0x74, 0x4E, 0x3A
	.byte 0x0A, 0x14, 0x1E, 0x0A, 0x49, 0x92, 0xDB, 0x49, 0x06, 0x0C, 0x0A, 0x06, 0x24, 0x48, 0x6C, 0x24
	.byte 0x5C, 0xB8, 0xE4, 0x5C, 0xC2, 0x9F, 0x5D, 0xC2, 0xD3, 0xBD, 0x6E, 0xD3, 0xAC, 0x43, 0xEF, 0xAC
	.byte 0x62, 0xC4, 0xA6, 0x62, 0x91, 0x39, 0xA8, 0x91, 0x95, 0x31, 0xA4, 0x95, 0xE4, 0xD3, 0x37, 0xE4
	.byte 0x79, 0xF2, 0x8B, 0x79, 0xE7, 0xD5, 0x32, 0xE7, 0xC8, 0x8B, 0x43, 0xC8, 0x37, 0x6E, 0x59, 0x37
	.byte 0x6D, 0xDA, 0xB7, 0x6D, 0x8D, 0x01, 0x8C, 0x8D, 0xD5, 0xB1, 0x64, 0xD5, 0x4E, 0x9C, 0xD2, 0x4E
	.byte 0xA9, 0x49, 0xE0, 0xA9, 0x6C, 0xD8, 0xB4, 0x6C, 0x56, 0xAC, 0xFA, 0x56, 0xF4, 0xF3, 0x07, 0xF4
	.byte 0xEA, 0xCF, 0x25, 0xEA, 0x65, 0xCA, 0xAF, 0x65, 0x7A, 0xF4, 0x8E, 0x7A, 0xAE, 0x47, 0xE9, 0xAE
	.byte 0x08, 0x10, 0x18, 0x08, 0xBA, 0x6F, 0xD5, 0xBA, 0x78, 0xF0, 0x88, 0x78, 0x25, 0x4A, 0x6F, 0x25
	.byte 0x2E, 0x5C, 0x72, 0x2E, 0x1C, 0x38, 0x24, 0x1C, 0xA6, 0x57, 0xF1, 0xA6, 0xB4, 0x73, 0xC7, 0xB4
	.byte 0xC6, 0x97, 0x51, 0xC6, 0xE8, 0xCB, 0x23, 0xE8, 0xDD, 0xA1, 0x7C, 0xDD, 0x74, 0xE8, 0x9C, 0x74
	.byte 0x1F, 0x3E, 0x21, 0x1F, 0x4B, 0x96, 0xDD, 0x4B, 0xBD, 0x61, 0xDC, 0xBD, 0x8B, 0x0D, 0x86, 0x8B
	.byte 0x8A, 0x0F, 0x85, 0x8A, 0x70, 0xE0, 0x90, 0x70, 0x3E, 0x7C, 0x42, 0x3E, 0xB5, 0x71, 0xC4, 0xB5
	.byte 0x66, 0xCC, 0xAA, 0x66, 0x48, 0x90, 0xD8, 0x48, 0x03, 0x06, 0x05, 0x03, 0xF6, 0xF7, 0x01, 0xF6
	.byte 0x0E, 0x1C, 0x12, 0x0E, 0x61, 0xC2, 0xA3, 0x61, 0x35, 0x6A, 0x5F, 0x35, 0x57, 0xAE, 0xF9, 0x57
	.byte 0xB9, 0x69, 0xD0, 0xB9, 0x86, 0x17, 0x91, 0x86, 0xC1, 0x99, 0x58, 0xC1, 0x1D, 0x3A, 0x27, 0x1D
	.byte 0x9E, 0x27, 0xB9, 0x9E, 0xE1, 0xD9, 0x38, 0xE1, 0xF8, 0xEB, 0x13, 0xF8, 0x98, 0x2B, 0xB3, 0x98
	.byte 0x11, 0x22, 0x33, 0x11, 0x69, 0xD2, 0xBB, 0x69, 0xD9, 0xA9, 0x70, 0xD9, 0x8E, 0x07, 0x89, 0x8E
	.byte 0x94, 0x33, 0xA7, 0x94, 0x9B, 0x2D, 0xB6, 0x9B, 0x1E, 0x3C, 0x22, 0x1E, 0x87, 0x15, 0x92, 0x87
	.byte 0xE9, 0xC9, 0x20, 0xE9, 0xCE, 0x87, 0x49, 0xCE, 0x55, 0xAA, 0xFF, 0x55, 0x28, 0x50, 0x78, 0x28
	.byte 0xDF, 0xA5, 0x7A, 0xDF, 0x8C, 0x03, 0x8F, 0x8C, 0xA1, 0x59, 0xF8, 0xA1, 0x89, 0x09, 0x80, 0x89
	.byte 0x0D, 0x1A, 0x17, 0x0D, 0xBF, 0x65, 0xDA, 0xBF, 0xE6, 0xD7, 0x31, 0xE6, 0x42, 0x84, 0xC6, 0x42
	.byte 0x68, 0xD0, 0xB8, 0x68, 0x41, 0x82, 0xC3, 0x41, 0x99, 0x29, 0xB0, 0x99, 0x2D, 0x5A, 0x77, 0x2D
	.byte 0x0F, 0x1E, 0x11, 0x0F, 0xB0, 0x7B, 0xCB, 0xB0, 0x54, 0xA8, 0xFC, 0x54, 0xBB, 0x6D, 0xD6, 0xBB
	.byte 0x16, 0x2C, 0x3A, 0x16
	.global ov17_02110C74
ov17_02110C74:
	.byte 0xC6, 0xA5, 0x63, 0x63, 0xF8, 0x84, 0x7C, 0x7C, 0xEE, 0x99, 0x77, 0x77
	.byte 0xF6, 0x8D, 0x7B, 0x7B, 0xFF, 0x0D, 0xF2, 0xF2, 0xD6, 0xBD, 0x6B, 0x6B, 0xDE, 0xB1, 0x6F, 0x6F
	.byte 0x91, 0x54, 0xC5, 0xC5, 0x60, 0x50, 0x30, 0x30, 0x02, 0x03, 0x01, 0x01, 0xCE, 0xA9, 0x67, 0x67
	.byte 0x56, 0x7D, 0x2B, 0x2B, 0xE7, 0x19, 0xFE, 0xFE, 0xB5, 0x62, 0xD7, 0xD7, 0x4D, 0xE6, 0xAB, 0xAB
	.byte 0xEC, 0x9A, 0x76, 0x76, 0x8F, 0x45, 0xCA, 0xCA, 0x1F, 0x9D, 0x82, 0x82, 0x89, 0x40, 0xC9, 0xC9
	.byte 0xFA, 0x87, 0x7D, 0x7D, 0xEF, 0x15, 0xFA, 0xFA, 0xB2, 0xEB, 0x59, 0x59, 0x8E, 0xC9, 0x47, 0x47
	.byte 0xFB, 0x0B, 0xF0, 0xF0, 0x41, 0xEC, 0xAD, 0xAD, 0xB3, 0x67, 0xD4, 0xD4, 0x5F, 0xFD, 0xA2, 0xA2
	.byte 0x45, 0xEA, 0xAF, 0xAF, 0x23, 0xBF, 0x9C, 0x9C, 0x53, 0xF7, 0xA4, 0xA4, 0xE4, 0x96, 0x72, 0x72
	.byte 0x9B, 0x5B, 0xC0, 0xC0, 0x75, 0xC2, 0xB7, 0xB7, 0xE1, 0x1C, 0xFD, 0xFD, 0x3D, 0xAE, 0x93, 0x93
	.byte 0x4C, 0x6A, 0x26, 0x26, 0x6C, 0x5A, 0x36, 0x36, 0x7E, 0x41, 0x3F, 0x3F, 0xF5, 0x02, 0xF7, 0xF7
	.byte 0x83, 0x4F, 0xCC, 0xCC, 0x68, 0x5C, 0x34, 0x34, 0x51, 0xF4, 0xA5, 0xA5, 0xD1, 0x34, 0xE5, 0xE5
	.byte 0xF9, 0x08, 0xF1, 0xF1, 0xE2, 0x93, 0x71, 0x71, 0xAB, 0x73, 0xD8, 0xD8, 0x62, 0x53, 0x31, 0x31
	.byte 0x2A, 0x3F, 0x15, 0x15, 0x08, 0x0C, 0x04, 0x04, 0x95, 0x52, 0xC7, 0xC7, 0x46, 0x65, 0x23, 0x23
	.byte 0x9D, 0x5E, 0xC3, 0xC3, 0x30, 0x28, 0x18, 0x18, 0x37, 0xA1, 0x96, 0x96, 0x0A, 0x0F, 0x05, 0x05
	.byte 0x2F, 0xB5, 0x9A, 0x9A, 0x0E, 0x09, 0x07, 0x07, 0x24, 0x36, 0x12, 0x12, 0x1B, 0x9B, 0x80, 0x80
	.byte 0xDF, 0x3D, 0xE2, 0xE2, 0xCD, 0x26, 0xEB, 0xEB, 0x4E, 0x69, 0x27, 0x27, 0x7F, 0xCD, 0xB2, 0xB2
	.byte 0xEA, 0x9F, 0x75, 0x75, 0x12, 0x1B, 0x09, 0x09, 0x1D, 0x9E, 0x83, 0x83, 0x58, 0x74, 0x2C, 0x2C
	.byte 0x34, 0x2E, 0x1A, 0x1A, 0x36, 0x2D, 0x1B, 0x1B, 0xDC, 0xB2, 0x6E, 0x6E, 0xB4, 0xEE, 0x5A, 0x5A
	.byte 0x5B, 0xFB, 0xA0, 0xA0, 0xA4, 0xF6, 0x52, 0x52, 0x76, 0x4D, 0x3B, 0x3B, 0xB7, 0x61, 0xD6, 0xD6
	.byte 0x7D, 0xCE, 0xB3, 0xB3, 0x52, 0x7B, 0x29, 0x29, 0xDD, 0x3E, 0xE3, 0xE3, 0x5E, 0x71, 0x2F, 0x2F
	.byte 0x13, 0x97, 0x84, 0x84, 0xA6, 0xF5, 0x53, 0x53, 0xB9, 0x68, 0xD1, 0xD1, 0x00, 0x00, 0x00, 0x00
	.byte 0xC1, 0x2C, 0xED, 0xED, 0x40, 0x60, 0x20, 0x20, 0xE3, 0x1F, 0xFC, 0xFC, 0x79, 0xC8, 0xB1, 0xB1
	.byte 0xB6, 0xED, 0x5B, 0x5B, 0xD4, 0xBE, 0x6A, 0x6A, 0x8D, 0x46, 0xCB, 0xCB, 0x67, 0xD9, 0xBE, 0xBE
	.byte 0x72, 0x4B, 0x39, 0x39, 0x94, 0xDE, 0x4A, 0x4A, 0x98, 0xD4, 0x4C, 0x4C, 0xB0, 0xE8, 0x58, 0x58
	.byte 0x85, 0x4A, 0xCF, 0xCF, 0xBB, 0x6B, 0xD0, 0xD0, 0xC5, 0x2A, 0xEF, 0xEF, 0x4F, 0xE5, 0xAA, 0xAA
	.byte 0xED, 0x16, 0xFB, 0xFB, 0x86, 0xC5, 0x43, 0x43, 0x9A, 0xD7, 0x4D, 0x4D, 0x66, 0x55, 0x33, 0x33
	.byte 0x11, 0x94, 0x85, 0x85, 0x8A, 0xCF, 0x45, 0x45, 0xE9, 0x10, 0xF9, 0xF9, 0x04, 0x06, 0x02, 0x02
	.byte 0xFE, 0x81, 0x7F, 0x7F, 0xA0, 0xF0, 0x50, 0x50, 0x78, 0x44, 0x3C, 0x3C, 0x25, 0xBA, 0x9F, 0x9F
	.byte 0x4B, 0xE3, 0xA8, 0xA8, 0xA2, 0xF3, 0x51, 0x51, 0x5D, 0xFE, 0xA3, 0xA3, 0x80, 0xC0, 0x40, 0x40
	.byte 0x05, 0x8A, 0x8F, 0x8F, 0x3F, 0xAD, 0x92, 0x92, 0x21, 0xBC, 0x9D, 0x9D, 0x70, 0x48, 0x38, 0x38
	.byte 0xF1, 0x04, 0xF5, 0xF5, 0x63, 0xDF, 0xBC, 0xBC, 0x77, 0xC1, 0xB6, 0xB6, 0xAF, 0x75, 0xDA, 0xDA
	.byte 0x42, 0x63, 0x21, 0x21, 0x20, 0x30, 0x10, 0x10, 0xE5, 0x1A, 0xFF, 0xFF, 0xFD, 0x0E, 0xF3, 0xF3
	.byte 0xBF, 0x6D, 0xD2, 0xD2, 0x81, 0x4C, 0xCD, 0xCD, 0x18, 0x14, 0x0C, 0x0C, 0x26, 0x35, 0x13, 0x13
	.byte 0xC3, 0x2F, 0xEC, 0xEC, 0xBE, 0xE1, 0x5F, 0x5F, 0x35, 0xA2, 0x97, 0x97, 0x88, 0xCC, 0x44, 0x44
	.byte 0x2E, 0x39, 0x17, 0x17, 0x93, 0x57, 0xC4, 0xC4, 0x55, 0xF2, 0xA7, 0xA7, 0xFC, 0x82, 0x7E, 0x7E
	.byte 0x7A, 0x47, 0x3D, 0x3D, 0xC8, 0xAC, 0x64, 0x64, 0xBA, 0xE7, 0x5D, 0x5D, 0x32, 0x2B, 0x19, 0x19
	.byte 0xE6, 0x95, 0x73, 0x73, 0xC0, 0xA0, 0x60, 0x60, 0x19, 0x98, 0x81, 0x81, 0x9E, 0xD1, 0x4F, 0x4F
	.byte 0xA3, 0x7F, 0xDC, 0xDC, 0x44, 0x66, 0x22, 0x22, 0x54, 0x7E, 0x2A, 0x2A, 0x3B, 0xAB, 0x90, 0x90
	.byte 0x0B, 0x83, 0x88, 0x88, 0x8C, 0xCA, 0x46, 0x46, 0xC7, 0x29, 0xEE, 0xEE, 0x6B, 0xD3, 0xB8, 0xB8
	.byte 0x28, 0x3C, 0x14, 0x14, 0xA7, 0x79, 0xDE, 0xDE, 0xBC, 0xE2, 0x5E, 0x5E, 0x16, 0x1D, 0x0B, 0x0B
	.byte 0xAD, 0x76, 0xDB, 0xDB, 0xDB, 0x3B, 0xE0, 0xE0, 0x64, 0x56, 0x32, 0x32, 0x74, 0x4E, 0x3A, 0x3A
	.byte 0x14, 0x1E, 0x0A, 0x0A, 0x92, 0xDB, 0x49, 0x49, 0x0C, 0x0A, 0x06, 0x06, 0x48, 0x6C, 0x24, 0x24
	.byte 0xB8, 0xE4, 0x5C, 0x5C, 0x9F, 0x5D, 0xC2, 0xC2, 0xBD, 0x6E, 0xD3, 0xD3, 0x43, 0xEF, 0xAC, 0xAC
	.byte 0xC4, 0xA6, 0x62, 0x62, 0x39, 0xA8, 0x91, 0x91, 0x31, 0xA4, 0x95, 0x95, 0xD3, 0x37, 0xE4, 0xE4
	.byte 0xF2, 0x8B, 0x79, 0x79, 0xD5, 0x32, 0xE7, 0xE7, 0x8B, 0x43, 0xC8, 0xC8, 0x6E, 0x59, 0x37, 0x37
	.byte 0xDA, 0xB7, 0x6D, 0x6D, 0x01, 0x8C, 0x8D, 0x8D, 0xB1, 0x64, 0xD5, 0xD5, 0x9C, 0xD2, 0x4E, 0x4E
	.byte 0x49, 0xE0, 0xA9, 0xA9, 0xD8, 0xB4, 0x6C, 0x6C, 0xAC, 0xFA, 0x56, 0x56, 0xF3, 0x07, 0xF4, 0xF4
	.byte 0xCF, 0x25, 0xEA, 0xEA, 0xCA, 0xAF, 0x65, 0x65, 0xF4, 0x8E, 0x7A, 0x7A, 0x47, 0xE9, 0xAE, 0xAE
	.byte 0x10, 0x18, 0x08, 0x08, 0x6F, 0xD5, 0xBA, 0xBA, 0xF0, 0x88, 0x78, 0x78, 0x4A, 0x6F, 0x25, 0x25
	.byte 0x5C, 0x72, 0x2E, 0x2E, 0x38, 0x24, 0x1C, 0x1C, 0x57, 0xF1, 0xA6, 0xA6, 0x73, 0xC7, 0xB4, 0xB4
	.byte 0x97, 0x51, 0xC6, 0xC6, 0xCB, 0x23, 0xE8, 0xE8, 0xA1, 0x7C, 0xDD, 0xDD, 0xE8, 0x9C, 0x74, 0x74
	.byte 0x3E, 0x21, 0x1F, 0x1F, 0x96, 0xDD, 0x4B, 0x4B, 0x61, 0xDC, 0xBD, 0xBD, 0x0D, 0x86, 0x8B, 0x8B
	.byte 0x0F, 0x85, 0x8A, 0x8A, 0xE0, 0x90, 0x70, 0x70, 0x7C, 0x42, 0x3E, 0x3E, 0x71, 0xC4, 0xB5, 0xB5
	.byte 0xCC, 0xAA, 0x66, 0x66, 0x90, 0xD8, 0x48, 0x48, 0x06, 0x05, 0x03, 0x03, 0xF7, 0x01, 0xF6, 0xF6
	.byte 0x1C, 0x12, 0x0E, 0x0E, 0xC2, 0xA3, 0x61, 0x61, 0x6A, 0x5F, 0x35, 0x35, 0xAE, 0xF9, 0x57, 0x57
	.byte 0x69, 0xD0, 0xB9, 0xB9, 0x17, 0x91, 0x86, 0x86, 0x99, 0x58, 0xC1, 0xC1, 0x3A, 0x27, 0x1D, 0x1D
	.byte 0x27, 0xB9, 0x9E, 0x9E, 0xD9, 0x38, 0xE1, 0xE1, 0xEB, 0x13, 0xF8, 0xF8, 0x2B, 0xB3, 0x98, 0x98
	.byte 0x22, 0x33, 0x11, 0x11, 0xD2, 0xBB, 0x69, 0x69, 0xA9, 0x70, 0xD9, 0xD9, 0x07, 0x89, 0x8E, 0x8E
	.byte 0x33, 0xA7, 0x94, 0x94, 0x2D, 0xB6, 0x9B, 0x9B, 0x3C, 0x22, 0x1E, 0x1E, 0x15, 0x92, 0x87, 0x87
	.byte 0xC9, 0x20, 0xE9, 0xE9, 0x87, 0x49, 0xCE, 0xCE, 0xAA, 0xFF, 0x55, 0x55, 0x50, 0x78, 0x28, 0x28
	.byte 0xA5, 0x7A, 0xDF, 0xDF, 0x03, 0x8F, 0x8C, 0x8C, 0x59, 0xF8, 0xA1, 0xA1, 0x09, 0x80, 0x89, 0x89
	.byte 0x1A, 0x17, 0x0D, 0x0D, 0x65, 0xDA, 0xBF, 0xBF, 0xD7, 0x31, 0xE6, 0xE6, 0x84, 0xC6, 0x42, 0x42
	.byte 0xD0, 0xB8, 0x68, 0x68, 0x82, 0xC3, 0x41, 0x41, 0x29, 0xB0, 0x99, 0x99, 0x5A, 0x77, 0x2D, 0x2D
	.byte 0x1E, 0x11, 0x0F, 0x0F, 0x7B, 0xCB, 0xB0, 0xB0, 0xA8, 0xFC, 0x54, 0x54, 0x6D, 0xD6, 0xBB, 0xBB
	.byte 0x2C, 0x3A, 0x16, 0x16
	.global ov17_02111074
ov17_02111074:
	.byte 0x63, 0x63, 0x63, 0x63, 0x7C, 0x7C, 0x7C, 0x7C, 0x77, 0x77, 0x77, 0x77
	.byte 0x7B, 0x7B, 0x7B, 0x7B, 0xF2, 0xF2, 0xF2, 0xF2, 0x6B, 0x6B, 0x6B, 0x6B, 0x6F, 0x6F, 0x6F, 0x6F
	.byte 0xC5, 0xC5, 0xC5, 0xC5, 0x30, 0x30, 0x30, 0x30, 0x01, 0x01, 0x01, 0x01, 0x67, 0x67, 0x67, 0x67
	.byte 0x2B, 0x2B, 0x2B, 0x2B, 0xFE, 0xFE, 0xFE, 0xFE, 0xD7, 0xD7, 0xD7, 0xD7, 0xAB, 0xAB, 0xAB, 0xAB
	.byte 0x76, 0x76, 0x76, 0x76, 0xCA, 0xCA, 0xCA, 0xCA, 0x82, 0x82, 0x82, 0x82, 0xC9, 0xC9, 0xC9, 0xC9
	.byte 0x7D, 0x7D, 0x7D, 0x7D, 0xFA, 0xFA, 0xFA, 0xFA, 0x59, 0x59, 0x59, 0x59, 0x47, 0x47, 0x47, 0x47
	.byte 0xF0, 0xF0, 0xF0, 0xF0, 0xAD, 0xAD, 0xAD, 0xAD, 0xD4, 0xD4, 0xD4, 0xD4, 0xA2, 0xA2, 0xA2, 0xA2
	.byte 0xAF, 0xAF, 0xAF, 0xAF, 0x9C, 0x9C, 0x9C, 0x9C, 0xA4, 0xA4, 0xA4, 0xA4, 0x72, 0x72, 0x72, 0x72
	.byte 0xC0, 0xC0, 0xC0, 0xC0, 0xB7, 0xB7, 0xB7, 0xB7, 0xFD, 0xFD, 0xFD, 0xFD, 0x93, 0x93, 0x93, 0x93
	.byte 0x26, 0x26, 0x26, 0x26, 0x36, 0x36, 0x36, 0x36, 0x3F, 0x3F, 0x3F, 0x3F, 0xF7, 0xF7, 0xF7, 0xF7
	.byte 0xCC, 0xCC, 0xCC, 0xCC, 0x34, 0x34, 0x34, 0x34, 0xA5, 0xA5, 0xA5, 0xA5, 0xE5, 0xE5, 0xE5, 0xE5
	.byte 0xF1, 0xF1, 0xF1, 0xF1, 0x71, 0x71, 0x71, 0x71, 0xD8, 0xD8, 0xD8, 0xD8, 0x31, 0x31, 0x31, 0x31
	.byte 0x15, 0x15, 0x15, 0x15, 0x04, 0x04, 0x04, 0x04, 0xC7, 0xC7, 0xC7, 0xC7, 0x23, 0x23, 0x23, 0x23
	.byte 0xC3, 0xC3, 0xC3, 0xC3, 0x18, 0x18, 0x18, 0x18, 0x96, 0x96, 0x96, 0x96, 0x05, 0x05, 0x05, 0x05
	.byte 0x9A, 0x9A, 0x9A, 0x9A, 0x07, 0x07, 0x07, 0x07, 0x12, 0x12, 0x12, 0x12, 0x80, 0x80, 0x80, 0x80
	.byte 0xE2, 0xE2, 0xE2, 0xE2, 0xEB, 0xEB, 0xEB, 0xEB, 0x27, 0x27, 0x27, 0x27, 0xB2, 0xB2, 0xB2, 0xB2
	.byte 0x75, 0x75, 0x75, 0x75, 0x09, 0x09, 0x09, 0x09, 0x83, 0x83, 0x83, 0x83, 0x2C, 0x2C, 0x2C, 0x2C
	.byte 0x1A, 0x1A, 0x1A, 0x1A, 0x1B, 0x1B, 0x1B, 0x1B, 0x6E, 0x6E, 0x6E, 0x6E, 0x5A, 0x5A, 0x5A, 0x5A
	.byte 0xA0, 0xA0, 0xA0, 0xA0, 0x52, 0x52, 0x52, 0x52, 0x3B, 0x3B, 0x3B, 0x3B, 0xD6, 0xD6, 0xD6, 0xD6
	.byte 0xB3, 0xB3, 0xB3, 0xB3, 0x29, 0x29, 0x29, 0x29, 0xE3, 0xE3, 0xE3, 0xE3, 0x2F, 0x2F, 0x2F, 0x2F
	.byte 0x84, 0x84, 0x84, 0x84, 0x53, 0x53, 0x53, 0x53, 0xD1, 0xD1, 0xD1, 0xD1, 0x00, 0x00, 0x00, 0x00
	.byte 0xED, 0xED, 0xED, 0xED, 0x20, 0x20, 0x20, 0x20, 0xFC, 0xFC, 0xFC, 0xFC, 0xB1, 0xB1, 0xB1, 0xB1
	.byte 0x5B, 0x5B, 0x5B, 0x5B, 0x6A, 0x6A, 0x6A, 0x6A, 0xCB, 0xCB, 0xCB, 0xCB, 0xBE, 0xBE, 0xBE, 0xBE
	.byte 0x39, 0x39, 0x39, 0x39, 0x4A, 0x4A, 0x4A, 0x4A, 0x4C, 0x4C, 0x4C, 0x4C, 0x58, 0x58, 0x58, 0x58
	.byte 0xCF, 0xCF, 0xCF, 0xCF, 0xD0, 0xD0, 0xD0, 0xD0, 0xEF, 0xEF, 0xEF, 0xEF, 0xAA, 0xAA, 0xAA, 0xAA
	.byte 0xFB, 0xFB, 0xFB, 0xFB, 0x43, 0x43, 0x43, 0x43, 0x4D, 0x4D, 0x4D, 0x4D, 0x33, 0x33, 0x33, 0x33
	.byte 0x85, 0x85, 0x85, 0x85, 0x45, 0x45, 0x45, 0x45, 0xF9, 0xF9, 0xF9, 0xF9, 0x02, 0x02, 0x02, 0x02
	.byte 0x7F, 0x7F, 0x7F, 0x7F, 0x50, 0x50, 0x50, 0x50, 0x3C, 0x3C, 0x3C, 0x3C, 0x9F, 0x9F, 0x9F, 0x9F
	.byte 0xA8, 0xA8, 0xA8, 0xA8, 0x51, 0x51, 0x51, 0x51, 0xA3, 0xA3, 0xA3, 0xA3, 0x40, 0x40, 0x40, 0x40
	.byte 0x8F, 0x8F, 0x8F, 0x8F, 0x92, 0x92, 0x92, 0x92, 0x9D, 0x9D, 0x9D, 0x9D, 0x38, 0x38, 0x38, 0x38
	.byte 0xF5, 0xF5, 0xF5, 0xF5, 0xBC, 0xBC, 0xBC, 0xBC, 0xB6, 0xB6, 0xB6, 0xB6, 0xDA, 0xDA, 0xDA, 0xDA
	.byte 0x21, 0x21, 0x21, 0x21, 0x10, 0x10, 0x10, 0x10, 0xFF, 0xFF, 0xFF, 0xFF, 0xF3, 0xF3, 0xF3, 0xF3
	.byte 0xD2, 0xD2, 0xD2, 0xD2, 0xCD, 0xCD, 0xCD, 0xCD, 0x0C, 0x0C, 0x0C, 0x0C, 0x13, 0x13, 0x13, 0x13
	.byte 0xEC, 0xEC, 0xEC, 0xEC, 0x5F, 0x5F, 0x5F, 0x5F, 0x97, 0x97, 0x97, 0x97, 0x44, 0x44, 0x44, 0x44
	.byte 0x17, 0x17, 0x17, 0x17, 0xC4, 0xC4, 0xC4, 0xC4, 0xA7, 0xA7, 0xA7, 0xA7, 0x7E, 0x7E, 0x7E, 0x7E
	.byte 0x3D, 0x3D, 0x3D, 0x3D, 0x64, 0x64, 0x64, 0x64, 0x5D, 0x5D, 0x5D, 0x5D, 0x19, 0x19, 0x19, 0x19
	.byte 0x73, 0x73, 0x73, 0x73, 0x60, 0x60, 0x60, 0x60, 0x81, 0x81, 0x81, 0x81, 0x4F, 0x4F, 0x4F, 0x4F
	.byte 0xDC, 0xDC, 0xDC, 0xDC, 0x22, 0x22, 0x22, 0x22, 0x2A, 0x2A, 0x2A, 0x2A, 0x90, 0x90, 0x90, 0x90
	.byte 0x88, 0x88, 0x88, 0x88, 0x46, 0x46, 0x46, 0x46, 0xEE, 0xEE, 0xEE, 0xEE, 0xB8, 0xB8, 0xB8, 0xB8
	.byte 0x14, 0x14, 0x14, 0x14, 0xDE, 0xDE, 0xDE, 0xDE, 0x5E, 0x5E, 0x5E, 0x5E, 0x0B, 0x0B, 0x0B, 0x0B
	.byte 0xDB, 0xDB, 0xDB, 0xDB, 0xE0, 0xE0, 0xE0, 0xE0, 0x32, 0x32, 0x32, 0x32, 0x3A, 0x3A, 0x3A, 0x3A
	.byte 0x0A, 0x0A, 0x0A, 0x0A, 0x49, 0x49, 0x49, 0x49, 0x06, 0x06, 0x06, 0x06, 0x24, 0x24, 0x24, 0x24
	.byte 0x5C, 0x5C, 0x5C, 0x5C, 0xC2, 0xC2, 0xC2, 0xC2, 0xD3, 0xD3, 0xD3, 0xD3, 0xAC, 0xAC, 0xAC, 0xAC
	.byte 0x62, 0x62, 0x62, 0x62, 0x91, 0x91, 0x91, 0x91, 0x95, 0x95, 0x95, 0x95, 0xE4, 0xE4, 0xE4, 0xE4
	.byte 0x79, 0x79, 0x79, 0x79, 0xE7, 0xE7, 0xE7, 0xE7, 0xC8, 0xC8, 0xC8, 0xC8, 0x37, 0x37, 0x37, 0x37
	.byte 0x6D, 0x6D, 0x6D, 0x6D, 0x8D, 0x8D, 0x8D, 0x8D, 0xD5, 0xD5, 0xD5, 0xD5, 0x4E, 0x4E, 0x4E, 0x4E
	.byte 0xA9, 0xA9, 0xA9, 0xA9, 0x6C, 0x6C, 0x6C, 0x6C, 0x56, 0x56, 0x56, 0x56, 0xF4, 0xF4, 0xF4, 0xF4
	.byte 0xEA, 0xEA, 0xEA, 0xEA, 0x65, 0x65, 0x65, 0x65, 0x7A, 0x7A, 0x7A, 0x7A, 0xAE, 0xAE, 0xAE, 0xAE
	.byte 0x08, 0x08, 0x08, 0x08, 0xBA, 0xBA, 0xBA, 0xBA, 0x78, 0x78, 0x78, 0x78, 0x25, 0x25, 0x25, 0x25
	.byte 0x2E, 0x2E, 0x2E, 0x2E, 0x1C, 0x1C, 0x1C, 0x1C, 0xA6, 0xA6, 0xA6, 0xA6, 0xB4, 0xB4, 0xB4, 0xB4
	.byte 0xC6, 0xC6, 0xC6, 0xC6, 0xE8, 0xE8, 0xE8, 0xE8, 0xDD, 0xDD, 0xDD, 0xDD, 0x74, 0x74, 0x74, 0x74
	.byte 0x1F, 0x1F, 0x1F, 0x1F, 0x4B, 0x4B, 0x4B, 0x4B, 0xBD, 0xBD, 0xBD, 0xBD, 0x8B, 0x8B, 0x8B, 0x8B
	.byte 0x8A, 0x8A, 0x8A, 0x8A, 0x70, 0x70, 0x70, 0x70, 0x3E, 0x3E, 0x3E, 0x3E, 0xB5, 0xB5, 0xB5, 0xB5
	.byte 0x66, 0x66, 0x66, 0x66, 0x48, 0x48, 0x48, 0x48, 0x03, 0x03, 0x03, 0x03, 0xF6, 0xF6, 0xF6, 0xF6
	.byte 0x0E, 0x0E, 0x0E, 0x0E, 0x61, 0x61, 0x61, 0x61, 0x35, 0x35, 0x35, 0x35, 0x57, 0x57, 0x57, 0x57
	.byte 0xB9, 0xB9, 0xB9, 0xB9, 0x86, 0x86, 0x86, 0x86, 0xC1, 0xC1, 0xC1, 0xC1, 0x1D, 0x1D, 0x1D, 0x1D
	.byte 0x9E, 0x9E, 0x9E, 0x9E, 0xE1, 0xE1, 0xE1, 0xE1, 0xF8, 0xF8, 0xF8, 0xF8, 0x98, 0x98, 0x98, 0x98
	.byte 0x11, 0x11, 0x11, 0x11, 0x69, 0x69, 0x69, 0x69, 0xD9, 0xD9, 0xD9, 0xD9, 0x8E, 0x8E, 0x8E, 0x8E
	.byte 0x94, 0x94, 0x94, 0x94, 0x9B, 0x9B, 0x9B, 0x9B, 0x1E, 0x1E, 0x1E, 0x1E, 0x87, 0x87, 0x87, 0x87
	.byte 0xE9, 0xE9, 0xE9, 0xE9, 0xCE, 0xCE, 0xCE, 0xCE, 0x55, 0x55, 0x55, 0x55, 0x28, 0x28, 0x28, 0x28
	.byte 0xDF, 0xDF, 0xDF, 0xDF, 0x8C, 0x8C, 0x8C, 0x8C, 0xA1, 0xA1, 0xA1, 0xA1, 0x89, 0x89, 0x89, 0x89
	.byte 0x0D, 0x0D, 0x0D, 0x0D, 0xBF, 0xBF, 0xBF, 0xBF, 0xE6, 0xE6, 0xE6, 0xE6, 0x42, 0x42, 0x42, 0x42
	.byte 0x68, 0x68, 0x68, 0x68, 0x41, 0x41, 0x41, 0x41, 0x99, 0x99, 0x99, 0x99, 0x2D, 0x2D, 0x2D, 0x2D
	.byte 0x0F, 0x0F, 0x0F, 0x0F, 0xB0, 0xB0, 0xB0, 0xB0, 0x54, 0x54, 0x54, 0x54, 0xBB, 0xBB, 0xBB, 0xBB
	.byte 0x16, 0x16, 0x16, 0x16
	.global ov17_02111474
ov17_02111474:
	.byte 0x50, 0xA7, 0xF4, 0x51, 0x53, 0x65, 0x41, 0x7E, 0xC3, 0xA4, 0x17, 0x1A
	.byte 0x96, 0x5E, 0x27, 0x3A, 0xCB, 0x6B, 0xAB, 0x3B, 0xF1, 0x45, 0x9D, 0x1F, 0xAB, 0x58, 0xFA, 0xAC
	.byte 0x93, 0x03, 0xE3, 0x4B, 0x55, 0xFA, 0x30, 0x20, 0xF6, 0x6D, 0x76, 0xAD, 0x91, 0x76, 0xCC, 0x88
	.byte 0x25, 0x4C, 0x02, 0xF5, 0xFC, 0xD7, 0xE5, 0x4F, 0xD7, 0xCB, 0x2A, 0xC5, 0x80, 0x44, 0x35, 0x26
	.byte 0x8F, 0xA3, 0x62, 0xB5, 0x49, 0x5A, 0xB1, 0xDE, 0x67, 0x1B, 0xBA, 0x25, 0x98, 0x0E, 0xEA, 0x45
	.byte 0xE1, 0xC0, 0xFE, 0x5D, 0x02, 0x75, 0x2F, 0xC3, 0x12, 0xF0, 0x4C, 0x81, 0xA3, 0x97, 0x46, 0x8D
	.byte 0xC6, 0xF9, 0xD3, 0x6B, 0xE7, 0x5F, 0x8F, 0x03, 0x95, 0x9C, 0x92, 0x15, 0xEB, 0x7A, 0x6D, 0xBF
	.byte 0xDA, 0x59, 0x52, 0x95, 0x2D, 0x83, 0xBE, 0xD4, 0xD3, 0x21, 0x74, 0x58, 0x29, 0x69, 0xE0, 0x49
	.byte 0x44, 0xC8, 0xC9, 0x8E, 0x6A, 0x89, 0xC2, 0x75, 0x78, 0x79, 0x8E, 0xF4, 0x6B, 0x3E, 0x58, 0x99
	.byte 0xDD, 0x71, 0xB9, 0x27, 0xB6, 0x4F, 0xE1, 0xBE, 0x17, 0xAD, 0x88, 0xF0, 0x66, 0xAC, 0x20, 0xC9
	.byte 0xB4, 0x3A, 0xCE, 0x7D, 0x18, 0x4A, 0xDF, 0x63, 0x82, 0x31, 0x1A, 0xE5, 0x60, 0x33, 0x51, 0x97
	.byte 0x45, 0x7F, 0x53, 0x62, 0xE0, 0x77, 0x64, 0xB1, 0x84, 0xAE, 0x6B, 0xBB, 0x1C, 0xA0, 0x81, 0xFE
	.byte 0x94, 0x2B, 0x08, 0xF9, 0x58, 0x68, 0x48, 0x70, 0x19, 0xFD, 0x45, 0x8F, 0x87, 0x6C, 0xDE, 0x94
	.byte 0xB7, 0xF8, 0x7B, 0x52, 0x23, 0xD3, 0x73, 0xAB, 0xE2, 0x02, 0x4B, 0x72, 0x57, 0x8F, 0x1F, 0xE3
	.byte 0x2A, 0xAB, 0x55, 0x66, 0x07, 0x28, 0xEB, 0xB2, 0x03, 0xC2, 0xB5, 0x2F, 0x9A, 0x7B, 0xC5, 0x86
	.byte 0xA5, 0x08, 0x37, 0xD3, 0xF2, 0x87, 0x28, 0x30, 0xB2, 0xA5, 0xBF, 0x23, 0xBA, 0x6A, 0x03, 0x02
	.byte 0x5C, 0x82, 0x16, 0xED, 0x2B, 0x1C, 0xCF, 0x8A, 0x92, 0xB4, 0x79, 0xA7, 0xF0, 0xF2, 0x07, 0xF3
	.byte 0xA1, 0xE2, 0x69, 0x4E, 0xCD, 0xF4, 0xDA, 0x65, 0xD5, 0xBE, 0x05, 0x06, 0x1F, 0x62, 0x34, 0xD1
	.byte 0x8A, 0xFE, 0xA6, 0xC4, 0x9D, 0x53, 0x2E, 0x34, 0xA0, 0x55, 0xF3, 0xA2, 0x32, 0xE1, 0x8A, 0x05
	.byte 0x75, 0xEB, 0xF6, 0xA4, 0x39, 0xEC, 0x83, 0x0B, 0xAA, 0xEF, 0x60, 0x40, 0x06, 0x9F, 0x71, 0x5E
	.byte 0x51, 0x10, 0x6E, 0xBD, 0xF9, 0x8A, 0x21, 0x3E, 0x3D, 0x06, 0xDD, 0x96, 0xAE, 0x05, 0x3E, 0xDD
	.byte 0x46, 0xBD, 0xE6, 0x4D, 0xB5, 0x8D, 0x54, 0x91, 0x05, 0x5D, 0xC4, 0x71, 0x6F, 0xD4, 0x06, 0x04
	.byte 0xFF, 0x15, 0x50, 0x60, 0x24, 0xFB, 0x98, 0x19, 0x97, 0xE9, 0xBD, 0xD6, 0xCC, 0x43, 0x40, 0x89
	.byte 0x77, 0x9E, 0xD9, 0x67, 0xBD, 0x42, 0xE8, 0xB0, 0x88, 0x8B, 0x89, 0x07, 0x38, 0x5B, 0x19, 0xE7
	.byte 0xDB, 0xEE, 0xC8, 0x79, 0x47, 0x0A, 0x7C, 0xA1, 0xE9, 0x0F, 0x42, 0x7C, 0xC9, 0x1E, 0x84, 0xF8
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x86, 0x80, 0x09, 0x48, 0xED, 0x2B, 0x32, 0xAC, 0x70, 0x11, 0x1E
	.byte 0x4E, 0x72, 0x5A, 0x6C, 0xFB, 0xFF, 0x0E, 0xFD, 0x56, 0x38, 0x85, 0x0F, 0x1E, 0xD5, 0xAE, 0x3D
	.byte 0x27, 0x39, 0x2D, 0x36, 0x64, 0xD9, 0x0F, 0x0A, 0x21, 0xA6, 0x5C, 0x68, 0xD1, 0x54, 0x5B, 0x9B
	.byte 0x3A, 0x2E, 0x36, 0x24, 0xB1, 0x67, 0x0A, 0x0C, 0x0F, 0xE7, 0x57, 0x93, 0xD2, 0x96, 0xEE, 0xB4
	.byte 0x9E, 0x91, 0x9B, 0x1B, 0x4F, 0xC5, 0xC0, 0x80, 0xA2, 0x20, 0xDC, 0x61, 0x69, 0x4B, 0x77, 0x5A
	.byte 0x16, 0x1A, 0x12, 0x1C, 0x0A, 0xBA, 0x93, 0xE2, 0xE5, 0x2A, 0xA0, 0xC0, 0x43, 0xE0, 0x22, 0x3C
	.byte 0x1D, 0x17, 0x1B, 0x12, 0x0B, 0x0D, 0x09, 0x0E, 0xAD, 0xC7, 0x8B, 0xF2, 0xB9, 0xA8, 0xB6, 0x2D
	.byte 0xC8, 0xA9, 0x1E, 0x14, 0x85, 0x19, 0xF1, 0x57, 0x4C, 0x07, 0x75, 0xAF, 0xBB, 0xDD, 0x99, 0xEE
	.byte 0xFD, 0x60, 0x7F, 0xA3, 0x9F, 0x26, 0x01, 0xF7, 0xBC, 0xF5, 0x72, 0x5C, 0xC5, 0x3B, 0x66, 0x44
	.byte 0x34, 0x7E, 0xFB, 0x5B, 0x76, 0x29, 0x43, 0x8B, 0xDC, 0xC6, 0x23, 0xCB, 0x68, 0xFC, 0xED, 0xB6
	.byte 0x63, 0xF1, 0xE4, 0xB8, 0xCA, 0xDC, 0x31, 0xD7, 0x10, 0x85, 0x63, 0x42, 0x40, 0x22, 0x97, 0x13
	.byte 0x20, 0x11, 0xC6, 0x84, 0x7D, 0x24, 0x4A, 0x85, 0xF8, 0x3D, 0xBB, 0xD2, 0x11, 0x32, 0xF9, 0xAE
	.byte 0x6D, 0xA1, 0x29, 0xC7, 0x4B, 0x2F, 0x9E, 0x1D, 0xF3, 0x30, 0xB2, 0xDC, 0xEC, 0x52, 0x86, 0x0D
	.byte 0xD0, 0xE3, 0xC1, 0x77, 0x6C, 0x16, 0xB3, 0x2B, 0x99, 0xB9, 0x70, 0xA9, 0xFA, 0x48, 0x94, 0x11
	.byte 0x22, 0x64, 0xE9, 0x47, 0xC4, 0x8C, 0xFC, 0xA8, 0x1A, 0x3F, 0xF0, 0xA0, 0xD8, 0x2C, 0x7D, 0x56
	.byte 0xEF, 0x90, 0x33, 0x22, 0xC7, 0x4E, 0x49, 0x87, 0xC1, 0xD1, 0x38, 0xD9, 0xFE, 0xA2, 0xCA, 0x8C
	.byte 0x36, 0x0B, 0xD4, 0x98, 0xCF, 0x81, 0xF5, 0xA6, 0x28, 0xDE, 0x7A, 0xA5, 0x26, 0x8E, 0xB7, 0xDA
	.byte 0xA4, 0xBF, 0xAD, 0x3F, 0xE4, 0x9D, 0x3A, 0x2C, 0x0D, 0x92, 0x78, 0x50, 0x9B, 0xCC, 0x5F, 0x6A
	.byte 0x62, 0x46, 0x7E, 0x54, 0xC2, 0x13, 0x8D, 0xF6, 0xE8, 0xB8, 0xD8, 0x90, 0x5E, 0xF7, 0x39, 0x2E
	.byte 0xF5, 0xAF, 0xC3, 0x82, 0xBE, 0x80, 0x5D, 0x9F, 0x7C, 0x93, 0xD0, 0x69, 0xA9, 0x2D, 0xD5, 0x6F
	.byte 0xB3, 0x12, 0x25, 0xCF, 0x3B, 0x99, 0xAC, 0xC8, 0xA7, 0x7D, 0x18, 0x10, 0x6E, 0x63, 0x9C, 0xE8
	.byte 0x7B, 0xBB, 0x3B, 0xDB, 0x09, 0x78, 0x26, 0xCD, 0xF4, 0x18, 0x59, 0x6E, 0x01, 0xB7, 0x9A, 0xEC
	.byte 0xA8, 0x9A, 0x4F, 0x83, 0x65, 0x6E, 0x95, 0xE6, 0x7E, 0xE6, 0xFF, 0xAA, 0x08, 0xCF, 0xBC, 0x21
	.byte 0xE6, 0xE8, 0x15, 0xEF, 0xD9, 0x9B, 0xE7, 0xBA, 0xCE, 0x36, 0x6F, 0x4A, 0xD4, 0x09, 0x9F, 0xEA
	.byte 0xD6, 0x7C, 0xB0, 0x29, 0xAF, 0xB2, 0xA4, 0x31, 0x31, 0x23, 0x3F, 0x2A, 0x30, 0x94, 0xA5, 0xC6
	.byte 0xC0, 0x66, 0xA2, 0x35, 0x37, 0xBC, 0x4E, 0x74, 0xA6, 0xCA, 0x82, 0xFC, 0xB0, 0xD0, 0x90, 0xE0
	.byte 0x15, 0xD8, 0xA7, 0x33, 0x4A, 0x98, 0x04, 0xF1, 0xF7, 0xDA, 0xEC, 0x41, 0x0E, 0x50, 0xCD, 0x7F
	.byte 0x2F, 0xF6, 0x91, 0x17, 0x8D, 0xD6, 0x4D, 0x76, 0x4D, 0xB0, 0xEF, 0x43, 0x54, 0x4D, 0xAA, 0xCC
	.byte 0xDF, 0x04, 0x96, 0xE4, 0xE3, 0xB5, 0xD1, 0x9E, 0x1B, 0x88, 0x6A, 0x4C, 0xB8, 0x1F, 0x2C, 0xC1
	.byte 0x7F, 0x51, 0x65, 0x46, 0x04, 0xEA, 0x5E, 0x9D, 0x5D, 0x35, 0x8C, 0x01, 0x73, 0x74, 0x87, 0xFA
	.byte 0x2E, 0x41, 0x0B, 0xFB, 0x5A, 0x1D, 0x67, 0xB3, 0x52, 0xD2, 0xDB, 0x92, 0x33, 0x56, 0x10, 0xE9
	.byte 0x13, 0x47, 0xD6, 0x6D, 0x8C, 0x61, 0xD7, 0x9A, 0x7A, 0x0C, 0xA1, 0x37, 0x8E, 0x14, 0xF8, 0x59
	.byte 0x89, 0x3C, 0x13, 0xEB, 0xEE, 0x27, 0xA9, 0xCE, 0x35, 0xC9, 0x61, 0xB7, 0xED, 0xE5, 0x1C, 0xE1
	.byte 0x3C, 0xB1, 0x47, 0x7A, 0x59, 0xDF, 0xD2, 0x9C, 0x3F, 0x73, 0xF2, 0x55, 0x79, 0xCE, 0x14, 0x18
	.byte 0xBF, 0x37, 0xC7, 0x73, 0xEA, 0xCD, 0xF7, 0x53, 0x5B, 0xAA, 0xFD, 0x5F, 0x14, 0x6F, 0x3D, 0xDF
	.byte 0x86, 0xDB, 0x44, 0x78, 0x81, 0xF3, 0xAF, 0xCA, 0x3E, 0xC4, 0x68, 0xB9, 0x2C, 0x34, 0x24, 0x38
	.byte 0x5F, 0x40, 0xA3, 0xC2, 0x72, 0xC3, 0x1D, 0x16, 0x0C, 0x25, 0xE2, 0xBC, 0x8B, 0x49, 0x3C, 0x28
	.byte 0x41, 0x95, 0x0D, 0xFF, 0x71, 0x01, 0xA8, 0x39, 0xDE, 0xB3, 0x0C, 0x08, 0x9C, 0xE4, 0xB4, 0xD8
	.byte 0x90, 0xC1, 0x56, 0x64, 0x61, 0x84, 0xCB, 0x7B, 0x70, 0xB6, 0x32, 0xD5, 0x74, 0x5C, 0x6C, 0x48
	.byte 0x42, 0x57, 0xB8, 0xD0
	.global ov17_02111874
ov17_02111874:
	.byte 0xA7, 0xF4, 0x51, 0x50, 0x65, 0x41, 0x7E, 0x53, 0xA4, 0x17, 0x1A, 0xC3
	.byte 0x5E, 0x27, 0x3A, 0x96, 0x6B, 0xAB, 0x3B, 0xCB, 0x45, 0x9D, 0x1F, 0xF1, 0x58, 0xFA, 0xAC, 0xAB
	.byte 0x03, 0xE3, 0x4B, 0x93, 0xFA, 0x30, 0x20, 0x55, 0x6D, 0x76, 0xAD, 0xF6, 0x76, 0xCC, 0x88, 0x91
	.byte 0x4C, 0x02, 0xF5, 0x25, 0xD7, 0xE5, 0x4F, 0xFC, 0xCB, 0x2A, 0xC5, 0xD7, 0x44, 0x35, 0x26, 0x80
	.byte 0xA3, 0x62, 0xB5, 0x8F, 0x5A, 0xB1, 0xDE, 0x49, 0x1B, 0xBA, 0x25, 0x67, 0x0E, 0xEA, 0x45, 0x98
	.byte 0xC0, 0xFE, 0x5D, 0xE1, 0x75, 0x2F, 0xC3, 0x02, 0xF0, 0x4C, 0x81, 0x12, 0x97, 0x46, 0x8D, 0xA3
	.byte 0xF9, 0xD3, 0x6B, 0xC6, 0x5F, 0x8F, 0x03, 0xE7, 0x9C, 0x92, 0x15, 0x95, 0x7A, 0x6D, 0xBF, 0xEB
	.byte 0x59, 0x52, 0x95, 0xDA, 0x83, 0xBE, 0xD4, 0x2D, 0x21, 0x74, 0x58, 0xD3, 0x69, 0xE0, 0x49, 0x29
	.byte 0xC8, 0xC9, 0x8E, 0x44, 0x89, 0xC2, 0x75, 0x6A, 0x79, 0x8E, 0xF4, 0x78, 0x3E, 0x58, 0x99, 0x6B
	.byte 0x71, 0xB9, 0x27, 0xDD, 0x4F, 0xE1, 0xBE, 0xB6, 0xAD, 0x88, 0xF0, 0x17, 0xAC, 0x20, 0xC9, 0x66
	.byte 0x3A, 0xCE, 0x7D, 0xB4, 0x4A, 0xDF, 0x63, 0x18, 0x31, 0x1A, 0xE5, 0x82, 0x33, 0x51, 0x97, 0x60
	.byte 0x7F, 0x53, 0x62, 0x45, 0x77, 0x64, 0xB1, 0xE0, 0xAE, 0x6B, 0xBB, 0x84, 0xA0, 0x81, 0xFE, 0x1C
	.byte 0x2B, 0x08, 0xF9, 0x94, 0x68, 0x48, 0x70, 0x58, 0xFD, 0x45, 0x8F, 0x19, 0x6C, 0xDE, 0x94, 0x87
	.byte 0xF8, 0x7B, 0x52, 0xB7, 0xD3, 0x73, 0xAB, 0x23, 0x02, 0x4B, 0x72, 0xE2, 0x8F, 0x1F, 0xE3, 0x57
	.byte 0xAB, 0x55, 0x66, 0x2A, 0x28, 0xEB, 0xB2, 0x07, 0xC2, 0xB5, 0x2F, 0x03, 0x7B, 0xC5, 0x86, 0x9A
	.byte 0x08, 0x37, 0xD3, 0xA5, 0x87, 0x28, 0x30, 0xF2, 0xA5, 0xBF, 0x23, 0xB2, 0x6A, 0x03, 0x02, 0xBA
	.byte 0x82, 0x16, 0xED, 0x5C, 0x1C, 0xCF, 0x8A, 0x2B, 0xB4, 0x79, 0xA7, 0x92, 0xF2, 0x07, 0xF3, 0xF0
	.byte 0xE2, 0x69, 0x4E, 0xA1, 0xF4, 0xDA, 0x65, 0xCD, 0xBE, 0x05, 0x06, 0xD5, 0x62, 0x34, 0xD1, 0x1F
	.byte 0xFE, 0xA6, 0xC4, 0x8A, 0x53, 0x2E, 0x34, 0x9D, 0x55, 0xF3, 0xA2, 0xA0, 0xE1, 0x8A, 0x05, 0x32
	.byte 0xEB, 0xF6, 0xA4, 0x75, 0xEC, 0x83, 0x0B, 0x39, 0xEF, 0x60, 0x40, 0xAA, 0x9F, 0x71, 0x5E, 0x06
	.byte 0x10, 0x6E, 0xBD, 0x51, 0x8A, 0x21, 0x3E, 0xF9, 0x06, 0xDD, 0x96, 0x3D, 0x05, 0x3E, 0xDD, 0xAE
	.byte 0xBD, 0xE6, 0x4D, 0x46, 0x8D, 0x54, 0x91, 0xB5, 0x5D, 0xC4, 0x71, 0x05, 0xD4, 0x06, 0x04, 0x6F
	.byte 0x15, 0x50, 0x60, 0xFF, 0xFB, 0x98, 0x19, 0x24, 0xE9, 0xBD, 0xD6, 0x97, 0x43, 0x40, 0x89, 0xCC
	.byte 0x9E, 0xD9, 0x67, 0x77, 0x42, 0xE8, 0xB0, 0xBD, 0x8B, 0x89, 0x07, 0x88, 0x5B, 0x19, 0xE7, 0x38
	.byte 0xEE, 0xC8, 0x79, 0xDB, 0x0A, 0x7C, 0xA1, 0x47, 0x0F, 0x42, 0x7C, 0xE9, 0x1E, 0x84, 0xF8, 0xC9
	.byte 0x00, 0x00, 0x00, 0x00, 0x86, 0x80, 0x09, 0x83, 0xED, 0x2B, 0x32, 0x48, 0x70, 0x11, 0x1E, 0xAC
	.byte 0x72, 0x5A, 0x6C, 0x4E, 0xFF, 0x0E, 0xFD, 0xFB, 0x38, 0x85, 0x0F, 0x56, 0xD5, 0xAE, 0x3D, 0x1E
	.byte 0x39, 0x2D, 0x36, 0x27, 0xD9, 0x0F, 0x0A, 0x64, 0xA6, 0x5C, 0x68, 0x21, 0x54, 0x5B, 0x9B, 0xD1
	.byte 0x2E, 0x36, 0x24, 0x3A, 0x67, 0x0A, 0x0C, 0xB1, 0xE7, 0x57, 0x93, 0x0F, 0x96, 0xEE, 0xB4, 0xD2
	.byte 0x91, 0x9B, 0x1B, 0x9E, 0xC5, 0xC0, 0x80, 0x4F, 0x20, 0xDC, 0x61, 0xA2, 0x4B, 0x77, 0x5A, 0x69
	.byte 0x1A, 0x12, 0x1C, 0x16, 0xBA, 0x93, 0xE2, 0x0A, 0x2A, 0xA0, 0xC0, 0xE5, 0xE0, 0x22, 0x3C, 0x43
	.byte 0x17, 0x1B, 0x12, 0x1D, 0x0D, 0x09, 0x0E, 0x0B, 0xC7, 0x8B, 0xF2, 0xAD, 0xA8, 0xB6, 0x2D, 0xB9
	.byte 0xA9, 0x1E, 0x14, 0xC8, 0x19, 0xF1, 0x57, 0x85, 0x07, 0x75, 0xAF, 0x4C, 0xDD, 0x99, 0xEE, 0xBB
	.byte 0x60, 0x7F, 0xA3, 0xFD, 0x26, 0x01, 0xF7, 0x9F, 0xF5, 0x72, 0x5C, 0xBC, 0x3B, 0x66, 0x44, 0xC5
	.byte 0x7E, 0xFB, 0x5B, 0x34, 0x29, 0x43, 0x8B, 0x76, 0xC6, 0x23, 0xCB, 0xDC, 0xFC, 0xED, 0xB6, 0x68
	.byte 0xF1, 0xE4, 0xB8, 0x63, 0xDC, 0x31, 0xD7, 0xCA, 0x85, 0x63, 0x42, 0x10, 0x22, 0x97, 0x13, 0x40
	.byte 0x11, 0xC6, 0x84, 0x20, 0x24, 0x4A, 0x85, 0x7D, 0x3D, 0xBB, 0xD2, 0xF8, 0x32, 0xF9, 0xAE, 0x11
	.byte 0xA1, 0x29, 0xC7, 0x6D, 0x2F, 0x9E, 0x1D, 0x4B, 0x30, 0xB2, 0xDC, 0xF3, 0x52, 0x86, 0x0D, 0xEC
	.byte 0xE3, 0xC1, 0x77, 0xD0, 0x16, 0xB3, 0x2B, 0x6C, 0xB9, 0x70, 0xA9, 0x99, 0x48, 0x94, 0x11, 0xFA
	.byte 0x64, 0xE9, 0x47, 0x22, 0x8C, 0xFC, 0xA8, 0xC4, 0x3F, 0xF0, 0xA0, 0x1A, 0x2C, 0x7D, 0x56, 0xD8
	.byte 0x90, 0x33, 0x22, 0xEF, 0x4E, 0x49, 0x87, 0xC7, 0xD1, 0x38, 0xD9, 0xC1, 0xA2, 0xCA, 0x8C, 0xFE
	.byte 0x0B, 0xD4, 0x98, 0x36, 0x81, 0xF5, 0xA6, 0xCF, 0xDE, 0x7A, 0xA5, 0x28, 0x8E, 0xB7, 0xDA, 0x26
	.byte 0xBF, 0xAD, 0x3F, 0xA4, 0x9D, 0x3A, 0x2C, 0xE4, 0x92, 0x78, 0x50, 0x0D, 0xCC, 0x5F, 0x6A, 0x9B
	.byte 0x46, 0x7E, 0x54, 0x62, 0x13, 0x8D, 0xF6, 0xC2, 0xB8, 0xD8, 0x90, 0xE8, 0xF7, 0x39, 0x2E, 0x5E
	.byte 0xAF, 0xC3, 0x82, 0xF5, 0x80, 0x5D, 0x9F, 0xBE, 0x93, 0xD0, 0x69, 0x7C, 0x2D, 0xD5, 0x6F, 0xA9
	.byte 0x12, 0x25, 0xCF, 0xB3, 0x99, 0xAC, 0xC8, 0x3B, 0x7D, 0x18, 0x10, 0xA7, 0x63, 0x9C, 0xE8, 0x6E
	.byte 0xBB, 0x3B, 0xDB, 0x7B, 0x78, 0x26, 0xCD, 0x09, 0x18, 0x59, 0x6E, 0xF4, 0xB7, 0x9A, 0xEC, 0x01
	.byte 0x9A, 0x4F, 0x83, 0xA8, 0x6E, 0x95, 0xE6, 0x65, 0xE6, 0xFF, 0xAA, 0x7E, 0xCF, 0xBC, 0x21, 0x08
	.byte 0xE8, 0x15, 0xEF, 0xE6, 0x9B, 0xE7, 0xBA, 0xD9, 0x36, 0x6F, 0x4A, 0xCE, 0x09, 0x9F, 0xEA, 0xD4
	.byte 0x7C, 0xB0, 0x29, 0xD6, 0xB2, 0xA4, 0x31, 0xAF, 0x23, 0x3F, 0x2A, 0x31, 0x94, 0xA5, 0xC6, 0x30
	.byte 0x66, 0xA2, 0x35, 0xC0, 0xBC, 0x4E, 0x74, 0x37, 0xCA, 0x82, 0xFC, 0xA6, 0xD0, 0x90, 0xE0, 0xB0
	.byte 0xD8, 0xA7, 0x33, 0x15, 0x98, 0x04, 0xF1, 0x4A, 0xDA, 0xEC, 0x41, 0xF7, 0x50, 0xCD, 0x7F, 0x0E
	.byte 0xF6, 0x91, 0x17, 0x2F, 0xD6, 0x4D, 0x76, 0x8D, 0xB0, 0xEF, 0x43, 0x4D, 0x4D, 0xAA, 0xCC, 0x54
	.byte 0x04, 0x96, 0xE4, 0xDF, 0xB5, 0xD1, 0x9E, 0xE3, 0x88, 0x6A, 0x4C, 0x1B, 0x1F, 0x2C, 0xC1, 0xB8
	.byte 0x51, 0x65, 0x46, 0x7F, 0xEA, 0x5E, 0x9D, 0x04, 0x35, 0x8C, 0x01, 0x5D, 0x74, 0x87, 0xFA, 0x73
	.byte 0x41, 0x0B, 0xFB, 0x2E, 0x1D, 0x67, 0xB3, 0x5A, 0xD2, 0xDB, 0x92, 0x52, 0x56, 0x10, 0xE9, 0x33
	.byte 0x47, 0xD6, 0x6D, 0x13, 0x61, 0xD7, 0x9A, 0x8C, 0x0C, 0xA1, 0x37, 0x7A, 0x14, 0xF8, 0x59, 0x8E
	.byte 0x3C, 0x13, 0xEB, 0x89, 0x27, 0xA9, 0xCE, 0xEE, 0xC9, 0x61, 0xB7, 0x35, 0xE5, 0x1C, 0xE1, 0xED
	.byte 0xB1, 0x47, 0x7A, 0x3C, 0xDF, 0xD2, 0x9C, 0x59, 0x73, 0xF2, 0x55, 0x3F, 0xCE, 0x14, 0x18, 0x79
	.byte 0x37, 0xC7, 0x73, 0xBF, 0xCD, 0xF7, 0x53, 0xEA, 0xAA, 0xFD, 0x5F, 0x5B, 0x6F, 0x3D, 0xDF, 0x14
	.byte 0xDB, 0x44, 0x78, 0x86, 0xF3, 0xAF, 0xCA, 0x81, 0xC4, 0x68, 0xB9, 0x3E, 0x34, 0x24, 0x38, 0x2C
	.byte 0x40, 0xA3, 0xC2, 0x5F, 0xC3, 0x1D, 0x16, 0x72, 0x25, 0xE2, 0xBC, 0x0C, 0x49, 0x3C, 0x28, 0x8B
	.byte 0x95, 0x0D, 0xFF, 0x41, 0x01, 0xA8, 0x39, 0x71, 0xB3, 0x0C, 0x08, 0xDE, 0xE4, 0xB4, 0xD8, 0x9C
	.byte 0xC1, 0x56, 0x64, 0x90, 0x84, 0xCB, 0x7B, 0x61, 0xB6, 0x32, 0xD5, 0x70, 0x5C, 0x6C, 0x48, 0x74
	.byte 0x57, 0xB8, 0xD0, 0x42
	.global dwcutil_PLT_ANIME
dwcutil_PLT_ANIME:
	.byte 0x0E, 0x04, 0x05, 0x00, 0xE6, 0x00, 0x8B, 0x00, 0x00, 0x00, 0xA8, 0x00
	.global dwcutil_S_BUTTON
dwcutil_S_BUTTON:
	.byte 0x78, 0x00, 0x10, 0x00
	.global dwcutil_BUTTON_NUM
dwcutil_BUTTON_NUM:
	.byte 0x02, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x00
	.global dwcutil_C_BUTTON
dwcutil_C_BUTTON:
	.byte 0x08, 0x00
	.global ov17_02111C8E
ov17_02111C8E:
	.byte 0xAC, 0x00
	.byte 0x84, 0x00, 0xAC, 0x00
	.global dwcutil_CELL_BUTTON
dwcutil_CELL_BUTTON:
	.byte 0x27, 0x1F, 0x25, 0x00, 0x27, 0x00, 0x23, 0x1D, 0x21, 0x00, 0x59, 0x00
	.byte 0x27, 0x21
	.global dwcutil_POS_TBL
dwcutil_POS_TBL:
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x0D, 0x00, 0x3C, 0x00, 0xE6, 0x00, 0x5E, 0x00, 0x0D, 0x00, 0x28, 0x00, 0xE6, 0x00, 0x70, 0x00
	.global dwcutil_LANG_TBL
dwcutil_LANG_TBL:
	.byte 0x6A, 0x65, 0x66, 0x67, 0x69, 0x73, 0x6B, 0x00
	.global FONT_FLAG
FONT_FLAG:
	.byte 0x80, 0x04, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00
	.byte 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00, 0x80, 0x02, 0x00, 0x00
	.byte 0x80, 0x02, 0x00, 0x00
	.global C_MESSAGE_U
C_MESSAGE_U:
	.byte 0x6B, 0x00, 0x22, 0x00, 0x6C, 0x00, 0x22, 0x00, 0x7C, 0x00, 0x22, 0x00
	.byte 0x5D, 0x00, 0x22, 0x00, 0x5F, 0x00, 0x22, 0x00, 0x7D, 0x00, 0x22, 0x00, 0x50, 0x00, 0x22, 0x00
	.global ov17_02111D00
ov17_02111D00:
	.byte 0x0A, 0x0B, 0x04, 0x05, 0x02, 0x03, 0x0C, 0x0D, 0xE5, 0x00, 0x26, 0x00
	.global ov17_02111D0C
ov17_02111D0C:
	.byte 0x18, 0x17, 0x16, 0x15
	.byte 0x5F, 0x5E, 0x5D, 0x5C
	.global ov17_02111D14
ov17_02111D14:
	.byte 0x02, 0x03
	.global ov17_02111D16
ov17_02111D16:
	.byte 0x04, 0x05
	.global ov17_02111D18
ov17_02111D18:
	.byte 0x3C, 0x3D
	.global ov17_02111D1A
ov17_02111D1A:
	.byte 0x82, 0x83, 0x00
	.global ov17_02111D1D
ov17_02111D1D:
	.byte 0x3A, 0x3B, 0x35
	.byte 0x39, 0x00, 0x1C, 0x00, 0x02, 0x00
	.global ov17_02111D26
ov17_02111D26:
	.byte 0x78, 0x00, 0x12, 0x00
	.global ov17_02111D2A
ov17_02111D2A:
	.byte 0x11, 0x00, 0x12, 0x00
	.global ov17_02111D2E
ov17_02111D2E:
	.byte 0xFF, 0xFF
	.byte 0x20, 0x80, 0x00, 0x00
	.global ov17_02111D34
ov17_02111D34:
	.byte 0x04, 0x00, 0xAA, 0x00, 0x84, 0x00, 0xAA, 0x00
	.global ov17_02111D3C
ov17_02111D3C:
	.byte 0x04, 0x00, 0x67, 0x00
	.global ov17_02111D40
ov17_02111D40:
	.byte 0x04, 0x00, 0x7D, 0x00, 0x04, 0x00, 0x93, 0x00, 0xDC, 0x00, 0x51, 0x00
	.global ov17_02111D4C
ov17_02111D4C:
	.byte 0x1B, 0x00, 0x12, 0x00
	.global ov17_02111D50
ov17_02111D50:
	.byte 0x20, 0x00, 0x12, 0x00, 0x28, 0x00, 0x12, 0x00, 0x20, 0x00, 0x12, 0x00
	.global ov17_02111D5C
ov17_02111D5C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
	.global ov17_02111D64
ov17_02111D64:
	.byte 0x0C, 0x0C, 0x0C, 0x0B, 0x00, 0x00, 0x00, 0x00
	.global ov17_02111D6C
ov17_02111D6C:
	.byte 0x01, 0x01, 0x01, 0x01
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02111D74
ov17_02111D74:
	.byte 0x04, 0x00, 0x51, 0x00, 0x16, 0x00, 0x51, 0x00, 0x28, 0x00, 0x51, 0x00
	.byte 0x3A, 0x00, 0x51, 0x00, 0x4C, 0x00, 0x51, 0x00, 0x5E, 0x00, 0x51, 0x00, 0x70, 0x00, 0x51, 0x00
	.byte 0x82, 0x00, 0x51, 0x00, 0x94, 0x00, 0x51, 0x00, 0xA6, 0x00, 0x51, 0x00, 0xB8, 0x00, 0x51, 0x00
	.byte 0xCA, 0x00, 0x51, 0x00, 0x20, 0x00, 0x67, 0x00, 0x32, 0x00, 0x67, 0x00, 0x44, 0x00, 0x67, 0x00
	.byte 0x56, 0x00, 0x67, 0x00, 0x68, 0x00, 0x67, 0x00, 0x7A, 0x00, 0x67, 0x00, 0x8C, 0x00, 0x67, 0x00
	.byte 0x9E, 0x00, 0x67, 0x00, 0xB0, 0x00, 0x67, 0x00, 0xC2, 0x00, 0x67, 0x00, 0xD4, 0x00, 0x67, 0x00
	.byte 0xE6, 0x00, 0x67, 0x00, 0x25, 0x00, 0x7D, 0x00, 0x37, 0x00, 0x7D, 0x00, 0x49, 0x00, 0x7D, 0x00
	.byte 0x5B, 0x00, 0x7D, 0x00, 0x6D, 0x00, 0x7D, 0x00, 0x7F, 0x00, 0x7D, 0x00, 0x91, 0x00, 0x7D, 0x00
	.byte 0xA3, 0x00, 0x7D, 0x00, 0xB5, 0x00, 0x7D, 0x00, 0xC7, 0x00, 0x7D, 0x00, 0xD9, 0x00, 0x7D, 0x00
	.byte 0xEB, 0x00, 0x7D, 0x00, 0x2D, 0x00, 0x93, 0x00, 0x3F, 0x00, 0x93, 0x00, 0x51, 0x00, 0x93, 0x00
	.byte 0x63, 0x00, 0x93, 0x00, 0x75, 0x00, 0x93, 0x00, 0x87, 0x00, 0x93, 0x00, 0x99, 0x00, 0x93, 0x00
	.byte 0xAB, 0x00, 0x93, 0x00, 0xBD, 0x00, 0x93, 0x00, 0xCF, 0x00, 0x93, 0x00, 0xE1, 0x00, 0x93, 0x00
	.global ov17_02111E30
ov17_02111E30:
	.byte 0x02, 0x00
	.global ov17_02111E32
ov17_02111E32:
	.byte 0x4F, 0x00, 0x14, 0x00, 0x4F, 0x00, 0x26, 0x00, 0x4F, 0x00, 0x38, 0x00, 0x4F, 0x00
	.byte 0x4A, 0x00, 0x4F, 0x00, 0x5C, 0x00, 0x4F, 0x00, 0x6E, 0x00, 0x4F, 0x00, 0x80, 0x00, 0x4F, 0x00
	.byte 0x92, 0x00, 0x4F, 0x00, 0xA4, 0x00, 0x4F, 0x00, 0xB6, 0x00, 0x4F, 0x00, 0xC8, 0x00, 0x4F, 0x00
	.byte 0x1E, 0x00, 0x65, 0x00, 0x30, 0x00, 0x65, 0x00, 0x42, 0x00, 0x65, 0x00, 0x54, 0x00, 0x65, 0x00
	.byte 0x66, 0x00, 0x65, 0x00, 0x78, 0x00, 0x65, 0x00, 0x8A, 0x00, 0x65, 0x00, 0x9C, 0x00, 0x65, 0x00
	.byte 0xAE, 0x00, 0x65, 0x00, 0xC0, 0x00, 0x65, 0x00, 0xD2, 0x00, 0x65, 0x00, 0xE4, 0x00, 0x65, 0x00
	.byte 0x23, 0x00, 0x7B, 0x00, 0x35, 0x00, 0x7B, 0x00, 0x47, 0x00, 0x7B, 0x00, 0x59, 0x00, 0x7B, 0x00
	.byte 0x6B, 0x00, 0x7B, 0x00, 0x7D, 0x00, 0x7B, 0x00, 0x8F, 0x00, 0x7B, 0x00, 0xA1, 0x00, 0x7B, 0x00
	.byte 0xB3, 0x00, 0x7B, 0x00, 0xC5, 0x00, 0x7B, 0x00, 0xD7, 0x00, 0x7B, 0x00, 0xE9, 0x00, 0x7B, 0x00
	.byte 0x2B, 0x00, 0x91, 0x00, 0x3D, 0x00, 0x91, 0x00, 0x4F, 0x00, 0x91, 0x00, 0x61, 0x00, 0x91, 0x00
	.byte 0x73, 0x00, 0x91, 0x00, 0x85, 0x00, 0x91, 0x00, 0x97, 0x00, 0x91, 0x00, 0xA9, 0x00, 0x91, 0x00
	.byte 0xBB, 0x00, 0x91, 0x00, 0xCD, 0x00, 0x91, 0x00, 0xDF, 0x00, 0x91, 0x00, 0x02, 0x00, 0x65, 0x00
	.byte 0x02, 0x00, 0x7B, 0x00, 0x02, 0x00, 0x91, 0x00, 0xDA, 0x00, 0x4F, 0x00, 0x02, 0x00, 0xA8, 0x00
	.byte 0x82, 0x00, 0xA8, 0x00
	.global ov17_02111F04
ov17_02111F04:
	.byte 0x32, 0x33, 0x01, 0x2F, 0x00, 0x33, 0x02, 0x0C, 0x01, 0x33, 0x03, 0x0D
	.byte 0x02, 0x33, 0x04, 0x0E, 0x03, 0x33, 0x05, 0x0F, 0x04, 0x33, 0x06, 0x10, 0x05, 0x34, 0x07, 0x11
	.byte 0x06, 0x34, 0x08, 0x12, 0x07, 0x34, 0x09, 0x13, 0x08, 0x34, 0x0A, 0x14, 0x09, 0x34, 0x0B, 0x15
	.byte 0x0A, 0x34, 0x32, 0x16, 0x2F, 0x01, 0x0D, 0x18, 0x0C, 0x02, 0x0E, 0x19, 0x0D, 0x03, 0x0F, 0x1A
	.byte 0x0E, 0x04, 0x10, 0x1B, 0x0F, 0x05, 0x11, 0x1C, 0x10, 0x06, 0x12, 0x1D, 0x11, 0x07, 0x13, 0x1E
	.byte 0x12, 0x08, 0x14, 0x1F, 0x13, 0x09, 0x15, 0x20, 0x14, 0x0A, 0x16, 0x21, 0x15, 0x0B, 0x17, 0x22
	.byte 0x16, 0x32, 0x2F, 0x23, 0x30, 0x0C, 0x19, 0x24, 0x18, 0x0D, 0x1A, 0x25, 0x19, 0x0E, 0x1B, 0x26
	.byte 0x1A, 0x0F, 0x1C, 0x27, 0x1B, 0x10, 0x1D, 0x28, 0x1C, 0x11, 0x1E, 0x29, 0x1D, 0x12, 0x1F, 0x2A
	.byte 0x1E, 0x13, 0x20, 0x2B, 0x1F, 0x14, 0x21, 0x2C, 0x20, 0x15, 0x22, 0x2D, 0x21, 0x16, 0x23, 0x2E
	.byte 0x22, 0x17, 0x30, 0x2E, 0x31, 0x18, 0x25, 0x33, 0x24, 0x19, 0x26, 0x33, 0x25, 0x1A, 0x27, 0x33
	.byte 0x26, 0x1B, 0x28, 0x33, 0x27, 0x1C, 0x29, 0x33, 0x28, 0x1D, 0x2A, 0x34, 0x29, 0x1E, 0x2B, 0x34
	.byte 0x2A, 0x1F, 0x2C, 0x34, 0x2B, 0x20, 0x2D, 0x34, 0x2C, 0x21, 0x2E, 0x34, 0x2D, 0xFF, 0x31, 0x34
	.byte 0x17, 0x00, 0x0C, 0x30, 0x23, 0x2F, 0x18, 0x31, 0x2E, 0x30, 0x24, 0x33, 0x0B, 0x34, 0x00, 0x17
	.byte 0x34, 0xFE, 0x34, 0xFC, 0x33, 0xFD, 0x33, 0xFB
	.global ov17_02111FD8
ov17_02111FD8:
	.byte 0x04, 0x05
	.global ov17_02111FDA
ov17_02111FDA:
	.byte 0x37, 0x38
	.global ov17_02111FDC
ov17_02111FDC:
	.byte 0x3C, 0x3D
	.global ov17_02111FDE
ov17_02111FDE:
	.byte 0x02, 0x03
	.global ov17_02111FE0
ov17_02111FE0:
	.byte 0x12, 0x13, 0x00
	.global ov17_02111FE3
ov17_02111FE3:
	.byte 0x10, 0x11, 0x00
	.global ov17_02111FE6
ov17_02111FE6:
	.byte 0x1C, 0x00, 0x14, 0x00, 0x0C, 0x00, 0x04, 0x00
	.global ov17_02111FEE
ov17_02111FEE:
	.byte 0x1C, 0x00
	.byte 0x14, 0x00
	.global ov17_02111FF2
ov17_02111FF2:
	.byte 0x78, 0x00, 0x12, 0x00
	.global ov17_02111FF6
ov17_02111FF6:
	.byte 0x72, 0x00, 0x91, 0x00, 0x92, 0x00, 0x91, 0x00
	.global ov17_02111FFE
ov17_02111FFE:
	.byte 0x04, 0x00
	.byte 0xAA, 0x00, 0x84, 0x00, 0xAA, 0x00
	.global ov17_02112006
ov17_02112006:
	.byte 0x37, 0x38, 0x39, 0x34, 0x35, 0x36, 0x31, 0x32, 0x33, 0x30
	.byte 0x00, 0x00
	.global ov17_02112012
ov17_02112012:
	.byte 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x31, 0x00
	.byte 0x32, 0x00, 0x33, 0x00, 0x30, 0x00, 0x20, 0x00, 0x20, 0x00, 0x00, 0x00
	.global ov17_0211202C
ov17_0211202C:
	.byte 0x52, 0x00, 0x4C, 0x00
	.byte 0x72, 0x00, 0x4C, 0x00, 0x92, 0x00, 0x4C, 0x00, 0x52, 0x00, 0x63, 0x00, 0x72, 0x00, 0x63, 0x00
	.byte 0x92, 0x00, 0x63, 0x00, 0x52, 0x00, 0x7A, 0x00, 0x72, 0x00, 0x7A, 0x00, 0x92, 0x00, 0x7A, 0x00
	.byte 0x52, 0x00, 0x91, 0x00
	.global ov17_02112054
ov17_02112054:
	.byte 0x50, 0x00
	.global ov17_02112056
ov17_02112056:
	.byte 0x4A, 0x00, 0x70, 0x00, 0x4A, 0x00, 0x90, 0x00, 0x4A, 0x00
	.byte 0x50, 0x00, 0x61, 0x00, 0x70, 0x00, 0x61, 0x00, 0x90, 0x00, 0x61, 0x00, 0x50, 0x00, 0x78, 0x00
	.byte 0x70, 0x00, 0x78, 0x00, 0x90, 0x00, 0x78, 0x00, 0x50, 0x00, 0x8F, 0x00, 0x70, 0x00, 0x8F, 0x00
	.byte 0x90, 0x00, 0x8F, 0x00, 0x02, 0x00, 0xA8, 0x00, 0x82, 0x00, 0xA8, 0x00
	.global ov17_0211208C
ov17_0211208C:
	.byte 0x02, 0x0C, 0x01, 0x03
	.byte 0x00, 0x0D, 0x02, 0x04, 0x01, 0x0D, 0x00, 0x05, 0x05, 0x00, 0x04, 0x06, 0x03, 0x01, 0x05, 0x07
	.byte 0x04, 0x02, 0x03, 0x08, 0x08, 0x03, 0x07, 0x09, 0x06, 0x04, 0x08, 0x0A, 0x07, 0x05, 0x06, 0x0B
	.byte 0x0B, 0x06, 0x0A, 0x0C, 0x09, 0x07, 0x0B, 0x0D, 0x0A, 0x08, 0x09, 0x0D, 0x0D, 0x09, 0x0D, 0x00
	.byte 0x0C, 0xFF, 0x0C, 0xFE
	.global ov17_021120C4
ov17_021120C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.global ov17_021120CC
ov17_021120CC:
	.byte 0x03, 0x03, 0x03, 0x01
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_021120D4
ov17_021120D4:
	.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
	.global ov17_021120DC
ov17_021120DC:
	.byte 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_021120E4
ov17_021120E4:
	.byte 0x4E, 0x49, 0x4E, 0x54, 0x45, 0x4E, 0x44, 0x4F, 0x2D, 0x44, 0x53, 0x00
	.global ov17_021120F0
ov17_021120F0:
	.byte 0x01, 0x02, 0x00, 0x00
	.global ov17_021120F4
ov17_021120F4:
	.byte 0x08, 0x00, 0x20, 0x00, 0xAC, 0x00, 0xA0, 0x00, 0xB4, 0x00, 0x20, 0x00
	.byte 0xF8, 0x00, 0xA0, 0x00
	.global ov17_02112104
ov17_02112104:
	.byte 0x06, 0x00
	.global ov17_02112106
ov17_02112106:
	.byte 0x1E, 0x00
	.global ov17_02112108
ov17_02112108:
	.byte 0x9E, 0x00
	.global ov17_0211210A
ov17_0211210A:
	.byte 0x92, 0x00, 0xB2, 0x00, 0x1E, 0x00
	.byte 0xEA, 0x00, 0x92, 0x00
	.global ov17_02112114
ov17_02112114:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x31, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_0211212C
ov17_0211212C:
	.byte 0x01, 0x02, 0x03, 0x00
	.byte 0xE0, 0x00, 0x84, 0x00
	.global ov17_02112134
ov17_02112134:
	.byte 0x08, 0x00, 0x24, 0x00, 0xF8, 0x00, 0x44, 0x00, 0x08, 0x00, 0x50, 0x00
	.byte 0xF8, 0x00, 0x70, 0x00, 0x08, 0x00, 0x7C, 0x00, 0xF8, 0x00, 0x9C, 0x00
	.global ov17_0211214C
ov17_0211214C:
	.byte 0x06, 0x00
	.global ov17_0211214E
ov17_0211214E:
	.byte 0x22, 0x00
	.global ov17_02112150
ov17_02112150:
	.byte 0xEA, 0x00
	.global ov17_02112152
ov17_02112152:
	.byte 0x36, 0x00, 0x06, 0x00, 0x4E, 0x00, 0xEA, 0x00, 0x62, 0x00, 0x06, 0x00, 0x7A, 0x00
	.byte 0xEA, 0x00, 0x8E, 0x00
	.global ov17_02112164
ov17_02112164:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x4F, 0x70, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_0211217C
ov17_0211217C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x42, 0x67, 0x4F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x31, 0x2E, 0x6E, 0x63, 0x6C
	.byte 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02112194
ov17_02112194:
	.byte 0x02, 0x00, 0x00, 0x00
	.global ov17_02112198
ov17_02112198:
	.byte 0x2E, 0x2D, 0x33
	.global ov17_0211219B
ov17_0211219B:
	.byte 0x18, 0x17, 0x16, 0x15, 0x00
	.global ov17_021121A0
ov17_021121A0:
	.byte 0x07, 0x00, 0x32, 0x00, 0xD0, 0x00, 0x4C, 0x00, 0x07, 0x00, 0x4E, 0x00, 0xD0, 0x00, 0x68, 0x00
	.byte 0x07, 0x00, 0x6A, 0x00, 0xD0, 0x00, 0x84, 0x00, 0x07, 0x00, 0x86, 0x00, 0xD0, 0x00, 0xA0, 0x00
	.byte 0x85, 0x00, 0x1B, 0x00, 0xFD, 0x00, 0x2C, 0x00
	.global ov17_021121C8
ov17_021121C8:
	.byte 0x04, 0x00
	.global ov17_021121CA
ov17_021121CA:
	.byte 0x2E, 0x00
	.global ov17_021121CC
ov17_021121CC:
	.byte 0xDB, 0x00, 0x3F, 0x00
	.byte 0x04, 0x00, 0x4A, 0x00, 0xDB, 0x00, 0x5B, 0x00, 0x04, 0x00, 0x66, 0x00, 0xDB, 0x00, 0x77, 0x00
	.byte 0x04, 0x00, 0x82, 0x00, 0xDB, 0x00, 0x93, 0x00, 0x82, 0x00, 0x18, 0x00, 0xF0, 0x00, 0x2C, 0x00
	.global ov17_021121F0
ov17_021121F0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x31, 0x2E
	.byte 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112208
ov17_02112208:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34
	.byte 0x41, 0x70, 0x4C, 0x69, 0x73, 0x74, 0x42, 0x61, 0x63, 0x6B, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02112224
ov17_02112224:
	.byte 0x3E, 0x3D, 0x00, 0x00
	.global ov17_02112228
ov17_02112228:
	.byte 0x20, 0x31, 0x0E, 0x00, 0x10, 0x00
	.global ov17_0211222E
ov17_0211222E:
	.byte 0x08, 0x17
	.byte 0x26, 0x35, 0x44, 0x53, 0x62, 0x71, 0x80, 0x8F, 0x9E, 0xAD, 0xBC, 0xCB, 0xDA, 0xE9, 0x00, 0x00
	.global ov17_02112240
ov17_02112240:
	.byte 0x47, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.global ov17_02112248
ov17_02112248:
	.byte 0x32, 0x35, 0x35, 0x00, 0x0B, 0x00, 0x10, 0x00
	.global ov17_02112250
ov17_02112250:
	.byte 0x31, 0x3D, 0x49, 0x5A, 0x66, 0x72, 0x83, 0x8F, 0x9B, 0xAC, 0xB8, 0xC4
	.global ov17_0211225C
ov17_0211225C:
	.byte 0x3F, 0x40, 0x41, 0x42
	.byte 0x43, 0x00, 0x00, 0x00
	.global ov17_02112264
ov17_02112264:
	.byte 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211226C
ov17_0211226C:
	.byte 0x00, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x00, 0x00, 0x0D, 0x00, 0x3C, 0x00, 0xE6, 0x00, 0x5E, 0x00
	.global ov17_0211227C
ov17_0211227C:
	.byte 0x62, 0x00
	.global ov17_0211227E
ov17_0211227E:
	.byte 0x22, 0x00
	.byte 0x62, 0x00, 0x22, 0x00, 0x3D, 0x00, 0x22, 0x00, 0x65, 0x00, 0x22, 0x00, 0x6C, 0x00, 0x22, 0x00
	.byte 0x34, 0x00, 0x22, 0x00, 0x4E, 0x00, 0x22, 0x00
	.global ov17_02112298
ov17_02112298:
	.byte 0x06, 0x08, 0x07
	.global ov17_0211229B
ov17_0211229B:
	.byte 0xFF, 0x23, 0x27, 0xFF, 0x23
	.byte 0x2F, 0xFF, 0xCC, 0x00, 0x34, 0x00, 0x1C, 0x00, 0x18, 0x00, 0x8F, 0x00, 0x34, 0x00, 0x2C, 0x00
	.byte 0x18, 0x00, 0xC0, 0x00, 0x34, 0x00, 0x2C, 0x00, 0x18, 0x00
	.global ov17_021122BA
ov17_021122BA:
	.byte 0x00, 0x01, 0x0E, 0x04, 0x05, 0x06
	.byte 0x0E, 0x09, 0x0A
	.global ov17_021122C3
ov17_021122C3:
	.byte 0x00, 0x05, 0x02, 0x07, 0x04, 0x01, 0x06, 0x03, 0x00
	.global ov17_021122CC
ov17_021122CC:
	.byte 0x00, 0x01, 0x02, 0x02
	.byte 0x03, 0x04, 0x05, 0x06, 0x06, 0x07, 0x08
	.global ov17_021122D7
ov17_021122D7:
	.byte 0x00, 0x29, 0x2C, 0x52, 0x53, 0x30, 0x00, 0x2A, 0x30
	.byte 0x54, 0x55, 0x00, 0x00, 0x2B, 0x00
	.global ov17_021122E6
ov17_021122E6:
	.byte 0x00, 0x00, 0x60, 0x00, 0xE0, 0x00, 0x40, 0x01, 0xC0, 0x01
	.byte 0x40, 0x02, 0xA0, 0x02, 0x20, 0x03, 0xA0, 0x03
	.global ov17_021122F8
ov17_021122F8:
	.byte 0x84, 0x00, 0x1B, 0x00, 0xFC, 0x00, 0x2C, 0x00
	.byte 0x84, 0x00, 0xAC, 0x00, 0xFC, 0x00, 0xBD, 0x00, 0x04, 0x00, 0xAC, 0x00, 0x7C, 0x00, 0xBD, 0x00
	.global ov17_02112310
ov17_02112310:
	.byte 0xC8, 0x00
	.global ov17_02112312
ov17_02112312:
	.byte 0x31, 0x00
	.global ov17_02112314
ov17_02112314:
	.byte 0xE0, 0x00, 0x4D, 0x00, 0xBC, 0x00, 0x31, 0x00, 0xE0, 0x00, 0x4D, 0x00
	.byte 0x8B, 0x00, 0x31, 0x00, 0xAF, 0x00, 0x4D, 0x00, 0x82, 0x00, 0x18, 0x00, 0xEE, 0x00, 0x2C, 0x00
	.byte 0x82, 0x00, 0xA9, 0x00, 0xEE, 0x00, 0xBD, 0x00, 0x02, 0x00, 0xA9, 0x00, 0x6E, 0x00, 0xBD, 0x00
	.global ov17_02112340
ov17_02112340:
	.byte 0x02, 0x03, 0x07, 0x08
	.global ov17_02112344
ov17_02112344:
	.byte 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x03
	.byte 0x04, 0x05, 0x00, 0x00
	.global ov17_02112354
ov17_02112354:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x32, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211236C
ov17_0211236C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112384
ov17_02112384:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x33, 0x4C, 0x69, 0x73, 0x74
	.byte 0x42, 0x61, 0x63, 0x6B, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_0211239C
ov17_0211239C:
	.byte 0x13, 0x14, 0x12, 0x56
	.global ov17_021123A0
ov17_021123A0:
	.byte 0x03, 0x2D, 0x27, 0x1D, 0x32, 0x30, 0x06, 0x00
	.global ov17_021123A8
ov17_021123A8:
	.byte 0x08, 0x00
	.global ov17_021123AA
ov17_021123AA:
	.byte 0x30, 0x00, 0x5A, 0x00, 0x30, 0x00
	.byte 0xAC, 0x00, 0x30, 0x00, 0x0C, 0x00, 0x58, 0x00, 0x5E, 0x00, 0x58, 0x00, 0xB0, 0x00, 0x58, 0x00
	.global ov17_021123C0
ov17_021123C0:
	.byte 0x08, 0x00, 0x20, 0x00, 0x54, 0x00, 0x56, 0x00, 0x5A, 0x00, 0x20, 0x00, 0xA6, 0x00, 0x56, 0x00
	.byte 0xAC, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x56, 0x00, 0x08, 0x00, 0x78, 0x00, 0xF8, 0x00, 0xA0, 0x00
	.byte 0x08, 0x00, 0x54, 0x00, 0x54, 0x00, 0x70, 0x00, 0x5A, 0x00, 0x54, 0x00, 0xA6, 0x00, 0x70, 0x00
	.byte 0xAC, 0x00, 0x54, 0x00, 0xF8, 0x00, 0x70, 0x00
	.global ov17_021123F8
ov17_021123F8:
	.byte 0x06, 0x00
	.global ov17_021123FA
ov17_021123FA:
	.byte 0x1E, 0x00
	.global ov17_021123FC
ov17_021123FC:
	.byte 0x46, 0x00
	.global ov17_021123FE
ov17_021123FE:
	.byte 0x48, 0x00
	.byte 0x58, 0x00, 0x1E, 0x00, 0x98, 0x00, 0x48, 0x00, 0xAA, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x48, 0x00
	.byte 0x06, 0x00, 0x76, 0x00, 0xEA, 0x00, 0x92, 0x00, 0x09, 0x00, 0x54, 0x00, 0x43, 0x00, 0x70, 0x00
	.byte 0x5B, 0x00, 0x54, 0x00, 0x95, 0x00, 0x70, 0x00, 0xAD, 0x00, 0x54, 0x00, 0xE7, 0x00, 0x70, 0x00
	.global ov17_02112430
ov17_02112430:
	.byte 0x03, 0x04, 0x05, 0x07
	.global ov17_02112434
ov17_02112434:
	.byte 0x0A, 0x09, 0x0B, 0x06
	.global ov17_02112438
ov17_02112438:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112450
ov17_02112450:
	.byte 0x01, 0x02, 0x03, 0x04
	.global ov17_02112454
ov17_02112454:
	.byte 0x03, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x06
	.global ov17_0211245B
ov17_0211245B:
	.byte 0xFF, 0xFE, 0xFF, 0xFE, 0x03
	.byte 0x00, 0x03, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x01, 0x00, 0xFF, 0xFE, 0xFF, 0xFE, 0x03
	.byte 0x00, 0x02, 0x00, 0x01, 0x00, 0x03, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00
	.global ov17_0211247C
ov17_0211247C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112494
ov17_02112494:
	.byte 0x08, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x5C, 0x00, 0x08, 0x00, 0x64, 0x00
	.byte 0x7E, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x83, 0x00, 0x64, 0x00
	.byte 0xF8, 0x00, 0xA0, 0x00, 0x08, 0x00, 0x20, 0x00, 0xF8, 0x00, 0x5C, 0x00, 0x08, 0x00, 0x64, 0x00
	.byte 0x64, 0x00, 0xA0, 0x00, 0x68, 0x00, 0x64, 0x00, 0xC4, 0x00, 0xA0, 0x00, 0xC8, 0x00, 0x64, 0x00
	.byte 0xF8, 0x00, 0xA0, 0x00
	.global ov17_021124D4
ov17_021124D4:
	.byte 0x06, 0x00
	.global ov17_021124D6
ov17_021124D6:
	.byte 0x1E, 0x00
	.global ov17_021124D8
ov17_021124D8:
	.byte 0xEA, 0x00
	.global ov17_021124DA
ov17_021124DA:
	.byte 0x4E, 0x00, 0x06, 0x00, 0x62, 0x00
	.byte 0x70, 0x00, 0x92, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x62, 0x00
	.byte 0xEA, 0x00, 0x92, 0x00, 0x06, 0x00, 0x1E, 0x00, 0xEA, 0x00, 0x4E, 0x00, 0x06, 0x00, 0x62, 0x00
	.byte 0x56, 0x00, 0x92, 0x00, 0x66, 0x00, 0x62, 0x00, 0xB6, 0x00, 0x92, 0x00, 0xC6, 0x00, 0x62, 0x00
	.byte 0xEA, 0x00, 0x92, 0x00
	.global ov17_02112514
ov17_02112514:
	.byte 0xF0, 0x51, 0x10, 0x02, 0x04, 0x52, 0x10, 0x02, 0x03, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112528
ov17_02112528:
	.byte 0x2B, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00
	.byte 0x49, 0x00, 0x00, 0x00
	.global ov17_02112534
ov17_02112534:
	.byte 0x10, 0x0F, 0x0E
	.global ov17_02112537
ov17_02112537:
	.byte 0x55, 0x36, 0x1E, 0x00, 0x00
	.global ov17_0211253C
ov17_0211253C:
	.byte 0x00, 0x50, 0xF2, 0x01
	.global ov17_02112540
ov17_02112540:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112548
ov17_02112548:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0xFF, 0x3F
	.byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211258C
ov17_0211258C:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02112590
ov17_02112590:
	.byte 0x01, 0x00, 0x05, 0x00, 0x06, 0x04, 0x00, 0x02, 0x00, 0x06, 0x04, 0x00, 0x05, 0x00, 0x03
	.global ov17_0211259F
ov17_0211259F:
	.byte 0x02
	.byte 0x01, 0x03, 0x01, 0x03, 0x05, 0x01, 0x04, 0x01, 0x05, 0x07, 0x01, 0x07, 0x01, 0x06
	.global ov17_021125AE
ov17_021125AE:
	.byte 0x20, 0x00
	.byte 0x21, 0x00, 0x50, 0x00, 0x30, 0x00, 0x68, 0x00, 0x21, 0x00, 0x98, 0x00, 0x30, 0x00, 0xB0, 0x00
	.byte 0x21, 0x00, 0x00, 0x00
	.global ov17_021125C4
ov17_021125C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_021125CA
ov17_021125CA:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42
	.byte 0x41, 0x50, 0x00, 0x00
	.global ov17_021125D4
ov17_021125D4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0xFF, 0x3F, 0x00, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x08, 0x00
	.global ov17_0211261C
ov17_0211261C:
	.byte 0x00, 0x00, 0x46, 0x46
	.byte 0x4F, 0x2F
	.global ov17_02112622
ov17_02112622:
	.byte 0x02, 0x01, 0x02, 0x01, 0x02, 0x00
	.global ov17_02112628
ov17_02112628:
	.byte 0x04, 0x00, 0x1D, 0x00, 0xFC, 0x00, 0x44, 0x00
	.global ov17_02112630
ov17_02112630:
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01
	.global ov17_0211263A
ov17_0211263A:
	.byte 0x01
	.global ov17_0211263B
ov17_0211263B:
	.byte 0x00, 0x00, 0xFF, 0x01, 0x00
	.byte 0x00, 0xFF, 0x01, 0x00
	.global ov17_02112644
ov17_02112644:
	.byte 0x1B, 0x19, 0x57, 0x00, 0x23, 0x1D, 0x59, 0x00, 0x23, 0x1D
	.global ov17_0211264E
ov17_0211264E:
	.byte 0x6C, 0x00
	.byte 0x10, 0x00, 0x6C, 0x00, 0x10, 0x00, 0x78, 0x00, 0x10, 0x00, 0x78, 0x00, 0x10, 0x00, 0x78, 0x00
	.byte 0x10, 0x00
	.global ov17_02112662
ov17_02112662:
	.byte 0xD8, 0x00
	.global ov17_02112664
ov17_02112664:
	.byte 0x50, 0x00, 0xD8, 0x00, 0x50, 0x00, 0xE6, 0x00, 0x4F, 0x00, 0xE6, 0x00
	.byte 0x4F, 0x00, 0xE6, 0x00, 0x48, 0x00, 0xDA, 0x00, 0x5C, 0x00
	.global ov17_0211267A
ov17_0211267A:
	.byte 0x0B, 0x00
	.global ov17_0211267C
ov17_0211267C:
	.byte 0x27, 0x00, 0x0B, 0x00
	.byte 0x27, 0x00, 0x04, 0x00, 0x4C, 0x00, 0x04, 0x00, 0x4C, 0x00, 0x04, 0x00, 0x54, 0x00, 0x0B, 0x00
	.byte 0x27, 0x00
	.global ov17_02112692
ov17_02112692:
	.byte 0xEA, 0x00
	.global ov17_02112694
ov17_02112694:
	.byte 0x72, 0x00, 0xEA, 0x00, 0x72, 0x00, 0xF8, 0x00, 0x70, 0x00, 0xF8, 0x00
	.byte 0x70, 0x00, 0x64, 0x00, 0x70, 0x00, 0xEA, 0x00, 0x72, 0x00
	.global ov17_021126AA
ov17_021126AA:
	.byte 0x10, 0x00
	.global ov17_021126AC
ov17_021126AC:
	.byte 0x84, 0x00, 0x84, 0x00
	.byte 0x84, 0x00, 0x10, 0x00, 0x84, 0x00, 0x84, 0x00, 0x84, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00
	.byte 0xA7, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00, 0xA7, 0x00, 0x09, 0x00, 0xA7, 0x00, 0x83, 0x00
	.byte 0xA7, 0x00, 0x00, 0x00
	.global ov17_021126D4
ov17_021126D4:
	.byte 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
	.global dwc_ARCHIVE_NAME
dwc_ARCHIVE_NAME:
	.byte 0x64, 0x77, 0x63, 0x00
	.global ov17_021126E0
ov17_021126E0:
	.byte 0x00, 0xF0, 0x00, 0x10
	.global ov17_021126E4
ov17_021126E4:
	.byte 0x11, 0x10, 0x01, 0x00
	.global ov17_021126E8
ov17_021126E8:
	.byte 0xF0, 0x00, 0x10, 0x00
	.global ov17_021126EC
ov17_021126EC:
	.byte 0x00, 0x00, 0x80, 0x01
	.global ov17_021126F0
ov17_021126F0:
	.byte 0x20, 0x00
	.global ov17_021126F2
ov17_021126F2:
	.byte 0x18, 0x00, 0x20, 0x00, 0x0C, 0x00
	.global ov17_021126F8
ov17_021126F8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00
	.global ov17_02112700
ov17_02112700:
	.byte 0x80, 0x20, 0x00, 0x00

	.data
	.global aoss_AttrNo
aoss_AttrNo:
	.byte 0x09, 0x08, 0x00, 0x00
	.global aoss_s_sFd
aoss_s_sFd:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.global soconfig
soconfig:
	.byte 0x00, 0x00, 0x00, 0x01
	.byte 0x1D, 0xFE, 0x0E, 0x02, 0x35, 0xFE, 0x0E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02112784
ov17_02112784:
	.byte 0x45, 0x53, 0x53, 0x49, 0x44, 0x2D, 0x41, 0x4F, 0x53, 0x53, 0x00, 0x00
	.global ov17_02112790
ov17_02112790:
	.byte 0x4D, 0x45, 0x4C, 0x43, 0x4F, 0x00, 0x00, 0x00
	.global aoss_rateset_table
aoss_rateset_table:
	.byte 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x0B, 0x00, 0x08, 0x00, 0x0C, 0x00, 0x10, 0x00, 0x12, 0x00, 0x20, 0x00, 0x16, 0x00
	.byte 0x40, 0x00, 0x18, 0x00, 0x80, 0x00, 0x24, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x02, 0x48, 0x00
	.byte 0x00, 0x04, 0x60, 0x00, 0x00, 0x08, 0x6C, 0x00
	.global lpElementData
lpElementData:
	.byte 0x6C, 0x51, 0x11, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x40, 0x00, 0x00, 0x00
	.global AtermSOConfig
AtermSOConfig:
	.byte 0x00, 0x00, 0x00, 0x01
	.byte 0x65, 0x13, 0x0F, 0x02, 0x95, 0x13, 0x0F, 0x02, 0x00, 0x00, 0x00, 0x00, 0xC0, 0xA8, 0x00, 0xB0
	.byte 0xFF, 0xFF, 0xFF, 0x00, 0xC0, 0xA8, 0x00, 0xC8, 0xC0, 0xA8, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x3C, 0x28, 0x11, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global gszStealth
gszStealth:
	.byte 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x2A, 0x00, 0x00, 0x4E, 0x49, 0x4E, 0x54
	.byte 0x45, 0x4E, 0x44, 0x4F, 0x2D, 0x44, 0x53, 0x00
	.global ov17_02112848
ov17_02112848:
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112888
ov17_02112888:
	.byte 0x57, 0x41, 0x52, 0x50, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112890
ov17_02112890:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x4E, 0x75, 0x6C, 0x6C, 0x2E, 0x6E, 0x73, 0x63, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x32, 0x48, 0x6C, 0x41, 0x70
	.byte 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34
	.byte 0x48, 0x6C, 0x49, 0x70, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x57, 0x65, 0x70, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x55, 0x73, 0x62, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x44, 0x6E
	.byte 0x73, 0x31, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x53, 0x73, 0x69, 0x64, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x35, 0x48, 0x6C, 0x4D, 0x6F
	.byte 0x76, 0x65, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x32, 0x48, 0x6C, 0x57, 0x69, 0x46, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x35, 0x48, 0x6C, 0x49, 0x6E
	.byte 0x66, 0x6F, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x4D, 0x61, 0x73, 0x6B, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x53, 0x65
	.byte 0x74, 0x32, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x44, 0x6E, 0x73, 0x30, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x53, 0x65
	.byte 0x74, 0x33, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x53, 0x65, 0x74, 0x31, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x33, 0x48, 0x6C, 0x4C, 0x69
	.byte 0x73, 0x74, 0x31, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x33, 0x48, 0x6C, 0x4C, 0x69, 0x73, 0x74, 0x32, 0x2E, 0x6E, 0x73, 0x63, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x33, 0x48, 0x6C, 0x4C, 0x69
	.byte 0x73, 0x74, 0x33, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x35, 0x48, 0x6C, 0x45, 0x72, 0x61, 0x73, 0x65, 0x2E, 0x6E, 0x73, 0x63, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x35, 0x48, 0x6C, 0x4F, 0x70
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x34, 0x48, 0x6C, 0x47, 0x61, 0x74, 0x65, 0x77, 0x61, 0x79, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02112A74
ov17_02112A74:
	.byte 0x3C, 0x29, 0x11, 0x02, 0xA4, 0x28, 0x11, 0x02, 0xE4, 0x29, 0x11, 0x02
	.byte 0xFC, 0x29, 0x11, 0x02, 0x14, 0x2A, 0x11, 0x02, 0xCC, 0x29, 0x11, 0x02, 0x84, 0x29, 0x11, 0x02
	.byte 0xB4, 0x29, 0x11, 0x02, 0xE0, 0x28, 0x11, 0x02, 0x0C, 0x29, 0x11, 0x02, 0xCC, 0x28, 0x11, 0x02
	.byte 0xB8, 0x28, 0x11, 0x02, 0x6C, 0x29, 0x11, 0x02, 0x5C, 0x2A, 0x11, 0x02, 0x9C, 0x29, 0x11, 0x02
	.byte 0xF4, 0x28, 0x11, 0x02, 0x44, 0x2A, 0x11, 0x02, 0x54, 0x29, 0x11, 0x02, 0x2C, 0x2A, 0x11, 0x02
	.byte 0x24, 0x29, 0x11, 0x02
	.global ov17_02112AC4
ov17_02112AC4:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x48, 0x6C, 0x2E
	.byte 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112AD8
ov17_02112AD8:
	.byte 0x60, 0x2B, 0x11, 0x02, 0x00, 0x2B, 0x11, 0x02
	.byte 0x30, 0x2B, 0x11, 0x02
	.global ov17_02112AE4
ov17_02112AE4:
	.byte 0x90, 0x2B, 0x11, 0x02, 0xF4, 0x2B, 0x11, 0x02, 0x58, 0x2C, 0x11, 0x02
	.global ov17_02112AF0
ov17_02112AF0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x21, 0x40, 0x23, 0x24, 0x25, 0x5E, 0x26, 0x2A, 0x28, 0x29, 0x5F, 0x2B, 0x51, 0x57, 0x45, 0x52
	.byte 0x54, 0x59, 0x55, 0x49, 0x4F, 0x50, 0x7B, 0x7D, 0x41, 0x53, 0x44, 0x46, 0x47, 0x48, 0x4A, 0x4B
	.byte 0x4C, 0x3A, 0x22, 0x7E, 0x5A, 0x58, 0x43, 0x56, 0x42, 0x4E, 0x4D, 0x3C, 0x3E, 0x3F, 0x7C, 0x00
	.byte 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x30, 0x2D, 0x3D, 0x51, 0x57, 0x45, 0x52
	.byte 0x54, 0x59, 0x55, 0x49, 0x4F, 0x50, 0x5B, 0x5D, 0x41, 0x53, 0x44, 0x46, 0x47, 0x48, 0x4A, 0x4B
	.byte 0x4C, 0x3B, 0x27, 0x60, 0x5A, 0x58, 0x43, 0x56, 0x42, 0x4E, 0x4D, 0x2C, 0x2E, 0x2F, 0x5C, 0x00
	.byte 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x30, 0x2D, 0x3D, 0x71, 0x77, 0x65, 0x72
	.byte 0x74, 0x79, 0x75, 0x69, 0x6F, 0x70, 0x5B, 0x5D, 0x61, 0x73, 0x64, 0x66, 0x67, 0x68, 0x6A, 0x6B
	.byte 0x6C, 0x3B, 0x27, 0x60, 0x7A, 0x78, 0x63, 0x76, 0x62, 0x6E, 0x6D, 0x2C, 0x2E, 0x2F, 0x5C, 0x00
	.byte 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00
	.byte 0x39, 0x00, 0x30, 0x00, 0x2D, 0x00, 0x3D, 0x00, 0x71, 0x00, 0x77, 0x00, 0x65, 0x00, 0x72, 0x00
	.byte 0x74, 0x00, 0x79, 0x00, 0x75, 0x00, 0x69, 0x00, 0x6F, 0x00, 0x70, 0x00, 0x5B, 0x00, 0x5D, 0x00
	.byte 0x61, 0x00, 0x73, 0x00, 0x64, 0x00, 0x66, 0x00, 0x67, 0x00, 0x68, 0x00, 0x6A, 0x00, 0x6B, 0x00
	.byte 0x6C, 0x00, 0x3B, 0x00, 0x27, 0x00, 0x60, 0x00, 0x7A, 0x00, 0x78, 0x00, 0x63, 0x00, 0x76, 0x00
	.byte 0x62, 0x00, 0x6E, 0x00, 0x6D, 0x00, 0x2C, 0x00, 0x2E, 0x00, 0x2F, 0x00, 0x5C, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x40, 0x00, 0x23, 0x00, 0x24, 0x00, 0x25, 0x00, 0x5E, 0x00
	.byte 0x26, 0x00, 0x2A, 0x00, 0x28, 0x00, 0x29, 0x00, 0x5F, 0x00, 0x2B, 0x00, 0x51, 0x00, 0x57, 0x00
	.byte 0x45, 0x00, 0x52, 0x00, 0x54, 0x00, 0x59, 0x00, 0x55, 0x00, 0x49, 0x00, 0x4F, 0x00, 0x50, 0x00
	.byte 0x7B, 0x00, 0x7D, 0x00, 0x41, 0x00, 0x53, 0x00, 0x44, 0x00, 0x46, 0x00, 0x47, 0x00, 0x48, 0x00
	.byte 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x3A, 0x00, 0x22, 0x00, 0x7E, 0x00, 0x5A, 0x00, 0x58, 0x00
	.byte 0x43, 0x00, 0x56, 0x00, 0x42, 0x00, 0x4E, 0x00, 0x4D, 0x00, 0x3C, 0x00, 0x3E, 0x00, 0x3F, 0x00
	.byte 0x7C, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00
	.byte 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x30, 0x00, 0x2D, 0x00, 0x3D, 0x00
	.byte 0x51, 0x00, 0x57, 0x00, 0x45, 0x00, 0x52, 0x00, 0x54, 0x00, 0x59, 0x00, 0x55, 0x00, 0x49, 0x00
	.byte 0x4F, 0x00, 0x50, 0x00, 0x5B, 0x00, 0x5D, 0x00, 0x41, 0x00, 0x53, 0x00, 0x44, 0x00, 0x46, 0x00
	.byte 0x47, 0x00, 0x48, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x3B, 0x00, 0x27, 0x00, 0x60, 0x00
	.byte 0x5A, 0x00, 0x58, 0x00, 0x43, 0x00, 0x56, 0x00, 0x42, 0x00, 0x4E, 0x00, 0x4D, 0x00, 0x2C, 0x00
	.byte 0x2E, 0x00, 0x2F, 0x00, 0x5C, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112CBC
ov17_02112CBC:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00, 0x64, 0x77, 0x63, 0x3A
	.byte 0x2F, 0x6D, 0x6F, 0x76, 0x65, 0x2F, 0x63, 0x68, 0x69, 0x6C, 0x64, 0x2E, 0x73, 0x72, 0x6C, 0x00
	.byte 0x64, 0x77, 0x63, 0x3A, 0x2F, 0x6D, 0x6F, 0x76, 0x65, 0x2F, 0x62, 0x61, 0x6E, 0x6E, 0x65, 0x72
	.byte 0x2E, 0x70, 0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x64, 0x77, 0x63, 0x3A, 0x2F, 0x6D, 0x6F, 0x76
	.byte 0x65, 0x2F, 0x62, 0x61, 0x6E, 0x6E, 0x65, 0x72, 0x2E, 0x63, 0x68, 0x61, 0x72, 0x00, 0x00, 0x00
	.global ov17_02112D20
ov17_02112D20:
	.byte 0xDC, 0x2C, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x2D, 0x11, 0x02
	.byte 0xF0, 0x2C, 0x11, 0x02, 0x59, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x6B, 0x6F, 0x72, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x65, 0x6E, 0x67, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x69, 0x74, 0x61, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x67, 0x65, 0x72, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x66, 0x72, 0x65, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x73, 0x70, 0x61, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x6D, 0x73, 0x67, 0x2F
	.byte 0x6A, 0x61, 0x70, 0x2E, 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112DAC
ov17_02112DAC:
	.byte 0x9C, 0x2D, 0x11, 0x02
	.byte 0x4C, 0x2D, 0x11, 0x02, 0x7C, 0x2D, 0x11, 0x02, 0x6C, 0x2D, 0x11, 0x02, 0x5C, 0x2D, 0x11, 0x02
	.byte 0x8C, 0x2D, 0x11, 0x02, 0x3C, 0x2D, 0x11, 0x02
	.global ov17_02112DC8
ov17_02112DC8:
	.byte 0x6D, 0x73, 0x67, 0x2F, 0x75, 0x73, 0x61, 0x2E
	.byte 0x62, 0x6D, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112DD8
ov17_02112DD8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x4D
	.byte 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63, 0x65, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112DEC
ov17_02112DEC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63, 0x65, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112E00
ov17_02112E00:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x42, 0x67, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63
	.byte 0x67, 0x2E, 0x6C, 0x00
	.global ov17_02112E14
ov17_02112E14:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x42, 0x67, 0x4D, 0x61, 0x69
	.byte 0x6E, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00
	.global ov17_02112E28
ov17_02112E28:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x4F
	.byte 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112E40
ov17_02112E40:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x74, 0x4F, 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112E58
ov17_02112E58:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112E70
ov17_02112E70:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112E88
ov17_02112E88:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x4F
	.byte 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112EA0
ov17_02112EA0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112EB8
ov17_02112EB8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x54
	.byte 0x6F, 0x70, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112ECC
ov17_02112ECC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x74, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02112EE0
ov17_02112EE0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E
	.byte 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112EF8
ov17_02112EF8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02112F10
ov17_02112F10:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x32, 0x4D, 0x65, 0x6E, 0x75, 0x2E, 0x6E, 0x73, 0x63
	.byte 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02112F24
ov17_02112F24:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x35, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02112F38
ov17_02112F38:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x35
	.byte 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02112F4C
ov17_02112F4C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x35, 0x49, 0x6E, 0x66, 0x6F, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02112F60
ov17_02112F60:
	.byte 0x25, 0x30, 0x32, 0x58, 0x2D, 0x25, 0x30, 0x32, 0x58, 0x2D, 0x25, 0x30, 0x32, 0x58, 0x2D, 0x25
	.byte 0x30, 0x32, 0x58, 0x2D, 0x25, 0x30, 0x32, 0x58, 0x2D, 0x25, 0x30, 0x32, 0x58, 0x00, 0x00, 0x00
	.global ov17_02112F80
ov17_02112F80:
	.byte 0x25, 0x30, 0x34, 0x64, 0x2D, 0x25, 0x30, 0x34, 0x64, 0x2D, 0x25, 0x30, 0x34, 0x64, 0x2D, 0x25
	.byte 0x30, 0x34, 0x64, 0x00
	.global ov17_02112F94
ov17_02112F94:
	.byte 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D
	.byte 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x00
	.global ov17_02112FA8
ov17_02112FA8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42
	.byte 0x67, 0x4F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112FC0
ov17_02112FC0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x35, 0x4F, 0x70, 0x74, 0x4D, 0x65, 0x6E, 0x75, 0x2E
	.byte 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_02112FD8
ov17_02112FD8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x35
	.byte 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02112FEC
ov17_02112FEC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x35, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113000
ov17_02113000:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x35, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113014
ov17_02113014:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x35, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113028
ov17_02113028:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x35
	.byte 0x4D, 0x6F, 0x76, 0x65, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_0211303C
ov17_0211303C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x35, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113050
ov17_02113050:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E
	.byte 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113068
ov17_02113068:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113080
ov17_02113080:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113094
ov17_02113094:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021130A8
ov17_021130A8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34
	.byte 0x41, 0x70, 0x4C, 0x69, 0x73, 0x74, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021130C0
ov17_021130C0:
	.byte 0xD4, 0x70, 0x10, 0x02, 0x00, 0x71, 0x10, 0x02
	.global ov17_021130C8
ov17_021130C8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F
	.byte 0x62, 0x6A, 0x4B, 0x62, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_021130DC
ov17_021130DC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_021130F4
ov17_021130F4:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211310C
ov17_0211310C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x78, 0x62, 0x34, 0x45, 0x64, 0x69, 0x74, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113120
ov17_02113120:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113138
ov17_02113138:
	.byte 0x3C, 0x73, 0x10, 0x02, 0x7C, 0x73, 0x10, 0x02
	.byte 0xBC, 0x73, 0x10, 0x02, 0x00, 0x74, 0x10, 0x02, 0x44, 0x74, 0x10, 0x02
	.global ov17_0211314C
ov17_0211314C:
	.byte 0x80, 0x72, 0x10, 0x02
	.byte 0x9C, 0x72, 0x10, 0x02, 0xB8, 0x72, 0x10, 0x02, 0xD8, 0x72, 0x10, 0x02, 0xF8, 0x72, 0x10, 0x02
	.global ov17_02113160
ov17_02113160:
	.byte 0x20, 0x20, 0x30, 0x00
	.global ov17_02113164
ov17_02113164:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4B, 0x62
	.byte 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113178
ov17_02113178:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113190
ov17_02113190:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021131A8
ov17_021131A8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34
	.byte 0x45, 0x64, 0x69, 0x74, 0x41, 0x64, 0x64, 0x72, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_021131C0
ov17_021131C0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021131D8
ov17_021131D8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34
	.byte 0x45, 0x72, 0x72, 0x6F, 0x72, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021131EC
ov17_021131EC:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov17_021131F0
ov17_021131F0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4B, 0x62, 0x2E, 0x6E, 0x63, 0x6C
	.byte 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113204
ov17_02113204:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x32, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211321C
ov17_0211321C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x31, 0x2E, 0x6E, 0x63, 0x67, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00
	.global ov17_02113234
ov17_02113234:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x33, 0x4C, 0x69, 0x73, 0x74
	.byte 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113248
ov17_02113248:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F
	.byte 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113260
ov17_02113260:
	.byte 0x25, 0x33, 0x64, 0x2E, 0x25, 0x33, 0x64, 0x2E, 0x25, 0x33, 0x64, 0x2E, 0x25, 0x33, 0x64, 0x00
	.global ov17_02113270
ov17_02113270:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E
	.byte 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113288
ov17_02113288:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021132A0
ov17_021132A0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4E, 0x6F, 0x6E, 0x65, 0x2E, 0x6E, 0x73, 0x63
	.byte 0x2E, 0x6C, 0x00, 0x00
	.global ov17_021132B4
ov17_021132B4:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021132C8
ov17_021132C8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34
	.byte 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021132DC
ov17_021132DC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021132F0
ov17_021132F0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E
	.byte 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113308
ov17_02113308:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113320
ov17_02113320:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113334
ov17_02113334:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211334C
ov17_0211334C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02113364
ov17_02113364:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113378
ov17_02113378:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F
	.byte 0x62, 0x6A, 0x57, 0x61, 0x79, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00
	.global ov17_0211338C
ov17_0211338C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_021133A4
ov17_021133A4:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x31, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021133BC
ov17_021133BC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x32, 0x41, 0x70, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021133D0
ov17_021133D0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x4F, 0x62, 0x6A, 0x4D, 0x61, 0x69, 0x6E, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021133E8
ov17_021133E8:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113400
ov17_02113400:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x2E, 0x6E
	.byte 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113418
ov17_02113418:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x33
	.byte 0x57, 0x61, 0x79, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00
	.global ov17_0211342C
ov17_0211342C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02113444
ov17_02113444:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_0211345C
ov17_0211345C:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113470
ov17_02113470:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73
	.byte 0x63, 0x2E, 0x6C, 0x00
	.global ov17_02113484
ov17_02113484:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34, 0x4E, 0x6F, 0x6E, 0x65
	.byte 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113498
ov17_02113498:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x78, 0x62, 0x34
	.byte 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021134AC
ov17_021134AC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x32, 0x2E, 0x6E, 0x63, 0x67, 0x2E, 0x6C
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_021134C4
ov17_021134C4:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65
	.byte 0x70, 0x32, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_021134DC
ov17_021134DC:
	.byte 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x78, 0x62, 0x33, 0x4D, 0x75, 0x6C, 0x74, 0x69, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021134F0
ov17_021134F0:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x42, 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E
	.byte 0x63, 0x67, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113508
ov17_02113508:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x79, 0x62, 0x42
	.byte 0x67, 0x53, 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x63, 0x6C, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113520
ov17_02113520:
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x62, 0x34, 0x55, 0x73, 0x62, 0x2E, 0x6E, 0x73, 0x63, 0x2E
	.byte 0x6C, 0x00, 0x00, 0x00
	.global ov17_02113534
ov17_02113534:
	.byte 0x25, 0x33, 0x64, 0x25, 0x33, 0x64, 0x25, 0x33, 0x64, 0x25, 0x33, 0x64
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov17_02113544
ov17_02113544:
	.byte 0x73, 0x6F, 0x75, 0x6E, 0x64, 0x2F, 0x73, 0x6F, 0x75, 0x6E, 0x64, 0x5F
	.byte 0x64, 0x61, 0x74, 0x61, 0x2E, 0x73, 0x64, 0x61, 0x74, 0x2E, 0x6C, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x74, 0x54, 0x6F, 0x70, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x53, 0x74, 0x65, 0x70, 0x31, 0x2E, 0x6E, 0x73, 0x63
	.byte 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x53, 0x74, 0x65, 0x70, 0x32
	.byte 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72, 0x2F, 0x6A, 0x74, 0x53
	.byte 0x74, 0x65, 0x70, 0x33, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00, 0x00, 0x63, 0x68, 0x61, 0x72
	.byte 0x2F, 0x6A, 0x74, 0x4F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x2E, 0x6E, 0x73, 0x63, 0x2E, 0x6C, 0x00
	.global ov17_021135C0
ov17_021135C0:
	.byte 0x70, 0x35, 0x11, 0x02, 0x84, 0x35, 0x11, 0x02, 0x98, 0x35, 0x11, 0x02, 0xAC, 0x35, 0x11, 0x02
	.byte 0x5C, 0x35, 0x11, 0x02, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x45, 0x4E, 0x44, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4E, 0x4F, 0x4E, 0x45, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x52, 0x52, 0x4F, 0x52
	.byte 0x00, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x4B, 0x49, 0x43, 0x4B, 0x45, 0x44, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69
	.byte 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53
	.byte 0x54, 0x4F, 0x50, 0x00
	.global dwcutil_BITMAP_TABLE
dwcutil_BITMAP_TABLE:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x36, 0x11, 0x02
	.byte 0xB8, 0x36, 0x11, 0x02, 0xEC, 0x36, 0x11, 0x02, 0xA0, 0x38, 0x11, 0x02, 0x20, 0x38, 0x11, 0x02
	.byte 0xB0, 0x37, 0x11, 0x02, 0x40, 0x37, 0x11, 0x02, 0x24, 0x37, 0x11, 0x02, 0xE8, 0x35, 0x11, 0x02
	.byte 0x40, 0x38, 0x11, 0x02, 0xD0, 0x36, 0x11, 0x02, 0x94, 0x37, 0x11, 0x02, 0x14, 0x36, 0x11, 0x02
	.byte 0xCC, 0x37, 0x11, 0x02, 0xE8, 0x37, 0x11, 0x02, 0x60, 0x38, 0x11, 0x02, 0x04, 0x38, 0x11, 0x02
	.byte 0x80, 0x38, 0x11, 0x02, 0x08, 0x37, 0x11, 0x02, 0x5C, 0x37, 0x11, 0x02, 0xD4, 0x35, 0x11, 0x02
	.byte 0xFC, 0x35, 0x11, 0x02, 0x78, 0x37, 0x11, 0x02, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x49, 0x44, 0x4C, 0x45, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x43
	.byte 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69
	.byte 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45
	.byte 0x4E, 0x54, 0x52, 0x59, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x52, 0x45, 0x51, 0x55, 0x45, 0x53, 0x54, 0x45, 0x44
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50
	.byte 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x52, 0x52, 0x4F, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x43, 0x41, 0x4E, 0x43, 0x45, 0x4C, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4D, 0x45, 0x4D, 0x42, 0x45
	.byte 0x52, 0x5F, 0x46, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x57, 0x41, 0x49, 0x54, 0x5F, 0x54, 0x4F, 0x5F, 0x53
	.byte 0x45, 0x4E, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x44, 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x52, 0x45, 0x51, 0x5F, 0x41
	.byte 0x43, 0x43, 0x45, 0x50, 0x54, 0x45, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53, 0x45, 0x4E, 0x44, 0x5F, 0x50, 0x52, 0x4F, 0x43
	.byte 0x45, 0x45, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x42, 0x4F, 0x4F, 0x54, 0x5F, 0x52, 0x45, 0x51, 0x55, 0x45, 0x53, 0x54, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x52, 0x45, 0x42, 0x4F, 0x4F, 0x54, 0x49, 0x4E, 0x47, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x49
	.byte 0x4E, 0x49, 0x54, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53
	.byte 0x45, 0x4E, 0x44, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x42
	.byte 0x4F, 0x4F, 0x54, 0x5F, 0x53, 0x54, 0x41, 0x52, 0x54, 0x41, 0x42, 0x4C, 0x45, 0x00, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x53, 0x45, 0x4E, 0x44, 0x49, 0x4E, 0x47, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53
	.byte 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53, 0x54, 0x4F, 0x50, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69
	.byte 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45
	.byte 0x5F, 0x49, 0x44, 0x4C, 0x45, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x42, 0x55, 0x53
	.byte 0x59, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F
	.byte 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x52, 0x52, 0x4F, 0x52, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53
	.byte 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53, 0x43, 0x41, 0x4E, 0x4E, 0x49, 0x4E, 0x47, 0x00, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53
	.byte 0x54, 0x41, 0x54, 0x45, 0x5F, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53
	.byte 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4B, 0x45, 0x59, 0x53, 0x48, 0x41, 0x52, 0x49, 0x4E, 0x47, 0x00
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53
	.byte 0x54, 0x41, 0x54, 0x45, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x53, 0x48, 0x41, 0x52, 0x49, 0x4E, 0x47
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F
	.byte 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54
	.byte 0x5F, 0x46, 0x41, 0x49, 0x4C, 0x00, 0x00, 0x00, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4D, 0x45, 0x41
	.byte 0x53, 0x55, 0x52, 0x45, 0x43, 0x48, 0x41, 0x4E, 0x4E, 0x45, 0x4C, 0x00
	.global ov17_021139FC
ov17_021139FC:
	.byte 0xC0, 0x38, 0x11, 0x02
	.byte 0xDC, 0x38, 0x11, 0x02, 0x30, 0x39, 0x11, 0x02, 0xF8, 0x38, 0x11, 0x02, 0x50, 0x39, 0x11, 0x02
	.byte 0x90, 0x39, 0x11, 0x02, 0x70, 0x39, 0x11, 0x02, 0xD8, 0x39, 0x11, 0x02, 0xB4, 0x39, 0x11, 0x02
	.byte 0x14, 0x39, 0x11, 0x02
	.global ov17_02113A24
ov17_02113A24:
	.byte 0x25, 0x73, 0x20, 0x2D, 0x3E, 0x20, 0x00, 0x00
	.global ov17_02113A2C
ov17_02113A2C:
	.byte 0x25, 0x73, 0x0A, 0x00
	.global ov17_02113A30
ov17_02113A30:
	.byte 0x53, 0x74, 0x61, 0x72, 0x74, 0x50, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x20, 0x2D, 0x20, 0x6E, 0x65
	.byte 0x77, 0x20, 0x63, 0x68, 0x69, 0x6C, 0x64, 0x20, 0x28, 0x61, 0x69, 0x64, 0x20, 0x25, 0x78, 0x29
	.byte 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x65, 0x64, 0x0A, 0x00
	.global ov17_02113A5C
ov17_02113A5C:
	.byte 0x53, 0x74, 0x61, 0x72
	.byte 0x74, 0x50, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x20, 0x2D, 0x20, 0x63, 0x68, 0x69, 0x6C, 0x64, 0x20
	.byte 0x28, 0x61, 0x69, 0x64, 0x20, 0x25, 0x78, 0x29, 0x20, 0x64, 0x69, 0x73, 0x63, 0x6F, 0x6E, 0x6E
	.byte 0x65, 0x63, 0x74, 0x65, 0x64, 0x0A, 0x00, 0x00
	.global ov17_02113A88
ov17_02113A88:
	.byte 0x75, 0x6E, 0x6B, 0x6E, 0x6F, 0x77, 0x6E, 0x20
	.byte 0x69, 0x6E, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x2C, 0x20, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20
	.byte 0x3D, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00
	.global ov17_02113AA8
ov17_02113AA8:
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x74, 0x61, 0x74, 0x65, 0x49, 0x6E, 0x53, 0x74, 0x61, 0x72, 0x74
	.byte 0x50, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x4B, 0x65, 0x79, 0x53, 0x68, 0x61, 0x72, 0x65, 0x20, 0x66
	.byte 0x61, 0x69, 0x6C, 0x65, 0x64, 0x0A, 0x00, 0x00
	.global ov17_02113AD8
ov17_02113AD8:
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x74, 0x61, 0x74, 0x65, 0x49, 0x6E, 0x45, 0x6E, 0x64, 0x50, 0x61
	.byte 0x72, 0x65, 0x6E, 0x74, 0x20, 0x66, 0x61, 0x69, 0x6C, 0x65, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113B00
ov17_02113B00:
	.byte 0x72, 0x65, 0x63, 0x76, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x69, 0x7A, 0x65
	.byte 0x20, 0x3D, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00
	.global ov17_02113B18
ov17_02113B18:
	.byte 0x73, 0x65, 0x6E, 0x64, 0x20, 0x62, 0x75, 0x66
	.byte 0x66, 0x65, 0x72, 0x20, 0x73, 0x69, 0x7A, 0x65, 0x20, 0x3D, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00
	.global ov17_02113B30
ov17_02113B30:
	.byte 0x63, 0x68, 0x61, 0x6E, 0x6E, 0x65, 0x6C, 0x20, 0x25, 0x64, 0x20, 0x62, 0x72, 0x61, 0x74, 0x69
	.byte 0x6F, 0x20, 0x3D, 0x20, 0x25, 0x78, 0x0A, 0x00
	.global ov17_02113B48
ov17_02113B48:
	.byte 0x64, 0x65, 0x63, 0x69, 0x64, 0x65, 0x64, 0x20
	.byte 0x63, 0x68, 0x61, 0x6E, 0x6E, 0x65, 0x6C, 0x20, 0x3D, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00
	.global ov17_02113B60
ov17_02113B60:
	.byte 0x75, 0x6E, 0x6B, 0x6E, 0x6F, 0x77, 0x6E, 0x20, 0x63, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x20
	.byte 0x6D, 0x6F, 0x64, 0x65, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113B7C
ov17_02113B7C:
	.byte 0x44, 0x57, 0x43, 0x69
	.byte 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x74, 0x65, 0x70, 0x44, 0x61, 0x74, 0x61
	.byte 0x53, 0x68, 0x61, 0x72, 0x69, 0x6E, 0x67, 0x20, 0x2D, 0x20, 0x57, 0x61, 0x72, 0x6E, 0x69, 0x6E
	.byte 0x67, 0x20, 0x4E, 0x6F, 0x20, 0x43, 0x68, 0x69, 0x6C, 0x64, 0x0A, 0x00
	.global ov17_02113BAC
ov17_02113BAC:
	.byte 0x44, 0x57, 0x43, 0x69
	.byte 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x74, 0x65, 0x70, 0x44, 0x61, 0x74, 0x61
	.byte 0x53, 0x68, 0x61, 0x72, 0x69, 0x6E, 0x67, 0x20, 0x2D, 0x20, 0x57, 0x61, 0x72, 0x6E, 0x69, 0x6E
	.byte 0x67, 0x20, 0x4E, 0x6F, 0x20, 0x44, 0x61, 0x74, 0x61, 0x53, 0x65, 0x74, 0x0A, 0x00, 0x00, 0x00
	.global ov17_02113BE0
ov17_02113BE0:
	.byte 0x61, 0x6C, 0x72, 0x65, 0x61, 0x64, 0x79, 0x20, 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56
	.byte 0x5F, 0x57, 0x48, 0x5F, 0x53, 0x59, 0x53, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x49, 0x44, 0x4C
	.byte 0x45, 0x0A, 0x00, 0x00
	.global ov17_02113C04
ov17_02113C04:
	.byte 0x44, 0x57, 0x43, 0x69, 0x5F, 0x4D, 0x4F, 0x56, 0x5F, 0x57, 0x48, 0x5F
	.byte 0x46, 0x69, 0x6E, 0x61, 0x6C, 0x69, 0x7A, 0x65, 0x2C, 0x20, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20
	.byte 0x3D, 0x20, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00
	.global ov17_02113C28
ov17_02113C28:
	.byte 0x72, 0x6F, 0x6D, 0x3A, 0x2F, 0x64, 0x77, 0x63
	.byte 0x2F, 0x75, 0x74, 0x69, 0x6C, 0x69, 0x74, 0x79, 0x2E, 0x62, 0x69, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113C40
ov17_02113C40:
	.byte 0x25, 0x73, 0x3A, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov17_02113C48
ov17_02113C48:
	.byte 0x72, 0x6F, 0x6D, 0x3A, 0x2F, 0x00, 0x00, 0x00
	.global ov17_02113C50
ov17_02113C50:
	.byte 0x2E, 0x6C, 0x00, 0x00
	.global ov17_02113C54
ov17_02113C54:
	.byte 0x74, 0x3C, 0x11, 0x02, 0x64, 0x3C, 0x11, 0x02
	.global ov17_02113C5C
ov17_02113C5C:
	.byte 0x84, 0x3C, 0x11, 0x02
	.byte 0x64, 0x3C, 0x11, 0x02, 0x6D, 0x73, 0x67, 0x2F, 0x6C, 0x63, 0x5F, 0x73, 0x2E, 0x4E, 0x46, 0x54
	.byte 0x52, 0x2E, 0x6C, 0x00, 0x6D, 0x73, 0x67, 0x2F, 0x6B, 0x63, 0x5F, 0x6D, 0x2E, 0x4E, 0x46, 0x54
	.byte 0x52, 0x2E, 0x6C, 0x00, 0x6D, 0x73, 0x67, 0x2F, 0x6C, 0x63, 0x5F, 0x6D, 0x2E, 0x4E, 0x46, 0x54
	.byte 0x52, 0x2E, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global aoss_SecurityType
aoss_SecurityType:
	.space 0x04
	.global aoss_bssList
aoss_bssList:
	.space 0x1C
	.global ov17_02113CC0
ov17_02113CC0:
	.space 0x04
	.global gData
gData:
	.space 0x1C
	.global aoss_ProductInfo
aoss_ProductInfo:
	.space 0x280
	.global aoss_crc_table
aoss_crc_table:
	.space 0x400
	.global aoss_SecurityInfo
aoss_SecurityInfo:
	.space 0x08
	.global ov17_02114368
ov17_02114368:
	.space 0x130
	.global ov17_02114498
ov17_02114498:
	.space 0x130
	.global ov17_021145C8
ov17_021145C8:
	.space 0x70
	.global ov17_02114638
ov17_02114638:
	.space 0x3C8
	.global aoss_gSeqID
aoss_gSeqID:
	.space 0x08
	.global aoss_TANE
aoss_TANE:
	.space 0x78
	.global AOSSi_Alloc
AOSSi_Alloc:
	.space 0x0C
	.global AOSSi_Free
AOSSi_Free:
	.space 0x04
	.global aoss_msgArray
aoss_msgArray:
	.space 0x10
	.global aoss_mq
aoss_mq:
	.space 0x20
	.global connect_bssdesc
connect_bssdesc:
	.space 0xC0
	.global wep_buf
wep_buf:
	.space 0x60
	.global apci_WCMBuffer
apci_WCMBuffer:
	.space 0x28
	.global apci_bssid_buf
apci_bssid_buf:
	.space 0x08
	.global ov17_02114C10
ov17_02114C10:
	.space 0x20
	.global btAutoResult
btAutoResult:
	.space 0x50
	.global ov17_02114C80
ov17_02114C80:
	.space 0x30
	.global apci_user_callback
apci_user_callback:
	.space 0x04
	.global atermapc_event_buf
atermapc_event_buf:
	.space 0x10
	.global atermapc_AllocLock
atermapc_AllocLock:
	.space 0x18
	.global ov17_02114CDC
ov17_02114CDC:
	.space 0xC0
	.global gAtermApConfigParam
gAtermApConfigParam:
	.space 0x14
	.global ov17_02114DB0
ov17_02114DB0:
	.space 0x14
	.global ov17_02114DC4
ov17_02114DC4:
	.space 0x80
	.global ov17_02114E44
ov17_02114E44:
	.space 0x40
	.global atermapc_AutoProfile
atermapc_AutoProfile:
	.space 0xEC
	.global ov17_02114F70
ov17_02114F70:
	.space 0x14
	.global ov17_02114F84
ov17_02114F84:
	.space 0x2C
	.global ov17_02114FB0
ov17_02114FB0:
	.space 0x38
	.global ov17_02114FE8
ov17_02114FE8:
	.space 0x98
	.global ov17_02115080
ov17_02115080:
	.space 0x58
	.global btAdapterMAC
btAdapterMAC:
	.space 0x08
	.global gAPMac
gAPMac:
	.space 0x08
	.global ov17_021150E8
ov17_021150E8:
	.space 0x08
	.global ov17_021150F0
ov17_021150F0:
	.space 0x10
	.global ov17_02115100
ov17_02115100:
	.space 0x08
	.global ov17_02115108
ov17_02115108:
	.space 0x18
	.global ov17_02115120
ov17_02115120:
	.space 0x20
	.global gAPSSID
gAPSSID:
	.space 0x24
	.global atermapc_ElementData
atermapc_ElementData:
	.space 0x800
	.global ov17_02115964
ov17_02115964:
	.space 0x800
	.global dwcutil_MemAni
dwcutil_MemAni:
	.space 0x04
	.global dwcutil_MemBtn
dwcutil_MemBtn:
	.space 0x04
	.global dwcutil_Flag
dwcutil_Flag:
	.space 0x04
	.global dwcutilcommon_file
dwcutilcommon_file:
	.space 0x40
	.global ov17_021161B0
ov17_021161B0:
	.space 0x04
	.global ov17_021161B4
ov17_021161B4:
	.space 0x04
	.global ov17_021161B8
ov17_021161B8:
	.space 0x04
	.global ov17_021161BC
ov17_021161BC:
	.space 0x04
	.global ov17_021161C0
ov17_021161C0:
	.space 0x04
	.global ov17_021161C4
ov17_021161C4:
	.space 0x04
	.global ov17_021161C8
ov17_021161C8:
	.space 0x04
	.global dwc_Language
dwc_Language:
	.space 0x20
	.global ov17_021161EC
ov17_021161EC:
	.space 0x04
	.global ov17_021161F0
ov17_021161F0:
	.space 0x04
	.global ov17_021161F4
ov17_021161F4:
	.space 0x04
	.global DWCiMsgCmn
DWCiMsgCmn:
	.space 0x04
	.global ov17_021161FC
ov17_021161FC:
	.space 0x08
	.global ov17_02116204
ov17_02116204:
	.space 0x04
	.global ov17_02116208
ov17_02116208:
	.space 0x0C
	.global ov17_02116214
ov17_02116214:
	.space 0x04
	.global ov17_02116218
ov17_02116218:
	.space 0x04
	.global ov17_0211621C
ov17_0211621C:
	.space 0x04
	.global ov17_02116220
ov17_02116220:
	.space 0x04
	.global ov17_02116224
ov17_02116224:
	.space 0x04
	.global ov17_02116228
ov17_02116228:
	.space 0x04
	.global ov17_0211622C
ov17_0211622C:
	.space 0x08
	.global ov17_02116234
ov17_02116234:
	.space 0x04
	.global ov17_02116238
ov17_02116238:
	.space 0x04
	.global ov17_0211623C
ov17_0211623C:
	.space 0x04
	.global ov17_02116240
ov17_02116240:
	.space 0x04
	.global ov17_02116244
ov17_02116244:
	.space 0x04
	.global ov17_02116248
ov17_02116248:
	.space 0x04
	.global ov17_0211624C
ov17_0211624C:
	.space 0x08
	.global ov17_02116254
ov17_02116254:
	.space 0x04
	.global ov17_02116258
ov17_02116258:
	.space 0x04
	.global ov17_0211625C
ov17_0211625C:
	.space 0x04
	.global ov17_02116260
ov17_02116260:
	.space 0x04
	.global ov17_02116264
ov17_02116264:
	.space 0x04
	.global ov17_02116268
ov17_02116268:
	.space 0x04
	.global ov17_0211626C
ov17_0211626C:
	.space 0x04
	.global ov17_02116270
ov17_02116270:
	.space 0x04
	.global ov17_02116274
ov17_02116274:
	.space 0x08
	.global ov17_0211627C
ov17_0211627C:
	.space 0x04
	.global ov17_02116280
ov17_02116280:
	.space 0x04
	.global ov17_02116284
ov17_02116284:
	.space 0x04
	.global ov17_02116288
ov17_02116288:
	.space 0x04
	.global ov17_0211628C
ov17_0211628C:
	.space 0x04
	.global ov17_02116290
ov17_02116290:
	.space 0x0C
	.global ov17_0211629C
ov17_0211629C:
	.space 0x04
	.global ov17_021162A0
ov17_021162A0:
	.space 0x04
	.global ov17_021162A4
ov17_021162A4:
	.space 0x04
	.global ov17_021162A8
ov17_021162A8:
	.space 0x04
	.global ov17_021162AC
ov17_021162AC:
	.space 0x04
	.global ov17_021162B0
ov17_021162B0:
	.space 0x04
	.global ov17_021162B4
ov17_021162B4:
	.space 0x04
	.global ov17_021162B8
ov17_021162B8:
	.space 0x04
	.global dwcutil_wb
dwcutil_wb:
	.space 0x04
	.global wh_trace
wh_trace:
	.space 0x08
	.global ov17_021162C8
ov17_021162C8:
	.space 0x04
	.global dwc_MemArchive
dwc_MemArchive:
	.space 0x04
	.global dwcutil_MemCell
dwcutil_MemCell:
	.space 0x04
	.global dwcutil_File
dwcutil_File:
	.space 0x08
	.global ov17_021162DC
ov17_021162DC:
	.space 0x04
	.global ov17_021162E0
ov17_021162E0:
	.space 0x04
	.global ov17_021162E4
ov17_021162E4:
	.space 0x04
	.global ov17_021162E8
ov17_021162E8:
	.space 0x04
	.global ov17_021162EC
ov17_021162EC:
	.space 0x04
	.global ov17_021162F0
ov17_021162F0:
	.space 0x10
	.global ov17_02116300
ov17_02116300:
	.space 0x08
	.global ov17_02116308
ov17_02116308:
	.space 0x04
	.global ov17_0211630C
ov17_0211630C:
	.space 0x04
	.global ov17_02116310
ov17_02116310:
	.space 0x34
	.global ov17_02116344
ov17_02116344:
	.space 0x1C

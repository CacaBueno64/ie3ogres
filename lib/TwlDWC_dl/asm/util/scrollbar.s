
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_SNDlPlay
	.public DWCi_SNDlSetPitch
	.public DWCi_SNDlSetVolume
	.public DWCi_SNDlStop
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public DWCi_InputCoord
	.public DWCi_TPlCheck
	.public DWCi_TPlCheckRepeat
	.public DWCi_TPlGet
	.public FX_DivS32
	.public DWCi_R_SCR

	.text
	arm_func_start DWCi_SBlInit
DWCi_SBlInit: ; 0x02106508
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
	bl DWCi_InputCoord
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
	ldr r1, _021065DC ; =askMain
	mov r3, #0x80
	bl DWCi_TSKlForm
	ldr r1, [r9]
	str r0, [r1, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021065D4: .word MemSb
_021065D8: .word CELL_BAR
_021065DC: .word askMain
	arm_func_end DWCi_SBlInit

	arm_func_start DWCi_SBlEnd
DWCi_SBlEnd: ; 0x021065E0
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
_02106610: .word MemSb
_02106614: .word MemSb
	arm_func_end DWCi_SBlEnd

	arm_func_start DWCi_SBlGet
DWCi_SBlGet: ; 0x02106618
	ldr r0, _02106628 ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	bx lr
_02106628: .word MemSb
	arm_func_end DWCi_SBlGet

	arm_func_start DWCi_SBlGetState
DWCi_SBlGetState: ; 0x0210662C
	ldr r0, _0210663C ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	bx lr
_0210663C: .word MemSb
	arm_func_end DWCi_SBlGetState

	arm_func_start DWCi_SBlSet
DWCi_SBlSet: ; 0x02106640
	ldr r12, _02106648 ; =disp
	bx r12
_02106648: .word disp
	arm_func_end DWCi_SBlSet

	arm_func_start DWCi_SBlEnable
DWCi_SBlEnable: ; 0x0210664C
	ldr r0, _02106660 ; =0x0211629C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106660: .word MemSb
	arm_func_end DWCi_SBlEnable

	arm_func_start DWCi_SBlDisable
DWCi_SBlDisable: ; 0x02106664
	ldr r0, _02106678 ; =0x0211629C
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106678: .word MemSb
	arm_func_end DWCi_SBlDisable

	arm_static_func_start askMain
askMain: ; 0x0210667C
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
	bl isTrigger
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
	bl DWCi_SNDlPlay
	mov r0, r4
	bl DWCi_SNDlSetVolume
	ldr r0, [r5]
	mov r4, #1
	strb r4, [r0, #0x1d]
	ldr r0, [r5]
	add r0, r0, #0x14
	bl DWCi_TPlGet
	ldr r1, [r5]
	ldrb r0, [r1, #0x1a]
	strb r0, [r1, #0x18]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106734:
	mov r0, #2
	bl stepBar
	ldmfd sp!, {r4, r5, r6, pc}
_02106740:
	mov r0, #3
	bl stepBar
	ldmfd sp!, {r4, r5, r6, pc}
_0210674C:
	bl setBar
	ldmfd sp!, {r4, r5, r6, pc}
_02106754:
	bl moveBar
	ldmfd sp!, {r4, r5, r6, pc}
_0210675C:
	mov r6, #2
	mov r0, r6
	bl isTouch
	cmp r0, #2
	beq _02106788
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106788:
	bl isTrigger
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl stepBar
	ldmfd sp!, {r4, r5, r6, pc}
_021067A0:
	mov r6, #3
	mov r0, r6
	bl isTouch
	cmp r0, #3
	beq _021067CC
	ldr r0, [r5]
	mov r1, #7
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_021067CC:
	bl isTrigger
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl stepBar
	ldmfd sp!, {r4, r5, r6, pc}
_021067E4: .word MemSb
	arm_func_end askMain

	arm_static_func_start moveBar
moveBar: ; 0x021067E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021068AC ; =0x021126F8
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _02106884
	add r0, sp, #0
	bl DWCi_TPlGet
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
	bl playSound
	mov r0, r4
	bl disp
	ldr r0, _021068B0 ; =0x0211629C
	mov r1, #2
	ldr r0, [r0]
	add sp, sp, #4
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, r4, pc}
_02106884:
	bl DWCi_SNDlStop
	ldr r0, _021068B0 ; =0x0211629C
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	strb r3, [r2, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021068AC: .word DWCi_R_SCR
_021068B0: .word MemSb
_021068B4: .word BAR_LENGTH
	arm_func_end moveBar

	arm_static_func_start playSound
playSound: ; 0x021068B8
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
	bl DWCi_SNDlSetVolume
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
	bl DWCi_SNDlSetPitch
	ldmfd sp!, {r4, pc}
_02106928: .word MemSb
_0210692C: .word 0x0000FFFF
	arm_func_end playSound

	arm_static_func_start stepBar
stepBar: ; 0x02106930
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
_02106958: .word MemSb
	arm_func_end stepBar

	arm_static_func_start setBar
setBar: ; 0x0210695C
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl DWCi_TPlGet
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
	bl disp
	ldr r0, _021069BC ; =0x0211629C
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, pc}
_021069BC: .word MemSb
_021069C0: .word BAR_LENGTH
	arm_func_end setBar

	arm_static_func_start isTrigger
isTrigger: ; 0x021069C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r5, #1
	mov r0, r5
	mov r1, r4
	bl calcRect
	mov r0, r4
	bl DWCi_TPlCheckRepeat
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #2
_021069FC:
	mov r0, r5
	mov r1, r4
	bl calcRect
	mov r0, r4
	bl DWCi_TPlCheckRepeat
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
	bl calcRect
	mov r0, r4
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	moveq r5, #0
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end isTrigger

	arm_static_func_start isTouch
isTouch: ; 0x02106A58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, #2
	add r4, sp, #0
_02106A68:
	mov r0, r5
	mov r1, r4
	bl calcRect
	mov r0, r4
	bl DWCi_TPlCheck
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
	arm_func_end isTouch

	arm_static_func_start calcRect
calcRect: ; 0x02106AA4
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
_02106B74: .word MemSb
_02106B78: .word BAR_LENGTH
	arm_func_end calcRect

	arm_static_func_start disp
disp: ; 0x02106B7C
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
_02106BB0: .word MemSb
	arm_func_end disp

	.rodata
CELL_BAR:
	.byte 0x10, 0x0F, 0x0E
BAR_LENGTH:
	.byte 0x55, 0x36, 0x1E, 0x00, 0x00

	.bss
MemSb:
	.space 0x04

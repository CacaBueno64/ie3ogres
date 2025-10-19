
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CEINlSetExObj
	.public DWCi_CELLlDelete
	.public DWCi_CELLlForm
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlGetPosition
	.public DWCi_CELLlSetEffect
	.public DWCi_CELLlSetPalette
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_Coord2Rect
	.public DWCi_FNTlDelete
	.public DWCi_FNTlDisp
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormEx
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_IPTlCheckRelease
	.public DWCi_IPTlCheckRepeat
	.public DWCi_IPTlCheckTrigger
	.public DWCi_OBJlDelete
	.public DWCi_R_SCR
	.public DWCi_SNDlPlay
	.public DWCi_TPlCheck
	.public DWCi_TPlCheckRelease
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlChangeFunc
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public FX_ModS32

	.text
	arm_func_start DWCi_KBlInit
DWCi_KBlInit: ; 0x020F5588
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
	bl DWCi_FNTlFormEx
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
	ldr r1, _020F58D0 ; =taskStart0
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
	bl disp
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F58BC: .word MemKb
_020F58C0: .word 0xC1FFFCFF
_020F58C4: .word CN_SKEY
_020F58C8: .word CN_BTN
_020F58CC: .word KEY_CHR
_020F58D0: .word taskStart0
	arm_func_end DWCi_KBlInit

	arm_func_start DWCi_KBlEnd
DWCi_KBlEnd: ; 0x020F58D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F58FC ; =0x021161BC
	ldr r0, [r4]
	ldr r0, [r0, #0x114]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r1, _020F5900 ; =taskEnd0
	ldr r0, [r0, #0x118]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r4, pc}
_020F58FC: .word MemKb
_020F5900: .word taskEnd0
	arm_func_end DWCi_KBlEnd

	arm_func_start DWCi_KBlGet
DWCi_KBlGet: ; 0x020F5904
	ldr r0, _020F5914 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11c]
	bx lr
_020F5914: .word MemKb
	arm_func_end DWCi_KBlGet

	arm_func_start DWCi_KBlSetErase
DWCi_KBlSetErase: ; 0x020F5918
	ldr r1, _020F5928 ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x123]
	bx lr
_020F5928: .word MemKb
	arm_func_end DWCi_KBlSetErase

	arm_func_start DWCi_KBlSetInput
DWCi_KBlSetInput: ; 0x020F592C
	ldr r1, _020F593C ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x124]
	bx lr
_020F593C: .word MemKb
	arm_func_end DWCi_KBlSetInput

	arm_func_start DWCi_KBlIsInit
DWCi_KBlIsInit: ; 0x020F5940
	ldr r0, _020F5958 ; =0x021161BC
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F5958: .word MemKb
	arm_func_end DWCi_KBlIsInit

	arm_static_func_start taskStart0
taskStart0: ; 0x020F595C
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
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F599C:
	mov r2, #0x51
	bl disp
	ldr r0, [r4]
	mov r1, #1
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl disp
	ldr r1, _020F59D0 ; =taskStart1
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F59CC: .word MemKb
_020F59D0: .word taskStart1
	arm_func_end taskStart0

	arm_static_func_start taskStart1
taskStart1: ; 0x020F59D4
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
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A14:
	mov r2, #0x67
	bl disp
	ldr r0, [r4]
	mov r1, #2
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl disp
	ldr r1, _020F5A48 ; =taskStart2
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A44: .word MemKb
_020F5A48: .word taskStart2
	arm_func_end taskStart1

	arm_static_func_start taskStart2
taskStart2: ; 0x020F5A4C
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
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A8C:
	mov r2, #0x7d
	bl disp
	ldr r0, [r4]
	mov r1, #3
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl disp
	ldr r1, _020F5AC0 ; =taskStart3
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5ABC: .word MemKb
_020F5AC0: .word taskStart3
	arm_func_end taskStart2

	arm_static_func_start taskStart3
taskStart3: ; 0x020F5AC4
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
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B04:
	mov r2, #0x93
	bl disp
	ldr r0, [r4]
	mov r1, #4
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl disp
	ldr r1, _020F5B38 ; =taskStart4
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B34: .word MemKb
_020F5B38: .word taskStart4
	arm_func_end taskStart3

	arm_static_func_start taskStart4
taskStart4: ; 0x020F5B3C
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
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B90:
	mov r2, #0xaa
	bl disp
	bl dispFocus
	ldr r1, _020F5BB4 ; =taskMain
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5BB0: .word MemKb
_020F5BB4: .word taskMain
	arm_func_end taskStart4

	arm_static_func_start taskMain
taskMain: ; 0x020F5BB8
	stmfd sp!, {r3, lr}
	bl touchTrigger
	bl touchRelease
	bl touch
	bl key
	ldmfd sp!, {r3, pc}
	arm_func_end taskMain

	arm_static_func_start touchTrigger
touchTrigger: ; 0x020F5BD0
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
	bl DWCi_SNDlPlay
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C4C:
	mov r0, #0
	bl DWCi_SNDlPlay
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
	bl DWCi_SNDlPlay
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5CD8:
	ldr r0, _020F5D7C ; =0x02112AF0
	ldr r0, [r0, r4, lsl #2]
	bl DWCi_SNDlPlay
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
	bl DWCi_SNDlPlay
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
_020F5D64: .word DWCi_R_SCR
_020F5D68: .word MemKb
_020F5D6C: .word C_KEY
_020F5D70: .word S_KEY
_020F5D74: .word C_SKEY
_020F5D78: .word S_SKEY
_020F5D7C: .word SKEY_TOUCH_SND
_020F5D80: .word C_BTN
_020F5D84: .word S_BTN
	arm_func_end touchTrigger

	arm_static_func_start touchRelease
touchRelease: ; 0x020F5D88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _020F6000 ; =0x021161BC
	ldr r0, _020F6004 ; =0x021126F8
	ldr r1, [r1]
	mov r5, #0
	strb r5, [r1, #0x11c]
	bl DWCi_TPlCheckRelease
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
	bl DWCi_TPlCheckRelease
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
	bl changePage
_020F5E28:
	ldr r0, [r4]
	strb r5, [r0, #0x121]
	bl dispFocus
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
	bl DWCi_TPlCheckRelease
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
	bl changePage
_020F5EB8:
	ldr r0, [r4]
	add r1, r5, #0x2f
	strb r1, [r0, #0x121]
	bl dispFocus
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
	bl DWCi_TPlCheckRelease
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
	bl dispFocus
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
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020F5FA8
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl pushCaps
	ldr r0, [r4]
	mov r1, #0x2f
	strb r1, [r0, #0x121]
	bl dispFocus
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5FA8:
	ldr r0, _020F602C ; =0x02111D40
	ldr r1, _020F6030 ; =0x02111D50
	mov r2, r6
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x30
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl pushShift
	ldr r0, [r4]
	mov r1, #0x30
	strb r1, [r0, #0x121]
	bl dispFocus
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F6000: .word MemKb
_020F6004: .word DWCi_R_SCR
_020F6008: .word C_KEY
_020F600C: .word S_KEY
_020F6010: .word KEY_OUT
_020F6014: .word C_SKEY
_020F6018: .word S_SKEY
_020F601C: .word SKEY_OUT
_020F6020: .word C_BTN
_020F6024: .word S_BTN
_020F6028: .word BIN_OUT
_020F602C: .word C_SKEY+4
_020F6030: .word ov17_02111D50
	arm_func_end touchRelease

	arm_static_func_start pushCaps
pushCaps: ; 0x020F6034
	stmfd sp!, {r3, lr}
	ldr r0, _020F6060 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #2
	moveq r0, #0
	movne r0, #2
	bl changePage
	mov r0, #1
	bl DWCi_SNDlPlay
	ldmfd sp!, {r3, pc}
_020F6060: .word MemKb
	arm_func_end pushCaps

	arm_static_func_start pushShift
pushShift: ; 0x020F6064
	stmfd sp!, {r3, lr}
	ldr r0, _020F6090 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bl changePage
	mov r0, #1
	bl DWCi_SNDlPlay
	ldmfd sp!, {r3, pc}
_020F6090: .word MemKb
	arm_func_end pushShift

	arm_static_func_start touch
touch: ; 0x020F6094
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F625C ; =0x021126F8
	bl DWCi_TPlCheck
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
	bl DWCi_TPlCheck
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
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _020F61D4
	ldr r5, _020F6268 ; =0x021161BC
	add r0, r4, #0x2f
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _020F623C
	bl exchangeBack
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
	bl DWCi_SNDlPlay
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
	bl DWCi_TPlCheck
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
	bl exchangeBack
	ldr r0, _020F6268 ; =0x021161BC
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x122]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F625C: .word DWCi_R_SCR
_020F6260: .word C_KEY
_020F6264: .word S_KEY
_020F6268: .word MemKb
_020F626C: .word C_SKEY
_020F6270: .word S_SKEY
_020F6274: .word C_BTN
_020F6278: .word S_BTN
	arm_func_end touch

	arm_static_func_start exchangeBack
exchangeBack: ; 0x020F627C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F62C4 ; =0x021161BC
	mov r4, r0
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1f]
	cmp r4, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl changeColor
	ldr r0, [r5]
	mov r1, #0
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1f]
	bl changeColor
	ldr r0, [r5]
	strb r4, [r0, #0x11f]
	ldmfd sp!, {r3, r4, r5, pc}
_020F62C4: .word MemKb
	arm_func_end exchangeBack

	arm_static_func_start key
key: ; 0x020F62C8
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F62E4
	mov r0, #0
	bl moveFocus
_020F62E4:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F62FC
	mov r0, #1
	bl moveFocus
_020F62FC:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F6314
	mov r0, #2
	bl moveFocus
_020F6314:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F632C
	mov r0, #3
	bl moveFocus
_020F632C:
	mov r0, #1
	bl DWCi_IPTlCheckTrigger
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
	bl DWCi_SNDlPlay
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
	bl changePage
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
	bl pushCaps
	ldmfd sp!, {r4, pc}
_020F63CC:
	bl pushShift
	ldmfd sp!, {r4, pc}
_020F63D4:
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl DWCi_SNDlPlay
	ldmfd sp!, {r4, pc}
_020F63EC:
	ldrb r1, [r0, #0x123]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl DWCi_SNDlPlay
	ldmfd sp!, {r4, pc}
_020F6404:
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F6418
	mov r0, #0
	bl changePage
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
	bl DWCi_IPTlCheckRepeat
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
	bl DWCi_SNDlPlay
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
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, _020F64E4 ; =0x021161BC
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x125]
_020F64B8:
	mov r0, #0x400
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020F64CC
	bl pushCaps
_020F64CC:
	mov r0, #0x800
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl pushShift
	ldmfd sp!, {r4, pc}
_020F64E4: .word MemKb
_020F64E8: .word KEY_OUT
_020F64EC: .word SKEY_OUT
_020F64F0: .word BIN_OUT
	arm_func_end key

	arm_static_func_start disp
disp: ; 0x020F64F4
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
	bl DWCi_FNTlDisp
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
_020F676C: .word C_KEY
_020F6770: .word MemKb
_020F6774: .word 0xC1FFFCFF
_020F6778: .word 0xFE00FF00
_020F677C: .word C_SKEY
_020F6780: .word C_BTN
	arm_func_end disp

	arm_static_func_start changePage
changePage: ; 0x020F6784
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
	bl disp
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
	bl changeColor
	mov r1, r6
	mov r0, #0x30
	bl changeColor
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F6800: .word MemKb
_020F6804: .word C_KEY
	arm_func_end changePage

	arm_static_func_start changeColor
changeColor: ; 0x020F6808
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
_020F68C4: .word MemKb
_020F68C8: .word CL_KEY
_020F68CC: .word CL_BTN
	arm_func_end changeColor

	arm_static_func_start dispFocus
dispFocus: ; 0x020F68D0
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
_020F69A0: .word MemKb
_020F69A4: .word C_FOCUS
_020F69A8: .word C_FOCUS+2
	arm_func_end dispFocus

	arm_static_func_start moveFocus
moveFocus: ; 0x020F69AC
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
	bl dispFocus
	mov r0, #8
	bl DWCi_SNDlPlay
	ldmfd sp!, {r3, pc}
_020F6D80: .word MemKb
_020F6D84: .word MOVE_TBL
	arm_func_end moveFocus

	arm_static_func_start taskEnd0
taskEnd0: ; 0x020F6D88
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
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6DEC ; =taskEnd1
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6DE8: .word MemKb
_020F6DEC: .word taskEnd1
	arm_func_end taskEnd0

	arm_static_func_start taskEnd1
taskEnd1: ; 0x020F6DF0
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
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6E48 ; =taskEnd2
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6E44: .word MemKb
_020F6E48: .word taskEnd2
	arm_func_end taskEnd1

	arm_static_func_start taskEnd2
taskEnd2: ; 0x020F6E4C
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
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6EA4 ; =taskEnd3
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EA0: .word MemKb
_020F6EA4: .word taskEnd3
	arm_func_end taskEnd2

	arm_static_func_start taskEnd3
taskEnd3: ; 0x020F6EA8
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
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F00 ; =taskEnd4
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EFC: .word MemKb
_020F6F00: .word taskEnd4
	arm_func_end taskEnd3

	arm_static_func_start taskEnd4
taskEnd4: ; 0x020F6F04
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
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F5C ; =taskEnd5
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6F58: .word MemKb
_020F6F5C: .word taskEnd5
	arm_func_end taskEnd4

	arm_static_func_start taskEnd5
taskEnd5: ; 0x020F6F60
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
	bl DWCi_FNTlDelete
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
_020F7038: .word MemKb
_020F703C: .word MemKb
	arm_func_end taskEnd5


	.rodata
CL_KEY:
	.byte 0x02, 0x03
CL_BTN:
	.byte 0x04, 0x05
CN_BTN:
	.byte 0x3C, 0x3D
BIN_OUT:
	.byte 0x82, 0x83, 0x00
CN_SKEY:
	.byte 0x3A, 0x3B, 0x35, 0x39, 0x00
S_CANV:
	.byte 0x1C, 0x00, 0x02, 0x00
S_BTN:
	.byte 0x78, 0x00, 0x12, 0x00
S_KEY:
	.byte 0x11, 0x00, 0x12, 0x00
SKEY_OUT:
	.byte 0xFF, 0xFF, 0x20, 0x80, 0x00, 0x00
C_BTN:
	.byte 0x04, 0x00, 0xAA, 0x00, 0x84, 0x00, 0xAA, 0x00
C_SKEY:
	.byte 0x04, 0x00, 0x67, 0x00, 0x04, 0x00, 0x7D, 0x00, 0x04, 0x00, 0x93, 0x00, 0xDC, 0x00, 0x51, 0x00
S_SKEY:
	.byte 0x1B, 0x00, 0x12, 0x00
ov17_02111D50:
	.byte 0x20, 0x00, 0x12, 0x00, 0x28, 0x00, 0x12, 0x00, 0x20, 0x00, 0x12, 0x00
ov17_02111D5C:
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
ov17_02111D64:
	.byte 0x0C, 0x0C, 0x0C, 0x0B, 0x00, 0x00, 0x00, 0x00
ov17_02111D6C:
	.byte 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
C_KEY:
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
C_FOCUS:
	.byte 0x02, 0x00
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
MOVE_TBL:
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

	.data
KEY_OUT:
	.word ov17_02112B60
	.word ov17_02112B00
	.word ov17_02112B30
KEY_CHR:
	.word ov17_02112B90
	.word ov17_02112BF4
	.word ov17_02112C58
SKEY_TOUCH_SND:
	.word 0, 0, 0, 2
ov17_02112B00:
	.asciz "!@#$%^&*()_+QWERTYUIOP{}ASDFGHJKL:\"~ZXCVBNM<>?|"
	.balign 4, 0
ov17_02112B30:
	.asciz "1234567890-=QWERTYUIOP[]ASDFGHJKL;'`ZXCVBNM,./\\"
	.balign 4, 0
ov17_02112B60:
	.asciz "1234567890-=qwertyuiop[]asdfghjkl;'`zxcvbnm,./\\"
	.balign 4, 0
ov17_02112B90: ; wchar
	.short 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x30, 0x2D, 0x3D, 0x71, 0x77, 0x65, 0x72
	.short 0x74, 0x79, 0x75, 0x69, 0x6F, 0x70, 0x5B, 0x5D, 0x61, 0x73, 0x64, 0x66, 0x67, 0x68, 0x6A, 0x6B
	.short 0x6C, 0x3B, 0x27, 0x60, 0x7A, 0x78, 0x63, 0x76, 0x62, 0x6E, 0x6D, 0x2C, 0x2E, 0x2F, 0x5C, 0x20
	.short 0x00, 0x00
ov17_02112BF4: ; wchar
	.short 0x21, 0x40, 0x23, 0x24, 0x25, 0x5E, 0x26, 0x2A, 0x28, 0x29, 0x5F, 0x2B, 0x51, 0x57, 0x45, 0x52
	.short 0x54, 0x59, 0x55, 0x49, 0x4F, 0x50, 0x7B, 0x7D, 0x41, 0x53, 0x44, 0x46, 0x47, 0x48, 0x4A, 0x4B
	.short 0x4C, 0x3A, 0x22, 0x7E, 0x5A, 0x58, 0x43, 0x56, 0x42, 0x4E, 0x4D, 0x3C, 0x3E, 0x3F, 0x7C, 0x20
	.short 0x00, 0x00
ov17_02112C58: ; wchar
	.short 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x30, 0x2D, 0x3D, 0x51, 0x57, 0x45, 0x52
	.short 0x54, 0x59, 0x55, 0x49, 0x4F, 0x50, 0x5B, 0x5D, 0x41, 0x53, 0x44, 0x46, 0x47, 0x48, 0x4A, 0x4B
	.short 0x4C, 0x3B, 0x27, 0x60, 0x5A, 0x58, 0x43, 0x56, 0x42, 0x4E, 0x4D, 0x2C, 0x2E, 0x2F, 0x5C, 0x20
	.short 0x00, 0x00

	.bss
MemKb:
	.space 0x04

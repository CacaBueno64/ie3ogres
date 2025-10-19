
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CELLlDelete
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlGetPosition
	.public DWCi_CELLlSetPalette
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_Char
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_SNDlPlay
	.public DWCi_TSKlChangeFunc
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public GXS_LoadBG1Scr

	.text
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
	ldr r1, _02107DCC ; =taskBegin0
	mov r0, r6
	mov r2, r6
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, _02107DBC ; =0x021162AC
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl DWCi_STEPlChangeScr
	mov r0, #0xd
	bl DWCi_SNDlPlay
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02107DBC: .word File
_02107DC0: .word CELL_IDX
_02107DC4: .word PL_CELL
_02107DC8: .word C_POS
_02107DCC: .word taskBegin0
	arm_func_end DWCi_STEPlBegin

	arm_static_func_start taskBegin0
taskBegin0: ; 0x02107DD0
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
	ldr r1, _02107EAC ; =taskBegin1
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107EA4: .word File
_02107EA8: .word C_POS
_02107EAC: .word taskBegin1
	arm_func_end taskBegin0

	arm_static_func_start taskBegin1
taskBegin1: ; 0x02107EB0
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
	ldr r1, _02107F8C ; =taskBegin2
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107F84: .word File
_02107F88: .word C_POS
_02107F8C: .word taskBegin2
	arm_func_end taskBegin1

	arm_static_func_start taskBegin2
taskBegin2: ; 0x02107F90
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
	ldr r1, _0210806C ; =taskBegin3
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108064: .word File
_02108068: .word C_POS
_0210806C: .word taskBegin3
	arm_func_end taskBegin2

	arm_static_func_start taskBegin3
taskBegin3: ; 0x02108070
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
	ldr r1, _0210814C ; =taskBegin4
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108144: .word File
_02108148: .word C_POS
_0210814C: .word taskBegin4
	arm_func_end taskBegin3

	arm_static_func_start taskBegin4
taskBegin4: ; 0x02108150
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
	ldr r1, _021081E8 ; =taskBegin5
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021081E4: .word File
_021081E8: .word taskBegin5
	arm_func_end taskBegin4

	arm_static_func_start taskBegin5
taskBegin5: ; 0x021081EC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl DWCi_TSKlDelete
	ldr r0, _02108210 ; =0x021162AC
	ldr r0, [r0, #4]
	str r4, [r0, #0x14]
	ldmfd sp!, {r4, pc}
_02108210: .word File
	arm_func_end taskBegin5

	arm_func_start DWCi_STEPlEnd
DWCi_STEPlEnd: ; 0x02108214
	stmfd sp!, {r4, lr}
	ldr r4, _02108248 ; =0x021162AC
	mov r0, #0
	ldr r3, [r4, #4]
	mov r12, #1
	ldr r1, _0210824C ; =taskEnd0
	mov r2, r0
	strb r12, [r3, #0x18]
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4, #4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_02108248: .word File
_0210824C: .word taskEnd0
	arm_func_end DWCi_STEPlEnd

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
	bl DWCi_STEPlChangeScr
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108308: .word CELL_IDX
_0210830C: .word PL_CELL
_02108310: .word C_POS
_02108314: .word File
	arm_func_end DWCi_STEPlChange

	arm_func_start DWCi_STEPlGet
DWCi_STEPlGet: ; 0x02108318
	ldr r0, _02108334 ; =0x021162AC
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02108334: .word File
	arm_func_end DWCi_STEPlGet

	arm_static_func_start taskEnd0
taskEnd0: ; 0x02108338
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
	ldr r1, _021083C4 ; =taskEnd1
	mov r0, r6
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021083C0: .word File
_021083C4: .word taskEnd1
	arm_func_end taskEnd0

	arm_static_func_start taskEnd1
taskEnd1: ; 0x021083C8
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
	ldr r1, _02108498 ; =taskEnd2
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108490: .word File
_02108494: .word C_POS
_02108498: .word taskEnd2
	arm_func_end taskEnd1

	arm_static_func_start taskEnd2
taskEnd2: ; 0x0210849C
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
	ldr r1, _0210856C ; =taskEnd3
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108564: .word File
_02108568: .word C_POS
_0210856C: .word taskEnd3
	arm_func_end taskEnd2

	arm_static_func_start taskEnd3
taskEnd3: ; 0x02108570
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
	ldr r1, _02108640 ; =taskEnd4
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108638: .word File
_0210863C: .word C_POS
_02108640: .word taskEnd4
	arm_func_end taskEnd3

	arm_static_func_start taskEnd4
taskEnd4: ; 0x02108644
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
_02108708: .word File
_0210870C: .word C_POS
_02108710: .word 0x000001D6
_02108714: .word MemStep
	arm_func_end taskEnd4

	arm_func_start DWCi_STEPlIsEnd
DWCi_STEPlIsEnd: ; 0x02108718
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
_02108740: .word File
	arm_func_end DWCi_STEPlIsEnd

	arm_func_start DWCi_STEPlChangeScr
DWCi_STEPlChangeScr: ; 0x02108744
	stmfd sp!, {r4, lr}
	ldr r1, _02108784 ; =0x021135C0
	ldr r0, [r1, r0, lsl #2]
	bl DWCi_Char
	mov r4, #0
	mov r1, r4
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r2, _02108788 ; =0x021162AC
	ldr r1, _0210878C ; =taskChange
	str r0, [r2]
	mov r2, r4
	mov r0, #1
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldmfd sp!, {r4, pc}
_02108784: .word FILE_NAME
_02108788: .word File
_0210878C: .word taskChange
	arm_func_end DWCi_STEPlChangeScr

	arm_static_func_start taskChange
taskChange: ; 0x02108790
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
_021087D4: .word File
	arm_func_end taskChange

	.rodata
CELL_IDX:
	.byte 0x01, 0x00, 0x05, 0x00, 0x06, 0x04, 0x00, 0x02, 0x00, 0x06, 0x04, 0x00, 0x05, 0x00, 0x03
PL_CELL:
	.byte 0x02, 0x01, 0x03, 0x01, 0x03, 0x05, 0x01, 0x04, 0x01, 0x05, 0x07, 0x01, 0x07, 0x01, 0x06
C_POS:
	.byte 0x20, 0x00, 0x21, 0x00, 0x50, 0x00, 0x30, 0x00, 0x68, 0x00, 0x21, 0x00, 0x98, 0x00, 0x30, 0x00
	.byte 0xB0, 0x00, 0x21, 0x00, 0x00, 0x00

	.data
ov17_0211355C:
	.asciz "char/jtTop.nsc.l"
	.balign 4, 0
ov17_02113570:
	.asciz "char/jtStep1.nsc.l"
	.balign 4, 0
ov17_02113584:
	.asciz "char/jtStep2.nsc.l"
	.balign 4, 0
ov17_02113598:
	.asciz "char/jtStep3.nsc.l"
	.balign 4, 0
ov17_021135AC:
	.asciz "char/jtOption.nsc.l"
	.balign 4, 0
FILE_NAME:
	.word ov17_02113570, ov17_02113584, ov17_02113598, ov17_021135AC, ov17_0211355C

	.bss
File:
	.space 0x04
MemStep:
	.space 0x04

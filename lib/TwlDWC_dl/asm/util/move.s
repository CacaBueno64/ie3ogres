
	.include "asm/macros/function.inc"
	.public DWCiMsgCmn
	.public DWCi_GetChildInfo
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_MOVFinalize
	.public DWCi_MOVFramework
	.public DWCi_MOVGetStatus
	.public DWCi_MOVInit
	.public DWCi_MOVStartAdmitChild
	.public DWCi_MOVStartDownloadandBootChild
	.public DWCi_MSGlGet
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public MIi_CpuCopy16
	.public OS_Terminate
	.public kDWCi_Language

	.text
	arm_func_start DWCi_MOVlInit
DWCi_MOVlInit: ; 0x020F8D08
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
	bl DWCi_MOVInit
	bl DWCi_MOVStartAdmitChild
	cmp r0, #0
	bne _020F8DB0
	bl OS_Terminate
_020F8DB0:
	mov r0, #0
	ldr r1, _020F8DEC ; =taskFramework
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
_020F8DE0: .word MemMov
_020F8DE4: .word MOVDATA
_020F8DE8: .word DWCiMsgCmn
_020F8DEC: .word taskFramework
	arm_func_end DWCi_MOVlInit

	arm_func_start DWCi_MOVlEnd
DWCi_MOVlEnd: ; 0x020F8DF0
	mov r0, #0
	ldr r1, _020F8E08 ; =taskEnd
	ldr r12, _020F8E0C ; =DWCi_TSKlForm
	mov r2, r0
	mov r3, #0x78
	bx r12
_020F8E08: .word taskEnd
_020F8E0C: .word DWCi_TSKlForm
	arm_func_end DWCi_MOVlEnd

	arm_static_func_start taskEnd
taskEnd: ; 0x020F8E10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_MOVFinalize
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
_020F8E48: .word MemMov
	arm_func_end taskEnd

	arm_func_start DWCi_MOVlIsEnd
DWCi_MOVlIsEnd: ; 0x020F8E4C
	ldr r0, _020F8E64 ; =0x021161F0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F8E64: .word MemMov
	arm_func_end DWCi_MOVlIsEnd

	arm_func_start DWCi_MOVlChangeCallback
DWCi_MOVlChangeCallback: ; 0x020F8E68
	ldr r1, _020F8E7C ; =0x021161F0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x298]
	bx lr
_020F8E7C: .word MemMov
	arm_func_end DWCi_MOVlChangeCallback

	arm_func_start DWCi_MOVlAdmitChild
DWCi_MOVlAdmitChild: ; 0x020F8E80
	ldr r12, _020F8E88 ; =DWCi_MOVStartDownloadandBootChild
	bx r12
_020F8E88: .word DWCi_MOVStartDownloadandBootChild
	arm_func_end DWCi_MOVlAdmitChild

	arm_func_start DWCi_MOVlGetChild
DWCi_MOVlGetChild: ; 0x020F8E8C
	ldr r0, _020F8EA0 ; =0x021161F0
	ldr r0, [r0]
	add r0, r0, #0x2280
	add r0, r0, #0x1c000
	bx lr
_020F8EA0: .word MemMov
	arm_func_end DWCi_MOVlGetChild

	arm_static_func_start taskFramework
taskFramework: ; 0x020F8EA4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, #1
	bl DWCi_MOVFramework
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
	bl DWCi_MOVGetStatus
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
	bl DWCi_GetChildInfo
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
_020F9114: .word MemMov
_020F9118: .word MemMov
	arm_func_end taskFramework

	.data
ov17_02112CDC:
	.asciz "dwc:/move/child.srl"
	.balign 4, 0
ov17_02112CF0:
	.asciz "dwc:/move/banner.plt"
	.balign 4, 0
ov17_02112D08:
	.asciz "dwc:/move/banner.char"
	.balign 4, 0
MOVDATA:
	.word ov17_02112CDC, 0, 0, ov17_02112D08, ov17_02112CF0, 0x159
	.byte 0, 0, 0, 0

	.bss
MemMov:
	.space 0x04

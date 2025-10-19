
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_TSKlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public GX_LoadBG2Scr
	.public MIi_CpuCopy16
	.public MIi_CpuCopyFast

	.text
	arm_func_start DWCi_SCREENlInit
DWCi_SCREENlInit: ; 0x021062FC
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
	ldr r1, _02106354 ; =taskLoad
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_0210634C: .word 0x00000608
_02106350: .word MemScr
_02106354: .word taskLoad
	arm_func_end DWCi_SCREENlInit

	arm_func_start DWCi_SCREENlEnd
DWCi_SCREENlEnd: ; 0x02106358
	stmfd sp!, {r3, lr}
	ldr r1, _0210637C ; =0x02116290
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r0, _02106380 ; =0x02116290
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_0210637C: .word MemScr
_02106380: .word MemScr
	arm_func_end DWCi_SCREENlEnd

	arm_func_start DWCi_SCREENlRenew
DWCi_SCREENlRenew: ; 0x02106384
	ldr r0, _02106398 ; =0x02116290
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x604]
	bx lr
_02106398: .word MemScr
	arm_func_end DWCi_SCREENlRenew

	arm_func_start DWCi_SCREENlCopy
DWCi_SCREENlCopy: ; 0x0210639C
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
_021063F0: .word MemScr
	arm_func_end DWCi_SCREENlCopy

	arm_static_func_start taskLoad
taskLoad: ; 0x021063F4
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
_02106440: .word MemScr
	arm_func_end taskLoad

	arm_func_start DWCi_SCREENlCopyPalette
DWCi_SCREENlCopyPalette: ; 0x02106444
	stmfd sp!, {r3, lr}
	ldr r12, _02106478 ; =0x02116290
	add r3, r0, r1, lsl #5
	mov r0, r2, lsl #5
	ldr r1, _0210647C ; =taskCopyPltt
	str r3, [r12, #4]
	add lr, r0, #0x5000000
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	str lr, [r12, #8]
	bl DWCi_TSKlForm
	ldmfd sp!, {r3, pc}
_02106478: .word MemScr
_0210647C: .word taskCopyPltt
	arm_func_end DWCi_SCREENlCopyPalette

	arm_static_func_start taskCopyPltt
taskCopyPltt: ; 0x02106480
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
_021064A8: .word MemScr
	arm_func_end taskCopyPltt

	arm_func_start DWCi_SCREENlSetPalette
DWCi_SCREENlSetPalette: ; 0x021064AC
	ldr r2, _021064CC ; =0x02116290
	ldr r1, _021064D0 ; =taskSetPltt
	str r0, [r2, #4]
	ldr r12, _021064D4 ; =DWCi_TSKlForm
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bx r12
_021064CC: .word MemScr
_021064D0: .word taskSetPltt
_021064D4: .word DWCi_TSKlForm
	arm_func_end DWCi_SCREENlSetPalette

	arm_static_func_start taskSetPltt
taskSetPltt: ; 0x021064D8
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
_02106504: .word MemScr
	arm_func_end taskSetPltt

	.bss
MemScr:
	.space 0x04
Pltt:
	.space 0x08

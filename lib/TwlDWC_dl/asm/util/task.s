
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_LSTlDelete
	.public DWCi_LSTlErase
	.public DWCi_LSTlForm
	.public DWCi_LSTlInsert
	.public DWCi_LSTlPushBack
	.public DWCi_LSTlPushFront
	.public DWCi_QUElDelete
	.public DWCi_QUElForm
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask

	.text
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
_0210F214: .word MemTask
_0210F218: .word TASK_NUM
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
_0210F25C: .word MemTask
_0210F260: .word MemTask
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
	bl deleteTcb
	ldr r0, [r7]
	add r5, r5, #1
	add r1, r4, r0
	ldr r1, [r1, #0x34]
	cmp r5, r1
	blt _0210F2D8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F310: .word MemTask
	arm_func_end DWCi_TSKlAct

	arm_func_start DWCi_TSKlForm
DWCi_TSKlForm: ; 0x0210F314
	stmfd sp!, {r3, lr}
	mov r12, #0
	str r12, [sp]
	bl formTask
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_TSKlForm

	arm_static_func_start formTask
formTask: ; 0x0210F328
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
_0210F3AC: .word MemTask
	arm_func_end formTask

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
_0210F3D0: .word MemTask
_0210F3D4: .word DWCi_QUElPushBack
	arm_func_end DWCi_TSKlDelete

	arm_func_start DWCi_TSKlDeleteEx
DWCi_TSKlDeleteEx: ; 0x0210F3D8
	ldr r12, _0210F3E0 ; =deleteTcb
	bx r12
_0210F3E0: .word deleteTcb
	arm_func_end DWCi_TSKlDeleteEx

	arm_static_func_start deleteTcb
deleteTcb: ; 0x0210F3E4
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
_0210F424: .word MemTask
	arm_func_end deleteTcb

	arm_func_start DWCi_TSKlOperate
DWCi_TSKlOperate: ; 0x0210F428
	ldr r2, _0210F43C ; =0x02116344
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	strb r1, [r0, #0x38]
	bx lr
_0210F43C: .word MemTask
	arm_func_end DWCi_TSKlOperate

	.rodata
TASK_NUM:
	.byte 0x80, 0x20

	.bss
MemTask:
	.space 0x1C

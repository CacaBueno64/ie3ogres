
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_LSTlDelete
	.public DWCi_LSTlErase
	.public DWCi_LSTlForm
	.public DWCi_LSTlInsert
	.public DWCi_LSTlPushBack
	.public DWCi_LSTlPushFront
	.public DWCi_OBJlGetOam
	.public DWCi_QUElDelete
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask
	.public OS_Terminate

	.text
	arm_func_start DWCi_CELLlInit
DWCi_CELLlInit: ; 0x0210C988
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x450
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _0210CA58 ; =MemCell
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
_0210CA58: .word MemCell
	arm_func_end DWCi_CELLlInit

	arm_func_start DWCi_CELLlEnd
DWCi_CELLlEnd: ; 0x0210CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0210CAA8 ; =MemCell
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
	ldr r0, _0210CAAC ; =MemCell
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CAA8: .word MemCell
_0210CAAC: .word MemCell
	arm_func_end DWCi_CELLlEnd

	arm_func_start DWCi_CELLlForm
DWCi_CELLlForm: ; 0x0210CAB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0x228
	mul r7, r10, r11
	ldr r4, _0210CBF0 ; =MemCell
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
	ldr r0, _0210CBF0 ; =MemCell
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
	ldr r0, _0210CBF0 ; =MemCell
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
_0210CBF0: .word MemCell
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
	ldr r0, _0210CC70 ; =MemCell
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
_0210CC70: .word MemCell
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

	.bss
MemCell:
	.space 0x04

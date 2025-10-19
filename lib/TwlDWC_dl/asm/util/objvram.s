
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_LSTlErase
	.public DWCi_LSTlForm
	.public DWCi_LSTlInsert
	.public DWCi_LSTlPushBack
	.public DWCi_LSTlPushFront
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask
	.public OS_Terminate

	.text
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
_0210ECEC: .word MemOvr
	arm_func_end DWCi_OVRlInit

	arm_func_start DWCi_OVRlAlloc
DWCi_OVRlAlloc: ; 0x0210ECF0
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
_0210EE50: .word MemOvr
	arm_func_end DWCi_OVRlAlloc

	arm_func_start DWCi_OVRlFree
DWCi_OVRlFree: ; 0x0210EE54
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
_0210EE90: .word MemOvr
	arm_func_end DWCi_OVRlFree

	.bss
MemOvr:
	.space 0x04

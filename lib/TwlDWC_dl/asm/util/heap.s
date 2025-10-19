
	.include "asm/macros/function.inc"
	.public MI_CpuFill8
	.public NNS_FndAllocFromExpHeapEx
	.public NNS_FndCreateExpHeapEx
	.public NNS_FndDestroyExpHeap
	.public NNS_FndFreeToExpHeap
	.public OS_DisableIrqMask
	.public OS_EnableIrqMask
	.public OS_Terminate

	.text
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
_0210E038: .word Heap
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
_0210E058: .word Heap
	arm_func_end DWCi_HEAPlEnd

	arm_func_start DWCi_HEAPlAlloc
DWCi_HEAPlAlloc: ; 0x0210E05C
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
_0210E0A4: .word Heap
	arm_func_end DWCi_HEAPlAlloc

	arm_func_start DWCi_HEAPlAllocEx
DWCi_HEAPlAllocEx: ; 0x0210E0A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_HEAPlAlloc
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
_0210E10C: .word Heap
	arm_func_end DWCi_HEAPlFree_

	arm_func_start DWCi_HEAPlFree2
DWCi_HEAPlFree2: ; 0x0210E110
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
_0210E148: .word Heap
	arm_func_end DWCi_HEAPlFree2

	.bss
Heap:
	.space 0x04

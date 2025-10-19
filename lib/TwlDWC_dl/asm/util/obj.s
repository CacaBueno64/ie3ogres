
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public GXS_LoadOAM
	.public GX_LoadOAM
	.public MIi_CpuClearFast

	.text
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
	ldr r1, _0210EB34 ; =taskTransfer
	mov r0, #1
	mov r2, #0
	mov r3, #0xc8
	bl DWCi_TSKlForm
	ldr r1, _0210EB30 ; =0x02116308
	ldr r1, [r1]
	str r0, [r1, #0x808]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210EB2C: .word 0x0000080C
_0210EB30: .word MemObj
_0210EB34: .word taskTransfer
	arm_func_end DWCi_OBJlInit

	arm_static_func_start taskTransfer
taskTransfer: ; 0x0210EB38
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
_0210EB7C: .word MemObj
	arm_func_end taskTransfer

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
_0210EBA4: .word MemObj
_0210EBA8: .word MemObj
	arm_func_end DWCi_OBJlEnd

	arm_func_start DWCi_OBJlFormGx
DWCi_OBJlFormGx: ; 0x0210EBAC
	ldr r1, _0210EBC4 ; =0x02116308
	ldr r12, _0210EBC8 ; =DWCi_QUElPopBack
	ldr r1, [r1]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x800]
	bx r12
_0210EBC4: .word MemObj
_0210EBC8: .word DWCi_QUElPopBack
	arm_func_end DWCi_OBJlFormGx

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
_0210EC10: .word MemObj
_0210EC14: .word DWCi_QUElPushBack
	arm_func_end DWCi_OBJlDelete

	arm_func_start DWCi_OBJlGetOam
DWCi_OBJlGetOam: ; 0x0210EC18
	ldr r2, _0210EC2C ; =0x02116308
	ldr r2, [r2]
	add r0, r2, r0, lsl #10
	add r0, r0, r1, lsl #3
	bx lr
_0210EC2C: .word MemObj
	arm_func_end DWCi_OBJlGetOam

	.bss
MemObj:
	.space 0x04

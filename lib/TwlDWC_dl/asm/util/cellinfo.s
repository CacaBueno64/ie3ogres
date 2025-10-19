
	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_CELLlForm
	.public DWCi_CELLlGetObj
	.public DWCi_OBJlFormGx
	.public MIi_CpuClear32
	.public MIi_CpuCopy16
	.public MIi_CpuCopy32

	.text
	arm_func_start DWCi_CEINlRead
DWCi_CEINlRead: ; 0x0210CF14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _0210CF40 ; =File
	str r0, [r1, r4, lsl #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210CF40: .word File
	arm_func_end DWCi_CEINlRead

	arm_func_start DWCi_CEINlRelease
DWCi_CEINlRelease: ; 0x0210CF44
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210CF64 ; =File
	mov r5, r0
	ldr r0, [r4, r5, lsl #2]
	bl DWCi_ARClRelease
	mov r0, #0
	str r0, [r4, r5, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
_0210CF64: .word File
	arm_func_end DWCi_CEINlRelease

	arm_func_start DWCi_CEINlSet
DWCi_CEINlSet: ; 0x0210CF68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210CFF8 ; =File
	mov r6, r2
	ldr r7, [r3, r0, lsl #2]
	mov r2, r1, lsl #3
	add r0, r7, r1, lsl #3
	ldrh r4, [r7, r2]
	add r9, sp, #0
	ldr r3, [r0, #4]
	mov r5, #0
	mov r0, r5
	mov r1, r9
	mov r2, #8
	add r10, r7, r3
	bl MIi_CpuClear32
	cmp r4, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #6
	mov r7, #8
_0210CFBC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl MIi_CpuCopy16
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl MIi_CpuCopy32
	add r5, r5, #1
	cmp r5, r4
	add r10, r10, #6
	add r6, r6, #8
	blt _0210CFBC
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210CFF8: .word File
	arm_func_end DWCi_CEINlSet

	arm_func_start DWCi_CEINlSetExObj
DWCi_CEINlSetExObj: ; 0x0210CFFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl DWCi_OBJlFormGx
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DWCi_CEINlSet
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_CEINlSetExObj

	arm_func_start DWCi_CEINlSetExCell
DWCi_CEINlSetExCell: ; 0x0210D028
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0210D06C ; =File
	mov r6, r0
	mov r5, r1
	ldr r3, [r3, r6, lsl #2]
	mov r1, r5, lsl #3
	ldrh r1, [r3, r1]
	bl DWCi_CELLlForm
	mov r1, #0
	mov r4, r0
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl DWCi_CEINlSet
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0210D06C: .word File
	arm_func_end DWCi_CEINlSetExCell

	.bss
File:
	.space 0x08

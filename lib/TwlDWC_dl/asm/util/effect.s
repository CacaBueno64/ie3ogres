
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public FX_DivS32
	.public G2x_ChangeBlendBrightness_
	.public G2x_SetBlendBrightness_

	.text
	arm_func_start DWCi_EFFlInit
DWCi_EFFlInit: ; 0x0210D1B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x18
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210D1F8 ; =0x021162DC
	mov r5, #0x3f
	mov r4, #0x10
	ldr r6, _0210D1FC ; =0x04000050
	str r0, [r1]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl G2x_SetBlendBrightness_
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x1000
	bl G2x_SetBlendBrightness_
	ldmfd sp!, {r4, r5, r6, pc}
_0210D1F8: .word MemEffect
_0210D1FC: .word 0x04000050
	arm_func_end DWCi_EFFlInit

	arm_func_start DWCi_EFFlEnd
DWCi_EFFlEnd: ; 0x0210D200
	ldr r0, _0210D20C ; =0x021162DC
	ldr r12, _0210D210 ; =DWCi_HEAPlFree_
	bx r12
_0210D20C: .word MemEffect
_0210D210: .word DWCi_HEAPlFree_
	arm_func_end DWCi_EFFlEnd

	arm_func_start DWCi_EFFlCheck
DWCi_EFFlCheck: ; 0x0210D214
	cmp r0, #1
	ldreq r0, _0210D234 ; =0x021162DC
	ldreq r0, [r0]
	ldrne r0, _0210D234 ; =0x021162DC
	ldrne r0, [r0]
	addne r0, r0, #0xc
	ldrb r0, [r0, #9]
	bx lr
_0210D234: .word MemEffect
	arm_func_end DWCi_EFFlCheck

	arm_func_start DWCi_EFFlFade
DWCi_EFFlFade: ; 0x0210D238
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210D2EC ; =0x021126E8
	mov r6, r0
	ldrb r0, [r4, #3]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	strb r0, [sp, #3]
	cmp r1, #1
	ldrb r7, [r4, #2]
	ldreq r0, _0210D2F0 ; =0x021162DC
	mov r5, r3
	ldreq r4, [r0]
	ldrne r0, _0210D2F0 ; =0x021162DC
	strb lr, [sp]
	ldrne r0, [r0]
	strb r12, [sp, #1]
	addne r4, r0, #0xc
	ldrb r0, [r4, #9]
	strb r7, [sp, #2]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
	cmp r1, #1
	mov r1, r2
	ldrsb r2, [r0, r6]
	bne _0210D2AC
	ldr r0, _0210D2F4 ; =0x04001050
	b _0210D2B0
_0210D2AC:
	ldr r0, _0210D2F8 ; =0x04000050
_0210D2B0:
	bl G2x_SetBlendBrightness_
	mov r7, #1
	ldr r1, _0210D2FC ; =taskFade
	mov r0, r7
	mov r2, r4
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strb r6, [r4, #8]
	strh r5, [r4, #6]
	mov r0, r7
	strb r7, [r4, #9]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210D2EC: .word ov17_021126E8
_0210D2F0: .word MemEffect
_0210D2F4: .word 0x04001050
_0210D2F8: .word 0x04000050
_0210D2FC: .word taskFade
	arm_func_end DWCi_EFFlFade

	arm_static_func_start taskFade
taskFade: ; 0x0210D300
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210D410 ; =0x021126E4
	ldr r2, _0210D414 ; =0x021126E0
	mov r4, r1
	ldrsh r1, [r4, #4]
	ldrb r9, [r3]
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb lr, [r2]
	ldrb r12, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	add r5, r1, #1
	strb r6, [sp, #7]
	strh r5, [r4, #4]
	ldrsh r10, [r4, #4]
	mov r5, r0
	ldrh r1, [r4, #6]
	mov r0, r10, lsl #4
	strb r9, [sp, #4]
	strb r8, [sp, #5]
	strb r7, [sp, #6]
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	add r6, sp, #4
	bl FX_DivS32
	ldrb r2, [r4, #8]
	mov r1, r0
	ldrb r0, [r6, r2]
	tst r0, #1
	rsbne r1, r1, #0x10
	tst r0, #0x10
	ldr r0, _0210D418 ; =0x021162DC
	rsbne r1, r1, #0
	ldr r0, [r0]
	cmp r4, r0
	bne _0210D3AC
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3B0
_0210D3AC:
	ldr r0, _0210D420 ; =0x04000050
_0210D3B0:
	bl G2x_ChangeBlendBrightness_
	ldrsh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0210D418 ; =0x021162DC
	ldrb r2, [r4, #8]
	ldr r0, [r0]
	add r1, sp, #0
	cmp r4, r0
	bne _0210D3E8
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3EC
_0210D3E8:
	ldr r0, _0210D420 ; =0x04000050
_0210D3EC:
	ldrsb r1, [r1, r2]
	bl G2x_ChangeBlendBrightness_
	mov r2, #0
	mov r1, r5
	mov r0, #1
	strb r2, [r4, #9]
	bl DWCi_TSKlDelete
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210D410: .word ov17_021126E4
_0210D414: .word ov17_021126E0
_0210D418: .word MemEffect
_0210D41C: .word 0x04001050
_0210D420: .word 0x04000050
	arm_func_end taskFade

	arm_func_start DWCi_EFFlWait
DWCi_EFFlWait: ; 0x0210D424
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0210D478 ; =0x021162DC
	mov r6, r0
	ldr r5, [r1]
	ldrb r0, [r5, #9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #1
	ldr r1, _0210D47C ; =taskWait
	mov r0, r4
	mov r2, r5
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	mov r0, r4
	strb r4, [r5, #9]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D478: .word MemEffect
_0210D47C: .word taskWait
	arm_func_end DWCi_EFFlWait

	arm_static_func_start taskWait
taskWait: ; 0x0210D480
	stmfd sp!, {r3, lr}
	ldrsh r3, [r1, #4]
	ldrh r2, [r1, #6]
	add r3, r3, #1
	strh r3, [r1, #4]
	ldrsh r3, [r1, #4]
	cmp r3, r2
	ldmltfd sp!, {r3, pc}
	mov r2, #0
	strb r2, [r1, #9]
	mov r1, r0
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, pc}
	arm_func_end taskWait

	.rodata
ov17_021126E0:
	.byte 0x00, 0xF0, 0x00, 0x10
ov17_021126E4:
	.byte 0x11, 0x10, 0x01, 0x00
ov17_021126E8:
	.byte 0xF0, 0x00, 0x10, 0x00

	.bss
MemEffect:
	.space 0x04

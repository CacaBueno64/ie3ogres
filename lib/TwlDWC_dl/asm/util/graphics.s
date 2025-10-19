
	.include "asm/macros/function.inc"

	.text
	arm_func_start DWCi_GXlVisible
DWCi_GXlVisible: ; 0x0210DCD0
	cmp r0, #1
	bne _0210DCFC
	ldr r3, _0210DD20 ; =0x04001000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DCFC:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD20: .word 0x04001000
	arm_func_end DWCi_GXlVisible

	arm_func_start DWCi_GXlInvisible
DWCi_GXlInvisible: ; 0x0210DD24
	cmp r0, #1
	bne _0210DD54
	ldr r3, _0210DD7C ; =0x04001000
	mvn r0, r1
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	bic r1, r1, #0x1f00
	and r0, r0, r2, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD54:
	mov r3, #0x4000000
	ldr r0, [r3]
	ldr r2, [r3]
	and r12, r0, #0x1f00
	mvn r0, r1
	bic r1, r2, #0x1f00
	and r0, r0, r12, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD7C: .word 0x04001000
	arm_func_end DWCi_GXlInvisible

	arm_func_start DWCi_GXlSetWndPosition
DWCi_GXlSetWndPosition: ; 0x0210DD80
	cmp r0, #1
	bne _0210DE00
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DDD0
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE78 ; =0x04001040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DDD0:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE7C ; =0x04001042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE00:
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DE48
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE80 ; =0x04000040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE48:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE84 ; =0x04000042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE78: .word 0x04001040
_0210DE7C: .word 0x04001042
_0210DE80: .word 0x04000040
_0210DE84: .word 0x04000042
	arm_func_end DWCi_GXlSetWndPosition

	arm_func_start DWCi_GXlSetWndPlane
DWCi_GXlSetWndPlane: ; 0x0210DE88
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_0210DE94: ; jump table
	b _0210DEA4 ; case 0
	b _0210DEF4 ; case 1
	b _0210DF44 ; case 2
	b _0210DF94 ; case 3
_0210DEA4:
	cmp r0, #1
	bne _0210DED0
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DED0:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DEF4:
	cmp r0, #1
	bne _0210DF20
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF20:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF44:
	cmp r0, #1
	bne _0210DF70
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF70:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF94:
	cmp r0, #1
	bne _0210DFC0
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFC0:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFE4: .word 0x04001048
_0210DFE8: .word 0x04000048
_0210DFEC: .word 0x0400104A
_0210DFF0: .word 0x0400004A
	arm_func_end DWCi_GXlSetWndPlane

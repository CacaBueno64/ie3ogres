
	.include "asm/macros/function.inc"
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public WCMi_GetSystemWork
	.public _s32_div_f

	.text
	arm_static_func_start WcmCompareMemory
WcmCompareMemory: ; 0x020DDBAC
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	bls _020DDBDC
_020DDBBC:
	ldrb r12, [r0, lr]
	ldrb r3, [r1, lr]
	cmp r12, r3
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blo _020DDBBC
_020DDBDC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end WcmCompareMemory

	arm_func_start WCM_CompareBssID
WCM_CompareBssID: ; 0x020DDBE4
	ldr r12, _020DDBF0 ; =WcmCompareMemory
	mov r2, #6
	bx r12
_020DDBF0: .word WcmCompareMemory
	arm_func_end WCM_CompareBssID

	arm_func_start WCM_GetLinkLevel
WCM_GetLinkLevel: ; 0x020DDBF4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	mov r5, #0
	beq _020DDC2C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DDC2C
	bl WCMi_GetRssiAverage
	bl WCM_CalcLinkLevel
	mov r5, r0
_020DDC2C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_GetLinkLevel

	arm_func_start WCM_CalcLinkLevel
WCM_CalcLinkLevel: ; 0x020DDC3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r4, #0x1c
	movhs r0, #3
	ldmhsfd sp!, {r4, pc}
	cmp r4, #0x16
	movhs r0, #2
	ldmhsfd sp!, {r4, pc}
	mov r0, #1
	cmp r4, #0x10
	movlo r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_CalcLinkLevel

	arm_func_start WCMi_GetRssiAverage
WCMi_GetRssiAverage: ; 0x020DDC70
	stmfd sp!, {r3, lr}
	ldr r1, _020DDCE8 ; =wcmRssiIndex
	mov r0, #0
	ldrb r1, [r1]
	cmp r1, #0x10
	bls _020DDCB4
	ldr r2, _020DDCEC ; =wcmRssi
	mov r3, r0
_020DDC90:
	ldrb r1, [r2, r3]
	add r3, r3, #1
	cmp r3, #0x10
	add r0, r0, r1
	blt _020DDC90
	mov r1, r0, asr #3
	add r0, r0, r1, lsr #28
	mov r0, r0, asr #4
	b _020DDCE0
_020DDCB4:
	cmp r1, #0
	beq _020DDCE0
	mov r12, r0
	ble _020DDCDC
	ldr r3, _020DDCEC ; =wcmRssi
_020DDCC8:
	ldrb r2, [r3, r12]
	add r12, r12, #1
	cmp r12, r1
	add r0, r0, r2
	blt _020DDCC8
_020DDCDC:
	bl _s32_div_f
_020DDCE0:
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_020DDCE8: .word wcmRssiIndex
_020DDCEC: .word wcmRssi
	arm_func_end WCMi_GetRssiAverage

	arm_func_start WCMi_ShelterRssi
WCMi_ShelterRssi: ; 0x020DDCF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldr r2, _020DDD48 ; =wcmRssiIndex
	mov r0, r4, asr #2
	ldrb r12, [r2]
	tst r4, #2
	addeq r0, r0, #0x19
	mov r1, r12, lsr #0x1f
	and lr, r0, #0xff
	rsb r0, r1, r12, lsl #28
	ldr r3, _020DDD4C ; =wcmRssi
	add r0, r1, r0, ror #28
	strb lr, [r3, r0]
	add r0, r12, #1
	cmp r12, #0x10
	movhs r1, r0, lsr #0x1f
	rsbhs r0, r1, r0, lsl #28
	addhs r0, r1, r0, ror #28
	addhs r0, r0, #0x10
	strb r0, [r2]
	ldmfd sp!, {r4, pc}
_020DDD48: .word wcmRssiIndex
_020DDD4C: .word wcmRssi
	arm_func_end WCMi_ShelterRssi

	.bss
	.global wcmRssiIndex
wcmRssiIndex:
	.space 0x01
	.global wcmRssi
wcmRssi:
	.space 0x10

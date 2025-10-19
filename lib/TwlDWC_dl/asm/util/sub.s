
	.include "asm/macros/function.inc"
	.public GX_DisableBankForARM7
	.public GX_DisableBankForBG
	.public GX_DisableBankForBGExtPltt
	.public GX_DisableBankForClearImage
	.public GX_DisableBankForLCDC
	.public GX_DisableBankForOBJ
	.public GX_DisableBankForOBJExtPltt
	.public GX_DisableBankForSubBG
	.public GX_DisableBankForSubBGExtPltt
	.public GX_DisableBankForSubOBJ
	.public GX_DisableBankForSubOBJExtPltt
	.public GX_DisableBankForTex
	.public GX_DisableBankForTexPltt
	.public GX_SetBankForARM7
	.public GX_SetBankForBG
	.public GX_SetBankForBGExtPltt
	.public GX_SetBankForClearImage
	.public GX_SetBankForLCDC
	.public GX_SetBankForOBJ
	.public GX_SetBankForOBJExtPltt
	.public GX_SetBankForSubBG
	.public GX_SetBankForSubBGExtPltt
	.public GX_SetBankForSubOBJ
	.public GX_SetBankForSubOBJExtPltt
	.public GX_SetBankForTex
	.public GX_SetBankForTexPltt
	.public MIi_CpuClearFast
	.public PM_GetLEDPattern
	.public PMi_SendLEDPatternCommand

	.text

	arm_func_start DWCi_ClearVram
DWCi_ClearVram: ; 0x0210EF08
	stmfd sp!, {r4, lr}
	bl GX_DisableBankForBG
	ldr r4, _0210EF88 ; =0x02116310
	str r0, [r4]
	bl GX_DisableBankForOBJ
	str r0, [r4, #4]
	bl GX_DisableBankForBGExtPltt
	str r0, [r4, #8]
	bl GX_DisableBankForOBJExtPltt
	str r0, [r4, #0xc]
	bl GX_DisableBankForTex
	str r0, [r4, #0x10]
	bl GX_DisableBankForTexPltt
	str r0, [r4, #0x14]
	bl GX_DisableBankForClearImage
	str r0, [r4, #0x18]
	bl GX_DisableBankForSubBG
	str r0, [r4, #0x1c]
	bl GX_DisableBankForSubOBJ
	str r0, [r4, #0x20]
	bl GX_DisableBankForSubBGExtPltt
	str r0, [r4, #0x24]
	bl GX_DisableBankForSubOBJExtPltt
	str r0, [r4, #0x28]
	bl GX_DisableBankForARM7
	str r0, [r4, #0x2c]
	bl GX_DisableBankForLCDC
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl GX_SetBankForARM7
	bl clearVram
	ldmfd sp!, {r4, pc}
_0210EF88: .word Bank
	arm_func_end DWCi_ClearVram

	arm_func_start DWCi_RepairVram
DWCi_RepairVram: ; 0x0210EF8C
	stmfd sp!, {r4, lr}
	bl GX_DisableBankForBG
	bl GX_DisableBankForOBJ
	bl GX_DisableBankForSubBG
	bl GX_DisableBankForSubOBJ
	bl clearVram
	ldr r4, _0210F044 ; =0x02116310
	ldr r0, [r4]
	bl GX_SetBankForBG
	ldr r0, [r4, #4]
	bl GX_SetBankForOBJ
	ldr r0, [r4, #8]
	bl GX_SetBankForBGExtPltt
	ldr r0, [r4, #0xc]
	bl GX_SetBankForOBJExtPltt
	ldr r0, [r4, #0x10]
	bl GX_SetBankForTex
	ldr r0, [r4, #0x14]
	bl GX_SetBankForTexPltt
	ldr r0, [r4, #0x18]
	bl GX_SetBankForClearImage
	ldr r0, [r4, #0x1c]
	bl GX_SetBankForSubBG
	ldr r0, [r4, #0x20]
	bl GX_SetBankForSubOBJ
	ldr r0, [r4, #0x24]
	bl GX_SetBankForSubBGExtPltt
	ldr r0, [r4, #0x28]
	bl GX_SetBankForSubOBJExtPltt
	ldr r0, [r4, #0x30]
	bl GX_SetBankForLCDC
	mov r3, #0
	ldr r2, _0210F048 ; =0x04000050
	ldr r0, _0210F04C ; =0x04001014
	strh r3, [r2]
	add r1, r2, #0x1000
	strh r3, [r1]
	str r3, [r2, #-0x40]
	str r3, [r2, #-0x3c]
	str r3, [r2, #-0x38]
	str r3, [r2, #-0x34]
	str r3, [r2, #0xfc0]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	ldmfd sp!, {r4, pc}
_0210F044: .word Bank
_0210F048: .word 0x04000050
_0210F04C: .word 0x04001014
	arm_func_end DWCi_RepairVram

	arm_static_func_start clearVram
clearVram: ; 0x0210F050
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210F0D8 ; =0x000001F3
	bl GX_SetBankForLCDC
	mov r7, #0
	mov r4, #0x6800000
	mov r0, r7
	mov r1, r4
	mov r2, #0x40000
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x80000
	mov r2, #0x24000
	bl MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	mov r6, #0x200
	mov r0, r6
	mov r1, #0x7000000
	mov r5, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r4, #0x5000000
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r6
	sub r1, r5, #0xf9000000
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F0D8: .word 0x000001F3
	arm_func_end clearVram

	arm_func_start DWCi_SetLedWireless
DWCi_SetLedWireless: ; 0x0210F0DC
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl PM_GetLEDPattern
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, [sp]
	cmp r0, #0xf
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xf
	bl PMi_SendLEDPatternCommand
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_SetLedWireless

	arm_func_start DWCi_SetLedNormal
DWCi_SetLedNormal: ; 0x0210F108
	ldr r12, _0210F114 ; =PMi_SendLEDPatternCommand
	mov r0, #1
	bx r12
_0210F114: .word PMi_SendLEDPatternCommand
	arm_func_end DWCi_SetLedNormal

	.bss
Bank:
	.space 0x34

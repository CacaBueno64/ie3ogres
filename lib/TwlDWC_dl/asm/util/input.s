
	.include "asm/macros/function.inc"
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_InputCoord
	.public FX_ModS32
	.public GX_DispOff
	.public GX_DispOn
	.public OS_Terminate
	.public OS_WaitVBlankIntr
	.public PM_SetLCDPower
	.public TP_CheckError
	.public TP_GetCalibratedPoint
	.public TP_GetLatestIndexInAuto
	.public TP_GetUserInfo
	.public TP_RequestAutoSamplingStartAsync
	.public TP_RequestAutoSamplingStopAsync
	.public TP_SetCalibrateParam
	.public TP_WaitBusy

	.text
	arm_func_start DWCi_IPTlInit
DWCi_IPTlInit: ; 0x0210E14C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r0, #0x3a
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210E1C8 ; =0x021162E8
	str r0, [r1, #4]
	add r0, sp, #0
	bl TP_GetUserInfo
	cmp r0, #0
	bne _0210E17C
	bl OS_Terminate
_0210E17C:
	add r0, sp, #0
	bl TP_SetCalibrateParam
	ldr r1, _0210E1C8 ; =0x021162E8
	mov r0, #0
	ldr r2, [r1, #4]
	mov r1, #4
	mov r3, #5
	bl TP_RequestAutoSamplingStartAsync
	mov r4, #2
	mov r0, r4
	bl TP_WaitBusy
	mov r0, r4
	bl TP_CheckError
	cmp r0, #0
	beq _0210E1BC
	bl OS_Terminate
_0210E1BC:
	bl DWCi_IPTlRead
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210E1C8: .word fold
	arm_func_end DWCi_IPTlInit

	arm_func_start DWCi_IPTlEnd
DWCi_IPTlEnd: ; 0x0210E1CC
	stmfd sp!, {r4, lr}
	mov r4, #4
_0210E1D4:
	bl TP_RequestAutoSamplingStopAsync
	mov r0, r4
	bl TP_WaitBusy
	mov r0, r4
	bl TP_CheckError
	cmp r0, #0
	bne _0210E1D4
	ldr r0, _0210E1FC ; =0x021162EC
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_0210E1FC: .word MemInput
	arm_func_end DWCi_IPTlEnd

	arm_func_start DWCi_IPTlRead
DWCi_IPTlRead: ; 0x0210E200
	stmfd sp!, {r3, lr}
	bl readKey
	bl readTouch
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_IPTlRead

	arm_static_func_start readKey
readKey: ; 0x0210E210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210E310 ; =0x04000130
	ldr r1, _0210E314 ; =0x02FFFFA8
	ldrh r2, [r0]
	ldrh r0, [r1]
	ldr r4, _0210E318 ; =0x021162E8
	mov r3, #0
	orr r0, r2, r0
	eor r0, r0, r1, lsr #12
	and r0, r0, r1, lsr #12
	mov r1, r0, lsl #0x10
	mov r5, r1, lsr #0x10
	and r2, r5, #0x40
	and r5, r5, #0x20
	mvn r2, r2, lsl #1
	ldr r0, [r4, #4]
	and r1, r2, r1, lsr #16
	mvn r5, r5, asr #1
	and r1, r5, r1
	mov r1, r1, lsl #0x10
	ldrh r2, [r0, #0x30]
	mov r12, r1, lsr #0x10
	mov r5, #0x28
	eor r2, r2, r1, lsr #16
	and r2, r2, r1, lsr #16
	strh r2, [r0, #0x32]
	ldrh r2, [r0, #0x30]
	ldr r0, [r4, #4]
	eor r1, r2, r1, lsr #16
	and r1, r2, r1
	strh r1, [r0, #0x36]
	ldr r0, [r4, #4]
	mov r2, #1
	strh r12, [r0, #0x30]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x34]
	ldr r0, _0210E31C ; =0x021162F0
	mov r1, r3
_0210E2AC:
	mov r6, r2, lsl r3
	mov lr, r6, lsl #0x10
	tst r12, lr, lsr #16
	streqb r1, [r0, r3]
	beq _0210E300
	ldrb r6, [r0, r3]
	add r7, r6, #1
	and r6, r7, #0xff
	strb r7, [r0, r3]
	cmp r6, #0x28
	ldreq r7, [r4, #4]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
	beq _0210E300
	cmp r6, #0x2f
	ldreq r7, [r4, #4]
	streqb r5, [r0, r3]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
_0210E300:
	add r3, r3, #1
	cmp r3, #0xe
	blt _0210E2AC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210E310: .word 0x04000130
_0210E314: .word 0x02FFFFA8
_0210E318: .word fold
_0210E31C: .word _ZZ7readKeyvE5count
	arm_func_end readKey

	arm_static_func_start readTouch
readTouch: ; 0x0210E320
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _0210E4B4 ; =0x021162E8
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x38]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r6, #1
	moveq r6, #0
	bl TP_GetLatestIndexInAuto
	ldr r7, _0210E4B4 ; =0x021162E8
	mov r4, r5
	ldr r3, [r7, #4]
	mov r8, #5
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r3, #0x2c]
	strh r1, [r3, #0x2e]
_0210E36C:
	ldr r1, [r7, #4]
	add r1, r1, r0, lsl #3
	ldrh r2, [r1, #4]
	cmp r2, #1
	ldreqh r2, [r1, #6]
	cmpeq r2, #0
	bne _0210E3B0
	add r0, sp, #0
	mov r5, #1
	bl TP_GetCalibratedPoint
	ldr r1, _0210E4B4 ; =0x021162E8
	ldrh r0, [sp]
	ldr r2, [r1, #4]
	ldrh r1, [sp, #2]
	add r2, r2, #0x28
	bl DWCi_InputCoord
	b _0210E3C8
_0210E3B0:
	mov r1, r8
	add r4, r4, #1
	add r0, r0, #4
	bl FX_ModS32
	cmp r4, #4
	blt _0210E36C
_0210E3C8:
	ldr r0, _0210E4B4 ; =0x021162E8
	eor r7, r5, r6
	ldr r4, [r0, #4]
	and r1, r5, r7
	ldrb r3, [r4, #0x38]
	and r2, r1, #0xff
	and r1, r6, r7
	bic r3, r3, #2
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #30
	strb r2, [r4, #0x38]
	ldr r4, [r0, #4]
	and r1, r1, #0xff
	ldrb r3, [r4, #0x38]
	mov r2, r1, lsl #0x1f
	cmp r5, #0
	bic r3, r3, #8
	orr r2, r3, r2, lsr #28
	strb r2, [r4, #0x38]
	ldr r3, [r0, #4]
	and r1, r5, #1
	ldrb r2, [r3, #0x38]
	addeq sp, sp, #8
	bic r2, r2, #1
	orr r1, r2, r1
	strb r1, [r3, #0x38]
	ldr r3, [r0, #4]
	ldrb r2, [r3, #0x38]
	mov r1, r2, lsl #0x1e
	mov r1, r1, lsr #0x1f
	bic r2, r2, #4
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #29
	strb r1, [r3, #0x38]
	moveq r1, #0
	streqb r1, [r0, #1]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	cmp r1, #0x28
	strb r2, [r0, #1]
	ldreq r1, [r0, #4]
	addeq sp, sp, #8
	ldreqb r0, [r1, #0x38]
	orreq r0, r0, #4
	streqb r0, [r1, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	mov r1, #0x28
	ldrb r2, [r3, #0x38]
	orr r2, r2, #4
	strb r2, [r3, #0x38]
	strb r1, [r0, #1]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210E4B4: .word fold
	arm_func_end readTouch

	arm_func_start DWCi_IPTlCheckTrigger
DWCi_IPTlCheckTrigger: ; 0x0210E4B8
	ldr r1, _0210E4F0 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E4F4 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x32]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E4F0: .word 0x02FFFFA8
_0210E4F4: .word fold
	arm_func_end DWCi_IPTlCheckTrigger

	arm_func_start DWCi_IPTlCheckRepeat
DWCi_IPTlCheckRepeat: ; 0x0210E4F8
	ldr r1, _0210E530 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E534 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x34]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E530: .word 0x02FFFFA8
_0210E534: .word fold
	arm_func_end DWCi_IPTlCheckRepeat

	arm_func_start DWCi_IPTlCheckRelease
DWCi_IPTlCheckRelease: ; 0x0210E538
	ldr r1, _0210E570 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E574 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x36]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E570: .word 0x02FFFFA8
_0210E574: .word fold
	arm_func_end DWCi_IPTlCheckRelease

	arm_func_start DWCi_TPlCheck
DWCi_TPlCheck: ; 0x0210E578
	ldr r1, _0210E5F8 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E5FC ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E5F8: .word 0x02FFFFA8
_0210E5FC: .word fold
	arm_func_end DWCi_TPlCheck

	arm_func_start DWCi_TPlCheckTrigger
DWCi_TPlCheckTrigger: ; 0x0210E600
	ldr r1, _0210E680 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E684 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E680: .word 0x02FFFFA8
_0210E684: .word fold
	arm_func_end DWCi_TPlCheckTrigger

	arm_func_start DWCi_TPlCheckRepeat
DWCi_TPlCheckRepeat: ; 0x0210E688
	ldr r1, _0210E708 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E70C ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1d
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E708: .word 0x02FFFFA8
_0210E70C: .word fold
	arm_func_end DWCi_TPlCheckRepeat

	arm_func_start DWCi_TPlCheckRelease
DWCi_TPlCheckRelease: ; 0x0210E710
	ldr r1, _0210E790 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E794 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E790: .word 0x02FFFFA8
_0210E794: .word fold
	arm_func_end DWCi_TPlCheckRelease

	arm_func_start DWCi_TPlCheckATrigger
DWCi_TPlCheckATrigger: ; 0x0210E798
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _0210E7F4 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #6]
	add r0, sp, #0
	add r2, r12, r2
	add r1, r3, r1
	strh r12, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r1, [sp, #6]
	bl DWCi_TPlCheckTrigger
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210E7F4: .word 0x02FFFFA8
	arm_func_end DWCi_TPlCheckATrigger

	arm_func_start DWCi_TPlGet
DWCi_TPlGet: ; 0x0210E7F8
	ldr r1, _0210E854 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E858 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrneh r2, [r3, #0x28]
	ldrneh r1, [r3, #0x2a]
	strneh r2, [r0]
	strneh r1, [r0, #2]
	movne r0, #1
	bxne lr
	ldrh r2, [r3, #0x2c]
	ldrh r1, [r3, #0x2e]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #0
	bx lr
_0210E854: .word 0x02FFFFA8
_0210E858: .word fold
	arm_func_end DWCi_TPlGet

	arm_func_start DWCi_IPTlCheckFold
DWCi_IPTlCheckFold: ; 0x0210E85C
	stmfd sp!, {r4, lr}
	ldr r4, _0210E900 ; =0x021162E8
	ldrb r0, [r4]
	cmp r0, #0
	ldr r0, _0210E904 ; =0x02FFFFA8
	beq _0210E8BC
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmnefd sp!, {r4, pc}
	mov r0, #1
	bl PM_SetLCDPower
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOn
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E8BC:
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmeqfd sp!, {r4, pc}
	bl OS_WaitVBlankIntr
	bl GX_DispOff
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl OS_WaitVBlankIntr
	mov r0, #0
	bl PM_SetLCDPower
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E900: .word fold
_0210E904: .word 0x02FFFFA8
_0210E908: .word 0x04001000
	arm_func_end DWCi_IPTlCheckFold

	.bss
fold:
	.space 0x01
_ZZ9readTouchvE5count:
	.space 0x03
MemInput:
	.space 0x04
_ZZ7readKeyvE5count:
	.space 0x10
